
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((4)
   (define testsc 1 )
   (tnset 1 '_air_mission_data.air_control_active 1)
   )
  )

