
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)


(define testsc 1)

(tnset 0)
(apply for-each-index-offset
 1
 (lambda (x)
   (mmsg-set (list  M9ACT 0 x))
   )


 (num-list 0 10)
 
 )



;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((13)
   (define testsc 1 )
   (mmsg-set (list  M9ACT 0 1)
             '(M9AC1CI 0 1 )))
  ((14)
   (define testsc 1 )
   (mmsg-set (list  M9ACT 0 -1)
             '(M9AC1CI 0 1 )
             )
   
   )
  ((6)
   (define testsc 1 )
   (mmsg-add (list  M9SI 0 SIMULATED_TRACK)))

  ((15)
   (define testsc 1 )
   (mmsg-set (list  M9ACT 0 1)
             '(M9AC1CI 0 1 )
             (list M9ENVCAT 0 ENV_CAT_AIR )
             ))
  
  )

