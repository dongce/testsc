(testsc-require dlplink11types)
(testsc-require system_types)

(case (testsc-get-testnum)
  ((16)
   (define testsc 1 )
   (define rc 1 )
   (testsc-track-nset 1 (list 'general.tactical 1 ))
   (testsc-track-nset 1 (list 'general.network 1 ))
   (testsc-track-nset 1 (list 'general.track_kind system_types-track_kind_air_point_track))
   (testsc-track-nset 1 (list 'general.identity system_types-identity_hostile)))
  
  )
