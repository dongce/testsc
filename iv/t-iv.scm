(anset 563)
(anset 918)
(anset 951)


(anset 0
       '_sntds.icb.icb_cmdstate ICB_CS_BUSY
       '_sntds.ocb.ocb_cmdstate OCB_CS_BUSY
       '_sntds.mcb.valid_flag[0] MCB_VF_MAGIC_0
       '_sntds.mcb.valid_flag[1] MCB_VF_MAGIC_1)



;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((3)
   (define vo 1))
  ((4)
   (define adb 1))

  ((5)
   (define cmw 1))

  ((7)
   (for-each (lambda (x) (anset x )) (num-list 1 100))
   (anset 0 '_sntds.mcb.valid_flag[0] 0)
   (anset 0 '_sntds.mcb.valid_flag[1] 0)

   (define mmw 1))
  
  )

