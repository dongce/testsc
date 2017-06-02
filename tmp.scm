(define (perm . args)
  (if (= 1 (length args))
      (map list (car  args))
      (let ((cdrperm  (apply perm (cdr args))))
        (map
         (lambda (x)
           (map (lambda (y) (cons x y )) cdrperm)) (car args)))))
