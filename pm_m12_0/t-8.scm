
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
   (mmsg-add
    '(M1MN FOURTH_FRAME_OFFSET MESSAGE_NUMBER_M12)
    '(M12SUBLABEL  FOURTH_FRAME_OFFSET 3)

    '(M1MN FIFTH_FRAME_OFFSET MESSAGE_NUMBER_M12)
    '(M12SUBLABEL  FIFTH_FRAME_OFFSET 4)
    
    '( M12STI 0 1  ) ))

  ((4 5 6 7)
   (define paid 100)
   (tnset 100)
   (mmsg-add

    '(M1MN FOURTH_FRAME_OFFSET MESSAGE_NUMBER_M12)
    '(M12SUBLABEL  FOURTH_FRAME_OFFSET 4)
    
    '( M12STI 0 1  ) ))
  ((8 9 10)
   (define ibs 1 )
   )
  
  )


;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((10)
   (define itn 1 ))
  )




(define ttg   0)
(define ttgid 0)

(feio
 5
 (lambda (x)
   (set! ttg 1)
   (tnset 0 'training_target_kind x))
 '(
   system_types-target_kind_cruiser 
   system_types-target_kind_torpedo
   system_types-target_kind_non_exercise 
   system_types-target_kind_cruiser
   system_types::target_kind_f14
   system_types-target_kind_torpedo
   )
 )

;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((11)
   (define gpts 1 )
   (define gpts-value 2 )
   (define gpts-return  1 ))
  ((12)
   (define gpts 1 )
   (define gpts-value 2 )
   (define gpts-return  0 ))

  ((13)
   (mmsg-add 
    '(M12SUBLABEL  SECOND_FRAME_OFFSET 0)))

  ((14)
   (mmsg-add 
    '(M12SUBLABEL  0 1)))
  
  )

