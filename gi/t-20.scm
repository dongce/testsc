
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((2)
   (define testsc 1 )
   (tnset 3 'general.track_kind system_types-track_kind_air_point_track)
   ;; (tnset 1 general.track_kind system_types-track_kind_surface_point_track)
   )
  ((3)
   (define testsc 1 )
   ;; (tnset 1 general.track_kind system_types-track_kind_air_point_track)
   (tnset 3 'general.track_kind system_types-track_kind_air_point_track)
   )
  ((4)
   (define testsc 1 )
   ;; (tnset 1 general.track_kind system_types-track_kind_air_point_track)
   (tnset 6 'general.track_kind -1)
   )
   
  )

