(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)


(define  Spare1  6)


(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )
   (mmsg-set '( M2ID 0 Spare1)))

  ((2)
   (define testsc 1 )
   (mmsg-set
    '(M1MN  SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8)
    '(M1MN THIRD_FRAME_OFFSET MESSAGE_NUMBER_M2)
    '(M1MN  FOURTH_FRAME_OFFSET MESSAGE_NUMBER_M8)
    ))
  ((3)
   (define testsc 1 )
   (mmsg-set
    '(M1MN  SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8)
    '(M1MN THIRD_FRAME_OFFSET MESSAGE_NUMBER_M2)
    '(M1MN  FOURTH_FRAME_OFFSET MESSAGE_NUMBER_M8)
    ))
  ((4)
   (define testsc 1 )
   (mmsg-set
    '(M1MN  SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8)
    '(M82TN SECOND_FRAME_OFFSET -1)
    '(M1MN THIRD_FRAME_OFFSET MESSAGE_NUMBER_M2)
    '(M1MN  FOURTH_FRAME_OFFSET MESSAGE_NUMBER_M8)
    ))
  
  
  )




