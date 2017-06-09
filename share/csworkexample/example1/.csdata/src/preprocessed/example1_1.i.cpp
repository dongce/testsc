#line 1 "C:\\testsc\\share\\srcexample\\example1.cpp"
#line 1 "C:\\testsc\\share\\csworkexample\\example1\\.csdata\\recent_preinclude.h"
extern unsigned int codescroll_built_in_line_macro;
#line 1 "C:\\testsc\\share\\srcexample\\example1.cpp"
#line 1 "C:\\testsc\\share\\srcexample\\example1.h"



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
  SURPA_NO_STATEMENT,        
  SURPA_VESSEL,              
  SURPA_AMPHIBIOUS,          
  SURPA_MINE_WARFARE,        
  SURPA_PATROL,              
  SURPA_SUPPORT,             
  SURPA_NON_MIL,             
  SURPA_LINE                 
};

enum ESurVesselSecondaryAmp {
  SURSA_INVALID = -1,
  SURSA_NO_STATEMENT,        
  SURSA_CARRIER,             
  SURSA_BATTLESHIP,          
  SURSA_CRUISER,             
  SURSA_DESTROYER,           
  SURSA_FRIGATE              
};

enum ESurAmphSecondaryAmp {
  SURSA_ASSAULT_VESSEL = 1,  
  SURSA_LANDING_SHIP,        
  SURSA_TRANSPORTER,         
  SURSA_LANDING_CRAFT        
};

enum ESurMineSecondaryAmp {
  SURSA_MINE_LAYER = 1,      
  SURSA_MINE_SWEEPER,        
  SURSA_MINE_SEARCHER,       
  SURSA_MINE_SUPPORT,        
  SURSA_MINE_DRONE           
};

enum ESurPatrolSecondaryAmp {
  SURSA_ASW_PATROL = 1,      
  SURSA_SURFACE_PATROL,      
  SURSA_FAST_PATROL          
};

enum ESurSupportSecondaryAmp {
  SURSA_SUB_TENDER = 1,      
  SURSA_TENDER,              
  SURSA_INTELLIGENCE,        
  SURSA_SUPPORT,             
  SURSA_HOSPITAL,            
  SURSA_ACV,                 
  SURSA_POSITION             
};

enum ESurNonMilSecondaryAmp {
  SURSA_MERCHANT = 1,        
  SURSA_FISHING,             
  SURSA_LEISURE,             
  SURSA_POLICE,              
  SURSA_NON_MIL_ACV          
};

enum ESurLineSecondaryAmp {
  SUBSA_TASK_FLEET = 1,      
  SUBSA_TASK_FLOTILLA,       
  SUBSA_TASK_GROUP,          
  SUBSA_CONVOY               
};


class example1 {
public :
  static int get_sec_surf_ampl(const primary_surface_id_ampl_e priampl ,
                    const secondary_surface_id_ampl_e secampl ) ;     
} ; 
#line 2 "C:\\testsc\\share\\srcexample\\example1.cpp"



int example1::get_sec_surf_ampl(const primary_surface_id_ampl_e priampl , 
                                const secondary_surface_id_ampl_e secampl )
{

  switch(priampl){

  case pri_surf_ampl_no_statement     : return SURPA_NO_STATEMENT ; 

  case pri_surf_ampl_line             :      
  case pri_surf_ampl_combatant        : 
    

    switch(secampl){
    case sec_surf_ampl_no_statement   :return SURSA_NO_STATEMENT;
    case sec_surf_ampl_carrier        :return SURSA_CARRIER; 
    case sec_surf_ampl_destroyer      :return SURSA_DESTROYER; 
    case sec_surf_ampl_cruiser        :return SURSA_CRUISER; 
    case sec_surf_ampl_frigate        :return SURSA_FRIGATE; 
    case sec_surf_ampl_battleship     :return SURSA_BATTLESHIP; 
    default : break ;
    }
    
    break ; 

  case pri_surf_ampl_patrol_vessel    :  
    
    
    
    
    switch(secampl){
    case sec_surf_ampl_ASW            :return SURSA_ASW_PATROL; 
    case sec_surf_ampl_ASUW           :return SURSA_SURFACE_PATROL; 
    default : break ;
    }
    
    break ; 

  case pri_surf_ampl_amphibious       :    
    
    switch( secampl){
    case sec_surf_ampl_landing_ship   :return SURSA_LANDING_SHIP; 
    case sec_surf_ampl_landing_craft  :return SURSA_LANDING_CRAFT; 
    case sec_surf_ampl_assault_vessel :return SURSA_ASSAULT_VESSEL ; 
    case sec_surf_ampl_cargo          :return SURSA_TRANSPORTER; 
    default : break ;
    }
    
    break ; 


  case pri_surf_ampl_non_naval        : 
    
    
    
    
    switch(secampl){
    case sec_surf_ampl_merchant       :return SURSA_MERCHANT ; 
    case sec_surf_ampl_fishing        :return SURSA_FISHING; 
    case sec_surf_ampl_leisure        :return SURSA_LEISURE; 
    case sec_surf_ampl_ACV_Hydro      :return SURSA_NON_MIL_ACV; 
    default : break ;
    }
    
    break ; 

       

  case pri_surf_ampl_non_combatant    :  
    
    
    
    
    
    
    switch(secampl){
    case sec_surf_ampl_fleet_support  :return SURSA_SUPPORT; 
    case sec_surf_ampl_hospital       :return SURSA_HOSPITAL; 
    case sec_surf_ampl_intelligence   :return SURSA_INTELLIGENCE; 
    case sec_surf_ampl_ACV_Hydro      :return SURSA_ACV; 
    case sec_surf_ampl_auxiliary      :return SURSA_TENDER; 
    default : break ;
    }
    break ; 


  case pri_surf_ampl_mine_warfare     :   
    
    
    
    
    
    switch(secampl){
    case sec_surf_ampl_mine_layer     :return SURSA_MINE_LAYER ; 
    case sec_surf_ampl_mine_sweeper   :return SURSA_MINE_SWEEPER; 
    case sec_surf_ampl_auxiliary      :return SURSA_MINE_SUPPORT; 
    default : break ;
    }
    break ; 

    
    
    
    
    
    
    

  default : break ;
  }

  return SURSA_NO_STATEMENT ; 
 
}
