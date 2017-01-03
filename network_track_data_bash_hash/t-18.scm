(define testsc 1 )
(define fninc 1 )


(tnset 0 'is_checkouted 1)
(tnset 1 'is_checkouted 0)


(case (testsc-get-testnum)
  ((6)
   (tnset 0 'general.network 10 )
   (set! fninc 0)

   ))
