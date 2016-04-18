
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((8)
   (define testsc 1 )
   (tnset 6)
   )
  ((13)
   (for-each (lambda (x) (anset x )) (num-list 0 10))
   )
  )

