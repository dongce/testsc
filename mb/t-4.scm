


(define tnum-start 1)
(define testsc 1 )


(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) (list 1001 0 (cadr x ))))
   (set! tnum-start (+ 1 tnum-start)))
 (perm '( 4) '( 0 1 2 3 -1 )))

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) (list 1001 0 (cadr x ))))
   (set! tnum-start (+ 1 tnum-start)))
 (perm '( 6  )
       '(0 1 2 3 -1  )))

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) (list 1001 0 (cadr x )) (list 1003 0 (cadddr x)) (list 1002 0 (caddr x))))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '( 9  )
  '( 0  )
  '( 0  )
  '( 0 1 2 3 4 5 6 -1  )))

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) ))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '( 10  ))) 

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) (list 1001 0 (cadr x )) (list 1002 0 (caddr x))))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '( 11  )
  '( 0  )
  '( 1 2 3 12 -1  )))

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) (list 1001 0 (cadr x )) (list 1002 0 (caddr x))))
   (set! tnum-start (+ 1 tnum-start)))
 '(perm 
   '( 12  )
   '( 0  )
   '( 0 30 31 -1 )))

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) (list 1001 0 (cadr x )) (list 1002 0 (caddr x))))
   (set! tnum-start (+ 1 tnum-start)))
 '(perm 
   '( 1 2 3 5 14 15  )))


(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) (list 1001 0 (cadr x )) (list 1002 0 (caddr x))))
   (set! tnum-start (+ 1 tnum-start)))
 '(perm 
   '( 13 )
   '( 0 )
   '( 6 -1  )))

(testsc-debug "testsnumber is ")
(testsc-debug (number->string tnum-start))

