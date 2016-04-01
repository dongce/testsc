(testsc-require dlplink11types)
(testsc-require system_types)

(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )
   (define maa 512 )

   (for-each
    (lambda (x)
      (tnset x  'transmission_info.info_validation 1) 
      (tnset x  'transmission_info.track_selection.message_kind -1 )
      (tnset x  'general.link_state  system_types-transmitted_link_state))
    (num-list 1 5 ))

   (tnset 1  'transmission_info.info_validation 0)))





