

 
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((2)
   (define testsc 1 )
   (anset 0 )
   (anset 0 '_monitor.counter_end 3)
   (anset 0 '_monitor.counter_begin 0)
   )

  ((3)
   (define testsc 1 )
   (anset 0 )
   (anset 0 '_monitor.counter_begin 8)
   (anset 0 '_monitor.counter_end 7)
   )
  
  ((12)
   (define testsc 1 )
   (anset 0 )
   (anset 0 '_monitor.counter_begin 8)
   (anset 0 '_monitor.counter_end 7)
   (anset 0 '_monitor.total_error_rate -7)
   )

  
  )

