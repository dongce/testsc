
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)



;; static const system_types::track_kind_e pu_kind[] = {system_types::track_kind_surface_point_track,
;;                                                      system_types::track_kind_subsurface_point_track,
;;                                                      system_types::track_kind_gen_refpos,
;;                                                      system_types::track_kind_air_point_track };


(define testsc 0 )
(feio
 36
 (lambda (x)
   (set! testsc 1 )
   (mmsg-set (list  M81ENVCAT  THIRD_FRAME_OFFSET x )))
 
 (num-list 0 4))



;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((40)
   (set! testsc 1 )
   (mmsg-set (list  M81ENVCAT  THIRD_FRAME_OFFSET 1 )
             '(M81SI  THIRD_FRAME_OFFSET 1))
   )

  
  ((41)
   (set! testsc 1 )
   (mmsg-set (list  M81ENVCAT  THIRD_FRAME_OFFSET 3 )
             '(M81SI  THIRD_FRAME_OFFSET 1))
   )
  ((42)
   (set! testsc 1 )
   (mmsg-set (list  M81ENVCAT  THIRD_FRAME_OFFSET 2 )
             (list  M81MU  THIRD_FRAME_OFFSET 1)
             '(M81SI  THIRD_FRAME_OFFSET 1))
   )
  
  )

