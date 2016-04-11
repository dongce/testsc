
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)
(define testsc 1 )

(for-each-index
 (lambda (index arg)
   (if (= (testsc-get-testnum) (+ 6  index))
       (tnset 1 'general.link_state arg)
       ))
 
 system_types-transmitted_link_state
 system_types-not_link_involved 
 system_types-prohibit          
 -1)


