
(case (testsc-get-testnum)
  ((1)
   (define mn )
   (mmsg-set
    ;; (list  M5TN   0 0)
    (list  M1MN   SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8)
    ;; (list  M85RELTNTN  SECOND_FRAME_OFFSET 0)
    )
   )
 ((2)
   (define mn )
   (mmsg-set
    ;; (list  M5TN   0 0)
    (list  M1MN   SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8)
    (list  M85RELTNTN  SECOND_FRAME_OFFSET 1)
    )
   ) 
  )

