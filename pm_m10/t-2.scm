
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(define testsc 1 )

(feio
 1
 (lambda (x)
   (mmsg-set (car x) (cadr x)  )
   )
 (perm 

  '(
    (M10AORDER 0  -1)
    (M10AORDER 0  ORD_ASSUME_CONTROL)
    (M10AORDER 0  ORD_CONTROL_AND_ENGAGE)
    (M10AORDER 0  ORD_TRANSFER_CONTROL)
    (M10AORDER 0  ORD_RETURN_TO_BASE)
    (M10AORDER 0  ORD_LAUNCH_HELI))
  '(
    (  M10ARC 0  RC_WILL_COMPLY)
    (  M10ARC 0  RC_CANT_COMPLY)
    (  M10ARC 0  RC_CANT_PROCESS))))


(feio
 19
 (lambda (x)
   (mmsg-set (car x) (cadr x) (list M10APURUADDEE 0 -1) )
   )
 
 (perm 
  '(
    (  M10ARC 0  RC_CANT_PROCESS)
    (M10ARC   0  RC_MACHINE_RECEIPT)
    )

  '(
    (M10ACANTPROAMP  0 -1)
    (M10ACANTPROAMP  0 0)
    (M10ACANTPROAMP  0 1)
    (M10ACANTPROAMP  0 2)
    (M10ACANTPROAMP  0 3)
    (M10ACANTPROAMP  0 4)
    (M10ACANTPROAMP  0 5)
    (M10ACANTPROAMP  0 6))))

