
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)

(define testsc 0 )
(define  priampl -1)
(define  secampl -1)

(feio
 21
 (lambda (x)
   (set! testsc 1 )
   (set! priampl (car x))
   (set! secampl (cadr x))
   )

 '(

   (system_types-pri_gen_refpos_des_hazard                        system_types-sec_gen_refpos_des_no_statement)
   (system_types-pri_gen_refpos_des_hazard                        system_types-sec_gen_refpos_des_mine)
   (system_types-pri_gen_refpos_des_hazard                        system_types-sec_gen_refpos_des_navigational)
   (system_types-pri_gen_refpos_des_hazard                        system_types-sec_gen_refpos_des_oil_rig)
   (system_types-pri_gen_refpos_des_harbour                       system_types-sec_gen_refpos_des_point_a)
   (system_types-pri_gen_refpos_des_harbour                       system_types-sec_gen_refpos_des_point_0)
   (system_types-pri_gen_refpos_des_harbour                       system_types-sec_gen_refpos_des_point_x)
   (system_types-pri_gen_refpos_des_harbour                       system_types-sec_gen_refpos_des_point_y)
   (system_types-pri_gen_refpos_des_route                        system_types-sec_gen_refpos_des_rendezvous)
   (system_types-pri_gen_refpos_des_route                        system_types-sec_gen_refpos_des_diversion)
   (system_types-pri_gen_refpos_des_route                        system_types-sec_gen_refpos_des_waypoint)
   (system_types-pri_gen_refpos_des_route                        system_types-sec_gen_refpos_des_pim)
   (system_types-pri_gen_refpos_des_route                        system_types-sec_gen_refpos_des_point_r)
   (system_types-pri_gen_refpos_des_weapon                       system_types-sec_gen_refpos_des_entry_point_or_aming_point)
   (system_types-pri_gen_refpos_des_weapon                       system_types-sec_gen_refpos_des_ground_zero)
   (system_types-pri_gen_refpos_des_weapon                       system_types-sec_gen_refpos_des_msl_detect_point)
   (system_types-pri_gen_refpos_des_weapon                       system_types-sec_gen_refpos_des_impact_point)
   (system_types-pri_gen_refpos_des_emergency                    system_types-sec_gen_refpos_des_man_in_water)
   (system_types-pri_gen_refpos_des_emergency                    system_types-sec_gen_refpos_des_ditched_a_slash_c)
   (system_types-pri_gen_refpos_des_emergency                    system_types-sec_gen_refpos_des_distressed_vessel)
   (system_types-pri_gen_refpos_des_free_format                  system_types-sec_gen_refpos_des_diversion)
   (system_types-pri_gen_refpos_des_free_format                  system_types-sec_gen_refpos_des_artillery)
   (system_types-pri_gen_refpos_des_free_format                  system_types-sec_gen_refpos_des_oribit_point)

   )
 )






