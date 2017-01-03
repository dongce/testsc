
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((7)
   (define testsc 1 )
   (define m1valid 0 )
   )
  ((8)
   (define testsc 1 )
   (define m1valid 0 )
   (mmsg-set
    '(M84ACBI  0 0)
    ) 
   )

  )

