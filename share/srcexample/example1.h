#if !defined(_EXAMPLE1_H_DEFINED_)
#define _EXAMPLE1_H_DEFINED_

enum  primary_surface_id_ampl_e {
  pri_surf_ampl_no_statement,
  pri_surf_ampl_combatant,
  pri_surf_ampl_line,
  pri_surf_ampl_patrol_vessel,
  pri_surf_ampl_amphibious,
  pri_surf_ampl_non_naval,
  pri_surf_ampl_non_combatant,
  pri_surf_ampl_mine_warfare,
  pri_surf_ampl_size ,
};

enum  secondary_surface_id_ampl_e {
  sec_surf_ampl_no_statement,
  sec_surf_ampl_carrier,
  sec_surf_ampl_destroyer,
  sec_surf_ampl_ASW,
  sec_surf_ampl_ASUW,
  sec_surf_ampl_underway_replenishment,
  sec_surf_ampl_fleet_support,
  sec_surf_ampl_hospital,
  sec_surf_ampl_mine_layer,
  sec_surf_ampl_mine_sweeper,
  sec_surf_ampl_cruiser,
  sec_surf_ampl_frigate,
  sec_surf_ampl_landing_ship,
  sec_surf_ampl_landing_craft,
  sec_surf_ampl_assault_vessel,
  sec_surf_ampl_intelligence,
  sec_surf_ampl_merchant,
  sec_surf_ampl_fishing,
  sec_surf_ampl_leisure,
  sec_surf_ampl_ACV_Hydro,
  sec_surf_ampl_auxiliary,
  sec_surf_ampl_battleship,
  sec_surf_ampl_cargo,
  sec_surf_ampl_command,
  sec_surf_ampl_sec_surf_ampl_destroyer_AAW,
  sec_surf_ampl_sec_surf_ampl_destroyer_ASW,
  sec_surf_ampl_landing_platform,
  sec_surf_ampl_ocean_research,
  sec_surf_ampl_surfaced_submarine,
  sec_surf_ampl_tanker,
  sec_surf_ampl_size , 
};



enum ESurPrimaryAmp {
  SURPA_INVALID = -1,
  SURPA_NO_STATEMENT,        // 0
  SURPA_VESSEL,              // 1
  SURPA_AMPHIBIOUS,          // 2
  SURPA_MINE_WARFARE,        // 3
  SURPA_PATROL,              // 4
  SURPA_SUPPORT,             // 5
  SURPA_NON_MIL,             // 6
  SURPA_LINE                 // 7
};

enum ESurVesselSecondaryAmp {
  SURSA_INVALID = -1,
  SURSA_NO_STATEMENT,        // 0
  SURSA_CARRIER,             // 1
  SURSA_BATTLESHIP,          // 2
  SURSA_CRUISER,             // 3
  SURSA_DESTROYER,           // 4
  SURSA_FRIGATE              // 5
};

enum ESurAmphSecondaryAmp {
  SURSA_ASSAULT_VESSEL = 1,  // 1
  SURSA_LANDING_SHIP,        // 2
  SURSA_TRANSPORTER,         // 3
  SURSA_LANDING_CRAFT        // 4
};

enum ESurMineSecondaryAmp {
  SURSA_MINE_LAYER = 1,      // 1
  SURSA_MINE_SWEEPER,        // 2
  SURSA_MINE_SEARCHER,       // 3
  SURSA_MINE_SUPPORT,        // 4
  SURSA_MINE_DRONE           // 5
};

enum ESurPatrolSecondaryAmp {
  SURSA_ASW_PATROL = 1,      // 1
  SURSA_SURFACE_PATROL,      // 2
  SURSA_FAST_PATROL          // 3
};

enum ESurSupportSecondaryAmp {
  SURSA_SUB_TENDER = 1,      // 1
  SURSA_TENDER,              // 2
  SURSA_INTELLIGENCE,        // 3
  SURSA_SUPPORT,             // 4
  SURSA_HOSPITAL,            // 5
  SURSA_ACV,                 // 6
  SURSA_POSITION             // 7
};

enum ESurNonMilSecondaryAmp {
  SURSA_MERCHANT = 1,        // 1
  SURSA_FISHING,             // 2
  SURSA_LEISURE,             // 3
  SURSA_POLICE,              // 4
  SURSA_NON_MIL_ACV          // 5
};

enum ESurLineSecondaryAmp {
  SUBSA_TASK_FLEET = 1,      // 1
  SUBSA_TASK_FLOTILLA,       // 2
  SUBSA_TASK_GROUP,          // 3
  SUBSA_CONVOY               // 4    
};


class example1 {
public :
  static int get_sec_surf_ampl(const primary_surface_id_ampl_e priampl ,
                    const secondary_surface_id_ampl_e secampl ) ;     
} ; 
#endif
