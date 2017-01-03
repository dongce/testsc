


(testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((6)
   (define testsc 1 )
   (mmsg-set 
    '( M9SI 0 -1)
    '( M9SPI 0 -1))
   )
  ((7 8)
   (define testsc 1 )
   (mmsg-set 
    '( M9SI 0 -1)
    '( M9SPI 0 SPI_NO_SPECIAL_PROCESSING_REQUIRED))
   )
  )



