(define (string-join joiner . args)
  (if (null? args) ""
      (apply string-append
             (car args)
             (map (lambda (s) (string-append joiner s)) (cdr args)))))
(define (testsc-debug . args)
  (let* ((port (open-output-string))
         (result 
          (apply string-join
           " "
           (map
            (lambda (x)
              (display x port)
              (get-output-string port))
            args))))
    (if (testsc-interactive?)
        (begin  (display result ) (display "\n"))
        (testsc-debug-string  result ))
    (close-output-port port)))

(testsc-debug "\n--------------------------------------" )


(define (loadit x)
  (load (symbol->string x)))

;;(define *testsc-home* "t:/ts/")
 ;; (define *testsc-home* "t:/gitdir/tinyscheme/")


(define-macro (testsc-require x)
  `(load (string-append *testsc-home* (symbol->string (quote ,x)) ".scm")))

(define *mmsg* '() )
(define (mmsg-set . args) (set! *mmsg* args))
(define (mmsg-add . args) (set! *mmsg* (append  args *mmsg* )))

(define (m-set  arg) (set! *mmsg* arg))

(define-macro (mmsg . x)
  `(apply mmsg-set (quote ,x)))

(define *PI* (* 2 (acos 0 )))
(define *2PI* (* *PI* 2 ))
(define (degree-to-radian degree) (* (/ degree 180.0)  *PI* ))
(define (radian-to-degree radian) (/ (* radian 180.0) *PI*))
(define (meter-to-dm meter) (/ meter 1828.8))
(define (dm-to-meter dm)    (* dm 1828.8))

(testsc-debug "util2")

(define (nth n l)
  (display  l)
  (do ((i 0 (+ i 1)))
      ((>= i n ))
    (set! l (cdr l)))
  (car l))
(testsc-debug "util5")


;;notwork;;(define-macro (testcase-values tnum-start symbol values)
;;notwork;;  `(define ,symbol (nth (- ( testsc-get-testnum ) ,tnum-start) ,values)))


(testsc-debug "util3")

(define (gen-values values . procs )
  (apply append  (map (lambda (value) (cons value  (map (lambda (proc) (proc value)) procs))) values )))
(testsc-debug "util4")

(define (testcase-track-nset tnum-start tid symbol values)
  (let ((n (- (testsc-get-testnum) tnum-start) ))
    (if (>= n 0 )
        (testsc-track-nset
         tid
         (list symbol (nth n values))))))




(define (num-list start end  )
 (do ((result '())
      (i start (+ i 1)))
     ((>= i end) (reverse result ))
   (set! result  (cons i result))))

(define (eval-symbol x)
  (if (symbol? x ) (eval x ) x))

(define (tnset id . args )
  (testsc-debug "testsc-track-nset")
  (testsc-track-nset id )
  (do ((sym-vals args (cddr sym-vals)))
      ((> 2 (length sym-vals)  ))
    (testsc-debug "testsc-track-nset22")
    (testsc-track-nset id (list (car sym-vals) (eval-symbol  (cadr sym-vals))))))

(define (tnset-values tnum id field  . values )
  (if (t-offset? tnum (length values) )
      (tnset id field (nth (t-offset tnum) values))))


(define (tnset-fields tnum id . field-values )
  (for-each
   (lambda (x)
     (apply tnset-values tnum id (car x) (cdr x)))
   field-values))

(define (tstrset id sym str)
  (testsc-track-strset id (list sym str)))

(define (anset id . args )
  (testsc-admin-nset id)
  (do ((sym-vals args (cddr sym-vals)))
      ((> 2 (length sym-vals)  ))
    (testsc-admin-nset id (list (car sym-vals) (eval-symbol  (cadr sym-vals))))))

(define (astrset id  arg )
  (testsc-admin-nset id)
  (testsc-admin-strset id (list '_buff arg)))


(define (t-offset start) (- (testsc-get-testnum) start))

(define (t-offset? start) (> (t-offset start ) -1))


(define (t-offset? start . len)
  (let ((offset (t-offset start )))
    (if (eq? '() len)
        (> offset -1)
        (and (> offset -1) (> (car len ) offset ) ))))
    
(define (combi . args)
  (if (= 1 (length args))
      (map list (car  args))
      (let ((cdrperm  (apply perm (cdr args))))
        (apply
         append 
         (map
          (lambda (x)
            (map (lambda (y) (cons x y )) cdrperm)) (car args))))))

(define perm combi)                     ;사실 combination 이다. 

(define (for-each-index proc . args )
  (let ((index 0 ))
    (for-each
     (lambda (x)
       (proc index x )
       (set! index (+ 1 index )))
     args )))

(define (for-each-index-offset offset proc  . args )
  (let ((index 0 ))
    (for-each
     (lambda (x)
       (if ( =  (+ offset index ) (testsc-get-testnum))
           (proc x ))
       (set! index (+ 1 index )))
     args )
    (testsc-debug (string-append  "for-each-index-offset " (number->string (+ offset  index))))))


(define ( feio offset proc args ) (apply for-each-index-offset offset proc args))


(define (remove-duplicates l)
  (cond ((null? l) '())
        ((member (car l) (cdr l))
         (remove-duplicates (cdr l)))
        (else
         (cons (car l) (remove-duplicates (cdr l))))))

(define (switchperm c . args )
  (map (lambda (x) (list c x)) (cons -1  args)))
