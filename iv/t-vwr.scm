
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((2)
   (anset 0
          '_sntds.icb.icb_cmdrs OCB_CRS_IN_USE
          )
   (define vw-0 1)
   )
  ((4)
   (anset 0
          '_sntds.icb.icb_cmdstate (+ 1 ICB_CS_FINISHED)
          '_sntds.icb.ircv_number 100
          '_sntds.icb.icb_cmdrs ICB_CRS_STOP_EI
          )
   (anset 80)
   (define vw-1 1)
   (define vw-2 1)
   (define vdr 1)
   )
   ((5)
   (anset 0
          '_sntds.icb.icb_cmdstate (+ 1 ICB_CS_FINISHED)
          '_sntds.icb.ircv_number 100
          '_sntds.icb.icb_cmdrs ICB_CRS_STOP_EI
          )
   (anset 80)
   (define vdr 0)
   (define vw-1 1)
   (define vw-2 1)
   )
 
  )
