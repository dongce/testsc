


(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)



(case (testsc-get-testnum)
  ((20)

   (tnset 1 'general.track_kind system_types-track_kind_air_refpos
          'general.link_state system_types-transmitted_link_state)
   
   )
  )

