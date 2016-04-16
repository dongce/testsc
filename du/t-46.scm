
(define testsc 0)

(define pampl -1)
(define sampl -1)
(apply
 for-each-index-offset
 57
 (lambda (x)
   (set! testsc 1 )
   (set! pampl (car x))
   (set! sampl (cadr x))
   )
 (perm (num-list -1 10) (num-list -1 0)))
