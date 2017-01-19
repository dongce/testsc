

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)
(testsc-require ew_types)

(define testsc 1 )

(define  gec 0)
(define  general_type 0)

(feio
 3
 (lambda (x)
   (set! gec x))
 (list
  -1
  ew_intelligence_types-surface_category
  ew_intelligence_types-subsurface_category
  ew_intelligence_types-surface_category
  ew_intelligence_types-subsurface_category
  ew_intelligence_types-air_category
  ew_intelligence_types-land_category

  )
 
 )


