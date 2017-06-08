
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)

(define testsc 0 )
(define  priampl -1)
(define  secampl -1)

(feio
 17
 (lambda (x)
   (set! testsc 1 )
   (set! priampl (car x))
   (set! secampl (cadr x))
   )
 
'((system_types-pri_asw_refpos_des_sonobuoy system_types-sec_asw_refpos_des_kingpin)
  (system_types-pri_asw_refpos_des_sonobuoy system_types-sec_asw_refpos_des_pattern_centre)
  (system_types-pri_asw_refpos_des_no_statement system_types-sec_asw_refpos_des_sinker)
  (system_types-pri_asw_refpos_des_no_statement system_types-sec_asw_refpos_des_lost_contact))
 )



