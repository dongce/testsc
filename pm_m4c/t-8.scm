(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)


(case (testsc-get-testnum)
  ((4)
   (define testsc 1)
   (m-set '((M4CSW 0 SW_SPARE)))
   )

  
  ((5)
   (define testsc 1)
   (m-set 
    '(
      (M1MN SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8)
      (M1MN   THIRD_FRAME_OFFSET MESSAGE_NUMBER_M4)
      (M4BLABEL  THIRD_FRAME_OFFSET LABEL_NUMBER_M4B))))
  ((6)
   (define testsc 1)
   (m-set 
    '(
      (M1MN SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8)
      (M1MN   THIRD_FRAME_OFFSET MESSAGE_NUMBER_M4)
      (M4BLABEL  THIRD_FRAME_OFFSET -1))))
  ((7)
   (define testsc 1)
   (m-set 
    '(
      (M1MN SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8)
      (M1MN   THIRD_FRAME_OFFSET MESSAGE_NUMBER_M4)
      (M4BTN  THIRD_FRAME_OFFSET -1)
      (M4BLABEL  THIRD_FRAME_OFFSET LABEL_NUMBER_M4B))))
  
  )
