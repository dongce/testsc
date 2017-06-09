
(define-macro (testsc-init x  initcmd)
  (testsc-set-testnum x)
  `(testsc-require ,initcmd))



(define (testsc-apply-tdata* offset proc  . args )
  (let ((index 0 ))
    (for-each
     (lambda (x)
       (if ( =  (+ offset index ) (testsc-get-testnum))
           (apply proc x ))
       (set! index (+ 1 index )))
     args )
    (testsc-debug (string-append  "testsc-apply-tdata* next tnum is  " (number->string (+ offset  index))))))


(define (testsc-apply-tdata offset proc args ) (apply testsc-apply-tdata* offset proc args))

