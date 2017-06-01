
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)
(testsc-require dbid)

(define mid 0 )
(define testsc 1 )


(define sta -1 )
(define sts -1 )
(define con -1 )
(define tor -1 )
(define asw -1 )

(for-each-index-offset
 26
 (lambda (x)
   (anset 0 )
   (set! testsc 1 )
   (set! mid x )
   )
 DB_ID_KSAAM_STATUS                     
 DB_ID_KSSM_EQUIPMENT_STATUS            
 DB_ID_GUN127_BM_AMMUNITION_INVENTORY   
 DB_ID_SLTS_STATUS_INFO                 
 DB_ID_KVLA_STATUS_INFO
)

(for-each-index-offset
 31
 (lambda (x)
   (anset 0 )
   (set! testsc 1 )
   (set! mid x )
(set! sta 0 )
(set! sts 0 )
(set! con 0 )
(set! tor 0 )
(set! asw 0 )
   
   )
 DB_ID_KSAAM_STATUS                     
 DB_ID_KSSM_EQUIPMENT_STATUS            
 DB_ID_GUN127_BM_AMMUNITION_INVENTORY   
 DB_ID_SLTS_STATUS_INFO                 
 DB_ID_KVLA_STATUS_INFO
)
