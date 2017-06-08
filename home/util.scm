(define (string-join joiner . args)
  (if (null? args) ""
      (apply string-append
             (car args)
             (map (lambda (s) (string-append joiner s)) (cdr args)))))




(define *PI* (* 2 (acos 0 )))
(define *2PI* (* *PI* 2 ))
(define (degree-to-radian degree) (* (/ degree 180.0)  *PI* ))
(define (radian-to-degree radian) (/ (* radian 180.0) *PI*))
(define (meter-to-dm meter) (/ meter 1828.8))
(define (dm-to-meter dm)    (* dm 1828.8))


(define (nth n l)
  (display  l)
  (do ((i 0 (+ i 1)))
      ((>= i n ))
    (set! l (cdr l)))
  (car l))

(define (gen-values values . procs )
  (apply append  (map (lambda (value) (cons value  (map (lambda (proc) (proc value)) procs))) values )))




(define (num-list start end  )
 (do ((result '())
      (i start (+ i 1)))
     ((>= i end) (reverse result ))
   (set! result  (cons i result))))

(define (eval-symbol x)
  (if (symbol? x ) (eval x ) x))

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


(define (remove-duplicates l)
  (cond ((null? l) '())
        ((member (car l) (cdr l))
         (remove-duplicates (cdr l)))
        (else
         (cons (car l) (remove-duplicates (cdr l))))))

(define (switchperm c . args )
  (map (lambda (x) (list c x)) (cons -1  args)))


