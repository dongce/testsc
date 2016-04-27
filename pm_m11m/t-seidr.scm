

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)
(testsc-require ew_types)

(define testsc 1 )

(define  category 0)
(define  general_type 0)

(feio
 1
 (lambda (x)
   (set! category x)
   (set! general_type x)
   )

 (num-list -1 10)
 )


(feio
 13
 (lambda (x)
   (set! category (car x ))
   (set! general_type (cadr x)))
 
 (append 
  (switchperm 
   ew_intelligence_types-surface_category

   ew_intelligence_types-aircraft_sec_surf_ampl_carrier_general
   ew_intelligence_types-sec_surf_ampl_destroyer_general
   ew_intelligence_types-cruiser_general
   ew_intelligence_types-frigate_general
   ew_intelligence_types-patrol_general
   ew_intelligence_types-mine_warfare_general
   ew_intelligence_types-pri_surf_ampl_amphibious_general
   ew_intelligence_types-support_general
   ew_intelligence_types-tanker_general
   ew_intelligence_types-sec_surf_ampl_fishing_boat_general
   ew_intelligence_types-sec_surf_ampl_merchant_general)

  (switchperm 
   ew_intelligence_types-subsurface_category

   ew_intelligence_types-attack_general
   ew_intelligence_types-cruise_msl_general
   ew_intelligence_types-ballistic_msl_general
   ew_intelligence_types-nuclear_sub_general
   ew_intelligence_types-diesel_sub_general
   ew_intelligence_types-other_korea_sub_general)

  (switchperm 
   ew_intelligence_types-surface_category

   ew_intelligence_types-aircraft_sec_surf_ampl_carrier_general
   ew_intelligence_types-sec_surf_ampl_destroyer_general
   ew_intelligence_types-cruiser_general
   ew_intelligence_types-frigate_general
   ew_intelligence_types-patrol_general
   ew_intelligence_types-mine_warfare_general
   ew_intelligence_types-pri_surf_ampl_amphibious_general
   ew_intelligence_types-support_general
   ew_intelligence_types-tanker_general
   ew_intelligence_types-sec_surf_ampl_fishing_boat_general
   ew_intelligence_types-sec_surf_ampl_merchant_general)


  (switchperm 
   ew_intelligence_types-subsurface_category

   ew_intelligence_types-attack_general
   ew_intelligence_types-cruise_msl_general
   ew_intelligence_types-ballistic_msl_general
   ew_intelligence_types-nuclear_sub_general
   ew_intelligence_types-diesel_sub_general
   ew_intelligence_types-other_korea_sub_general)))

