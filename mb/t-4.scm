
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)




(define tnum-start 1)
(define testsc 1 )

(testsc-debug "1")
(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) (list 1001 0 (cadr x ))))
   (set! tnum-start (+ 1 tnum-start)))
 (perm '( 4) '( 0 1 2 3 -1 )))
(testsc-debug "2")

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) (list 1001 0 (cadr x ))))
   (set! tnum-start (+ 1 tnum-start)))
 (perm '( 6  )
       '(0 1 2 3 -1  )))

(testsc-debug "2")
(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) (list 1001 0 (cadr x ))  (list 1016 0 (caddr x))))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '( 9  )
  '( 0  )
  '( 0 1 2 3 4 5 6 -1  )))
(testsc-debug "3")

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) ))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '( 10  ))) 
(testsc-debug "4")

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) (list 1001 0 (cadr x )) (list 1002 0 (caddr x))))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '( 11  )
  '( 0  )
  '( 1 2 3 12 -1  )))
(testsc-debug "5")

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) (list 1001 0 (cadr x )) (list 1002 0 (caddr x))))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
   '( 12  )
   '( 0  )
   '( 0 30 31 -1 )))
(testsc-debug "6")

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) ))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
   '( 1 2 3 5 14 15  )))

(testsc-debug "7")

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) (list 1001 0 (cadr x )) (list 1002 0 (caddr x))))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
   '( 13 )
   '( 0 )
   '( 6 -1  )))
(testsc-debug "8")


(define tnum-start 38)

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) (list 1001 0 0) (list 1003 0 8)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  (list
   MESSAGE_NUMBER_M1 
   MESSAGE_NUMBER_M2 
   MESSAGE_NUMBER_M3 
   MESSAGE_NUMBER_M5 
   MESSAGE_NUMBER_M9 
   MESSAGE_NUMBER_M11
   13
   ))) 

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) (list 1001 0 (cadr x )) (list 1002 0 8) (list 1003 0 8)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  (list  MESSAGE_NUMBER_M4)
  (list 
   LABEL_NUMBER_M4A 
   LABEL_NUMBER_M4C 
   LABEL_NUMBER_M4D 
   (+ 1 LABEL_NUMBER_M4D))))

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (mmsg-set (list 1000 0 (car x )) (list 1001 0 (cadr x )) (list 1003 0 8)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  (list  MESSAGE_NUMBER_M6)
  (list 
   LABEL_NUMBER_M6B 
   LABEL_NUMBER_M6C 
   (+ 1 LABEL_NUMBER_M6C))))
