
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((1)
   (define testsc 1)
   (define idtp 0)
   )
  
  ((2)
   (define testsc 1)
   (define idtp 1)
   (define iac 1)
   )
  )

