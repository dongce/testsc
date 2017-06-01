(testsc-require system_types)
(define testsc 1 )
(define itd 1)

(case (testsc-get-testnum)
  ((15)
   (define cls 1)
   (define ls system_types-correlated)
   )

  ((17)
   (define cls -1)
   )
  ((18)
   (tnset 1 'general.link_state -1 )
   )

  ((19)
   (set! itd 0  )
   )

  )
