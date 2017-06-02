
ew_intelligence_types::current_activity_handle[][].Transmission_Processing;
ew_intelligence_types::current_activity_handle[][].Transmission_value;
ew_intelligence_types::ew_intelligence_air_specific_transmit_conversion[][].Transmission_Processing;
ew_intelligence_types::ew_intelligence_subsurface_specific_transmit_conversion[][].Transmission_Processing;
ew_intelligence_types::ew_intelligence_surface_specific_transmit_conversion[][].Transmission_Processing;
ew_intelligence_types::general_type_handle[][].Transmission_Processing;
ew_intelligence_types::general_type_handle[][].Transmission_value;
ew_intelligence_types::mission_handle[][].Transmission_Processing;
ew_intelligence_types::mission_handle[][].Transmission_value;



pointer
foreign_testsc_ewintel_set_processing(scheme *sc , pointer args)
{
  std::string tablename(symname(pop_args(args))) ;
  const int general    = ivalue(pop_args(args)) ; 
  const int specific   = ivalue(pop_args(args)) ;
  const int processing = ivalue(pop_args(args)) ;

  if( "activity" == tablename ){
    ew_intelligence_types::current_activity_handle[general][specific].Transmission_Processing = processing ; 
  }
  else if("airspecific" == tablename ){
    ew_intelligence_types::ew_intelligence_air_specific_transmit_conversion[general][specific].Transmission_Processing = processing ;
  }
  else if("subspecific" == tablename ){
    ew_intelligence_types::ew_intelligence_subsurface_specific_transmit_conversion[general][specific].Transmission_Processing = processing;
  }
  else if("surfspecific" == tablename ){
    ew_intelligence_types::ew_intelligence_surface_specific_transmit_conversion[general][specific].Transmission_Processing = processing;
  }
    
    
    
  trackmap_t::iterator it = g_trackmap.find(trackid) ; 
  if( g_trackmap.end() == it ){
    network_track_data_ptr nit = reinterpret_cast<network_track_data_ptr>(malloc( sizeof(network_track_data_t)) );
    *nit = g_trackdefault ; 
    g_trackmap.insert(trackpair_t(trackid, nit)) ;
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

