
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(define testsc 0 )
(define itn 1)
(apply
 for-each-index-offset
 5
 (lambda (x)
   (set! testsc 1 )
   (anset 0 '_command_order.command x))

 (num-list -1 30)
                       )
