

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

   (define testsc 0 )
   (define gfv 0 )


(case (testsc-get-testnum)
  ((3)
   (set! testsc 1 )
   (set! gfv 1 )
   
   )
  )

(feio
 4
 (lambda ( x )
   (mmsg-add 
    '(list M12HEIGHT  SECOND_FRAME_OFFSET x)))
 (list
  0
  1
  352
  511
  351
  5000
  )
 )


;; if((m->get_field_value( M12TT , SECOND_FRAME_OFFSET)!=0010 && 
;;       m->get_field_value( M12TT , SECOND_FRAME_OFFSET)!=0016 && 
;;       m->get_field_value( M12TT , SECOND_FRAME_OFFSET) < 0022)) {
      
;;     for(uint32_t x = m->get_field_value( M12TT , SECOND_FRAME_OFFSET) ; 
;;         // x >= 0 &&
;;           x < sizeof(TT_conversion)/sizeof(system_types::target_kind_e) ; 
;;         x = -1  ){            //for loop 가 1회만 사용되도록 합니다. 내부의 break 에 의해 실제 실행되지 않습니다 .
;;       t->training_target_kind = TT_conversion[x];
;;       break ; 
;;     }
;;   }

;;   //  update height
;;   const uint32_t HGT_DPT = m->get_field_value( M12HEIGHT , SECOND_FRAME_OFFSET);
    
;;   FFXLog(_DLPLINK11,LOG_WAR, "TRAINING TRACK HGT_DPT is %d\n" , HGT_DPT ) ; 

;;   if(m->get_field_value( M12SW , SECOND_FRAME_OFFSET) == 0) {
;;     // HEIGHT
;;     t->general.height_depth_valid = true;

;;     if(HGT_DPT == 0) {
;;       t->general.height_depth = 0.0;
;;     }
;;     else if (HGT_DPT == 1) {
;;       t->general.height_depth = 1125.0 * FOOT_2_METER;
;;     }
;;     else if(HGT_DPT == 352) {
;;       t->general.height_depth = 263325.0 * FOOT_2_METER;
;;     }
;;     else if(HGT_DPT == 511) {
;;       t->general.height_depth = 264375.0 * FOOT_2_METER;
;;     }
;;     else if(HGT_DPT < 352) {
;;       t->general.height_depth = double(HGT_DPT * 750) * FOOT_2_METER;
;;     }
;;     else {
;;       t->general.height_depth_valid = false;
;;     }
;;   }
;;   else {
;;     // DEPTH
;;     t->general.height_depth_valid = true;

;;     if(HGT_DPT == 0) {
;;       t->general.height_depth = 0.0;
;;     }
;;     else if(HGT_DPT == 1) {
;;       t->general.height_depth = -16.0 * FOOT_2_METER;
;;     }
;;     else if(HGT_DPT == 500) {
;;       t->general.height_depth = -8000.0 * FOOT_2_METER;
;;     }
;;     else if(HGT_DPT == 511) {
;;       t->general.height_depth = -8008.0 * FOOT_2_METER;
;;     }
;;     else if(HGT_DPT < 499) {
;;       t->general.height_depth = -1*double(HGT_DPT * 16) * FOOT_2_METER;
;;     }
;;     else {
;;       t->general.height_depth_valid = false;
;;     }


;;   }
;; }
