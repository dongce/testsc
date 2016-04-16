
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)




(case (testsc-get-testnum)
  ((6)
   (define testsc 1 )
   (mmsg-set '(M9ENVCAT 0 ENV_CAT_AIR))
   (tnset 1 'general.track_kind system_types-track_kind_surface_point_track )
   )

  
  ((7)
   (define testsc 1 )
   (mmsg-set '(M9ENVCAT 0 ENV_CAT_SURFACE))
   (tnset 1 'general.track_kind system_types-track_kind_air_point_track )
   )
  )





