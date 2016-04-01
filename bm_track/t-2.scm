(testsc-require dlplink11types)
(testsc-require system_types)

(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )

   (testsc-track-nset 1 (list 'transmission_info.info_validation 0))    
   (testsc-track-nset 2 (list 'transmission_info.info_validation 1))    
   (testsc-track-nset 2 (list 'general.link_state system_types-not_link_involved ))
   (testsc-track-nset 3 (list 'transmission_info.info_validation 1))    
   (testsc-track-nset 3 (list 'general.link_state system_types-transmitted_link_state))
   (testsc-track-nset 3 (list 'transmission_info.ew_intelligence_counter 1))))

