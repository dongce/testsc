
;; (testsc-require l11const)
(testsc-require system_types)
;; (testsc-require dlplink11types)

(define testsc 0 )
(define  priampl -1)
(define  secampl -1)

(feio
 12
 (lambda (x)
   (set! testsc 1 )
   (set! priampl (car x))
   (set! secampl (cadr x))
   )

 '(

   (    system_types-pri_surf_ampl_no_statement     system_types-sec_surf_ampl_no_statement)
   (    system_types-pri_surf_ampl_no_statement     system_types-sec_surf_ampl_carrier)
   (    system_types-pri_surf_ampl_no_statement     system_types-sec_surf_ampl_destroyer)
   (    system_types-pri_surf_ampl_no_statement     system_types-sec_surf_ampl_cruiser)
   (    system_types-pri_surf_ampl_no_statement     system_types-sec_surf_ampl_frigate)
   (    system_types-pri_surf_ampl_no_statement     system_types-sec_surf_ampl_battleship)
   (    system_types-pri_surf_ampl_no_statement     -1)

   (    system_types-pri_surf_ampl_patrol_vessel    system_types-sec_surf_ampl_ASW)
   (    system_types-pri_surf_ampl_patrol_vessel    system_types-sec_surf_ampl_ASUW)
   (    system_types-pri_surf_ampl_patrol_vessel    -1)

   (    system_types-pri_surf_ampl_amphibious       system_types-sec_surf_ampl_landing_ship)
   (    system_types-pri_surf_ampl_amphibious       system_types-sec_surf_ampl_landing_craft)
   (    system_types-pri_surf_ampl_amphibious       system_types-sec_surf_ampl_assault_vessel)
   (    system_types-pri_surf_ampl_amphibious       system_types-sec_surf_ampl_cargo)
   (    system_types-pri_surf_ampl_amphibious       -1)

   (    system_types-pri_surf_ampl_non_naval        system_types-sec_surf_ampl_merchant)
   (    system_types-pri_surf_ampl_non_naval        system_types-sec_surf_ampl_fishing)
   (    system_types-pri_surf_ampl_non_naval        system_types-sec_surf_ampl_leisure)
   (    system_types-pri_surf_ampl_non_naval        system_types-sec_surf_ampl_ACV_Hydro)
   (    system_types-pri_surf_ampl_non_naval        -1)

   (    system_types-pri_surf_ampl_non_combatant    system_types-sec_surf_ampl_fleet_support)
   (    system_types-pri_surf_ampl_non_combatant    system_types-sec_surf_ampl_hospital)
   (    system_types-pri_surf_ampl_non_combatant    system_types-sec_surf_ampl_intelligence)
   (    system_types-pri_surf_ampl_non_combatant    system_types-sec_surf_ampl_ACV_Hydro)
   (    system_types-pri_surf_ampl_non_combatant    system_types-sec_surf_ampl_auxiliary)
   (    system_types-pri_surf_ampl_non_combatant    -1)

   (    system_types-pri_surf_ampl_mine_warfare     system_types-sec_surf_ampl_mine_layer)
   (    system_types-pri_surf_ampl_mine_warfare     system_types-sec_surf_ampl_mine_sweeper)
   (    system_types-pri_surf_ampl_mine_warfare     system_types-sec_surf_ampl_auxiliary)
   (    system_types-pri_surf_ampl_mine_warfare     -1)

   )
 )






