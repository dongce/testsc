(define testsc 1 )
(define fninc 1 )

(case (testsc-get-testnum)
  ((1 2 3 4 5 6  )
   (tnset 0 'general.network 10 )
   (tnset 0 'is_checkouted 1)
   (tnset 1 'is_checkouted 0)
   ))

(case (testsc-get-testnum)
  ((4)
   (tnset 0 'general.network 10 )
   (set! testsc 0 )
   (set! fninc 0)

   )
  ((6)
   (tnset 0 'general.network 10 )
   (set! fninc 0)

   )
  ((7)
   (tnset 1 'general.network 10 )
   (set! fninc 1)
   (tnset 0 'is_checkouted 1)
   (tnset 1 'is_checkouted 1)

   )
  )

