(anset 80)

;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((5)
   (anset 0 '_sntds.ccb.loopback CCB_LB_ON))
  )

