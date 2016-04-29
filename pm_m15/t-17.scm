
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(define testsc 0 )
(define gfv 0 )

(case (testsc-get-testnum)
  ((2)
   (set! testsc 1 )
   (define gcm 900000000000)
   )
  )

(feio
 3
 (lambda (x)
   (set! testsc 1 )
   (set! gfv 1 )
   (mmsg-add
    '( M15RC 0 WILLCO  )
    (list  M15COMD 0 x )))

 (list
  2
  WEAPONS_FREE
  ENGAGE_TN
  CONDUCT
  ASSUME_DUTIES
  ENGAGE_SSM
  ENGAGE_SSM
  ENGAGE_SSM
  ENGAGE_SSM
  ENGAGE_SSM
  ENGAGE_SSM
   )
 ) 



;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((4)
   (mmsg-add
    '(M15COMMAMPLI 0 1)))

  ((9)
   (define gcm ( * 3600 23 ))
   (mmsg-add
    '(M15TNADDE 0 127)
    '(M15RC 0 ORIGINAL_NO_COMPLIANCE_REQUIRED )
    '(M15COMMAMPLI 0 1)))

  ((10)
   (define gcm ( * 3600 23 ))
   (set! testsc 1 )
   (set! gfv 1 )
   (mmsg-add
    ;; '(M15TNADDE 0 127)
    '(M15RC 0 2)
    '(M15COMMAMPLI 0 1)))

  ((11)
   (define gcm ( * 3600 23 ))
   (set! testsc 1 )
   (set! gfv 1 )
   (mmsg-add
    '(M15TNADDE 0 12)
    '(M15RC 0 ORIGINAL_NO_COMPLIANCE_REQUIRED )
    '(M15COMMAMPLI 0 1)))

  ((12)
   (define gcm ( * 3600 23 ))
   (set! testsc 1 )
   (set! gfv 1 )
   (mmsg-add
    ;; '(M15TNADDE 0 127)
    '(M15RC 0 ORIGINAL_COMPLIANCE_REQUIRED )
    '(M15COMMAMPLI 0 1)))

  
  ;; ((12)
  ;;  (define gcm ( * 3600 23 ))
  ;;  (set! testsc 1 )
  ;;  (set! gfv 1 )
  ;;  (mmsg-add
  ;;   '(M15TNADDE 0 127)
  ;;   '(M15RC 0 ORIGINAL_NO_COMPLIANCE_REQUIRED )
  ;;   '(M15COMMAMPLI 0 1)))
  
  )

