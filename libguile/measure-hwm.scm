;;;; Copyright (C) 2008 Free Software Foundation, Inc.
;;;;
;;;; This library is free software; you can redistribute it and/or
;;;; modify it under the terms of the GNU Lesser General Public
;;;; License as published by the Free Software Foundation; either
;;;; version 2.1 of the License, or (at your option) any later version.
;;;; 
;;;; This library is distributed in the hope that it will be useful,
;;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;;;; Lesser General Public License for more details.
;;;; 
;;;; You should have received a copy of the GNU Lesser General Public
;;;; License with this library; if not, write to the Free Software
;;;; Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
;;;;

;;; Commentary:

;;; This code is run during the Guile build, in order to set the stack
;;; limit to a value that will allow the `make check' tests to pass,
;;; taking into account the average stack usage on the build platform.
;;; For more detail, see the text below that gets written out to the
;;; stack limit calibration file.

;;; Code:

;; Store off Guile's default stack limit.
(define default-stack-limit (cadr (memq 'stack (debug-options))))

;; Now disable the stack limit, so that we don't get a stack overflow
;; while running this code!
(debug-set! stack 0)

;; Define a variable to hold the measured stack high water mark (HWM).
(define top-repl-hwm-measured 0)

;; Use an evaluator trap to measure the stack size at every
;; evaluation step, and increase top-repl-hwm-measured if it is less
;; than the measured stack size.
(trap-set! enter-frame-handler
	   (lambda _
	     (let ((stack-size (%get-stack-size)))
	       (if (< top-repl-hwm-measured stack-size)
		   (set! top-repl-hwm-measured stack-size)))))
(trap-enable 'enter-frame)
(trap-enable 'traps)

;; Call (turn-on-debugging) and (top-repl) in order to simulate as
;; closely as possible what happens - and in particular, how much
;; stack is used - when a standard Guile REPL is started up.
;;
;; `make check' stack overflow errors have been reported in the past
;; for:
;;
;; - test-suite/standalone/test-use-srfi, which runs `guile -q
;;   --use-srfi=...' a few times, with standard input for the REPL
;;   coming from a shell script
;;
;; - test-suite/tests/elisp.test, which does not involve the REPL, but
;;   has a lot of `use-modules' calls.
;;
;; Stack high water mark (HWM) measurements show that the HWM is
;; higher in the test-use-srfi case - specifically because of the
;; complexity of (top-repl) - so that is what we simulate for our
;; calibration model here.
(turn-on-debugging)
(with-output-to-port (%make-void-port "w")
  (lambda ()
    (with-input-from-string "\n" top-repl)))

;; top-repl-hwm-measured now contains the stack HWM that resulted from
;; running that code.

;; This is the value of top-repl-hwm-measured that we get on a
;; `canonical' build platform.  (See text below for what that means.)
(define top-repl-hwm-i686-pc-linux-gnu 9461)

;; Using the above results, output code that tests can run in order to
;; configure the stack limit correctly for the current build platform.
(format #t "\
;; Stack limit calibration file.
;;
;; This file is automatically generated by Guile when it builds, in
;; order to set the stack limit to a value that reflects the stack
;; usage of the build platform (OS + compiler + compilation options),
;; specifically so that none of Guile's own tests (which are run by
;; `make check') fail because of a benign stack overflow condition.
;;
;; By a `benign' stack overflow condition, we mean one where the test
;; code is behaving correctly, but exceeds the configured stack limit
;; because the limit is set too low.  A non-benign stack overflow
;; condition would be if a piece of test code behaved significantly
;; differently on some platform to how it does normally, and as a
;; result consumed a lot more stack.  Although they seem pretty
;; unlikely, we would want to catch non-benign conditions like this,
;; and that is why we don't just do `(debug-set! stack 0)' when
;; running `make check'.
;;
;; Although the primary purpose of this file is to prevent `make
;; check' from failing without good reason, Guile developers and users
;; may also find the following information useful, when determining
;; what stack limit to configure for their own programs.

 (let (;; The stack high water mark measured when starting up the
       ;; standard Guile REPL on the current build platform.
       (top-repl-hwm-measured ~a)

       ;; The value of top-repl-hwm-measured that we get when building
       ;; Guile on an i686 PC GNU/Linux system, after configuring with
       ;; `./configure --enable-maintainer-mode --with-threads'.
       ;; (Hereafter referred to as the `canonical' build platform.)
       (top-repl-hwm-i686-pc-linux-gnu ~a)

       ;; Guile's default stack limit (i.e. the initial, C-coded value
       ;; of the 'stack debug option).  In the context of this file,
       ;; the important thing about this number is that we know that
       ;; it allows all of the `make check' tests to pass on the
       ;; canonical build platform.
       (default-stack-limit ~a)

       ;; Calibrated stack limit.  This is the default stack limit,
       ;; scaled by the factor between top-repl-hwm-i686-pc-linux-gnu
       ;; and top-repl-hwm-measured.
       (calibrated-stack-limit ~a))

   ;; Configure the calibrated stack limit.
   (debug-set! stack calibrated-stack-limit))
"
	top-repl-hwm-measured
	top-repl-hwm-i686-pc-linux-gnu
	default-stack-limit
	;; Use quotient here to get an integer result, rather than a
	;; rational.
	(quotient (* default-stack-limit top-repl-hwm-measured)
		  top-repl-hwm-i686-pc-linux-gnu))
