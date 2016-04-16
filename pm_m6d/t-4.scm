

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
 RC_COMPLIANCE_REQUIRED
 RC_NO_COMPLIANCE
 RC_MACHINE_RECEIPT
 RC_CANT_COMPLY
 RC_WILL_COMPLY)



(for-each-index-offset
 11
 (lambda (x)
   (set! testsc 1 )
   (set! m6drc x )
   )
 RC_COMPLIANCE_REQUIRED
 )
