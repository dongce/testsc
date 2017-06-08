(testsc-require dbid)
(testsc-debug "DEBUG TEST")
(define tid 0)

(for-each-index-offset
 1
 (lambda (x)
   (set! tid x ))

DB_ID_COMM_ALERT                        
DB_ID_COMM_ALERT_RESULT_ACK             
DB_ID_COMM_MODIFY_TRACK_INFO            
DB_ID_COMM_NETWORK_TRACK_CANCEL         
DB_ID_COMM_NETWORK_TRACK_INFO           
DB_ID_COMM_PRIMITIVE_TRACK_ADD_INFO_REQ 
DB_ID_COMM_PRIMITIVE_TRACK_INFO         
DB_ID_COMM_SUBSYSTEM_STATUS_INFO        
DB_ID_COMM_SYS_PARAMETER_REQ            
DB_ID_COMM_TDL_CDO                      
DB_ID_COMM_TDL_MAX_RX_TRACK_COUNT       
DB_ID_COMM_TDL_NTN                      
DB_ID_COMM_TDL_POINTER                  
DB_ID_COMM_TDL_TQ_UPDATE                
DB_ID_COMM_TDL_WEAPON_ENGAGEMENT        
DB_ID_LINK11_ADMISSION                  
DB_ID_LINK11_AIRCRAFT_CONTROL           
DB_ID_LINK11_AIRCRAFT_MISSION_STATUS    
DB_ID_LINK11_COMMAND_LINE               
DB_ID_LINK11_COMMAND_ORDER              
DB_ID_LINK11_CONFLICT                   
DB_ID_LINK11_DP_INPUT                   
DB_ID_LINK11_DTS_CONTROL_DATA           
DB_ID_LINK11_DTS_NDDSINTF               
DB_ID_LINK11_NETWORK_TRACK_ADD_INFO     
DB_ID_LINK11_TEST_RESULT
-1

)

