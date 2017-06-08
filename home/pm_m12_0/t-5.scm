

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

   (define testsc 0 )
   (define gfv 0 )


(case (testsc-get-testnum)
  ((3)
   (set! testsc 1 )
   (set! gfv 1 )
   (mmsg-add
    '(M12IFFM2 0 4)
    '(M12IFFM1 0 4)
    '(M12MI 0 3)))
  )

