

 
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((2)
   (define testsc 1 )
   (anset 0 )
   )
  ((3)
   (define testsc 1 )
   (anset 0 '_monitor.number_of_data_reports 7)
   )

  
  )

