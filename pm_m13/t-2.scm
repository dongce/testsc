
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)
(define testsc 1 )
(define gfv 1 )
(define gfv-value 1 )
(define NATIONAL_TAG_SUBLABEL  6 )
(define OPNOTE_SUBLABEL        7 )

(feio
 1
 (lambda (x)
   (set! gfv-value x))
 (list 
  NATIONAL_TAG_SUBLABEL
  OPNOTE_SUBLABEL -1))
