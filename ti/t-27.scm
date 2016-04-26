
(define testsc 1)
(define ewprim 1)
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
