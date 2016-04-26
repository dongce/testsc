

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((9 10)
   (define testsc 1 )
   
   (mmsg-set  '(M1MN       THIRD_FRAME_OFFSET MESSAGE_NUMBER_M8

                M82HEIGHT  SECOND_FRAME_OFFSET 20 ))


   (tnset 1
          'general.track_kind   system_types-track_kind_air_point_track 
          'cmsdata.environment  system_types-air_environment 
          'general.track_existence  system_types-real_track )
   )

  )



