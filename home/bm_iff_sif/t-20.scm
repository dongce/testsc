
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)
(testsc-debug "t-20")

(case (testsc-get-testnum)
  ((5)
   (define testsc 1 )
   (define ldt 220 )
   (tnset 1 'transmission_info.info_validation 1
          'transmission_info.iff_report_counter 5
          )
   (tnset 2 'transmission_info.info_validation 1
          'general.link_state system_types-transmitted_link_state
          'transmission_info.iff_report_counter 5
          )
   
   (tnset 3 'transmission_info.info_validation 1
          'general.link_state -1
          'transmission_info.iff_report_counter 5
          )


   (tnset 4 'transmission_info.info_validation 1
          )
   (tnset 5 'transmission_info.info_validation 1
          'general.link_state system_types-transmitted_link_state
          )
   
   (tnset 6 'transmission_info.info_validation 1
          'general.link_state -1
          )
   )
  )

