
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)
(define vo 100)
(anset 1 '_sntds.ccb.ccb_cmdstate CCB_CS_FINISHED)
(anset 2 '_sntds.ccb.ccb_cmdstate CCB_CS_FINISHED)
(anset 3 '_sntds.ccb.ccb_cmdstate CCB_CS_FINISHED)
(anset 5 '_sntds.ccb.ccb_cmdstate CCB_CS_FINISHED)
(anset 5 '_sntds.ccb.ccb_cmdstate CCB_CS_FINISHED)
(anset 6 '_sntds.ccb.ccb_cmdstate CCB_CS_FINISHED)
(anset 7 '_sntds.ccb.ccb_cmdstate CCB_CS_FINISHED)

(case (testsc-get-testnum)
  ((1 )
   (anset 0 '_sntds.ccb.ccb_cmdstate CCB_CS_FINISHED)
   )
  )


