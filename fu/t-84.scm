
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)

(define testsc 0 )
(define  cmd -1)
(define  value -1)

(feio
 20
 (lambda (x)
   (set! testsc 1 )
   (set! cmd (car x))
   (set! value (cadr x))
   )

 '(

   (system_types-salvo_clear                 system_types-WEAPON_TYPE_ANY_ALL)
   (system_types-salvo_clear                 system_types-WEAPON_TYPE_AIRCRAFT)
   (system_types-salvo_clear                 system_types-WEAPON_TYPE_MISSILE)
   (system_types-salvo_clear                 system_types-WEAPON_TYPE_CONVENTIONAL)
   (system_types-cease_engage_specific      system_types-no_statement_weapon)
   (system_types-cease_engage_specific      system_types-TORPEDO)
   (system_types-cease_engage_specific      system_types-FIXED_WING_ASW_AIRCRAFT)
   (system_types-cease_engage_specific      system_types-ASW_HELO)
   (system_types-cease_engage_specific      system_types-ASW_MISSILE)
   (system_types-cease_engage_specific      system_types-DEPTH_CHARGE)
   (system_types-cease_engage_specific      system_types-SURF_TO_SURF_MISSILE)
   (system_types-cease_engage_specific      system_types-CONVENTIONAL)
   (system_types-cease_engage_specific      system_types-AIR_TO_SURF_MISSILE)
   (system_types-cease_engage_specific      system_types-SURF_TO_AIR_MISSILE)
   (system_types-cease_engage_specific      system_types-INTERCEPTOR)

   )
 )






