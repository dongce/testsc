
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)





(define testsc 1 )
(define ivc 1 )


;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((1)
   (mmsg-set (list  M1MN  SECOND_FRAME_OFFSET MESSAGE_NUMBER_M1)
             (list  M1RP  SECOND_FRAME_OFFSET 1)
             (list  M1MN  THIRD_FRAME_OFFSET MESSAGE_NUMBER_M5)
             ))

  ((8)
   (mmsg-set (list  M1MN  SECOND_FRAME_OFFSET MESSAGE_NUMBER_M1)
             (list  M1RP  SECOND_FRAME_OFFSET 1)
             ;; (list  M5TN     THIRD_FRAME_OFFSET 1) 
             (list  M5POINT  THIRD_FRAME_OFFSET 13)
             (list  M1MN  THIRD_FRAME_OFFSET MESSAGE_NUMBER_M5)
             ))
  
  
  ((2)
   (mmsg-set (list  M1MN  SECOND_FRAME_OFFSET MESSAGE_NUMBER_M5)))

  ((4)
   (mmsg-set
    (list  M81PURU SECOND_FRAME_OFFSET -1)           
    (list  M1MN  SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8)))


  ((3)
   (mmsg-set (list  M1MN  SECOND_FRAME_OFFSET MESSAGE_NUMBER_M1)
             (list  M1RP  SECOND_FRAME_OFFSET 1)
             (list  M81PURU THIRD_FRAME_OFFSET -1)           
             (list  M1MN  THIRD_FRAME_OFFSET MESSAGE_NUMBER_M8)
             ))

  ((5)
   (set! ivc 0)
   (mmsg-set
    (list  M1SPI 0 1 )           
    (list  M1MN  SECOND_FRAME_OFFSET 0)))
  
  )
