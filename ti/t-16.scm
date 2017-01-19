
(testsc-require dbid)

(define testsc 1)
(define msgid -1)
(feio
 1
 (lambda (x)
   (set! msgid x))
 
 (list 
  -1
  DB_ID_TM_POINT_TRACK_INFO 
  DB_ID_TM_BEARING_TRACK_INFO 
  DB_ID_TM_NOTIFY_TRAINING_TRACK 
  DB_ID_TM_POINT_TRACK_CANCEL 
  DB_ID_TM_BEARING_TRACK_CANCEL 
  DB_ID_EW_PRIMTRK_ADD_INFO 
  DB_ID_HMS_PRIMTRK_ADD_INFO  
  DB_ID_LYNXESM_PRIMTRK_ADD_INFO)) )
