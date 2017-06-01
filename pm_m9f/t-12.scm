
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )
   (mmsg-set
    (list M9FACT 0 M9F_BASIC)
    )
   )

  ((2)
   (define testsc 1 )
   (mmsg-set
    (list M9FACT 0 M9F_SECONDARY)
    )
   ) 
  )

