


;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)
(define r2d -30.9999)

(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )
   (define r2d 96)
   )

  ((2)
   (define testsc 1 )
   (define r2d 30.9999)
   )

  ((3)
   (define testsc 1 )
   (define r2d -30.9999)
   )
  ((4)
   (define testsc 1 )
   (define r2d 80.9999)
   )
  ((5)
   (define testsc 1 )
   (define r2d -80.9999)
   )
  
  )

