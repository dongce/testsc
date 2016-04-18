
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )
   (tnset 0 'link11.change_data_order_running 1 )
   )
  )

