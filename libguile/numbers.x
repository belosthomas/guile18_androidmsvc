 scm_c_define_gsubr (s_scm_exact_p, 1, 0, 0, (SCM (*)()) scm_exact_p); ;
 scm_c_define_gsubr (s_scm_odd_p, 1, 0, 0, (SCM (*)()) scm_odd_p); ;
 scm_c_define_gsubr (s_scm_even_p, 1, 0, 0, (SCM (*)()) scm_even_p); ;
 scm_c_define_gsubr (s_scm_inf_p, 1, 0, 0, (SCM (*)()) scm_inf_p); ;
 scm_c_define_gsubr (s_scm_nan_p, 1, 0, 0, (SCM (*)()) scm_nan_p); ;
 scm_c_define_gsubr (s_scm_inf, 0, 0, 0, (SCM (*)()) scm_inf); ;
 scm_c_define_gsubr (s_scm_nan, 0, 0, 0, (SCM (*)()) scm_nan); ;
 g_scm_abs = ((SCM) (0)); scm_c_define_gsubr_with_generic (s_scm_abs, 1, 0, 0, (SCM (*)()) scm_abs, &g_scm_abs); ;
 g_quotient = ((SCM) (0)); scm_c_define_gsubr_with_generic (s_quotient, 2, 0, 0, (SCM (*)()) scm_quotient, &g_quotient) ;
 g_remainder = ((SCM) (0)); scm_c_define_gsubr_with_generic (s_remainder, 2, 0, 0, (SCM (*)()) scm_remainder, &g_remainder) ;
 g_modulo = ((SCM) (0)); scm_c_define_gsubr_with_generic (s_modulo, 2, 0, 0, (SCM (*)()) scm_modulo, &g_modulo) ;
 g_gcd = ((SCM) (0)); scm_c_define_subr_with_generic (s_gcd, 103, (SCM (*)()) scm_gcd, &g_gcd) ;
 g_lcm = ((SCM) (0)); scm_c_define_subr_with_generic (s_lcm, 103, (SCM (*)()) scm_lcm, &g_lcm) ;
 scm_c_define_subr (s_scm_logand, 103, scm_logand); ;
 scm_c_define_subr (s_scm_logior, 103, scm_logior); ;
 scm_c_define_subr (s_scm_logxor, 103, scm_logxor); ;
 scm_c_define_gsubr (s_scm_logtest, 2, 0, 0, (SCM (*)()) scm_logtest); ;
 scm_c_define_gsubr (s_scm_logbit_p, 2, 0, 0, (SCM (*)()) scm_logbit_p); ;
 scm_c_define_gsubr (s_scm_lognot, 1, 0, 0, (SCM (*)()) scm_lognot); ;
 scm_c_define_gsubr (s_scm_modulo_expt, 3, 0, 0, (SCM (*)()) scm_modulo_expt); ;
 scm_c_define_gsubr (s_scm_integer_expt, 2, 0, 0, (SCM (*)()) scm_integer_expt); ;
 scm_c_define_gsubr (s_scm_ash, 2, 0, 0, (SCM (*)()) scm_ash); ;
 scm_c_define_gsubr (s_scm_bit_extract, 3, 0, 0, (SCM (*)()) scm_bit_extract); ;
 scm_c_define_gsubr (s_scm_logcount, 1, 0, 0, (SCM (*)()) scm_logcount); ;
 scm_c_define_gsubr (s_scm_integer_length, 1, 0, 0, (SCM (*)()) scm_integer_length); ;
 scm_c_define_gsubr (s_scm_number_to_string, 1, 1, 0, (SCM (*)()) scm_number_to_string); ;
 scm_c_define_gsubr (s_scm_string_to_number, 1, 1, 0, (SCM (*)()) scm_string_to_number); ;
 scm_c_define_gsubr (s_scm_number_p, 1, 0, 0, (SCM (*)()) scm_number_p); ;
 scm_c_define_gsubr (s_scm_complex_p, 1, 0, 0, (SCM (*)()) scm_complex_p); ;
 scm_c_define_gsubr (s_scm_real_p, 1, 0, 0, (SCM (*)()) scm_real_p); ;
 scm_c_define_gsubr (s_scm_rational_p, 1, 0, 0, (SCM (*)()) scm_rational_p); ;
 scm_c_define_gsubr (s_scm_integer_p, 1, 0, 0, (SCM (*)()) scm_integer_p); ;
 scm_c_define_gsubr (s_scm_inexact_p, 1, 0, 0, (SCM (*)()) scm_inexact_p); ;
 g_eq_p = ((SCM) (0)); scm_c_define_subr_with_generic (s_eq_p, 69, (SCM (*)()) scm_num_eq_p, &g_eq_p) ;
 g_less_p = ((SCM) (0)); scm_c_define_subr_with_generic (s_less_p, 69, (SCM (*)()) scm_less_p, &g_less_p) ;
 g_gr_p = ((SCM) (0)); scm_c_define_subr_with_generic (s_scm_gr_p, 69, (SCM (*)()) scm_gr_p, &g_gr_p) ;
 g_leq_p = ((SCM) (0)); scm_c_define_subr_with_generic (s_scm_leq_p, 69, (SCM (*)()) scm_leq_p, &g_leq_p) ;
 g_geq_p = ((SCM) (0)); scm_c_define_subr_with_generic (s_scm_geq_p, 69, (SCM (*)()) scm_geq_p, &g_geq_p) ;
 g_zero_p = ((SCM) (0)); scm_c_define_gsubr_with_generic (s_zero_p, 1, 0, 0, (SCM (*)()) scm_zero_p, &g_zero_p) ;
 g_positive_p = ((SCM) (0)); scm_c_define_gsubr_with_generic (s_positive_p, 1, 0, 0, (SCM (*)()) scm_positive_p, &g_positive_p) ;
 g_negative_p = ((SCM) (0)); scm_c_define_gsubr_with_generic (s_negative_p, 1, 0, 0, (SCM (*)()) scm_negative_p, &g_negative_p) ;
 g_max = ((SCM) (0)); scm_c_define_subr_with_generic (s_max, 103, (SCM (*)()) scm_max, &g_max) ;
 g_min = ((SCM) (0)); scm_c_define_subr_with_generic (s_min, 103, (SCM (*)()) scm_min, &g_min) ;
 g_sum = ((SCM) (0)); scm_c_define_subr_with_generic (s_sum, 103, (SCM (*)()) scm_sum, &g_sum) ;
 scm_c_define_gsubr (s_scm_oneplus, 1, 0, 0, (SCM (*)()) scm_oneplus); ;
 g_difference = ((SCM) (0)); scm_c_define_subr_with_generic (s_difference, 103, (SCM (*)()) scm_difference, &g_difference) ;
 scm_c_define_gsubr (s_scm_oneminus, 1, 0, 0, (SCM (*)()) scm_oneminus); ;
 g_product = ((SCM) (0)); scm_c_define_subr_with_generic (s_product, 103, (SCM (*)()) scm_product, &g_product) ;
 g_divide = ((SCM) (0)); scm_c_define_subr_with_generic (s_divide, 103, (SCM (*)()) scm_divide, &g_divide) ;
 g_asinh = ((SCM) (0)); scm_c_define_subr_with_generic (s_asinh, 61, (SCM (*)()) (SCM (*)()) asinh, &g_asinh) ;
 g_acosh = ((SCM) (0)); scm_c_define_subr_with_generic (s_acosh, 61, (SCM (*)()) (SCM (*)()) acosh, &g_acosh) ;
 g_atanh = ((SCM) (0)); scm_c_define_subr_with_generic (s_atanh, 61, (SCM (*)()) (SCM (*)()) atanh, &g_atanh) ;
 scm_c_define_gsubr (s_scm_truncate_number, 1, 0, 0, (SCM (*)()) scm_truncate_number); ;
 scm_c_define_gsubr (s_scm_round_number, 1, 0, 0, (SCM (*)()) scm_round_number); ;
 g_scm_floor = ((SCM) (0)); scm_c_define_gsubr_with_generic (s_scm_floor, 1, 0, 0, (SCM (*)()) scm_floor, &g_scm_floor); ;
 g_scm_ceiling = ((SCM) (0)); scm_c_define_gsubr_with_generic (s_scm_ceiling, 1, 0, 0, (SCM (*)()) scm_ceiling, &g_scm_ceiling); ;
 g_i_sqrt = ((SCM) (0)); scm_c_define_subr_with_generic (s_i_sqrt, 61, (SCM (*)()) (SCM (*)()) sqrt, &g_i_sqrt) ;
 g_i_abs = ((SCM) (0)); scm_c_define_subr_with_generic (s_i_abs, 61, (SCM (*)()) (SCM (*)()) fabs, &g_i_abs) ;
 g_i_exp = ((SCM) (0)); scm_c_define_subr_with_generic (s_i_exp, 61, (SCM (*)()) (SCM (*)()) exp, &g_i_exp) ;
 g_i_log = ((SCM) (0)); scm_c_define_subr_with_generic (s_i_log, 61, (SCM (*)()) (SCM (*)()) log, &g_i_log) ;
 g_i_sin = ((SCM) (0)); scm_c_define_subr_with_generic (s_i_sin, 61, (SCM (*)()) (SCM (*)()) sin, &g_i_sin) ;
 g_i_cos = ((SCM) (0)); scm_c_define_subr_with_generic (s_i_cos, 61, (SCM (*)()) (SCM (*)()) cos, &g_i_cos) ;
 g_i_tan = ((SCM) (0)); scm_c_define_subr_with_generic (s_i_tan, 61, (SCM (*)()) (SCM (*)()) tan, &g_i_tan) ;
 g_i_asin = ((SCM) (0)); scm_c_define_subr_with_generic (s_i_asin, 61, (SCM (*)()) (SCM (*)()) asin, &g_i_asin) ;
 g_i_acos = ((SCM) (0)); scm_c_define_subr_with_generic (s_i_acos, 61, (SCM (*)()) (SCM (*)()) acos, &g_i_acos) ;
 g_i_atan = ((SCM) (0)); scm_c_define_subr_with_generic (s_i_atan, 61, (SCM (*)()) (SCM (*)()) atan, &g_i_atan) ;
 g_i_sinh = ((SCM) (0)); scm_c_define_subr_with_generic (s_i_sinh, 61, (SCM (*)()) (SCM (*)()) sinh, &g_i_sinh) ;
 g_i_cosh = ((SCM) (0)); scm_c_define_subr_with_generic (s_i_cosh, 61, (SCM (*)()) (SCM (*)()) cosh, &g_i_cosh) ;
 g_i_tanh = ((SCM) (0)); scm_c_define_subr_with_generic (s_i_tanh, 61, (SCM (*)()) (SCM (*)()) tanh, &g_i_tanh) ;
 scm_c_define_gsubr (s_scm_sys_expt, 2, 0, 0, (SCM (*)()) scm_sys_expt); ;
 scm_c_define_gsubr (s_scm_sys_atan2, 2, 0, 0, (SCM (*)()) scm_sys_atan2); ;
 scm_c_define_gsubr (s_scm_make_rectangular, 2, 0, 0, (SCM (*)()) scm_make_rectangular); ;
 scm_c_define_gsubr (s_scm_make_polar, 2, 0, 0, (SCM (*)()) scm_make_polar); ;
 g_real_part = ((SCM) (0)); scm_c_define_gsubr_with_generic (s_real_part, 1, 0, 0, (SCM (*)()) scm_real_part, &g_real_part) ;
 g_imag_part = ((SCM) (0)); scm_c_define_gsubr_with_generic (s_imag_part, 1, 0, 0, (SCM (*)()) scm_imag_part, &g_imag_part) ;
 g_numerator = ((SCM) (0)); scm_c_define_gsubr_with_generic (s_numerator, 1, 0, 0, (SCM (*)()) scm_numerator, &g_numerator) ;
 g_denominator = ((SCM) (0)); scm_c_define_gsubr_with_generic (s_denominator, 1, 0, 0, (SCM (*)()) scm_denominator, &g_denominator) ;
 g_magnitude = ((SCM) (0)); scm_c_define_gsubr_with_generic (s_magnitude, 1, 0, 0, (SCM (*)()) scm_magnitude, &g_magnitude) ;
 g_angle = ((SCM) (0)); scm_c_define_gsubr_with_generic (s_angle, 1, 0, 0, (SCM (*)()) scm_angle, &g_angle) ;
 g_exact_to_inexact = ((SCM) (0)); scm_c_define_gsubr_with_generic (s_exact_to_inexact, 1, 0, 0, (SCM (*)()) scm_exact_to_inexact, &g_exact_to_inexact) ;
 scm_c_define_gsubr (s_scm_inexact_to_exact, 1, 0, 0, (SCM (*)()) scm_inexact_to_exact); ;
 scm_c_define_gsubr (s_scm_rationalize, 2, 0, 0, (SCM (*)()) scm_rationalize); ;
 scm_c_define_gsubr (s_scm_log, 1, 0, 0, (SCM (*)()) scm_log); ;
 scm_c_define_gsubr (s_scm_log10, 1, 0, 0, (SCM (*)()) scm_log10); ;
 scm_c_define_gsubr (s_scm_exp, 1, 0, 0, (SCM (*)()) scm_exp); ;
 scm_c_define_gsubr (s_scm_sqrt, 1, 0, 0, (SCM (*)()) scm_sqrt); ;
