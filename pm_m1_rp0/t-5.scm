
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)





(define testsc 1 )


;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((1)
   (mmsg-set (list  M1MN  SECOND_FRAME_OFFSET MESSAGE_NUMBER_M1)
             (list  M1RP  SECOND_FRAME_OFFSET 1)
             (list  M1MN  THIRD_FRAME_OFFSET MESSAGE_NUMBER_M8)
             ))
  
  ((2)
   (mmsg-set (list  M1MN  SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8)))
  )


