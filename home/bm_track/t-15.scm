(testsc-require dlplink11types)
(testsc-require system_types)

(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )
   (define maa 512 )
   (anset 1 '_alert_report.track_alert_state system_types-none )
   (anset 2 '_alert_report.track_alert_state system_types-emergency )
   (anset 3 '_alert_report.track_alert_state system_types-emergency )
   (anset 4 '_alert_report.track_alert_state system_types-emergency )

   (for-each
    (lambda (x)
      (tnset x 'transmission_info.info_validation 1))
    (num-list 1 5 ))

   (for-each
    (lambda (x)
      (tnset x 'general.link_state        system_types-transmitted_link_state))
    (num-list 2 5 ))

   (tnset 2 'general.track_alert_state system_types-emergency)

   (tnset 3 'general.track_alert_state system_types-forcetell)

   (tnset 4 'general.track_alert_state -1)))






