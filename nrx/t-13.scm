
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)


(define testsc 1 )
(define gfv 1)


(feio
 1
 (lambda (x)
   (mmsg-set (list M9LABEL 0 x)))

 (list 
  LABEL_NUMBER_M9F 
  LABEL_NUMBER_M9A 
  LABEL_NUMBER_M9B 
  LABEL_NUMBER_M9C 
  LABEL_NUMBER_M9D 
  LABEL_NUMBER_M9E 
  LABEL_NUMBER_M9G
  -1
  )
 )

