#include "example1.h"



int example1::get_sec_surf_ampl(const primary_surface_id_ampl_e priampl , 
                                const secondary_surface_id_ampl_e secampl )
{

  switch(priampl){

  case pri_surf_ampl_no_statement     : return SURPA_NO_STATEMENT ; // 세부정보 없음

  case pri_surf_ampl_line             :      //해군전단
  case pri_surf_ampl_combatant        : //함정
    //enum ESurVesselSecondaryAmp {

    switch(secampl){
    case sec_surf_ampl_no_statement   :return SURSA_NO_STATEMENT;
    case sec_surf_ampl_carrier        :return SURSA_CARRIER; // 1
    case sec_surf_ampl_destroyer      :return SURSA_DESTROYER; // 4
    case sec_surf_ampl_cruiser        :return SURSA_CRUISER; // 3
    case sec_surf_ampl_frigate        :return SURSA_FRIGATE; // 5
    case sec_surf_ampl_battleship     :return SURSA_BATTLESHIP; // 2
    default : break ;
    }
    // 다음은 실행되지 않습니다. 
    break ; 

  case pri_surf_ampl_patrol_vessel    :  // 초계함
    // 다음은 맵핑되지 않습니다. 
    //enum ESurPatrolSecondaryAmp {
    //  return SURSA_FAST_PATROL          // 3
    //};
    switch(secampl){
    case sec_surf_ampl_ASW            :return SURSA_ASW_PATROL; // 1
    case sec_surf_ampl_ASUW           :return SURSA_SURFACE_PATROL; // 2
    default : break ;
    }
    // 다음은 실행되지 않습니다. 
    break ; 

  case pri_surf_ampl_amphibious       :    // 상륙전함
    //enum ESurAmphSecondaryAmp {
    switch( secampl){
    case sec_surf_ampl_landing_ship   :return SURSA_LANDING_SHIP; // 2
    case sec_surf_ampl_landing_craft  :return SURSA_LANDING_CRAFT; // 4
    case sec_surf_ampl_assault_vessel :return SURSA_ASSAULT_VESSEL ; // 1
    case sec_surf_ampl_cargo          :return SURSA_TRANSPORTER; // 3
    default : break ;
    }
    // 다음은 실행되지 않습니다. 
    break ; 


  case pri_surf_ampl_non_naval        : // 민간선박
    // 다음은 맵핑되지 않습니다. 
    //enum ESurNonMilSecondaryAmp {
    //  return SURSA_POLICE; // 4
    //};
    switch(secampl){
    case sec_surf_ampl_merchant       :return SURSA_MERCHANT ; // 1
    case sec_surf_ampl_fishing        :return SURSA_FISHING; // 2
    case sec_surf_ampl_leisure        :return SURSA_LEISURE; // 3
    case sec_surf_ampl_ACV_Hydro      :return SURSA_NON_MIL_ACV; // 5
    default : break ;
    }
    // 다음은 실행되지 않습니다. 
    break ; 

       

  case pri_surf_ampl_non_combatant    :  // 지원함
    // 다음은 맵핑되지 않습니다. 
    //enum ESurSupportSecondaryAmp {
    //  return SURSA_SUB_TENDER = 1; // 1
    //  return SURSA_POSITION             // 7
    //};
    
    switch(secampl){
    case sec_surf_ampl_fleet_support  :return SURSA_SUPPORT; // 4
    case sec_surf_ampl_hospital       :return SURSA_HOSPITAL; // 5
    case sec_surf_ampl_intelligence   :return SURSA_INTELLIGENCE; // 3
    case sec_surf_ampl_ACV_Hydro      :return SURSA_ACV; // 6
    case sec_surf_ampl_auxiliary      :return SURSA_TENDER; // 2
    default : break ;
    }
    break ; 


  case pri_surf_ampl_mine_warfare     :   // 기뢰전함
    // 다음은 맵핑되지 않습니다. 
    //enum ESurMineSecondaryAmp {
    //  return SURSA_MINE_SEARCHER; // 3
    //  return SURSA_MINE_DRONE           // 5
    //};
    switch(secampl){
    case sec_surf_ampl_mine_layer     :return SURSA_MINE_LAYER ; // 1
    case sec_surf_ampl_mine_sweeper   :return SURSA_MINE_SWEEPER; // 2
    case sec_surf_ampl_auxiliary      :return SURSA_MINE_SUPPORT; // 4
    default : break ;
    }
    break ; 

    // 다음은 맵핑되지 않습니다. 
    //enum ESurLineSecondaryAmp {
    //  
    //  return SUBSA_TASK_FLOTILLA; // 2
    //  return SUBSA_TASK_GROUP; // 3
    //  return SUBSA_CONVOY               // 4    
    //};

  default : break ;
  }

  return SURSA_NO_STATEMENT ; 
 
}
