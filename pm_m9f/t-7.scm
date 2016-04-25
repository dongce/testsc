
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)


(define  Env_Cat_Air          1)
(define  Env_Cat_Surface      2)
(define  Env_Cat_Subsurface   3)
(define  Src_EW               1)
(define  Src_Intel            2)
(define  Src_Sosus            3)
(define  Src_ASW_Sensor       4)
(define testsc 0 )


(feio
 6
 (lambda (x)
   (set! testsc 1 )
   (mmsg-set
    (list M89FCAT  SECOND_FRAME_OFFSET (car x))
    (list M89FSRC  SECOND_FRAME_OFFSET (cadr x)))

   )
 

 '((Env_Cat_Air            Src_EW)
   (Env_Cat_Surface        Src_Intel)
   (Env_Cat_Subsurface     Src_Sosus)
   (Env_Cat_Air            Src_ASW_Sensor)))





