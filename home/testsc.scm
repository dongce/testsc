(define-macro (testsc-require x)
  `(load (string-append *testsc-home* (symbol->string (quote ,x)) ".scm")))

(define-macro (testsc-init x  initcmd)
  (testsc-set-testnum x)
  `(testsc-require ,initcmd))


(define (t-offset start) (- (testsc-get-testnum) start))

(define (t-offset? start) (> (t-offset start ) -1))

(define (t-offset? start . len)
  (let ((offset (t-offset start )))
    (if (eq? '() len)
        (> offset -1)
        (and (> offset -1) (> (car len ) offset ) ))))

(define (foreach-tnum* offset proc  . args )
  (let ((index 0 ))
    (for-each
     (lambda (x)
       (if ( =  (+ offset index ) (testsc-get-testnum))
           (proc x ))
       (set! index (+ 1 index )))
     args )
    (testsc-debug (string-append  "for-each-index-offset " (number->string (+ offset  index))))))


(define (foreach-tnum offset proc args ) (apply for-each-index-offset offset proc args))
