

;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((3)
   (define testsc 1 )
   (tnset 1)
   )
  ((10)
   (define testsc 1 )
   (tnset 1 'supporting_info.info_validation 1)
   )
  
  ((5)
   (define testsc 1 )
   )
  )

