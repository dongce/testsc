

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((1 )
   (define testsc 1 )
   (mmsg-set  '(M83SW  0 0 )))

  ((2 )
   (define testsc 1 )
   (mmsg-set  '(M83SW  0 1 )))  

  ((3 )
   (define testsc 1 )
   (mmsg-set  '(M83SW  0 -1 )))  

  )



