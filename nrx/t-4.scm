
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)


(define testsc 0 )
(define gfv 0)

(define idv 1 )
(define idv-value 0 )
(feio
 5
 (lambda (x)
   (set! testsc 1 )
   (set! gfv 1)
   (mmsg-set (list M9LABEL 0 x)))

 (list 
  LABEL_NUMBER_M9G
  LABEL_NUMBER_M9D 
  )
 )

