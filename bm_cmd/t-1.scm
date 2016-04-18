
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((1)
   (define itn 0 )
   )
  ((15)
   (define testsc 1 )
   (define itn 1)
   (for-each (lambda (x)
               (anset x '_command_order.command 15
                      '_command_order.aframe #x300000
                      )) (num-list 0 15)) 
   )
  
  ((19 20)
   (define testsc 1 )
   (define itn 1)
   (for-each (lambda (x)
               (anset x '_command_order.command 15
                      )) (num-list 0 15)) 
   )
  )
