;; (testsc-debug "util")
(define (loadit x)
  (load (symbol->string x)))

(define *testsc-home* "t:/ts/")
;; (define *testsc-home* "t:/gitdir/tinyscheme/")


(define-macro (testsc-require x)
  `(load (string-append *testsc-home* (symbol->string (quote ,x)) ".scm")))

(define-macro (mmsg . x)
  `(apply mmsg-set (quote ,x)))

(define *PI* (* 2 (acos 0 )))
(define *2PI* (* *PI* 2 ))
(define (degree-to-radian degree) (* (/ degree 180.0)  *PI* ))
(define (radian-to-degree radian) (/ (* radian 180.0) *PI*))
(define (meter-to-dm meter) (/ meter 1828.8))
(define (dm-to-meter dm)    (* dm 1828.8))
