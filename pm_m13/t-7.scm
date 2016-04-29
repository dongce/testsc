
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((18)
   (define testsc 1 )
   (define gfv 1 )
   (define gfv-value 0 )
   (define intv 1 )
   (define intv-value 1 )
   (define NATIONAL_TAG_SUBLABEL  6 )
   (define OPNOTE_SUBLABEL        7 ))

  ((19)
   (define testsc 1 )
   (define gfvmmsg 1 )
   (mmsg-set 
    '(M1307EI 0 0)
    '(M1307GI 0 1)
    '(M1307EI SECOND_FRAME_OFFSET 1)
    '(M1307TNM 0 5)))

  ((20)
   (define testsc 1 )
   (define gfvmmsg 1 )
   (mmsg-set 
    '(M1307EI 0 0)
    '(M1307GI 0 1)
    ;; '(M1307EI SECOND_FRAME_OFFSET 1)
    '(M1307TNM 0 5)))

  ((21)
   (define testsc 1 )
   (define gfvmmsg 1 )
   (mmsg-set 
    '(M1307EI 0 0)
    '(M1307GI 0 1)
    '(M1307TI 0 2)
    ;; '(M1307EI SECOND_FRAME_OFFSET 1)
    '(M1307TNM 0 5)))
  ((22)
   (define testsc 1 )
   (define gfvmmsg 1 )
   (mmsg-set 
    '(M1307EI 0 0)
    '(M1307GI 0 1)
    '(M1307TI 0 3)
    ;; '(M1307EI SECOND_FRAME_OFFSET 1)
    '(M1307TNM 0 5)))

  ((23)
   (define testsc 1 )
   (define gfvmmsg 1 )
   (mmsg-set 
    '(M1307EI 0 0)
    '(M1307ADDRESSEE 0 1)
    '(M1307TI 0 2)
    ;; '(M1307EI SECOND_FRAME_OFFSET 1)
    '(M1307TNM 0 5)))

  
  )

