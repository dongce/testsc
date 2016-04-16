
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)



(define IFF_CLEAR_1_2_3   0)
(define IFF_CLEAR_1   2)
(define IFF_CLEAR_4   3)
(define IFF_CLEAR_2   4)
(define IFF_CLEAR_3   6)

(define testsc 0 )
(for-each-index-offset
 5
 (lambda (x)
   (set! testsc 1 )
   (mmsg-set (list M9A9MI 0 x))
   )


  2
  4 
  6
  3
 -1
 
 )



