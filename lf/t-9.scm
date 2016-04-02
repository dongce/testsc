
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)



(case (testsc-get-testnum)
  ((1)
   (tnset 1 '_track_source_filter 1))
  ((2)
   (tnset 1 'general.identity  system_types-identity_suspect))
  ((3)
   (tnset 1 'general.NTN 1))
  ((4)
   (tnset 1 'general.track_kind   system_types-track_kind_air_point_track )
   (tnset 1 'general.identity   system_types-identity_friend ))
  ((5)
   (tnset 1 'general.track_alert_state  system_types-none))
  )

