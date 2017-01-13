
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(define testsc 1 )
(define cc 1 )

(case (testsc-get-testnum)
  ((1 2 3  )
   (define itn 1)
   )
  ((4 )
   (define itn 1)
   (define ifexc 1 )
   
   )
  (( 22)
   (define itn 0)
   (define ifexc 1 )
   
   )
  )
