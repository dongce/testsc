(testsc-require l11const)
(testsc-require system_types)

(case (testsc-get-testnum)
  ((10)
   (define fv 1 )
   (mmsg-set (list M6ATE  SECOND_FRAME_OFFSET 3))
   (testsc-track-nset 1 (list 'general.ecm_data.threat_evaluation  system_types-threat) ))
  ((11)
   (testsc-track-nset 1  (list 'general.esm_data.threat_evaluation   system_types-non_threat ) ))
  ((12)
   (testsc-track-nset 1  (list 'general.esm_data.threat_evaluation   system_types-unknown_threat_evaluation) ))
  ((13)
   (testsc-track-nset 1  (list 'general.esm_data.threat_evaluation   system_types-pending_threat_evaluation) )))


