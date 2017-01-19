(define testsc 1 )

(define mas 1)
(define ewor -1)
(define ewpd 0)
(anset 0 )
(apply
 for-each-index-offset
 1
 (lambda (x)
   (set! ewor x))
 (num-list -1 10)
 )


(for-each-index-offset
 10
 (lambda (x)
   (set! ewpd 2)
   (set! ewor x))
 0
 0
 0
 3
 3
 4
 5
 4
 )


(case (testsc-get-testnum)
  ((5)
   (set! ewpd 2)
   )


  ((3)
   (define ewct 1)
   )
  
  ((11)
   (define ewct 2)
   )

  ((12)
   (define ewct 7)
   (define vacec 1)
   )
  ((13)
   (define ewct 7)
   (define vacec 1)
   )
  ((14)
   (define ewct 7)
   (define vacec 0)
   )
  ((15)
   (define ewct 2)
   (define vacec 1)
   )
  ((16)
   (define ewct 2)
   (define vacec 1)
   )
  ((17)
   (define ewct 1)
   (define vacec 1)
   )
  
  )

