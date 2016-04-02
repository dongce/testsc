(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)


(case (testsc-get-testnum)
  ((20)
   (define testsc 1)
   (m-set 
    '((M84CBA  SECOND_FRAME_OFFSET 1)
      (M84CRANGE  SECOND_FRAME_OFFSET 1)))
   )
  ((21)
   (define testsc 1)
   (m-set 
    '((M84CBA  SECOND_FRAME_OFFSET 1)
      ( M84CTREM  SECOND_FRAME_OFFSET 15 )
      (M84CRANGE  SECOND_FRAME_OFFSET 1)))
   )
  
  )
