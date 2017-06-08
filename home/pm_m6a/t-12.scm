
(testsc-debug "t-12")
(case (testsc-get-testnum)
  ((1)
   (define fv 1)
   (mmsg-set
    (list M6ATN 0 0)
    (list M1MN SECOND_FRAME_OFFSET MESSAGE_NUMBER_M6)
    (list M6ALABEL SECOND_FRAME_OFFSET LABEL_NUMBER_M6A)
    (list M6AACT  SECOND_FRAME_OFFSET 1)
    )))
