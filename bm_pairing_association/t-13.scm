
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((15)
   (define testsc 1 )
   (define fepa 2)
   (define allocid 2)
   (anset 0 '_pair_assoc.action -1)
   )
  ((16)
   (define testsc 1 )
   (define fepa 2)
   (define allocid 2)
   (anset 0 '_pair_assoc.action -1)
   (anset 2 '_pair_assoc.action 1)
   )

  )


