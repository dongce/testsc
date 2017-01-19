

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((8 )
   (define testsc 1 )
   
   (mmsg-set  '(M82SW        0 0))
   )
  ((9 )
   (define testsc 1 )
   
   (mmsg-set  '(M82SW        0 1))
   )

  )



