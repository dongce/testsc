
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)



;; (define L11_EOR 3 )
;; (define L11_PTR 6 )
;; (define L11_PTT 5 )
;; (define L11_PTTB 7 )
;; (define L11_RST 2 )
(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )
   (define fn L11_PTR)
   )
  ((2)
   (define testsc 1 )
   (define fn L11_PTT)
   )

  
  )

