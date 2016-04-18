
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((2)
   (define testsc 1 )
   (define itn 1)
   (anset 1 '_command_order.order_reply -1)
   (anset 2
          '_command_order.order_reply system_types-original 
          '_command_order.command_counter 8))

   (anset 3
          '_command_order.order_reply system_types-original 
          '_command_order.command_counter 1))

  )
