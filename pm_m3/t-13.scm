

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(define lldc 0)
(define testsc 0)

(feio
 27
 (lambda (x)
   (set! testsc 1)
   (set! lldc x )
   )

 (list
  -1
  ID_RESULT_D 
  ID_RESULT_C 
  ID_RESULT_V) 
 )


