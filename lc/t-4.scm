(testsc-require l11const)
(testsc-require system_types)
(case (testsc-get-testnum)
  ((7)
   (define rc 1 )
   (define itn 1 )
   (testsc-track-nset   7 (list  'general.link_state system_types-transmitted_link_state)))
  ((8)
   (define rc 1 )
   (define itn 0 ))
  ((9)
   (define rc 1 )
   (define itn 1 )
   (testsc-track-nset   9 (list 'general.link_state   system_types-link_received_only)))
  ((10)
   (define rc 1 )
   (define itn 1 )
   (testsc-track-nset   10 (list 'general.link_state   -1))
   )
  )
