(testsc-require dbid)

(define dbid -1)
(for-each-index-offset
 1
 (lambda (x) (set! dbid x ))
 DB_ID_COMM_TDL_FILTER_INFO   
 DB_ID_LINK11_TDL_OPNOTE_INFO  
 DB_ID_LINK11_IP_INPUT
 0
 )




