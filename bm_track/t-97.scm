(testsc-require dlplink11types)
(testsc-require system_types)

(case (testsc-get-testnum)
  ((2)
   (define testsc 1 )
   (define rc 1 )
   (define mas 2 )

   (testsc-admin-nset 0 (list '_depromotion.NTN 0))    
   (testsc-admin-nset 0 (list '_depromotion.counter 1))
   (testsc-admin-nset 1 (list '_depromotion.NTN 1))    
   (testsc-admin-nset 1 (list '_depromotion.counter 1))
   )
  
  )
