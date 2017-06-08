
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)




(case (testsc-get-testnum)
  ((17)
   (define testsc 1 )
   (mmsg-set '(M9A9MI 0 1))
   )
  ((18)
   (define testsc 1 )
   (mmsg-set '(M9A9MI 0 7) '(M9A9ISAC 0 7))
   )
  ((19)
   (define testsc 1 )
   (mmsg-set '(M9A9ISAC 0 8))
   )

  
  )





