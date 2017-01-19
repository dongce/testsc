
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
        system_types-track_kind_aco_bearing_track
        system_types-track_kind_aco_bearing_track
        system_types-track_kind_aco_bearing_track
        )))


(feio
 20

 (lambda (x)
   (set! ibs 0 )
   (if (= 21 x)
       (tnset 0 'general.network_track_phase system_types-wiped))
   )
 '( 20 21 )
 )


;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((22)
   (define testsc 1 )
   (set! ibs 0 )
   (tnset 0
          'own_or_lro       lro_track
          'general.tactical 111)
   (define findint 1)
   (define findint-value 111)
   )

  ((23)
   (define testsc 1 )
   (set! ibs 0 )
   (set! gls 0 )
   
   (tnset 0
          'own_or_lro       lro_track
          'general.tactical 111)
   (define findint 1)
   (define findint-value 0))
  
  )


