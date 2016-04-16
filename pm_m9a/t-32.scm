
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)


(define testsc 0)
(define gm4r 0 )
(for-each-index-offset
 6
 (lambda (x)
   (set! testsc 1 )
   (set! gm4r x )
   )

 system_types-mode4_accept   
 system_types-mode4_reject   
 system_types-mode4_conflict 
 -1

 
 )


