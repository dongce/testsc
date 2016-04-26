
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(define testsc 1 )

(feio
 1
 (lambda (x)
   (mmsg-set (car x) (cadr x)  (list M10ACANTPROAMP 0 7))
   )
 
(perm 
 '((M10AORDER  0 ORD_ASSUME_CONTROL)
   (M10AORDER  0 -1))

 '((M10ARC 0 RC_SPARE_1)
   (M10ARC 0 RC_CANT_PROCESS)
   (M10ARC 0 -1)))
 )


(feio
 7
 (lambda (x)
   (mmsg-set (car x) (cadr x) (list M10APURUADDEE 0 -1) )
   )
 
(perm 
 '((M10AORDER  0 ORD_ASSUME_CONTROL)
   )

 '(
   (M10ARC 0 RC_CANT_PROCESS)
   ))
 )

(feio
 8
 (lambda (x)
   (mmsg-set (car x) (cadr x) (list M10ACI 0 CANCEL_ORDER) )
   )
 
(perm 
 '((M10AORDER  0 ORD_ASSUME_CONTROL)
   )

 '(
   (M10ARC 0 RC_CANT_PROCESS)
   ))
 )

(feio
 9
 (lambda (x)
   (mmsg-set (car x) (cadr x)  )
   )
 
(perm 
 '((M10AORDER  0 ORD_ASSUME_CONTROL)
   )

 '(
   (M10ARC 0 RC_COMPLIANCE_REQUIRED)
   ))
 )



  ;; if( network_rx::get_os_data()->get_ownship_pu() != mmsg_buff::single()->get_field_value ( M10APURUADDEE ) ){
  ;;   mmsg_buff::single()->dont_need_to_process( 0 , system_types::aircraft_control) ; 
  ;;   // 처리하지 않습니다. 
  ;;   return ; 
  ;; }

  ;; if( CANCEL_ORDER == mmsg_buff::single()->get_field_value ( M10ACI ) ){
  ;;   mmsg_buff::single()->dont_need_to_process( 0 , system_types::aircraft_control) ; 
  ;;   // 처리하지 않습니다. 
  ;;   return ; 
  ;; }


  ;; if (mmsg_buff::single()->get_field_value ( M10ARC ) == RC_COMPLIANCE_REQUIRED){
  ;;   original_order_received(a_network_track_id , b_network_track_id) ; 
  ;; }
  ;; else {
  ;;   reply_order_received(a_network_track_id , b_network_track_id ) ; 
  ;; }
