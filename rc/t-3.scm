(define testsc 1 )

;; const uint8_t DTSCTRL_SOM = 0x02U; 
;; const uint8_t DTSCTRL_EOM = 0x03U; 
;; const uint8_t DTSCTRL_EXTRA = 0xFFU; 


;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((1)
   (astrset 0 "\x02\x21\x83\xBF\xBF")
   ;; (astrset 0 "ABCDEFG")
   (define rslen 191)
   (define idmc-0 1)
   )
  )

