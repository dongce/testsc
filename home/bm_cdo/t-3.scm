
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)

(define testsc 1 )

;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )
   (define ncdo 1)
   (tnset 1 'general.link_state system_types-transmitted_link_state )
   )
  ((2 3 )
   (define ncdo 1)
   (tnset 1 'link11.change_data_order_running 0 )

   )
  )
