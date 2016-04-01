(testsc-require dlplink11types)
(testsc-require system_types)

(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )
   (define usepar 1 )
   (for-each
    (lambda (x)
      (testsc-track-nset x (list 'transmission_info.track_alert_counter  1))    
      (testsc-track-nset x (list 'transmission_info.info_validation 1))) (num-list 1 5))   
  ))
