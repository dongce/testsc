
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)



(case (testsc-get-testnum)
  ((39)
   (define testsc 1 )
   (mmsg-set '(M9SI 0 1 )) ;SIMULATED_TRACK
   )

  ((40)
   (define testsc 1 )
   (mmsg-set '(M9STI 0 -1))
   )
  
  )

