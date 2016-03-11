(testsc-debug "util")
(define (loadit x)
  (load (symbol->string x)))

(define-macro (mmsg . x)
  `(apply mmsg-set (quote ,x)))
