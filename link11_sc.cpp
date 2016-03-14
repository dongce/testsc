#include "scheme.h"
#include "scheme-private.h"
#include <stdarg.h>
#include <string.h>
#include <strings.h>
#include <stdlib.h>
#include <system_types.h>
#include <dlp_link11_types.h>
#include <map>
#include <string>
#include <typeinfo>
#define tinyscheme_list4(sc , a , b , c , d) cons((sc) , (a) , cons((sc) , (b) , cons((sc) , (c) , cons((sc) , (d) , (sc)->NIL))))
#define tinyscheme_list3(sc , a , b , c)     cons((sc) , (a) , cons((sc) , (b) , cons((sc) , (c) , (sc)->NIL)))
#define tinyscheme_list2(sc , a , b )        cons((sc) , (a) , cons((sc) , (b) , (sc)->NIL))

typedef std::map<uint32_t, network_track_data_t>  trackmap_t ; 
typedef std::map<std::string, uint32_t>           fieldmap_t ; 

typedef std::pair<uint32_t, network_track_data_t> trackpair_t ; 
typedef std::pair<std::string, uint32_t>          fieldpair_t ; 


trackmap_t g_trackmap ;
fieldmap_t g_fieldmap ;

network_track_data_t g_trackdefault ; 

struct foreign_symbol
{
  char *name ;
  foreign_func fun ;
} ;

pointer
pop_args(pointer & args )
{
  pointer c = pair_car(args) ;
  args = pair_cdr(args) ;
  return c ;
}



pointer g_mmsg    = 0;
int     g_testnum = 0;
int     g_testsc_debug = 1 ; 

void testsc_debug(const char*format ...)
{

  if(g_testsc_debug > 0 ){
    va_list vlist;
	
    char buffer[1024] ; 
    memset(buffer, 0x00, 1024) ; 
	
	
	
    va_start(vlist, format);
    int formatsize = vsprintf(buffer, format, vlist);
    va_end(vlist);

    buffer[formatsize]= '\n' ;
    buffer[formatsize+1]= NULL ; 
  
    FILE* debug = fopen("t:/ts/debug.txt", "ab") ; 
    fwrite(buffer , formatsize + 1 , 1 , debug) ;
    fclose(debug) ;
  }
} 

uint32_t field_id(const std::string& fieldname)
{
  static uint32_t fieldid = 1000U ;

  fieldmap_t::iterator it = g_fieldmap.find(fieldname) ; 
  if( g_fieldmap.end() == it ){
    g_fieldmap.insert(fieldpair_t(fieldname, ++fieldid )) ;
    it = g_fieldmap.find(fieldname) ;
  }
  testsc_debug("field id %s, %d", fieldname.c_str() , it->second) ; 
  return it->second ;
}

template<typename TYPE>
void FIELD_NSET(TYPE& a, const num& b)
{
  if(b.is_fixnum){
    a = static_cast<TYPE>(b.value.ivalue) ;
  }
  else{
    a = static_cast<TYPE>(b.value.rvalue) ;
  }

    
}

template<typename TYPE>
pointer FIELD_NGET(scheme*sc, const TYPE& a)
{
  if(typeid(TYPE) == typeid(double) ||
     typeid(TYPE) == typeid(float)){
    return mk_real(sc, a ) ;
  }
  return mk_integer(sc, a) ; 
}



#define FOR_FIELD_ID(f) for(uint32_t ___field_id = field_id( (f)) ; ___field_id > 0 ; ___field_id = 0 )
#define FIELD_STRSET_VALUE(f, i, v ) if(field_id(#f) == ___field_id){ strcpy((char*)(i)->second.f , (v)) ; break; }

#define FIELD_NSET_VALUE(f, i, v ) if(field_id(#f) == ___field_id){ FIELD_NSET((i)->second.f , (v)) ; break; }
#define FIELD_NGET_VALUE(f, i, v ) if(field_id(#f) == ___field_id){ (v) = cons(sc, FIELD_NGET(sc, (i)->second.f ), v) ; break; }


pointer
foreign_testsc_track_strset(scheme *sc , pointer args)
{
  g_mmsg = args ;
  testsc_debug(__PRETTY_FUNCTION__) ; 
  uint32_t trackid = ivalue(pop_args(args)) ;

  trackmap_t::iterator it = g_trackmap.find(trackid) ; 
  if( g_trackmap.end() == it ){
    g_trackmap.insert(trackpair_t(trackid, g_trackdefault)) ;
    it = g_trackmap.find(trackid) ;
  }
    
  for (pointer field = pop_args(args); is_pair(field); field = pop_args(args)) {
    const char *sym = symname(pop_args(field) ); 
    const std::string fieldname(sym);
    const char*fieldstr   = string_value(pop_args(field)) ;

    FOR_FIELD_ID(fieldname){
      FIELD_STRSET_VALUE(general.mission_nr.text   , it, fieldstr) ; 
      FIELD_STRSET_VALUE(general.call_sign.text    , it, fieldstr) ; 
      FIELD_STRSET_VALUE(general.nineteen_bit_TN_number.text, it, fieldstr) ; 
      FIELD_STRSET_VALUE(general.tag , it, fieldstr) ; 
      FIELD_STRSET_VALUE(_track_name , it, fieldstr) ;
    }
  }
}


pointer
foreign_testsc_track_nset(scheme *sc , pointer args)
{
  g_mmsg = args ;
  testsc_debug(__PRETTY_FUNCTION__) ; 
  uint32_t trackid = ivalue(pop_args(args)) ;

  trackmap_t::iterator it = g_trackmap.find(trackid) ; 
  if( g_trackmap.end() == it ){
    g_trackmap.insert(trackpair_t(trackid, g_trackdefault)) ;
    it = g_trackmap.find(trackid) ;
  }
    
  for (pointer field = pop_args(args); is_pair(field); field = pop_args(args)) {
    const char *sym = symname(pop_args(field) ); 
    const std::string fieldname(sym);
    const num         fieldnum   = nvalue(pop_args(field)) ;

    FOR_FIELD_ID(fieldname){
      FIELD_NSET_VALUE(network_kinetics.x_position , it, fieldnum) ; 
      FIELD_NSET_VALUE(network_kinetics.y_position , it, fieldnum) ;
      FIELD_NSET_VALUE(network_kinetics.x_velocity , it, fieldnum) ; 
      FIELD_NSET_VALUE(network_kinetics.y_velocity , it, fieldnum) ;
      FIELD_NSET_VALUE(network_kinetics.time_validity.coarse_time , it, fieldnum) ;
      FIELD_NSET_VALUE(network_kinetics.time_validity.fine_time , it, fieldnum) ;

      FIELD_NSET_VALUE(cmsdata.x_position            , it, fieldnum) ; 
      FIELD_NSET_VALUE(cmsdata.y_position            , it, fieldnum) ; 
      FIELD_NSET_VALUE(cmsdata.z_position            , it, fieldnum) ; 
      FIELD_NSET_VALUE(cmsdata.x_velocity            , it, fieldnum) ; 
      FIELD_NSET_VALUE(cmsdata.y_velocity            , it, fieldnum) ; 
      FIELD_NSET_VALUE(cmsdata.z_velocity            , it, fieldnum) ; 
      FIELD_NSET_VALUE(cmsdata.latitude              , it, fieldnum) ; 
      FIELD_NSET_VALUE(cmsdata.longitude             , it, fieldnum) ; 
      FIELD_NSET_VALUE(cmsdata.track_phase           , it, fieldnum) ; 
      FIELD_NSET_VALUE(cmsdata.initial_phase         , it, fieldnum) ; 
      FIELD_NSET_VALUE(cmsdata.special_code_updated  , it, fieldnum) ; 
      FIELD_NSET_VALUE(cmsdata.identity              , it, fieldnum) ; 
      FIELD_NSET_VALUE(cmsdata.primary_air_id_ampl   , it, fieldnum) ; 
      FIELD_NSET_VALUE(cmsdata.secondary_air_id_ampl , it, fieldnum) ; 
      FIELD_NSET_VALUE(cmsdata.primary_surf_id_ampl  , it, fieldnum) ; 
      FIELD_NSET_VALUE(cmsdata.secondary_surf_id_ampl, it, fieldnum) ; 
      FIELD_NSET_VALUE(cmsdata.environment           , it, fieldnum) ; 
      FIELD_NSET_VALUE(cmsdata.iff_mode2             , it, fieldnum) ; 
      FIELD_NSET_VALUE(cmsdata.iff_mode4             , it, fieldnum) ; 
      
      FIELD_NSET_VALUE(general.tactical                                 , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.network                                  , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.NTN                                      , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.pu_origin                                , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.pu_controlling                           , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.network_track_phase                      , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.track_existence                          , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.link_state                               , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.track_kind                               , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.identity                                 , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.track_alert_state                        , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.classification                           , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.possible_sub_confidence_level            , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.primary_classification_amplification     , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.secondary_classification_amplification   , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.primary_air_id_ampl                      , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.secondary_air_id_ampl                    , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.primary_air_designator                   , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.secondary_air_designator                 , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.primary_asw_designator                   , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.secondary_asw_designator                 , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.primary_gen_designator                   , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.secondary_gen_designator                 , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.primary_sub_classification               , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.secondary_sub_classification             , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.primary_surf_id_ampl                     , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.secondary_surf_id_ampl                   , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.height_source                            , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.emitter_number                , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.threat_evaluation             , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.platform                      , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.frequency_switch              , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.emitter_frequency             , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.frequency_range               , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.emitter_mode                  , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.confidence_level              , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.platform_evaluation_confidence, it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.esm_broad_classification      , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.esm_amplifying_characteristics, it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.lock_on_spy                   , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.scan_characteristics          , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.jitter                        , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.polarisation                  , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.PRF                           , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.pulse_width                   , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.scan_time                     , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.scan_frequency                , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.scan_mode                     , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.esm_data.frequency_multiplier          , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.ecm_data.elevation                     , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.ecm_data.frequency_range               , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.ecm_data.jammer_signal_level           , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.ecm_data.platform                      , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.ecm_data.threat_evaluation             , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.ecm_data.ecm_broad_classification      , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.ecm_data.ecm_amplifying_characteristics, it, fieldnum) ; 
      FIELD_NSET_VALUE(general.quality_syst                             , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.quality_netw                             , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.latitude                                 , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.longitude                                , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.x_position                               , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.y_position                               , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.iff_data.iff_mode1         , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.iff_data.iff_mode2         , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.iff_data.iff_mode3         , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.iff_data.iff_mode4         , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.iff_data.iff_modeC         , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.iff_data.iff_mode1_validity, it, fieldnum) ; 
      FIELD_NSET_VALUE(general.iff_data.iff_mode2_validity, it, fieldnum) ; 
      FIELD_NSET_VALUE(general.iff_data.iff_mode3_validity, it, fieldnum) ; 
      FIELD_NSET_VALUE(general.iff_data.iff_mode4_validity, it, fieldnum) ; 
      FIELD_NSET_VALUE(general.iff_data.iff_modeC_validity, it, fieldnum) ; 
      FIELD_NSET_VALUE(general.iff_data.iff_mode1_changed , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.iff_data.iff_mode2_changed , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.iff_data.iff_mode3_changed , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.iff_data.iff_mode4_changed , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.iff_data.iff_modeC_changed , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.course_validity                          , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.height_depth_valid                       , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.bearing_valid                            , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.bearing_accuracy_valid                   , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.velocity_validity                        , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.course                                   , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.height_depth                             , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.bearing                                  , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.bearing_accuracy                         , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.x_velocity                               , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.y_velocity                               , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.mission_nr_updated                       , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.call_sign_updated                        , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.voice_call_frequency                     , it, fieldnum) ; 
      FIELD_NSET_VALUE(general._is_time_of_task_valid                   , it, fieldnum) ; 
      FIELD_NSET_VALUE(general._time_of_task_in_minute                  , it, fieldnum) ; 
      FIELD_NSET_VALUE(general._is_fuel_valid                           , it, fieldnum) ; 
      FIELD_NSET_VALUE(general._fuel_in_lb                              , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.special_code                             , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.missile_unit                             , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.contacts_size                            , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.current_surface_mission                  , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_sensor_contact                       , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_sensor_contact_validity              , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_secondary_mission                    , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_sec_mission_validity                 , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_contact_status                       , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.special_processing_indicator             , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.time_remaining_validity                  , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.time_remaining                           , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_bearing_classification_ampl          , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_bearing_depth                        , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_bearing_report_type                  , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_bearing_layer_validity               , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_bearing_sensor_validity              , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.main_rate_freq_validity                  , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.notack_validity                          , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_bearing_layer                        , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_bearing_sensor                       , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.main_rate_freq                           , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.notack_duration                          , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.notack_radius                            , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_bearing_first_acoustic_freq_validity , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_bearing_second_acoustic_freq_validity, it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_bearing_range_accuracy_validity      , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_bearing_acoustic_frequency_validity  , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.bearing2_valid                           , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_range_validity                       , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_bearing_first_acoustic_freq          , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_bearing_second_acoustic_freq         , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_bearing_range_accuracy               , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_bearing_acoustic_frequency           , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.bearing2                                 , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.asw_range                                , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.datum_speed                              , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.datum_error                              , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.nineteen_bit_action                      , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.ew_intelligence_category                 , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.ew_intelligence_general                  , it, fieldnum) ; 
      // FIELD_NSET_VALUE(general.ew_intelligence_data                     , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.ew_intelligence_validity                 , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.ew_intelligence_changed                  , it, fieldnum) ; 
      // FIELD_NSET_VALUE(general.aop_data                                 , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.track_special_processing                 , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.tag_validity                             , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.tag_changed                              , it, fieldnum) ; 
      FIELD_NSET_VALUE(general._spi                   , it, fieldnum) ;       
      FIELD_NSET_VALUE(general.time_of_initiation.fine_time   , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.time_of_initiation.fine_time   , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.time_validity.coarse_time      , it, fieldnum) ; 
      FIELD_NSET_VALUE(general.time_validity.coarse_time      , it, fieldnum) ; 

      FIELD_NSET_VALUE(link11.time_of_last_update.coarse_time         , it, fieldnum) ; 
      FIELD_NSET_VALUE(link11.time_of_last_update.fine_time         , it, fieldnum) ; 
      FIELD_NSET_VALUE(link11.transmit_track_request       , it, fieldnum) ; 
      FIELD_NSET_VALUE(link11.identity_OSindiff_resolve    , it, fieldnum) ; 
      FIELD_NSET_VALUE(link11.environment_OSindiff_resolve , it, fieldnum) ; 
      FIELD_NSET_VALUE(link11.identity_R2indiff_resolve    , it, fieldnum) ; 
      FIELD_NSET_VALUE(link11.environment_R2indiff_resolve , it, fieldnum) ; 
      FIELD_NSET_VALUE(link11.position_conflict_state      , it, fieldnum) ; 
      FIELD_NSET_VALUE(link11.track_number_conflict_state  , it, fieldnum) ; 
      FIELD_NSET_VALUE(link11.own_track_quality            , it, fieldnum) ; 
      FIELD_NSET_VALUE(link11.iff_mode2_conflict_state     , it, fieldnum) ; 
      FIELD_NSET_VALUE(link11.iff_mode4_conflict_state     , it, fieldnum) ; 
      FIELD_NSET_VALUE(link11.iff_mode1_local              , it, fieldnum) ; 
      FIELD_NSET_VALUE(link11.iff_mode2_local              , it, fieldnum) ; 
      FIELD_NSET_VALUE(link11.iff_mode3_local              , it, fieldnum) ; 
      FIELD_NSET_VALUE(link11.iff_mode4_local              , it, fieldnum) ; 
      FIELD_NSET_VALUE(link11.change_data_order_running    , it, fieldnum) ; 
      FIELD_NSET_VALUE(link11.site_coordinate_centre       , it, fieldnum) ;       

      FIELD_NSET_VALUE(track_delete_time.coarse_time  , it, fieldnum) ; 
      FIELD_NSET_VALUE(track_delete_time.fine_time    , it, fieldnum) ; 
      FIELD_NSET_VALUE(height_depth               , it, fieldnum) ; 
      FIELD_NSET_VALUE(height_depth_received      , it, fieldnum) ; 
      FIELD_NSET_VALUE(is_changed                 , it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order_counter , it, fieldnum) ; 
      FIELD_NSET_VALUE(_special_code_counter      , it, fieldnum) ; 
      FIELD_NSET_VALUE(training_target_kind       , it, fieldnum) ; 
      FIELD_NSET_VALUE(training_counter           , it, fieldnum) ; 
      FIELD_NSET_VALUE(training_NTN               , it, fieldnum) ; 
      FIELD_NSET_VALUE(training_SRN               , it, fieldnum) ; 
      FIELD_NSET_VALUE(training_manual_track_kind , it, fieldnum) ; 
      FIELD_NSET_VALUE(own_or_lro                 , it, fieldnum) ; 
      FIELD_NSET_VALUE(is_checkouted              , it, fieldnum) ; 
      FIELD_NSET_VALUE(_impedence                 , it, fieldnum) ; 
      FIELD_NSET_VALUE(_STN                       , it, fieldnum) ; 
      FIELD_NSET_VALUE(_add_info_count            , it, fieldnum) ; 
      FIELD_NSET_VALUE(_track_source_filter       , it, fieldnum) ; 
      FIELD_NSET_VALUE(track_delete_time.coarse_time       , it, fieldnum) ; 
      FIELD_NSET_VALUE(track_delete_time.fine_time       , it, fieldnum) ; 

      FIELD_NSET_VALUE(_air_mission_data.air_control_reference_number    , it, fieldnum) ; 
      FIELD_NSET_VALUE(_air_mission_data.control_counter                 , it, fieldnum) ; 
      FIELD_NSET_VALUE(_air_mission_data.air_control_active              , it, fieldnum) ; 
      FIELD_NSET_VALUE(_air_mission_data.kind                            , it, fieldnum) ; 
      // FIELD_NSET_VALUE(_air_mission_data.general_mission                 , it, fieldnum) ; 
      // FIELD_NSET_VALUE(_air_mission_data.asw_mission                     , it, fieldnum) ; 
      FIELD_NSET_VALUE(_air_mission_data.general_mission_counter         , it, fieldnum) ; 
      FIELD_NSET_VALUE(_air_mission_data.asw_mission_counter             , it, fieldnum) ; 
      FIELD_NSET_VALUE(_air_mission_data.asw_mission_repetition_counter  , it, fieldnum) ; 

      
      FIELD_NSET_VALUE(_prohibit_track.validity     , it, fieldnum) ; 
      FIELD_NSET_VALUE(_prohibit_track.prohibit_time.coarse_time, it, fieldnum) ; 
      FIELD_NSET_VALUE(_prohibit_track.prohibit_time.fine_time, it, fieldnum) ; 
      
      FIELD_NSET_VALUE(transmission_info.info_validation                              , it, fieldnum) ; 
      // FIELD_NSET_VALUE(transmission_info.track_selection                              , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.information_difference_counter               , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.last_time_position_message_transmission, it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.last_time_amplifying_message_transmission, it, fieldnum) ; 

      FIELD_NSET_VALUE(transmission_info.track_alert_counter                          , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.kind_of_alert                                , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.iff_difference_clear_isac_mode1              , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.iff_difference_clear_isac_mode2              , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.iff_difference_clear_isac_mode3              , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.iff_difference_clear_isac_mode4              , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.iff_difference_diference_clear_counter_mode1 , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.iff_difference_diference_clear_counter_mode2 , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.iff_difference_diference_clear_counter_mode3 , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.iff_difference_diference_clear_counter_mode4 , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.iff_mode1_validity                           , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.AFRAME_1                                     , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.iff_mode2_validity                           , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.AFRAME_2                                     , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.iff_mode3_validity                           , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.AFRAME_3                                     , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.iff_mode4_validity                           , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.AFRAME_4                                     , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.iff_report_transmission_time.coarse_time , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.iff_report_transmission_time.fine_time   , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.iff_report_counter                           , it, fieldnum) ; 
      FIELD_NSET_VALUE(transmission_info.ew_intelligence_counter                      , it, fieldnum) ; 

      
      FIELD_NSET_VALUE(supporting_info.gen_call_sign_counter      , it, fieldnum) ; 
      FIELD_NSET_VALUE(supporting_info.cont_call_sign_counter     , it, fieldnum) ; 
      FIELD_NSET_VALUE(supporting_info.gen_mission_number_counter , it, fieldnum) ; 
      FIELD_NSET_VALUE(supporting_info.cont_mission_number_counter, it, fieldnum) ; 
      FIELD_NSET_VALUE(supporting_info.voice_control_freq_counter , it, fieldnum) ; 
      FIELD_NSET_VALUE(supporting_info.info_validation            , it, fieldnum) ; 

      FIELD_NSET_VALUE(_change_data_order.network_cdo            , it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order.source_id              , it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order.NTN                    , it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order.pu_address             , it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order.old_identity           , it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order.new_identity           , it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order.old_environment        , it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order.new_environment        , it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order.old_primary_air_ampl   , it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order.old_secondary_air_ampl , it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order.new_primary_air_ampl   , it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order.new_secondary_air_ampl , it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order.old_primary_surf_ampl  , it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order.old_secondary_surf_ampl, it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order.new_primary_surf_ampl  , it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order.new_secondary_surf_ampl, it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order.order_result           , it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order.order_reject_reason    , it, fieldnum) ;  
      FIELD_NSET_VALUE(_change_data_order.finished               , it, fieldnum) ; 
      FIELD_NSET_VALUE(_change_data_order.order_running          , it, fieldnum) ;  
      
    }
  }
  
  return mk_integer(sc, g_trackmap.size()); ; 
}


pointer
foreign_testsc_track_nget(scheme *sc , pointer args)
{
  g_mmsg = args ;
  testsc_debug(__PRETTY_FUNCTION__) ; 
  uint32_t trackid = ivalue(pop_args(args)) ;

  pointer result = sc->NIL ; 
  trackmap_t::iterator it = g_trackmap.find(trackid) ; 
  if( g_trackmap.end() == it ){
    g_trackmap.insert(trackpair_t(trackid, g_trackdefault)) ;
    it = g_trackmap.find(trackid) ;
  }
    
  for (pointer field = pop_args(args); is_symbol(field); field = pop_args(args)) {
    const std::string fieldname(symname(field));

    FOR_FIELD_ID(fieldname){
      FIELD_NGET_VALUE(network_kinetics.x_position , it, result) ; 
      FIELD_NGET_VALUE(network_kinetics.y_position , it, result) ;
    }
  }
  
  return result ; 
}


pointer
foreign_mmsg_set(scheme *sc , pointer args)
{
  g_mmsg = args ;
  testsc_debug(__PRETTY_FUNCTION__) ; 

  for (pointer it = args; it != sc->NIL; it = pair_cdr(it)) {
    pointer x = pair_car(it) ;
    testsc_debug("%s %d %d %d" ,
                 __PRETTY_FUNCTION__, 
                 ivalue(pop_args(x)), 
                 ivalue(pop_args(x)), 
                 ivalue(pop_args(x))) ;
  }
  
  return args ; 
}

pointer
foreign_testnum_set(scheme *sc , pointer args)
{
  g_testnum = ivalue(args) ; 
  return args ; 
}


void testsc_load(scheme*sc , const char* filename , const char *homepath = NULL)
{

  static const char* TINYSCHEME_HOME =(  NULL == getenv("TINYSCHEME_HOME") ? "t:/ts"  : getenv("TINYSCHEME_HOME")  );

  char absfilename[1024] ;
  sprintf(absfilename, "%s/%s" , (NULL != homepath && strlen(homepath) > 0 ? homepath: TINYSCHEME_HOME) , filename ) ;
  testsc_debug("tetsc-load %s", absfilename) ; 
  FILE* fin=fopen(absfilename,"r");
  if( NULL != fin ){
    scheme_load_named_file(sc,fin,filename);
    fclose(fin) ;
  }

}

// pointer
// foreign_testsc_load(scheme*sc , pointer args )
// {
//   testsc_load(sc, string_value(pop_args(args))) ;
//   return sc->NIL ; 
// }

pointer
foreign_testsc_set_debug(scheme*sc , pointer args )
{
  g_testsc_debug = ivalue(pop_args(args)) ;

  return args ; 
}

pointer
foreign_testsc_get_testnum(scheme* sc, pointer args)
{
  return mk_integer(sc, (long) g_testnum); 
}
pointer
foreign_testsc_debug(scheme*sc , pointer args )
{
  testsc_debug(string_value(pop_args(args))) ;
  
  return args ; 
}

extern "C" pointer
foreign_testsc_init(scheme* sc , pointer args)
{
  g_testnum            = ivalue(pop_args(args)) ;
  memset(&g_trackdefault, 0, sizeof(g_trackdefault)) ; 
    
  foreign_symbol symbols [] = {
    {"mmsg-set"         , foreign_mmsg_set}, 
    // {"testsc-load"      , foreign_testsc_load},
    {"testsc-set-debug" , foreign_testsc_set_debug},
    {"testsc-debug"     , foreign_testsc_debug}, 
    {"testsc-get-testnum", foreign_testsc_get_testnum   },
    {"testsc-track-nset" , foreign_testsc_track_nset   }, 
    {"testsc-track-strset" , foreign_testsc_track_strset   }, 
    {"testsc-track-nget" , foreign_testsc_track_nget   }, 
  } ;

  for(foreign_symbol *s = symbols ;
      s < symbols + sizeof(symbols)/sizeof(foreign_symbol) ;
      s++) {

    scheme_define(sc ,
                  sc->global_env ,
                  mk_symbol(sc , s->name ) ,
                  mk_foreign_func(sc , s->fun)) ;
  }


  return sc->NIL ; 
}

//////////////TEST CASE 에서 호출할 수 있는 함수들 ////////////////
scheme g_sc ; 
void testsc_init(int testnum , const char* cmd, const char* homepath)
{

  scheme_init(&g_sc) ;
  foreign_testsc_init(&g_sc,
                      tinyscheme_list3(&g_sc,
                                       mk_integer(&g_sc, testnum) ,
                                       mk_string(&g_sc, NULL != cmd? cmd : ""),
                                       mk_string(&g_sc, NULL != homepath ? homepath : ""))) ;

  testsc_load(&g_sc, "init.scm", homepath) ; 
  testsc_load(&g_sc, "util.scm", homepath) ;
  if( NULL != cmd ){
    scheme_load_string(&g_sc, cmd) ;
  }
  testsc_load(&g_sc, "temp.scm", homepath) ;

}


int mmsg_get_field_value( int a, int b )
{

  for (pointer it = g_mmsg ; NULL != it && it != g_sc.NIL; it = pair_cdr(it)) {
    pointer x = pair_car(it) ;

    if( a == ivalue(pop_args(x)) &&
        b == ivalue(pop_args(x))) {
      testsc_debug("testnum(%d)%s:%d, get_field_value debug %d, %d",
                   g_testnum,
                   __FILE__,
                   __LINE__,
                   a,
                   b ) ; 
        
      return ivalue(pop_args(x)) ;
    }
  }
  
  return 0 ; 
}




