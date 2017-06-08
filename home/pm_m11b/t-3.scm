
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((25)
   (define testsc 1 )
   (define allocid 10)
   (mmsg-set '(M11BFTSW   0 SWITCH_TIME ))
   (anset 10))
  ((26)
   (define testsc 1 )
   (define allocid 11)
   (mmsg-set '(M11BFTSW   0 SWITCH_FUEL ))
   (anset 10))
  ((27)
   (define testsc 1 )
   (define allocid 10)
   (mmsg-set '(M11BFTSW   0 SWITCH_FUEL ))
   (anset 10))

  ((28)
   (define testsc 1 )
   (define allocid 10)
   ;;(mmsg-set '(M11BFTSW   0 SWITCH_FUEL ))
   (anset 10))

  
  )



