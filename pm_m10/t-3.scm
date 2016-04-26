
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(define testsc 0 )
   

(feio
 13
 (lambda (x)
   (set! testsc 1 )
   (mmsg-set  (list  M10AORDER 0 x ))
   ) 
 (list 
  ORD_ASSUME_CONTROL
  ORD_CONTROL_AND_ENGAGE
  ORD_TRANSFER_CONTROL
  ORD_RETURN_TO_BASE
  ORD_LAUNCH_HELI
  -1))

