

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )
   (mmsg-set 
    '( M1MN SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8 )
    '( M86CARPSW  SECOND_FRAME_OFFSET 1 ))
   (tnset 1 'general.track_kind system_types-track_kind_esm_bearing_track ))

  ;; ((2)
  ;;  (mmsg-set 
  ;;   '( M1MN SECOND_FRAME_OFFSET MESSAGE_NUMBER_M8 )
  ;;   '( M86CARPSW  SECOND_FRAME_OFFSET 1 ))
  ;;  (tnset 1 'general.track_kind system_types-track_kind_esm_bearing_track ))
  )

