
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)


;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)



(define testsc 1 )
(define glm 1 )
(for-each-index-offset
 8
 (lambda (x)
   (set! glm x)
   )
 system_types-data_exchange_link11_mode 
 system_types-receive_link11_mode 

 )
