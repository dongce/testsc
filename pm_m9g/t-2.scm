
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(define  South  1)
(define  West   1)

(case (testsc-get-testnum)
  ((2)
   (define testsc 1 )
   
   (mmsg-set 
    (list M9GNS 0 South)
    (list M9GEW 0 West))
   )
  )
