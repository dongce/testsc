
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types) 

(define testsc 0 )
(define gbtk 0 )
(define gls -1 )
(define ibs 1 )
(feio
 22
 (lambda ( x )
   (set! testsc 1 )
   (set! gbtk (cadr x))
   (tnset 0 'is_changed 1 )
   (tnset 0 (car x ) (cadr x )))
 (perm (list 'general.track_kind)
       (list
system_types-track_kind_air_point_track 
system_types-track_kind_surface_point_track 
system_types-track_kind_subsurface_point_track 
system_types-track_kind_land_point_track 
system_types-track_kind_air_refpos 
system_types-track_kind_asw_refpos 
system_types-track_kind_gen_refpos
system_types-track_kind_datum_refpos
system_types-track_kind_aco_fix_refpos
system_types-track_kind_ecm_fix_refpos
system_types-track_kind_esm_fix_refpos
-1
        )))




(feio
 34

 (lambda (x)
   (set! testsc 1 )
   ;; (set! ibs 0 )
   (tnset 0 'own_or_lro lro_track)
   )
 '( 34 35 36 37 38 39)
 )



(case (testsc-get-testnum)
  ((34)
   (tnset 0 'general.track_existence system_types-training_track)
   )
  ((35)
   (define gi system_types-identity_friend )
   (define ge system_types-air_environment)
   (tnset 0  'cmsdata.identity gi)
   )

  ((36)
   (define gi system_types-identity_friend )
   (define ge system_types-surface_environment)
   (tnset 0  'cmsdata.environment ge)
   (tnset 0  'general.identity gi)
   )
  ((37)
   (define gi system_types-identity_friend )
   (define ge system_types-air_environment)
   (tnset 0 'link11.environment_OSindiff_resolve 1)
   (tnset 0 'link11.identity_OSindiff_resolve 1)
   )

  ((38)
   (define gi system_types-identity_friend )
   (define ge system_types-air_environment)
   (tnset 0  'general.track_kind system_types-track_kind_surface_point_track )
   )
  ((39)
   (define gi system_types-identity_friend )
   (define ge system_types-surface_environment)
   (tnset 0  'general.track_kind system_types-track_kind_air_point_track )
   )
   
)



(case (testsc-get-testnum)
  ((40)
   (set! testsc 1 )
   (set! ibs 0 )
   (tnset 0
          'own_or_lro       lro_track
          'general.tactical 111)
   (define findint 1)
   (define findint-value 111)
   )

  ((41)
   (set! testsc 1 )
   (set! ibs 0 )
   (set! gls 0 )
   
   (tnset 0
          'own_or_lro       lro_track
          'general.tactical 111)
   (define findint 1)
   (define findint-value 0))
  ((42)
   (set! testsc 1 )
   (set! ibs 0 )
   (tnset 0
          'own_or_lro       lro_track
          'general.tactical 111)
   (define findint 1)
   (define findint-value 99)
   )
  ((43)
   (set! testsc 1 )
   (set! ibs 0 )
   (tnset 0
          'own_or_lro       lro_track
          'general.tactical 111
          'general.network_track_phase system_types-wiped
          )
   (define findint 1)
   (define findint-value 99)
   )
  
  )


