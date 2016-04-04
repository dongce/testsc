(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)


(case (testsc-get-testnum)
  ((20)
   (define testsc 1)
   
   (m-set '((M84DCLASS  SECOND_FRAME_OFFSET 3 )
            (  M84DRANGE  SECOND_FRAME_OFFSET 1)
            (M84DRANGEACC  SECOND_FRAME_OFFSET 1)
            (M84DBA  SECOND_FRAME_OFFSET 3) 
            ))
   )

  (( 21 )
   (define testsc 1)
   (m-set
    '(( M84DBA  SECOND_FRAME_OFFSET 1)
     (  M84DRANGE  SECOND_FRAME_OFFSET 1)
     (M84DRANGEACC  SECOND_FRAME_OFFSET 1))))

  (( 22 )
   (define testsc 1)
   (m-set
    '((M4BTIMESW 12)
      ( M84DBA  SECOND_FRAME_OFFSET 1)
      (  M84DRANGE  SECOND_FRAME_OFFSET 1)
      (M84DRANGEACC  SECOND_FRAME_OFFSET 1))))

  )
