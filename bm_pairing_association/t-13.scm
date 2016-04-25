
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((15)
   (define testsc 1 )
   (anset 0 '_pair_assoc.action system_types-correlation)
  ))

