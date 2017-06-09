#include "example1_1.h"
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
 CSUT_FRIEND_DECL } ; 
#line 2 "C:\\testsc\\share\\srcexample\\example1.cpp"




#ifndef CS_RMFUNCDEF_3139712347
int example1::get_sec_surf_ampl(const primary_surface_id_ampl_e priampl , 
                                const secondary_surface_id_ampl_e secampl )
{
#ifndef CS_STUB_UNUSED_3139712347
#ifndef CS_STUB_SELECT_3139712347
#define CS_STUB_SELECT_3139712347 "empty.c"
#endif 
#include CS_STUB_SELECT_3139712347
#endif // CS_STUB_UNUSED_3139712347
#ifndef CS_CVRG_OFF_3139712347 /* CVRG_ON */
#include "codescroll_cvrg_select_macro_on.h"
#else
#include "codescroll_cvrg_select_macro_off.h"
#endif // CS_CVRG_OFF_3139712347
#line 7 "C:\\testsc\\share\\srcexample\\example1.cpp"


   CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+43)); CS_CFG_NODE_BEGIN_4294967634 switch(priampl){

  case pri_surf_ampl_no_statement     : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+44)); CS_CFG_NODE_BEGIN_4294967306   CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+60));return SURPA_NO_STATEMENT ; 

  case pri_surf_ampl_line             : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+45)); CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+0)); CS_CFG_NODE_BEGIN_4294967310       
  goto codescroll_144_3;case pri_surf_ampl_combatant        : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+46));codescroll_144_3: ; CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+1)); CS_CFG_NODE_BEGIN_4294967314  
    

     CS_CFG_NODE_BEGIN_4294967374 switch(secampl){
    case sec_surf_ampl_no_statement   : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+2)); CS_CFG_NODE_BEGIN_4294967322  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+61));return SURSA_NO_STATEMENT;
    case sec_surf_ampl_carrier        : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+3)); CS_CFG_NODE_BEGIN_4294967330  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+62));return SURSA_CARRIER; 
    case sec_surf_ampl_destroyer      : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+4)); CS_CFG_NODE_BEGIN_4294967338  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+63));return SURSA_DESTROYER; 
    case sec_surf_ampl_cruiser        : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+5)); CS_CFG_NODE_BEGIN_4294967346  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+64));return SURSA_CRUISER; 
    case sec_surf_ampl_frigate        : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+6)); CS_CFG_NODE_BEGIN_4294967354  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+65));return SURSA_FRIGATE; 
    case sec_surf_ampl_battleship     : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+7)); CS_CFG_NODE_BEGIN_4294967362  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+66));return SURSA_BATTLESHIP; 
    default : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+8)); CS_CFG_NODE_BEGIN_4294967370   CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+9));goto codescroll_147_5_155_5;/*break ;*/
    }codescroll_147_5_155_5: ;
    
     CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+53)); CS_CFG_NODE_BEGIN_4294967378 goto codescroll_139_3_243_3;/*break ;*/ 

  case pri_surf_ampl_patrol_vessel    : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+47)); CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+10)); CS_CFG_NODE_BEGIN_4294967382   
    
    
    
    
     CS_CFG_NODE_BEGIN_4294967410 switch(secampl){
    case sec_surf_ampl_ASW            : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+11)); CS_CFG_NODE_BEGIN_4294967390  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+67));return SURSA_ASW_PATROL; 
    case sec_surf_ampl_ASUW           : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+12)); CS_CFG_NODE_BEGIN_4294967398  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+68));return SURSA_SURFACE_PATROL; 
    default : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+13)); CS_CFG_NODE_BEGIN_4294967406   CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+14));goto codescroll_164_5_168_5;/*break ;*/
    }codescroll_164_5_168_5: ;
    
     CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+54)); CS_CFG_NODE_BEGIN_4294967414 goto codescroll_139_3_243_3;/*break ;*/ 

  case pri_surf_ampl_amphibious       : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+48)); CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+15)); CS_CFG_NODE_BEGIN_4294967418     
    
     CS_CFG_NODE_BEGIN_4294967462 switch( secampl){
    case sec_surf_ampl_landing_ship   : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+16)); CS_CFG_NODE_BEGIN_4294967426  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+69));return SURSA_LANDING_SHIP; 
    case sec_surf_ampl_landing_craft  : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+17)); CS_CFG_NODE_BEGIN_4294967434  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+70));return SURSA_LANDING_CRAFT; 
    case sec_surf_ampl_assault_vessel : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+18)); CS_CFG_NODE_BEGIN_4294967442  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+71));return SURSA_ASSAULT_VESSEL ; 
    case sec_surf_ampl_cargo          : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+19)); CS_CFG_NODE_BEGIN_4294967450  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+72));return SURSA_TRANSPORTER; 
    default : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+20)); CS_CFG_NODE_BEGIN_4294967458   CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+21));goto codescroll_174_5_180_5;/*break ;*/
    }codescroll_174_5_180_5: ;
    
     CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+55)); CS_CFG_NODE_BEGIN_4294967466 goto codescroll_139_3_243_3;/*break ;*/ 


  case pri_surf_ampl_non_naval        : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+49)); CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+22)); CS_CFG_NODE_BEGIN_4294967470  
    
    
    
    
     CS_CFG_NODE_BEGIN_4294967514 switch(secampl){
    case sec_surf_ampl_merchant       : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+23)); CS_CFG_NODE_BEGIN_4294967478  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+73));return SURSA_MERCHANT ; 
    case sec_surf_ampl_fishing        : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+24)); CS_CFG_NODE_BEGIN_4294967486  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+74));return SURSA_FISHING; 
    case sec_surf_ampl_leisure        : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+25)); CS_CFG_NODE_BEGIN_4294967494  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+75));return SURSA_LEISURE; 
    case sec_surf_ampl_ACV_Hydro      : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+26)); CS_CFG_NODE_BEGIN_4294967502  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+76));return SURSA_NON_MIL_ACV; 
    default : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+27)); CS_CFG_NODE_BEGIN_4294967510   CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+28));goto codescroll_190_5_196_5;/*break ;*/
    }codescroll_190_5_196_5: ;
    
     CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+56)); CS_CFG_NODE_BEGIN_4294967518 goto codescroll_139_3_243_3;/*break ;*/ 

       

  case pri_surf_ampl_non_combatant    : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+50)); CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+29)); CS_CFG_NODE_BEGIN_4294967522   
    
    
    
    
    
    
     CS_CFG_NODE_BEGIN_4294967574 switch(secampl){
    case sec_surf_ampl_fleet_support  : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+30)); CS_CFG_NODE_BEGIN_4294967530  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+77));return SURSA_SUPPORT; 
    case sec_surf_ampl_hospital       : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+31)); CS_CFG_NODE_BEGIN_4294967538  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+78));return SURSA_HOSPITAL; 
    case sec_surf_ampl_intelligence   : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+32)); CS_CFG_NODE_BEGIN_4294967546  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+79));return SURSA_INTELLIGENCE; 
    case sec_surf_ampl_ACV_Hydro      : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+33)); CS_CFG_NODE_BEGIN_4294967554  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+80));return SURSA_ACV; 
    case sec_surf_ampl_auxiliary      : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+34)); CS_CFG_NODE_BEGIN_4294967562  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+81));return SURSA_TENDER; 
    default : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+35)); CS_CFG_NODE_BEGIN_4294967570   CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+36));goto codescroll_209_5_216_5;/*break ;*/
    }codescroll_209_5_216_5: ;
     CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+57)); CS_CFG_NODE_BEGIN_4294967578 goto codescroll_139_3_243_3;/*break ;*/ 


  case pri_surf_ampl_mine_warfare     : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+51)); CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+37)); CS_CFG_NODE_BEGIN_4294967582    
    
    
    
    
    
     CS_CFG_NODE_BEGIN_4294967618 switch(secampl){
    case sec_surf_ampl_mine_layer     : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+38)); CS_CFG_NODE_BEGIN_4294967590  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+82));return SURSA_MINE_LAYER ; 
    case sec_surf_ampl_mine_sweeper   : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+39)); CS_CFG_NODE_BEGIN_4294967598  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+83));return SURSA_MINE_SWEEPER; 
    case sec_surf_ampl_auxiliary      : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+40)); CS_CFG_NODE_BEGIN_4294967606  CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+84));return SURSA_MINE_SUPPORT; 
    default : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+41)); CS_CFG_NODE_BEGIN_4294967614   CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+42));goto codescroll_226_5_231_5;/*break ;*/
    }codescroll_226_5_231_5: ;
     CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+58)); CS_CFG_NODE_BEGIN_4294967622 goto codescroll_139_3_243_3;/*break ;*/ 

    
    
    
    
    
    
    

  default : CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+52)); CS_CFG_NODE_BEGIN_4294967630   CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+59));goto codescroll_139_3_243_3;/*break ;*/
  }codescroll_139_3_243_3: ;

   CS_CMM_C1_MARK((CS_CMM_C1_BUF_TU_1), (CS_CMM_C1_IDX_TU_1+CS_CMM_C1_IDX_4294967296+85)); CS_CFG_NODE_BEGIN_4294967638 return SURSA_NO_STATEMENT ; 
 

#ifndef CS_STUB_UNUSED_3139712347
}
#endif // CS_STUB_UNUSED_3139712347
}
#endif


