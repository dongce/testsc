
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((41)
   (define testsc 1 )
   (define tk system_types-track_kind_aco_bearing_track )
   (define pca system_types-pri_aco_clas_amp_sonobuoy )
   )
)
