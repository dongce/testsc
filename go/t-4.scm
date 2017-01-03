
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)
(testsc-require icmsdefine)
(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )
   (define usemag 1 )
   (anset 0 )
   (define west TDL_WE_STATUS_ENGAGEMENT_STATUS)
   )
  ((2)
   (define testsc 1 )
   (define usemag 1 )
   (anset 0 )
   (define west TDL_WE_STATUS_ENGAGEMENT_STATUS)
   (define wes -1)
   )
  
  )


