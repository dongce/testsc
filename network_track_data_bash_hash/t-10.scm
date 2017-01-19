
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )
   (define testsc-network 1)
   (testsc-track-nset 1 '(general.NTN 100))
   )
  ((3)
   (define testsc 1 )
   (define testsc-network 1)
   (testsc-track-nset 1 '(general.NTN 100))
   )
  
  )
