
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)

(define testsc 1 )
(define  priampl -1)
(define  secampl -1)

(feio
 1
 (lambda (x)
   (set! priampl (car x))
   (set! secampl (cadr x))
   )
 (perm 
  (list 
   system_types-pri_air_ampl_fixed_wing
   system_types-pri_air_ampl_helicopter
   system_types-pri_air_ampl_civilian
   system_types-pri_air_ampl_missile
   -1)
  (remove-duplicates
   (list
    -1
    system_types-sec_air_ampl_aew             
    system_types-sec_air_ampl_asw             
    system_types-sec_air_ampl_atds            
    system_types-sec_air_ampl_awacs           
    system_types-sec_air_ampl_bomber          
    system_types-sec_air_ampl_cap             
    system_types-sec_air_ampl_drone_rpv       
    system_types-sec_air_ampl_ecm_jammer      
    system_types-sec_air_ampl_esm             
    system_types-sec_air_ampl_fighter         
    system_types-sec_air_ampl_fixed_wing      
    system_types-sec_air_ampl_gunship         
    system_types-sec_air_ampl_helicopter      
    system_types-sec_air_ampl_interceptor     
    system_types-sec_air_ampl_logistic        
    system_types-sec_air_ampl_mil_training    
    system_types-sec_air_ampl_mpa             
    system_types-sec_air_ampl_no_statement    
    system_types-sec_air_ampl_reconnaissance  
    system_types-sec_air_ampl_rescap          
    system_types-sec_air_ampl_rtb             
    system_types-sec_air_ampl_sar             
    system_types-sec_air_ampl_special_mission 
    system_types-sec_air_ampl_tanker          
    system_types-sec_air_ampl_transport       
    system_types-sec_air_ampl_vs              ))))


