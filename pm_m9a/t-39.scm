
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)



(define testsc 1 )

(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )
   (mmsg-set 
    '( M9SI 0 SIMULATED_TRACK   )
    '( M9STI 0 EMERGENCY ))
   )

  
  ((2)
   (define testsc 1 )
   (mmsg-set 
    '( M9SI 0 -1   )
    '( M9STI 0 -1 ))
   (tnset 0)
   )
  
  )

