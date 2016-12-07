

(define testsc 1 )
(define fninc 1 )
(tnset 0 'is_checkouted 1)

(case (testsc-get-testnum)
  ((5)


   (tnset 0 'is_checkouted 1)
   (tnset 1 'is_checkouted 0)
   (tnset 1 'general.network 10 )
   (define fnid 1)

   )
  ((8)
   (tnset 0 'is_checkouted 1)
   (tnset 1 'is_checkouted 0)
   (tnset 1 'general.network 10 )
   (define fnid 3)

   )
  ((10)


   (tnset 10 'is_checkouted 1)
   (tnset 1 'is_checkouted 0)
   (tnset 1 'general.network 10 )
   (tnset 1 'general.NTN 999 )
   (define fnid 1)

   )

  )
