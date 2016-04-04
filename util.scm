(testsc-set-debug 1)
(testsc-debug "util")
(define (loadit x)
  (load (symbol->string x)))

(define *testsc-home* "t:/ts/")
;; (define *testsc-home* "t:/gitdir/tinyscheme/")


(define-macro (testsc-require x)
  `(load (string-append *testsc-home* (symbol->string (quote ,x)) ".scm")))

(define *mmsg* '() )
(define (mmsg-set . args) (set! *mmsg* args))
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
  (do ((i 0 (+ i 1)))
      ((>= i n ))
    (set! l (cdr l)))
  (car l))
(testsc-debug "util5")
    
(define-macro (testcase-values tnum-start symbol values)
  `(define ,symbol (nth (- ( testsc-get-testnum ) ,tnum-start) ,values)))


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

(define (tnset-values tnum id field . values )
  (if (t-offset? tnum)
      (tnset field (nth (t-offset tnum) values))))


(define (tnset-fields tnum id . field-values )
  (for-each
   (lambda (x)
     (tnset-values tnum id (car field-values) (cdr field-values)))
   args))

(define (tstrset id sym str)
  (testsc-track-strset id (list sym str)))

(define (anset id . args )
  (testsc-admin-nset id)
  (do ((sym-vals args (cddr sym-vals)))
      ((> 2 (length sym-vals)  ))
    (testsc-admin-nset id (list (car sym-vals) (eval-symbol  (cadr sym-vals))))))

(define (t-offset start) (- (testsc-get-testnum) start))

(define (t-offset? start) (> (t-offset start ) -1))
