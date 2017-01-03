

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(define testsc 0 )
(define m6drc -1 )
(for-each-index-offset
 1
 (lambda (x)
   (set! testsc 1 )
   (set! m6drc x )
   )
 RC_CANT_COMPLY
 RC_CANT_COMPLY
 RC_CANT_PROCESS
 RC_COMPLIANCE_REQUIRED
 RC_MACHINE_RECEIPT
 RC_NO_COMPLIANCE
 RC_SPARE_1
 RC_SPARE_4
 RC_SPARE_5
 RC_WILL_COMPLY)


(for-each-index-offset
 21
 (lambda (x)
   (set! testsc 1 )
   (set! m6drc x )
   )
 RC_NO_COMPLIANCE
 RC_WILL_COMPLY)
