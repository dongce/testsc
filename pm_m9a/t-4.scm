
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)



(define testsc 0 )
(define ic 0 )
(for-each-index-offset
 7
 (lambda (x)
   (set! testsc 1 )
   (set! ic x)
   )
ID_RESULT_C
ID_RESULT_D
ID_RESULT_V
)
