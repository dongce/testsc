
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)




(case (testsc-get-testnum)
  ((16)
   (define testsc 1 )
   (mmsg-set 
    '( M9SI 0 SIMULATED_TRACK   )
    '( M9STI 0 EMERGENCY ))
   )

  
  ((17)
   (define testsc 1 )
   (mmsg-set 
    '( M9STI 0 -1 ))
   (tnset 0)
   )
  
  )

