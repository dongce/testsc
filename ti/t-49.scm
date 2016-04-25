
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types) 

(define testsc 0 )
(define gbtk 0 )
(define gls -1 )
(define ibs 1 )
(feio
 19
 (lambda ( x )
   (set! testsc 1 )
   (set! gbtk (cadr x))
   (tnset 0 (car x ) (cadr x )))
 (perm (list 'general.track_kind)
       (list
        system_types-track_kind_esm_bearing_track 
        system_types-track_kind_ecm_bearing_track
        system_types-track_kind_aco_bearing_track )))


(feio
 20

 (lambda (x)
   (set! ibs 0 ))
 '( 20 21)
 )
