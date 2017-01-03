
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(define id 0 )
(define gi 1 )
(define testsc 1 )
(feio
 1
 (lambda (x)
   (set! id x )
   )
 (num-list -1 16 )
 )

