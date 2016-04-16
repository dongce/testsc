

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(define testsc 0 )
(define order 0 )
(for-each-index-offset
 1
 (lambda (x)
   (set! testsc 1 )
   (set! order x)
   )
    system_types-assume_cntrl
    system_types-control_and_engage
    system_types-return_to_base
    system_types-transfer_cntrl
    system_types-launch_heli
    system_types-request_cntrl
    system_types-cancel_handover  
    -1
 )



(case (testsc-get-testnum)
  ((10)
   (set! 1 )
   (set! order  system_types-launch_heli)
   (define itn 1 )
   (define itntn 1 )
   (tnset 0 )
   )
  ((11)
   (set! testsc 1 )
   (set! order  system_types-cancel_handover)
   (define itn 1 )
   (define itntn 1 )
   (tnset 0 )
   )

  ((12)
   (tnset 0 )
   (set! testsc 1 )
   (set! order  system_types-assume_control)
   (define itntn 1 )
   )
  
  )

