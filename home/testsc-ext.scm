(define *mmsg* '() )
(define (mmsg-set . args) (set! *mmsg* args))
(define (mmsg-add . args) (set! *mmsg* (append  args *mmsg* )))

(define (m-set  arg) (set! *mmsg* arg))

(define-macro (mmsg . x)
  `(apply mmsg-set (quote ,x)))

(define (ext-set id . args )
  (testsc-admin-nset id)
  (do ((sym-vals args (cddr sym-vals)))
      ((> 2 (length sym-vals)  ))
    (let ((value (eval-symbol  (cadr sym-vals))))
      (cond ((string? value)
             (testsc-admin-strset id (list (car sym-vals) value)))
            (else
             (testsc-admin-nset id (list (car sym-vals) value)))))))

