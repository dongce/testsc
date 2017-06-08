(testsc-debug "test")
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(testsc-debug "test")

(case (testsc-get-testnum)
  ((4)
   (define testsc 1 )
   (mmsg (87 4 1) (84 4 -1)))
  ((5)
   (define testsc 1 )
   (mmsg-set  
              (list  M4BLABEL  THIRD_FRAME_OFFSET LABEL_NUMBER_M4B)
              (list  M4BTN  THIRD_FRAME_OFFSET 2 )))
  )
(testsc-debug (number->string testsc))
