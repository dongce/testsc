
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ;; ((8)
  ;;  (define testsc 1 )
  ;;  (define m4valid 0 )
  ;;  )
  ;; ((9)
  ;;  (define testsc 1 )
  ;;  (define m4valid 1 )
  ;;  (define m4res  system_types-mode4_accept) 
  ;;  )
  ;; ((10)
  ;;  (define testsc 1 )
  ;;  (define m4valid 1 )
  ;;  (define m4res  system_types-mode4_reject) 
  ;;  )
  ;; ((11)
  ;;  (define testsc 1 )
  ;;  (define m4valid 1 )
  ;;  (define m4res  system_types-mode4_conflict) 
  ;;  )
  ((13)
   (define testsc 1 )
   (mmsg-set '(M11DSW 0  0))
   )
  ((14)
   (define testsc 1 )
   (mmsg-set '(351 0  1))
   )
  ((15)
   (define testsc 1 )
   (mmsg-set '(M11DSW 0  -1))
   )

  
  )

