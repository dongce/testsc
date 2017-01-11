(define testsc 1)
(define usedk 1)
(define dk 0)

(anset 0)
(tnset 0 )

(apply
 for-each-index-offset
 1
 (lambda (x)
   (set! dk x))

 (num-list -1 10)
 )


(case (testsc-get-testnum)
  ((9)
   (set! testsc 1 )
   (set! dk 3)
   (define mas 1)
   (anset 0)))

