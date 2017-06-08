
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(define testsc 1 )
(define cc 1 )


;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((12)
   (define testsc 1 )
   (define itn 1)
   )

  ((13)
   (define testsc 1 )
   (set! cc 0 )
   )
  ((14)
   (define testsc 1 )
   (define itn 1)
   (define ntdbexc 1)
   )
  ((15)
   (define ntdbexc 1)
   )
  )

