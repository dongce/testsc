
(define testsc 1)
(define ssgen 0)
(apply
 for-each-with-index
 1
 (lambda (x)
   (set! ssgen x)
   )
 
 (num-list -1 20)
 )
