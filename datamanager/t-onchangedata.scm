
(define i_enStatus 0)
(define m_bEnableCallback 0)
(define i_pchData_0 0)
(define i_pchData_1 0)

(feio
 1
 (lambda (x)
   (set! i_enStatus        (nth 0 x))
   (set! m_bEnableCallback (nth 1 x))
   (set! i_pchData_0       (nth 2 x))
   (set! i_pchData_1       (nth 3 x)))

 (combi '(11 12) '(1) '(4 5 ) '(1 0 )))

