(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)


(define testsc 1 )
(define itd 1 )



(case (testsc-get-testnum)
  ((10)
   (tnset 1 'general.link_state system_types-link_received_only
          'general.network_track_phase system_types-wiped
          )
   )
  ((11)
   (tnset 1 'general.link_state system_types-correlated
          'general.network_track_phase system_types-wiped
          )
   (define cls 1)
   (define ls system_types-correlated)
   )
  ((12)
   (tnset 1 'general.link_state -1
          'general.network_track_phase system_types-wiped
          )
   )
  ((13)
   (define itd 0 )
   (tnset 1 'general.link_state -1
          'general.network_track_phase system_types-wiped
          )
   )
  
  )





