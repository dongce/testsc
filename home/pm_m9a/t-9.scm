
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(define testsc 1 )
(define ic 1 )
(for-each-index
 (lambda (index x)
   (if (= (testsc-get-testnum) (+ 1 index))
       (set! ic   x)
       ))
ID_RESULT_D 
ID_RESULT_C 
ID_RESULT_V 
 )

