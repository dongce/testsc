

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )
   
   (define itst 0)

   (define llpc 1 )
   (define lldc ID_RESULT_A)
   (define iorr 0)

   (tnset 1
          'general.track_kind   system_types-track_kind_air_point_track 
          'cmsdata.environment  system_types-air_environment 
          'general.track_existence  system_types-real_track )
   )
  )



