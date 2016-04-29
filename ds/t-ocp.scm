

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(define baudrate 0)


(feio
 1
 (lambda (x)
   (set! baudrate x))
 '(
   0
   50
   75
   110
   134
   150
   200
   300
   600
   1200
   1800
   2400
   4800
   9600
   19200
   38400
   57600
   115200
   230400
   460800
   500000
   576000
   921600
   1000000
   1152000
   1500000
   2000000
   2500000
   3000000
   3500000
   4000000
   -1
   0
   ) 
 )
