

;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)




;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((4)
   (define testsc 1 )
   (for-each
    (lambda (x)
      (tnset x 'transmission_info.info_validation 0
             'transmission_info.iff_difference_diference_clear_counter_mode1 x
             'transmission_info.iff_difference_diference_clear_counter_mode2 x
             'transmission_info.iff_difference_diference_clear_counter_mode3 x
             'transmission_info.iff_difference_clear_isac_mode1 -1
             'general.link_state system_types-transmitted_link_state
             )) (num-list 0 20))


   (tnset 11 'transmission_info.info_validation 0
          'transmission_info.iff_difference_diference_clear_counter_mode2 0))
  
  ((5)
   (define testsc 1 )
   (for-each
    (lambda (x)
      (tnset x 'transmission_info.info_validation 0
             'general.link_state -1
                      )) (num-list 0 10))
   
   )
  ((6)
   (define testsc 1 )
   (for-each
    (lambda (x)
      (tnset x 'transmission_info.info_validation 0
             'transmission_info.iff_difference_diference_clear_counter_mode4 x
             'general.link_state -1
             )) (num-list 0 10))
   
   )

  )







