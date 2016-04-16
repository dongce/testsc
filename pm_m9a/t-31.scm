
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)




;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((9)
   (define testsc 1 )
   (tnset 1 'general.iff_data.iff_mode2_validity 0)
   )

    ((10)
   (define testsc 1 )
   (tnset 1 'general.iff_data.iff_mode2 1
          'link11.iff_mode2_conflict_state 1
          )
   )

  )

