(testsc-require dbid)

(define esi 0 )
(define eos 0 )
(define testsc 0 )

(for-each-index-offset

 1

 (lambda (x)
   (set! testsc 1 )
   (set! esi x)
   )

SUBSYSTEM_ID_ISDL 
SUBSYSTEM_ID_KSSM 
SUBSYSTEM_ID_SLTS 
SUBSYSTEM_ID_GUN  
SUBSYSTEM_ID_SAAM 
SUBSYSTEM_ID_SAAM 
SUBSYSTEM_ID_KVLA
-1)


(if (= 5 (testsc-get-testnum))
    (set! eos 1 )) 
