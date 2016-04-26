

;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((6)
   (define testsc 1 )
   (define imrv 1)
   (tnset 0 'supporting_info.info_validation 1 )
   )
  ((7)
   (define testsc 1 )
   (define imrv 1)
   (tnset 0 'supporting_info.info_validation 0 )
   )
  )


