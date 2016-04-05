
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((71)
   (define testsc 1 )
   (tnset 24 'general.track_kind system_types-track_kind_air_point_track))

  ((72)
   (define testsc 1 )
   (tnset 24 'general.track_kind system_types-track_kind_surface_point_track))

  ((73)
   (define testsc 1 )
   (tnset 24 'general.track_kind -1))

  ((80)
   (tnset 8)
   )
  )

(if (> (testsc-get-testnum) 76)
    (define testsc 1 ))


(tnset-fields 77 1 
              '(general.link_state
                system_types-link_received_only   
                system_types-transmitted_link_state
                system_types-correlated))             
