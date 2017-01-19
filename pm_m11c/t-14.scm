
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(define testsc 0)
(feio
 5
 (lambda (x)
   ;; (set! testsc 1 )
   (mmsg-set
    (list M11CSENSOR26 0 x)
    (list M11CSENSOR27 0 x)
    (list M11CSENSOR28 0 x)
    (list M11CSENSOR30 0 x)))
 (num-list -1 6)
 )

