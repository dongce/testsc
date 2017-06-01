
(define tnstart 7)
(for-each
 (lambda (x)
   (if (= tnstart (testsc-get-testnum))
       (tnset 1 'general.track_alert_state x))
   (set! tnstart (+ 1 tnstart)))
 (perm '(system_types-none system_types-emergency system_types-emergency_and_forcetell ) ))

(testsc-debug "tnum is ")
(testsc-debug ( number->string tnstart ))
