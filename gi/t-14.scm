
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((71)
   (define testsc 1 )
   (tnset 24 'general.track_kind system_types-track_kind_air_point_track))

  ((72)
   (define testsc 1 )
   (tnset 24 'general.track_kind system_types-track_kind_surface_point_track))

  ((73)
   (define testsc 1 )
   (tnset 24 'general.track_kind -1))
)
