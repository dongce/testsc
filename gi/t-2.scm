
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((15)
   (define testsc 1 )
   (define gc system_types-salvo_clear )
   (define gw system_types-no_statement_weapon  )
   )
  )

(if  (t-offset? 16)
     (begin
       (define testsc 1 )
       (define gc (nth
                   (t-offset 16)
                   '(system_types-weapons_free    
                     system_types-weapons_tight   
                     system_types-engage          
                     system_types-assign          
                     system_types-cease_engage    
                     system_types-hold_fire       
                     system_types-cease_fire      
                     system_types-cover) 
                   ))))




