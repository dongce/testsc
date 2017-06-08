
(define testsc 1)
(define ewprim 1)
(define lynxesm 0)
(define  byThreatLevel 0 )
(define  byScanType    0 )
(define  byPRIType    -1 ) 


(feio
 1

 (lambda (x)
   (set! byThreatLevel x))
 (num-list -1 10)
 )

(feio
 1
 (lambda (x)
   (set! byScanType x))
 (num-list -1 4)
 )

(feio
 1
 (lambda (x)
   (set! byPRIType x))
 (num-list -1 6)
 )



(case (testsc-get-testnum)
  ((5)
   (set! ewprim 0 ))
  )


(feio
 23
 (lambda (x)
   (set! ewprim 0)
   (set! lynxesm 1)
   (set! byScanType x))
 
 '(3)
 )

(feio
 23
 (lambda (x)
   (set! ewprim 0)
   (set! lynxesm 1)
   (set! byThreatLevel x))
 
 '(#x0 #x6 #x81 8000)
 )

(feio
 23
 (lambda (x)
   (set! ewprim 0)
   (set! lynxesm 1)
   (set! byPRIType x))
 
(num-list -1 8)
 )



(case (testsc-get-testnum)
  ((1)
   (define ewprim 0)
   (define lynxesm 1)
   
   )
  )
