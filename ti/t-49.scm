
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types) 

(define testsc 0 )
(feio
 19
 (lambda ( x )
   (set! testsc 1 )
   (tnset 0 (car x ) (cadr x )))
 (perm (list 'general.track_kind)
       (list
        system_types-track_kind_esm_bearing_track 
        system_types-track_kind_ecm_bearing_track
        system_types-track_kind_aco_bearing_track )))
