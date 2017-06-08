
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((16)
   (define testsc 1 )
   (testsc-debug (number->string (anset 0 )))
   )         
  ((17)
   (define testsc 1 )
   (define allocexc 1 )
   )         
  ((18)
   (define allocexc 1 )
   )         


  )

