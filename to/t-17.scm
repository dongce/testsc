
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((15)
   (define testsc 1 )
   (define gc system_types-salvo_clear )
   (define gw system_types-no_statement_weapon  )
   )
)

