
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)

(define testsc 1 )
(define  priampl -1)
(define  secampl -1)

(feio
 1
 (lambda (x)
   (set! priampl (car x))
   (set! secampl (cadr x))
   )
 (perm 
  (list 
   system_types-pri_air_ampl_fixed_wing
   system_types-pri_air_ampl_helicopter
   system_types-pri_air_ampl_civilian
   system_types-pri_air_ampl_missile
   -1)
  (num-list -1 20)))


