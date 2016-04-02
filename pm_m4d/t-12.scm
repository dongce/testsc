(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)


(case (testsc-get-testnum)
  ((1)
   (define testsc 1)
   
   (m-set '(
            ( M1MN SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8 )
            (M84DCLASS  SECOND_FRAME_OFFSET 3 )
            ( M84DSW  SECOND_FRAME_OFFSET 0  )
            (M1MN THIRD_FRAME_OFFSET MESSAGE_NUMBER_M4 )
            (M4BLABEL  THIRD_FRAME_OFFSET LABEL_NUMBER_M4B )
            ))
   )


  ((2)
   (define testsc 1)
   
   (m-set '(
            ( M1MN SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8 )
            (M84DCLASS  SECOND_FRAME_OFFSET 3 )
            ( M84DSW  SECOND_FRAME_OFFSET 0  )
            (M1MN THIRD_FRAME_OFFSET MESSAGE_NUMBER_M4 )
            ( M4BTN  THIRD_FRAME_OFFSET -1 )
            (M4BLABEL  THIRD_FRAME_OFFSET LABEL_NUMBER_M4B )
            ))
   )
  
  ((3)
   (define testsc 1)
   (m-set '(
            ( M1MN SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8 )
            (M84DCLASS  SECOND_FRAME_OFFSET 3 )
            ( M84DSW  SECOND_FRAME_OFFSET 0  )

            (M1MN THIRD_FRAME_OFFSET MESSAGE_NUMBER_M4 )
            (M4BLABEL  THIRD_FRAME_OFFSET -1)
            (M4DLABEL  THIRD_FRAME_OFFSET LABEL_NUMBER_M4D )
            
            ( M4DBSW  THIRD_FRAME_OFFSET 2 )
            
            (M1MN FOURTH_FRAME_OFFSET MESSAGE_NUMBER_M4 )
            (M4BLABEL  FOURTH_FRAME_OFFSET LABEL_NUMBER_M4B )

            ))
   )
  
  ((4)
   (define testsc 1)
   (m-set '(
            ( M1MN SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8 )
            (M84DCLASS  SECOND_FRAME_OFFSET 3 )
            ( M84DSW  SECOND_FRAME_OFFSET 0  )

            (M1MN THIRD_FRAME_OFFSET MESSAGE_NUMBER_M4 )
            (M4BLABEL  THIRD_FRAME_OFFSET -1)
            (M4DLABEL  THIRD_FRAME_OFFSET LABEL_NUMBER_M4D )
            
            ( M4DBSW  THIRD_FRAME_OFFSET 2 )
            
            (M1MN FOURTH_FRAME_OFFSET MESSAGE_NUMBER_M4 )
            (M4BLABEL  FOURTH_FRAME_OFFSET LABEL_NUMBER_M4B )
            (M4BTN  FOURTH_FRAME_OFFSET -1)

            ))
   )

  ((5)
   (define testsc 1)
   (m-set '(
            ( M1MN SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8 )
            (M84DCLASS  SECOND_FRAME_OFFSET 3 )
            ( M84DSW  SECOND_FRAME_OFFSET 0  )

            (M1MN THIRD_FRAME_OFFSET MESSAGE_NUMBER_M4 )
            (M4BLABEL  THIRD_FRAME_OFFSET -1)
            (M4DLABEL  THIRD_FRAME_OFFSET LABEL_NUMBER_M4D )
            
            ( M4DBSW  THIRD_FRAME_OFFSET 2 )
            ( M84DSW  FOURTH_FRAME_OFFSET 1 )
            
            (M1MN FOURTH_FRAME_OFFSET MESSAGE_NUMBER_M8 )
            (M4BLABEL  FOURTH_FRAME_OFFSET LABEL_NUMBER_M4B )
            (M4BTN  FOURTH_FRAME_OFFSET -1)

            (M1MN FIFTH_FRAME_OFFSET MESSAGE_NUMBER_M4 ) 
            (M4DLABEL  FIFTH_FRAME_OFFSET LABEL_NUMBER_M4B  )
            (M4BTN  FIFTH_FRAME_OFFSET 0)
            
            ))
   )


  ((6)
   (define testsc 1)
   (m-set '(
            ( M1MN SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8 )
            (M84DCLASS  SECOND_FRAME_OFFSET 3 )
            ( M84DSW  SECOND_FRAME_OFFSET 0  )

            (M1MN THIRD_FRAME_OFFSET MESSAGE_NUMBER_M4 )
            (M4BLABEL  THIRD_FRAME_OFFSET -1)
            (M4DLABEL  THIRD_FRAME_OFFSET LABEL_NUMBER_M4D )
            
            ( M4DBSW  THIRD_FRAME_OFFSET 2 )
            ( M84DSW  FOURTH_FRAME_OFFSET 1 )
            
            (M1MN FOURTH_FRAME_OFFSET MESSAGE_NUMBER_M8 )
            (M4BLABEL  FOURTH_FRAME_OFFSET LABEL_NUMBER_M4B )
            (M4BTN  FOURTH_FRAME_OFFSET -1)

            
            (M1MN FIFTH_FRAME_OFFSET MESSAGE_NUMBER_M4 ) 
            (M4DLABEL  FIFTH_FRAME_OFFSET LABEL_NUMBER_M4B  )
            (M4BTN  FIFTH_FRAME_OFFSET -1)
            ))
   )

  
  ;; ((3)
  ;;  (define testsc 1)
   
  ;;  (m-set '(
  ;;           ( M1MN SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8 )
  ;;           (M84DCLASS  SECOND_FRAME_OFFSET 3 )
  ;;           ( M84DSW  SECOND_FRAME_OFFSET 0  )
  ;;           ))
  ;;  )

  )
