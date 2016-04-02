(testsc-debug "debug1")
(testsc-require l11const)
(testsc-debug "debug1")
(testsc-require system_types)
(testsc-debug "debug1")
(testsc-require dlplink11types)

(testsc-debug "debug1")
(case (testsc-get-testnum)
  ((7)
   (define testsc 1 )
   (testsc-debug "debug2")
   (mmsg-set
    '(M84ACBI  SECOND_FRAME_OFFSET -1)
    '(M84ASPEED  SECOND_FRAME_OFFSET 127 ))

   )
  ((8)
   (define testsc 1 )
   (testsc-debug "debug2")
   (m-set
    '((M84ACBI  SECOND_FRAME_OFFSET -1)
      (M84ASPEED  SECOND_FRAME_OFFSET -1 )))

   )
  
  )
