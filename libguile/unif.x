// scm_sym_s = scm_permanent_object (scm_from_locale_symbol ("s")) ;
// scm_sym_l = scm_permanent_object (scm_from_locale_symbol ("l")) ;
// scm_c_define_gsubr (s_scm_array_p, 1, 1, 0, (SCM (*)()) scm_array_p); ;
 scm_c_define_gsubr (s_scm_typed_array_p, 2, 0, 0, (SCM (*)()) scm_typed_array_p); ;
 scm_c_define_gsubr (s_scm_array_rank, 1, 0, 0, (SCM (*)()) scm_array_rank); ;
 scm_c_define_gsubr (s_scm_array_dimensions, 1, 0, 0, (SCM (*)()) scm_array_dimensions); ;
 scm_c_define_gsubr (s_scm_shared_array_root, 1, 0, 0, (SCM (*)()) scm_shared_array_root); ;
 scm_c_define_gsubr (s_scm_shared_array_offset, 1, 0, 0, (SCM (*)()) scm_shared_array_offset); ;
 scm_c_define_gsubr (s_scm_shared_array_increments, 1, 0, 0, (SCM (*)()) scm_shared_array_increments); ;
 scm_c_define_gsubr (s_scm_make_typed_array, 2, 0, 1, (SCM (*)()) scm_make_typed_array); ;
 scm_c_define_gsubr (s_scm_make_array, 1, 0, 1, (SCM (*)()) scm_make_array); ;
// scm_c_define_gsubr (s_scm_dimensions_to_uniform_array, 2, 1, 0, (SCM (*)()) scm_dimensions_to_uniform_array); ;
 scm_c_define_gsubr (s_scm_make_shared_array, 2, 0, 1, (SCM (*)()) scm_make_shared_array); ;
 scm_c_define_gsubr (s_scm_transpose_array, 1, 0, 1, (SCM (*)()) scm_transpose_array); ;
 scm_c_define_gsubr (s_scm_enclose_array, 1, 0, 1, (SCM (*)()) scm_enclose_array); ;
 scm_c_define_gsubr (s_scm_array_in_bounds_p, 1, 0, 1, (SCM (*)()) scm_array_in_bounds_p); ;
 scm_c_define_gsubr (s_scm_array_ref, 1, 0, 1, (SCM (*)()) scm_array_ref); ;
 scm_c_define_gsubr (s_scm_array_set_x, 2, 0, 1, (SCM (*)()) scm_array_set_x); ;
 scm_c_define_gsubr (s_scm_array_contents, 1, 1, 0, (SCM (*)()) scm_array_contents); ;
 scm_c_define_gsubr (s_scm_uniform_array_read_x, 1, 3, 0, (SCM (*)()) scm_uniform_array_read_x); ;
 scm_c_define_gsubr (s_scm_uniform_array_write, 1, 3, 0, (SCM (*)()) scm_uniform_array_write); ;
 scm_c_define_gsubr (s_scm_bitvector_p, 1, 0, 0, (SCM (*)()) scm_bitvector_p); ;
 scm_c_define_gsubr (s_scm_make_bitvector, 1, 1, 0, (SCM (*)()) scm_make_bitvector); ;
 scm_c_define_gsubr (s_scm_bitvector, 0, 0, 1, (SCM (*)()) scm_bitvector); ;
 scm_c_define_gsubr (s_scm_bitvector_length, 1, 0, 0, (SCM (*)()) scm_bitvector_length); ;
 scm_c_define_gsubr (s_scm_bitvector_ref, 2, 0, 0, (SCM (*)()) scm_bitvector_ref); ;
 scm_c_define_gsubr (s_scm_bitvector_set_x, 3, 0, 0, (SCM (*)()) scm_bitvector_set_x); ;
 scm_c_define_gsubr (s_scm_bitvector_fill_x, 2, 0, 0, (SCM (*)()) scm_bitvector_fill_x); ;
 scm_c_define_gsubr (s_scm_list_to_bitvector, 1, 0, 0, (SCM (*)()) scm_list_to_bitvector); ;
 scm_c_define_gsubr (s_scm_bitvector_to_list, 1, 0, 0, (SCM (*)()) scm_bitvector_to_list); ;
 scm_c_define_gsubr (s_scm_bit_count, 2, 0, 0, (SCM (*)()) scm_bit_count); ;
 scm_c_define_gsubr (s_scm_bit_position, 3, 0, 0, (SCM (*)()) scm_bit_position); ;
 scm_c_define_gsubr (s_scm_bit_set_star_x, 3, 0, 0, (SCM (*)()) scm_bit_set_star_x); ;
 scm_c_define_gsubr (s_scm_bit_count_star, 3, 0, 0, (SCM (*)()) scm_bit_count_star); ;
 scm_c_define_gsubr (s_scm_bit_invert_x, 1, 0, 0, (SCM (*)()) scm_bit_invert_x); ;
 scm_c_define_gsubr (s_scm_array_to_list, 1, 0, 0, (SCM (*)()) scm_array_to_list); ;
 scm_c_define_gsubr (s_scm_list_to_typed_array, 3, 0, 0, (SCM (*)()) scm_list_to_typed_array); ;
 scm_c_define_gsubr (s_scm_list_to_array, 2, 0, 0, (SCM (*)()) scm_list_to_array); ;
// scm_c_define_gsubr (s_scm_list_to_uniform_array, 3, 0, 0, (SCM (*)()) scm_list_to_uniform_array); ;
 scm_c_define_gsubr (s_scm_array_type, 1, 0, 0, (SCM (*)()) scm_array_type); ;
// scm_c_define_gsubr (s_scm_array_prototype, 1, 0, 0, (SCM (*)()) scm_array_prototype); ;