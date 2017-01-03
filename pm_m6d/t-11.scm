

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(define testsc 1 )
(for-each-index-offset
 1

 (lambda (x)
   (mmsg-set (list M6DCTRL 0 x)))
 1
 2
 4
 5
 6
 9
 10
 11
 0
 3
 7
 8
 12
 13
 14
 15
 -1
)
