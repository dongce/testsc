

;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(define ORDER_CANCEL_INDICATOR 1048576) ;1<<20
(case (testsc-get-testnum)
  ((2)
   (define testsc 1)
   (define mas 1 )
   (anset 0 '_aircraft_control.M10AFRAME   ORDER_CANCEL_INDICATOR)
   
   )
  ((4)
   (define testsc 1)
   (define mas 0 )
   (anset 0 )
   
   )

  
  ((3)
   (define testsc 1)
   (define mas 1 )
   (define ita 1 )
   (anset 0)
   )
  )

