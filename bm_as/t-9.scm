
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )
   (anset 0 '_air_mission_data.air_control_active 1)
   (tnset 0)
   (define ctpc 1)
   )

  
  ((2)
   (define testsc 1 )
   (anset 0 '_air_mission_data.air_control_active 1)
   (tnset 0)
   (define ctpc 0)
   )
  )

