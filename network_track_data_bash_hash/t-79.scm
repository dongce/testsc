
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((4)
   (testsc-set-debug 0 )
   (define testsc 1 )
   (define fnid 1)
   (tnset 1 )
   )
  ((5)
   (testsc-set-debug 0 )
   (define testsc 1 )
   (define fninc 1)
   (tnset  0)
   (tnset  1)
   )
  )

