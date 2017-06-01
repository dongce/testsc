
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)

(testsc-require dbid)


(define testsc 1 )

(define netcounts 3 )
(tnset 0 )
(tnset 1  
       'transmission_info.info_validation  1
       'transmission_info.information_difference_counter 1
       'link11.change_data_order_running 1
       'link11.identity_R2indiff_resolve 1
       'general.link_state          -1)  

(tnset 2  
       'transmission_info.info_validation  1
       'transmission_info.information_difference_counter 1
       ;; 'link11.change_data_order_running 1
       ;; 'link11.identity_R2indiff_resolve 1
       'general.link_state          -1)  
