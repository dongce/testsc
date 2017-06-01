
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)


(define mas 1 )
(anset 0 )
(define testsc 1)

(for-each-index-offset
 1
 (lambda (x)
   (mmsg-set (list M9BACT 0 x))
   )
 1
 2
 3
 4
 5
 6
 15
 -1
 0
)
