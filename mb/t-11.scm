

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)


(define tnum-start 1)
(define testsc 1 )

(testsc-debug "1")


(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm
  '(
    ( (M1MN        0 MESSAGE_NUMBER_M1 ) (M1RP 0 1) )
    )


  '(
    ( (M1MN        2 MESSAGE_NUMBER_M1) )
    ( (M1MN        2 MESSAGE_NUMBER_M5) )
    ( (M1MN        2 INVALID_FIELD_VALUE) )
    )

  '(
    ( (M1MN        4 INVALID_FIELD_VALUE) )
    ( (M1MN        4 MESSAGE_NUMBER_M5) )
    )
  '(
    ( (M1MN        6 INVALID_FIELD_VALUE) )
    )
  
  ))

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '(
    ((M1MN        0 MESSAGE_NUMBER_M2 ))
    )
  '(
    ( (M1MN        2 MESSAGE_NUMBER_M8 ) )
    ( (M1MN        2 INVALID_FIELD_VALUE)  )
    )

  '(
    ( (M1MN        4 MESSAGE_NUMBER_M2 ) )
    ( (M1MN        4 INVALID_FIELD_VALUE)  )
    ( (M1MN        4 MESSAGE_NUMBER_M8 ) )
    )

  '(
    ( (M1MN        6 MESSAGE_NUMBER_M8 ) )
    ( (M1MN        6 INVALID_FIELD_VALUE)  )
    )

  ))


(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '(
    ((M1MN        0 MESSAGE_NUMBER_M3 ))
    )
  '(
    ( (M1MN        2 MESSAGE_NUMBER_M8 ) )
    ( (M1MN        2 INVALID_FIELD_VALUE)  )
    )

  '(
    ( (M1MN        4 MESSAGE_NUMBER_M3 ) )
    ( (M1MN        4 INVALID_FIELD_VALUE)  )
    ( (M1MN        4 MESSAGE_NUMBER_M8 ) )
    )

  '(
    ( (M1MN        6 MESSAGE_NUMBER_M8 ) )
    ( (M1MN        6 INVALID_FIELD_VALUE)  )
    )

  ))
;;; 31
(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '(
    ((M1MN  0 MESSAGE_NUMBER_M4 ) (M4ALABEL 0 LABEL_NUMBER_M4A) )
    ((M1MN  0 MESSAGE_NUMBER_M4 ) (M4ALABEL 0 LABEL_NUMBER_M4D) )
    )

  '(
    ( (M1MN  2 MESSAGE_NUMBER_M8 ) )
    ( (M1MN  2 INVALID_FIELD_VALUE)  )
    )
  
  '(
    ( (M1MN  4 MESSAGE_NUMBER_M4) (M4BLABEL 4 LABEL_NUMBER_M4B) )
    ( (M1MN  4 MESSAGE_NUMBER_M4) (M4DLABEL 4 LABEL_NUMBER_M4D) (M4DBSW 4 2 ) )
    ( (M1MN  4 INVALID_FIELD_VALUE) (M4BLABEL 4 LABEL_NUMBER_M4B) )
    )

  '(
    ( (M1MN  6 MESSAGE_NUMBER_M8 ) )
    ( (M1MN  6 MESSAGE_NUMBER_M4)  )
    )

  '(
    ( (M1MN  8 MESSAGE_NUMBER_M4) (M4BLABEL 8 LABEL_NUMBER_M4B) )
    ( (M1MN  8 MESSAGE_NUMBER_M8 ) )
    ( (M1MN  8 INVALID_FIELD_VALUE)  )
    )


  
  ))
;;; 103

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '(
    ((M1MN  0 MESSAGE_NUMBER_M4 ) (M4ALABEL 0 LABEL_NUMBER_M4D) )
    )
  '(
    ( (M1MN  2 MESSAGE_NUMBER_M8 ) )
    )
  

  '(
    ( (M1MN  4 MESSAGE_NUMBER_M4) (M4DLABEL 4 LABEL_NUMBER_M4D) (M4DBSW 4 2 ) )
    )
  '(
    ( (M1MN  6 MESSAGE_NUMBER_M4) (M4BLABEL 6 LABEL_NUMBER_M4B) (M4DBSW 4 2 ) )
    ( (M1MN  6 INVALID_FIELD_VALUE) (M4BLABEL 6 LABEL_NUMBER_M4B) (M4DBSW 4 2 ) )
    )


  ))
;;; 105
(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '(
    ((M1MN  0 MESSAGE_NUMBER_M5 )  )
    )

  '(
    ( (M1MN  2 INVALID_FIELD_VALUE)  )
    )
  ))


;;; 106


(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '(
    ((M1MN  0 MESSAGE_NUMBER_M6 ) (M6ALABEL 0 LABEL_NUMBER_M6A) (M6AACT 0 0))
    )

  '(
    ((M1MN  2 MESSAGE_NUMBER_M6 ) (M6ALABEL 0 LABEL_NUMBER_M6A) (M6AACT 0 1))
    ((M1MN  2 MESSAGE_NUMBER_M6 ) (M6ALABEL 0 LABEL_NUMBER_M6A) (M6AACT 0 0))
    )
  ))

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '(
    ((M1MN  0 MESSAGE_NUMBER_M6 ) (M6ALABEL 0 LABEL_NUMBER_M6B) (M6AACT 0 0))
    ((M1MN  0 MESSAGE_NUMBER_M6 ) (M6ALABEL 0 LABEL_NUMBER_M6C) (M6AACT 0 0))
    )

  '(
    ((M1MN  2 MESSAGE_NUMBER_M8 ) )
    ((M1MN  2 INVALID_FIELD_VALUE) ) 
    )
  ))

;;; 112
(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '(
    ((M1MN  0 MESSAGE_NUMBER_M9 ) (M9FLABEL 0 LABEL_NUMBER_M9F) (M9FACT 0 0))
    )

  '(
    ((M1MN  2 MESSAGE_NUMBER_M8 ) )
    ((M1MN  2 INVALID_FIELD_VALUE) ) 
    )
  ))


(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '(
    ((M1MN  0 MESSAGE_NUMBER_M11 ) (M11MLABEL 0 LABEL_NUMBER_M11M) )
    ((M1MN  0 MESSAGE_NUMBER_M11 )  )
    )

  '(
    ((M1MN  2 MESSAGE_NUMBER_M8 ) )
    ((M1MN  2 INVALID_FIELD_VALUE) ) 
    )
  ))

;;; 118


(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '(
    ((M1MN  0 MESSAGE_NUMBER_M12 ) (M12SUBLABEL  0 0 ))
    ((M1MN  0 INVALID_FIELD_VALUE) (M12SUBLABEL  0 1 ))
    )

   '(
    ((M1MN  2 MESSAGE_NUMBER_M12 ) (M12SUBLABEL  2 1 ))
    ((M1MN  2 INVALID_FIELD_VALUE ) (M12SUBLABEL  2 2 ))
    )
   '(
    ((M1MN  4 MESSAGE_NUMBER_M12 ) (M12SUBLABEL  4 2 ))
    ((M1MN  4 INVALID_FIELD_VALUE ) (M12SUBLABEL  4 3 ))
    )
   '(
    ((M1MN  6 MESSAGE_NUMBER_M12 ) (M12SUBLABEL  6 3 ))
    ((M1MN  6 INVALID_FIELD_VALUE ) (M12SUBLABEL  6 4 ))
    )

   '(
    ((M1MN  8 MESSAGE_NUMBER_M12 ) (M12SUBLABEL  8 4 ))
    ((M1MN  8 INVALID_FIELD_VALUE ) (M12SUBLABEL  8 4 ))
    )

   ))

;; 150
(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '(
    ((M1MN  0 MESSAGE_NUMBER_M12 ) (M12SUBLABEL  0 0 ))
    )

   '(
    ((M1MN  2 MESSAGE_NUMBER_M12 ) (M12SUBLABEL  2 1 ))
    )
   '(
    ((M1MN  4 MESSAGE_NUMBER_M12 ) (M12SUBLABEL  4 2 ))
    )
   '(
    ((M1MN  6 MESSAGE_NUMBER_M12 ) (M12SUBLABEL  6 4 ))
    )
   '(
    ((M1MN  8 INVALID_FIELD_VALUE ) (M12SUBLABEL  6 4 ))
    )
   ))
(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '(
    ((M1MN  0 MESSAGE_NUMBER_M12 ) (M12SUBLABEL  0 0 ))
    )

   '(
    ((M1MN  2 MESSAGE_NUMBER_M12 ) (M12SUBLABEL  2 1 ))
    )
   '(
    ((M1MN  4 MESSAGE_NUMBER_M12 ) (M12SUBLABEL  4 2 ))
    )
   '(
    ((M1MN  6 MESSAGE_NUMBER_M12 ) (M12SUBLABEL  6 3 ))
    )
   '(
    ((M1MN  8 INVALID_FIELD_VALUE ) (M12SUBLABEL  6 4 ))
    )
   ))


(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '(
    ((M1MN  0 MESSAGE_NUMBER_M12 ) (M12SUBLABEL  0 0 ))
    )

   '(
    ((M1MN  2 MESSAGE_NUMBER_M12 ) (M12SUBLABEL  2 1 ))
    )
   '(
    ((M1MN  4 MESSAGE_NUMBER_M12 ) (M12SUBLABEL  4 3 ))
    )
   '(
    ((M1MN  6 INVALID_FIELD_VALUE ) (M12SUBLABEL  6 4 ))
    )
   ))

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '(
    ((M1MN  0 MESSAGE_NUMBER_M12 ) (M12SUBLABEL  0 0 ))
    )

   '(
    ((M1MN  2 MESSAGE_NUMBER_M12 ) (M12SUBLABEL  2 3 ))
    )
   '(
    ((M1MN  4 INVALID_FIELD_VALUE ) (M12SUBLABEL  4 4 ))
    )
   ))

;; 154



(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '(
    ((M1MN  0 MESSAGE_NUMBER_M6 ) (M6ALABEL 0 LABEL_NUMBER_M6A) (M6AACT 0 0))
    )

  '(
    ((M1MN  2 MESSAGE_NUMBER_M6 ) (M6ALABEL 0 LABEL_NUMBER_M6A) (M6AACT 2 1))
    ((M1MN  2 INVALID_FIELD_VALUE  ) (M6ALABEL 0 LABEL_NUMBER_M6A) (M6AACT 2 0))
    )
  ))

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '(
    ((M1MN  0 INVALID_FIELD_VALUE ) (M6ALABEL 0 LABEL_NUMBER_M6B) (M6AACT 0 0))
    ((M1MN  0 3807 ) (M6ALABEL 0 LABEL_NUMBER_M6C) (M6AACT 0 0))
    )

  ))


(testsc-debug "tnumber is ")
(testsc-debug (number->string tnum-start))

;; 158

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm
  '(
    ( (M1MN        0 MESSAGE_NUMBER_M1 ) (M1RP 0 0) )
    )
  '(
    ( (M1MN        2 MESSAGE_NUMBER_M1) )
    )
  '(
    ( (M1MN        4 MESSAGE_NUMBER_M8) )
    )
  ))

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm
  '(
    ( (M1MN        0 MESSAGE_NUMBER_M1 ) (M1RP 0 1) )
    )
  '(
    ( (M1MN        2 MESSAGE_NUMBER_M1) )
    )
  '(
    ( (M1MN        4 MESSAGE_NUMBER_M5) )
    )
  '(
    ( (M1MN        6 MESSAGE_NUMBER_M8) )
    )
  ))

(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm
  '(
    ( (M1MN        0 MESSAGE_NUMBER_M1 ) (M1RP 0 1) )
    )
  '(
    ( (M1MN        2 MESSAGE_NUMBER_M5) )
    )
  '(
    ( (M1MN        4 MESSAGE_NUMBER_M8) )
    )
  ))
(for-each
 (lambda (x)
   (if (= tnum-start (testsc-get-testnum))
       (m-set (apply append  x)))
   (set! tnum-start (+ 1 tnum-start)))
 (perm 
  '(
    ((M1MN  0 MESSAGE_NUMBER_M5 )  )
    )

  '(
    ( (M1MN  2 8)  )
    )
  ))

;; 162
