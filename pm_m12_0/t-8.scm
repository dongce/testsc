
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)



(define testsc 1 )
(define gfv 1 )

(mmsg-set 
 '(M1MN SECOND_FRAME_OFFSET MESSAGE_NUMBER_M12)
 '(M1MN THIRD_FRAME_OFFSET MESSAGE_NUMBER_M12)
 '(M12SUBLABEL  SECOND_FRAME_OFFSET 1)
 '(M12SUBLABEL  THIRD_FRAME_OFFSET 2)
 '(M12STIN 0 1  ))



    ;; '(M12SUBLABEL 0 1 )
(case (testsc-get-testnum)
  ((1)
   (mmsg-add
    '( M12DT 0 1 ) 
    '( M12STI 0 1  ) ))
  ((2)
   (mmsg-add '( M12STI 0 100  ) ))

  ((3)
   (define paid 100)
   (tnset 100)
   (mmsg-add '( M12STI 0 1  ) ))

  )
