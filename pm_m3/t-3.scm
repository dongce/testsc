

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((6 7)
   (define testsc 1 )
   
   (mmsg-set  '(M1MN       THIRD_FRAME_OFFSET MESSAGE_NUMBER_M8

                M83HEIGHT  SECOND_FRAME_OFFSET 20 ))


   (tnset 1
          'general.track_kind   system_types-track_kind_surface_point_track 
          'cmsdata.environment  system_types-surface_environment 
          'general.track_existence  system_types-real_track )
   )

  )



