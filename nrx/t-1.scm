
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((33)
   (define testsc 1 )
   (define gfv 1)
   (mmsg-set '(M6ALABEL 0 LABEL_NUMBER_M6A )
             '(M6AACT 0 1)))
  ((34)
   (define testsc 1 )
   (define gfv 1)
   (define itn 1)
   (define itn-para 1)
   (define m6acc 1)
   (mmsg-set '(M6ALABEL 0 LABEL_NUMBER_M6A )
             '(M6ATNOFORIGIN 0 1)
             '(M6ATN 0 2)
             )
   (tnset 1))

  ((35)
   (define testsc 1 )
   (define gfv 1)
   (define itn 1)
   (define itn-para 1)
   (mmsg-set '(M6ALABEL 0 LABEL_NUMBER_M6A )
             '(M6ATNOFORIGIN 0 1)
             '(M6ATN 0 2)
             )
   (tnset 1))

  ((36)
   (define testsc 1 )
   (define gfv 1)
   (define itn 1)
   (define itn-para 1)
   (define m6acc 1)
   (define anr 1)
   (define anr-value 1)
   (mmsg-set '(M6ALABEL 0 LABEL_NUMBER_M6A )
             '(M6ATNOFORIGIN 0 1)
             '(M6ATN 0 2)
             )
   (tnset 1))
  
  )

