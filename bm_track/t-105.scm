(testsc-require dlplink11types)
(testsc-require system_types)

(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )
   (define maa 512 )
   (testsc-admin-nset 1 )
   (testsc-track-nset 1 (list 'transmission_info.info_validation 1 ))
   (testsc-track-nset 2 (list 'transmission_info.info_validation 0 ))
   (testsc-track-nset 3 (list 'transmission_info.info_validation 1 ))
   (testsc-track-nset 3 (list 'transmission_info.track_selection.message_kind -1 ))
   (testsc-track-nset 3 (list 'general.ew_intelligence_validity 1 ))))
    


