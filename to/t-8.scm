
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((105)
   (define testsc 1 )
   (define gs system_types-gridlock_status_aborted)
   (define sd 1)
  )
)
