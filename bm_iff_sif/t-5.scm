

;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)



(define testsc 1)

;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )
   (for-each
    (lambda (x)
      (tnset x 'transmission_info.info_validation 0
             'general.link_state system_types-transmitted_link_state
                      )) (num-list 0 10))
   
   )
  
  ((2)
   (define testsc 1 )
   (for-each
    (lambda (x)
      (tnset x 'transmission_info.info_validation 0
             'general.link_state -1
                      )) (num-list 0 10))
   
   )
  )







