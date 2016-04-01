(testsc-require icmsdefine)
(testsc-require system_types)
(case (testsc-get-testnum)
  ((1)
   (testsc-track-nset 1 (list 'general.quality_syst  0) )
   (define etc TDL_FILTER_NON_REAL_TIME )
   )
  ((2)
   (testsc-track-nset 1 (list 'general.track_kind  system_types-track_kind_air_point_track ) )
   (testsc-track-nset 1 (list 'general.primary_air_id_ampl system_types-pri_air_ampl_civilian) )
   (define etc TDL_FILTER_CIVIL )
   ))
  

