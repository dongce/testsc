      // TEMPLATE(general.ew_intelligence_data                     , it, fieldnum) ; 
      // TEMPLATE(general.aop_data                                 , it, fieldnum) ; 
      // TEMPLATE(_air_mission_data.general_mission                 , it, fieldnum) ; 
      // TEMPLATE(_air_mission_data.asw_mission                     , it, fieldnum) ; 
      // TEMPLATE(transmission_info.track_selection                              , it, fieldnum) ; 
#define ADMIN_FIELDS(TEMPLATE, it, fieldnum)                            \
TEMPLATE(_ew_request.tactical_track_id            ,it, fieldnum) ;             \
TEMPLATE(_ew_request.ew_intelligence_data.nationallity_alliance ,it, fieldnum) ;             \
TEMPLATE(_wipe_proposal.network            ,it, fieldnum) ;             \
 TEMPLATE(_wipe_proposal.source_id          ,it, fieldnum) ;             \
 TEMPLATE(_wipe_proposal.wipe_result        ,it, fieldnum) ;             \
 TEMPLATE(_wipe_proposal.wipe_reject_reason ,it, fieldnum) ;             \
 TEMPLATE(_alert_report.network          ,it, fieldnum) ;             \
 TEMPLATE(_alert_report.NTN              ,it, fieldnum) ;             \
 TEMPLATE(_alert_report.track_alert_state,it, fieldnum) ;             \
 TEMPLATE(_alert_report.pu_sending       ,it, fieldnum) ;             \
 TEMPLATE(_network_track_number.tactical                        ,it, fieldnum) ; \
 TEMPLATE(_network_track_number.pu_address                      ,it, fieldnum) ; \
 TEMPLATE(_network_track_number.NTN                             ,it, fieldnum) ; \
 TEMPLATE(_network_track_number.track_number_command            ,it, fieldnum) ; \
 TEMPLATE(_network_track_number.track_number_result             ,it, fieldnum) ; \
 TEMPLATE(_network_track_number.track_number_reject_reason      ,it, fieldnum) ; \
 TEMPLATE(_network_track_number.automatic_allocation            ,it, fieldnum) ; \
 TEMPLATE(_network_track_number.used_capacity_track_number_pool ,it, fieldnum) ; \
                                                                        \
 TEMPLATE(_pair_assoc.pu_originator               ,it, fieldnum) ;       \
 TEMPLATE(_pair_assoc.network_one                 ,it, fieldnum) ;       \
 TEMPLATE(_pair_assoc.network_two                 ,it, fieldnum) ;       \
 TEMPLATE(_pair_assoc.action                      ,it, fieldnum) ;       \
 TEMPLATE(_pair_assoc.pairing_association_counter ,it, fieldnum) ;       \
 TEMPLATE(_pair_assoc.time_of_initiation.coarse_time  ,it, fieldnum) ;       \
 TEMPLATE(_pair_assoc.time_of_initiation.fine_time    ,it, fieldnum) ;       \
                                                                        \
 TEMPLATE(_monitor.pu_address                                ,it, fieldnum) ; \
 TEMPLATE(_monitor.netcycle_time_in_sec                      ,it, fieldnum) ; \
 TEMPLATE(_monitor.transmission_quality                      ,it, fieldnum) ; \
 TEMPLATE(_monitor.reception_quality                         ,it, fieldnum) ; \
 TEMPLATE(_monitor.total_error_rate                          ,it, fieldnum) ; \
 TEMPLATE(_monitor.number_of_data_reports                    ,it, fieldnum) ; \
 TEMPLATE(_monitor.counter_begin                             ,it, fieldnum) ; \
 TEMPLATE(_monitor.counter_end                               ,it, fieldnum) ; \
 TEMPLATE(_monitor.time_of_last_update.coarse_time           ,it, fieldnum) ; \
 TEMPLATE(_monitor.time_of_last_update.fine_time             ,it, fieldnum) ; \
                                                                        \
 TEMPLATE(_aircraft_control.aircraft_network                 ,it, fieldnum) ; \
 TEMPLATE(_aircraft_control.engage_network                   ,it, fieldnum) ; \
 TEMPLATE(_aircraft_control.order                            ,it, fieldnum) ; \
 TEMPLATE(_aircraft_control.reply                            ,it, fieldnum) ; \
 TEMPLATE(_aircraft_control.air_cntrl_cant_proc_reas         ,it, fieldnum) ; \
 TEMPLATE(_aircraft_control.pu_destination                   ,it, fieldnum) ; \
 TEMPLATE(_aircraft_control.pu_transfer                      ,it, fieldnum) ; \
 TEMPLATE(_aircraft_control.pu_sending                       ,it, fieldnum) ; \
 TEMPLATE(_aircraft_control.source_id                        ,it, fieldnum) ; \
 TEMPLATE(_aircraft_control.counter                          ,it, fieldnum) ; \
 TEMPLATE(_aircraft_control.M10AFRAME                        ,it, fieldnum) ; \
 TEMPLATE(_aircraft_control.M10BFRAME                        ,it, fieldnum) ; \
 TEMPLATE(_aircraft_control.result                           ,it, fieldnum) ; \
 TEMPLATE(_aircraft_control.reject_reason                    ,it, fieldnum) ; \
                                                                        \
 TEMPLATE(_command_order.ntn_platform                        ,it, fieldnum) ; \
 TEMPLATE(_command_order.ntn_target                          ,it, fieldnum) ; \
 TEMPLATE(_command_order.pu_destination                      ,it, fieldnum) ; \
 TEMPLATE(_command_order.pu_sending                          ,it, fieldnum) ; \
 TEMPLATE(_command_order.command                             ,it, fieldnum) ; \
 TEMPLATE(_command_order.weapon_platform                     ,it, fieldnum) ; \
 TEMPLATE(_command_order.weapon                              ,it, fieldnum) ; \
 TEMPLATE(_command_order.number_of_weapons                   ,it, fieldnum) ; \
 TEMPLATE(_command_order.gmt_time_of_impact                  ,it, fieldnum) ; \
 TEMPLATE(_command_order.gmt_time_of_impact_valid            ,it, fieldnum) ; \
 TEMPLATE(_command_order.duty                                ,it, fieldnum) ; \
 TEMPLATE(_command_order.procedur                            ,it, fieldnum) ; \
 TEMPLATE(_command_order.order_reply                         ,it, fieldnum) ; \
 TEMPLATE(_command_order.aframe                              ,it, fieldnum) ; \
 TEMPLATE(_command_order.bframe                              ,it, fieldnum) ; \
 TEMPLATE(_command_order.command_counter                     ,it, fieldnum) ; \
 TEMPLATE(_command_order.order_result                        ,it, fieldnum) ; \
 TEMPLATE(_command_order.order_reject_reason                 ,it, fieldnum) ; \
                                                                        \
 TEMPLATE(_link_pointer.pu                                   ,it, fieldnum) ; \
 TEMPLATE(_link_pointer.operator_position                    ,it, fieldnum) ; \
 TEMPLATE(_link_pointer.x_position                           ,it, fieldnum) ; \
 TEMPLATE(_link_pointer.y_position                           ,it, fieldnum) ; \
 TEMPLATE(_link_pointer.latitude                             ,it, fieldnum) ; \
 TEMPLATE(_link_pointer.longitude                            ,it, fieldnum) ; \
 TEMPLATE(_link_pointer.link_pointer_result                  ,it, fieldnum) ; \
 TEMPLATE(_link_pointer.link_pointer_reject_reason           ,it, fieldnum) ; \
 TEMPLATE(_link_pointer.training_NTN                         ,it, fieldnum) ; \
 TEMPLATE(_link_pointer.training_kind                        ,it, fieldnum) ; \
                                                                        \
 TEMPLATE(_depromotion.NTN                                   ,it, fieldnum) ; \
 TEMPLATE(_depromotion.counter                               ,it, fieldnum) ; \
                                                                        \
 TEMPLATE(_update_request.pu_address                         ,it, fieldnum) ; \
 TEMPLATE(_update_request.source_id                          ,it, fieldnum) ; \
 TEMPLATE(_update_request.counter                            ,it, fieldnum) ; \
 TEMPLATE(_update_request.order_result                       ,it, fieldnum) ; \
 TEMPLATE(_update_request.order_reject_reason                ,it, fieldnum) ; \
                                                                        \
 TEMPLATE(_weapon_engagement.network_friend                  ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.source_id                       ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.pu_origin                       ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.NTN_target                      ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.NTN_friend                      ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.weapon                          ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.weapon_range_validity           ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.weapon_engagement_state         ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.weapon_range                    ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.inventories_validity            ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.hot_inventory                   ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.cold_inventory                  ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.weapon_engagement_result        ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.weapon_engagement_reject_reason ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.engagement_active               ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.weapon_counter                  ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.engagement_counter              ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.head_up_counter                 ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.engagement_broken_counter       ,it, fieldnum) ; \
 TEMPLATE(_weapon_engagement.target_destroyed_counter        ,it, fieldnum) ; \
                                                                        \
 TEMPLATE(_assign_request.tactical                           ,it, fieldnum) ; \
 TEMPLATE(_assign_request.assignment_kind                    ,it, fieldnum) ; \
                                                                        \
 TEMPLATE(_cdo_check.counter    ,it,fieldnum) ;                         \
 TEMPLATE(_cdo_check.network    ,it,fieldnum) ;                         \
 TEMPLATE(_cdo_check.pu_address ,it,fieldnum) ;                         \
TEMPLATE(_network_assignment.tactical                 , it, fieldnum) ; \
TEMPLATE(_network_assignment.source_id                , it, fieldnum) ; \
TEMPLATE(_network_assignment.assignment_command       , it, fieldnum) ; \
TEMPLATE(_network_assignment.link_state               , it, fieldnum) ; \
TEMPLATE(_network_assignment.assignment_result        , it, fieldnum) ; \
TEMPLATE(_network_assignment.assignment_reject_reason , it, fieldnum) ; \
TEMPLATE(_opnote.source_id         , it, fieldnum) ;                    \
TEMPLATE(_opnote.serial_number     , it, fieldnum) ;                    \
TEMPLATE(_opnote.origin_TN         , it, fieldnum) ;                    \
TEMPLATE(_opnote.addressee_TN      , it, fieldnum) ;                    \
TEMPLATE(_opnote.transm_indicator  , it, fieldnum) ;                    \
TEMPLATE(_opnote.broadcast         , it, fieldnum) ;                    \
TEMPLATE(_opnote.text_message[100] , it, fieldnum) ;                    \
TEMPLATE(_opnote.counter           , it, fieldnum) ;                    \
TEMPLATE(_opnote.store_time.coarse_time        , it, fieldnum) ;                    \
TEMPLATE(_opnote.store_time.fine_time        , it, fieldnum) ;                    \
TEMPLATE(_opnote.validity          , it, fieldnum) ; 

#define TRACK_FIELDS(TEMPLATE, it, fieldnum)                            \
      TEMPLATE(network_kinetics.x_position , it, fieldnum) ;            \
      TEMPLATE(network_kinetics.y_position , it, fieldnum) ;            \
      TEMPLATE(network_kinetics.x_velocity , it, fieldnum) ;            \
      TEMPLATE(network_kinetics.y_velocity , it, fieldnum) ;            \
      TEMPLATE(network_kinetics.time_validity.coarse_time , it, fieldnum) ; \
      TEMPLATE(network_kinetics.time_validity.fine_time , it, fieldnum) ; \
                                                                        \
      TEMPLATE(cmsdata.x_position            , it, fieldnum) ;          \
      TEMPLATE(cmsdata.y_position            , it, fieldnum) ;          \
      TEMPLATE(cmsdata.z_position            , it, fieldnum) ;          \
      TEMPLATE(cmsdata.x_velocity            , it, fieldnum) ;          \
      TEMPLATE(cmsdata.y_velocity            , it, fieldnum) ;          \
      TEMPLATE(cmsdata.z_velocity            , it, fieldnum) ;          \
      TEMPLATE(cmsdata.latitude              , it, fieldnum) ;          \
      TEMPLATE(cmsdata.longitude             , it, fieldnum) ;          \
      TEMPLATE(cmsdata.track_phase           , it, fieldnum) ;          \
      TEMPLATE(cmsdata.initial_phase         , it, fieldnum) ;          \
      TEMPLATE(cmsdata.special_code_updated  , it, fieldnum) ;          \
      TEMPLATE(cmsdata.identity              , it, fieldnum) ;          \
      TEMPLATE(cmsdata.primary_air_id_ampl   , it, fieldnum) ;          \
      TEMPLATE(cmsdata.secondary_air_id_ampl , it, fieldnum) ;          \
      TEMPLATE(cmsdata.primary_surf_id_ampl  , it, fieldnum) ;          \
      TEMPLATE(cmsdata.secondary_surf_id_ampl, it, fieldnum) ;          \
      TEMPLATE(cmsdata.environment           , it, fieldnum) ;          \
      TEMPLATE(cmsdata.iff_mode2             , it, fieldnum) ;          \
      TEMPLATE(cmsdata.iff_mode4             , it, fieldnum) ;          \
\
      TEMPLATE(general.aop_data.position.x_position                                , it, fieldnum) ; \
      TEMPLATE(general.aop_data.position.y_position                                , it, fieldnum) ; \
      TEMPLATE(general.aop_data.validity                                           , it, fieldnum) ; \
      TEMPLATE(general.aop_data.counter                                            , it, fieldnum) ; \
      TEMPLATE(general.tactical                                 , it, fieldnum) ; \
      TEMPLATE(general.network                                  , it, fieldnum) ; \
      TEMPLATE(general.NTN                                      , it, fieldnum) ; \
      TEMPLATE(general.pu_origin                                , it, fieldnum) ; \
      TEMPLATE(general.pu_controlling                           , it, fieldnum) ; \
      TEMPLATE(general.network_track_phase                      , it, fieldnum) ; \
      TEMPLATE(general.track_existence                          , it, fieldnum) ; \
      TEMPLATE(general.link_state                               , it, fieldnum) ; \
      TEMPLATE(general.track_kind                               , it, fieldnum) ; \
      TEMPLATE(general.identity                                 , it, fieldnum) ; \
      TEMPLATE(general.track_alert_state                        , it, fieldnum) ; \
      TEMPLATE(general.classification                           , it, fieldnum) ; \
      TEMPLATE(general.possible_sub_confidence_level            , it, fieldnum) ; \
      TEMPLATE(general.primary_classification_amplification     , it, fieldnum) ; \
      TEMPLATE(general.secondary_classification_amplification   , it, fieldnum) ; \
      TEMPLATE(general.primary_air_id_ampl                      , it, fieldnum) ; \
      TEMPLATE(general.secondary_air_id_ampl                    , it, fieldnum) ; \
      TEMPLATE(general.primary_air_designator                   , it, fieldnum) ; \
      TEMPLATE(general.secondary_air_designator                 , it, fieldnum) ; \
      TEMPLATE(general.primary_asw_designator                   , it, fieldnum) ; \
      TEMPLATE(general.secondary_asw_designator                 , it, fieldnum) ; \
      TEMPLATE(general.primary_gen_designator                   , it, fieldnum) ; \
      TEMPLATE(general.secondary_gen_designator                 , it, fieldnum) ; \
      TEMPLATE(general.primary_sub_classification               , it, fieldnum) ; \
      TEMPLATE(general.secondary_sub_classification             , it, fieldnum) ; \
      TEMPLATE(general.primary_surf_id_ampl                     , it, fieldnum) ; \
      TEMPLATE(general.secondary_surf_id_ampl                   , it, fieldnum) ; \
      TEMPLATE(general.height_source                            , it, fieldnum) ; \
      TEMPLATE(general.esm_data.emitter_number                , it, fieldnum) ; \
      TEMPLATE(general.esm_data.threat_evaluation             , it, fieldnum) ; \
      TEMPLATE(general.esm_data.platform                      , it, fieldnum) ; \
      TEMPLATE(general.esm_data.frequency_switch              , it, fieldnum) ; \
      TEMPLATE(general.esm_data.emitter_frequency             , it, fieldnum) ; \
      TEMPLATE(general.esm_data.frequency_range               , it, fieldnum) ; \
      TEMPLATE(general.esm_data.emitter_mode                  , it, fieldnum) ; \
      TEMPLATE(general.esm_data.confidence_level              , it, fieldnum) ; \
      TEMPLATE(general.esm_data.platform_evaluation_confidence, it, fieldnum) ; \
      TEMPLATE(general.esm_data.esm_broad_classification      , it, fieldnum) ; \
      TEMPLATE(general.esm_data.esm_amplifying_characteristics, it, fieldnum) ; \
      TEMPLATE(general.esm_data.lock_on_spy                   , it, fieldnum) ; \
      TEMPLATE(general.esm_data.scan_characteristics          , it, fieldnum) ; \
      TEMPLATE(general.esm_data.jitter                        , it, fieldnum) ; \
      TEMPLATE(general.esm_data.polarisation                  , it, fieldnum) ; \
      TEMPLATE(general.esm_data.PRF                           , it, fieldnum) ; \
      TEMPLATE(general.esm_data.pulse_width                   , it, fieldnum) ; \
      TEMPLATE(general.esm_data.scan_time                     , it, fieldnum) ; \
      TEMPLATE(general.esm_data.scan_frequency                , it, fieldnum) ; \
      TEMPLATE(general.esm_data.scan_mode                     , it, fieldnum) ; \
      TEMPLATE(general.esm_data.frequency_multiplier          , it, fieldnum) ; \
      TEMPLATE(general.ecm_data.elevation                     , it, fieldnum) ; \
      TEMPLATE(general.ecm_data.frequency_range               , it, fieldnum) ; \
      TEMPLATE(general.ecm_data.jammer_signal_level           , it, fieldnum) ; \
      TEMPLATE(general.ecm_data.platform                      , it, fieldnum) ; \
      TEMPLATE(general.ecm_data.threat_evaluation             , it, fieldnum) ; \
      TEMPLATE(general.ecm_data.ecm_broad_classification      , it, fieldnum) ; \
      TEMPLATE(general.ecm_data.ecm_amplifying_characteristics, it, fieldnum) ; \
      TEMPLATE(general.quality_syst                             , it, fieldnum) ; \
      TEMPLATE(general.quality_netw                             , it, fieldnum) ; \
      TEMPLATE(general.latitude                                 , it, fieldnum) ; \
      TEMPLATE(general.longitude                                , it, fieldnum) ; \
      TEMPLATE(general.x_position                               , it, fieldnum) ; \
      TEMPLATE(general.y_position                               , it, fieldnum) ; \
      TEMPLATE(general.iff_data.iff_mode1         , it, fieldnum) ;     \
      TEMPLATE(general.iff_data.iff_mode2         , it, fieldnum) ;     \
      TEMPLATE(general.iff_data.iff_mode3         , it, fieldnum) ;     \
      TEMPLATE(general.iff_data.iff_mode4         , it, fieldnum) ;     \
      TEMPLATE(general.iff_data.iff_modeC         , it, fieldnum) ;     \
      TEMPLATE(general.iff_data.iff_mode1_validity, it, fieldnum) ;     \
      TEMPLATE(general.iff_data.iff_mode2_validity, it, fieldnum) ;     \
      TEMPLATE(general.iff_data.iff_mode3_validity, it, fieldnum) ;     \
      TEMPLATE(general.iff_data.iff_mode4_validity, it, fieldnum) ;     \
      TEMPLATE(general.iff_data.iff_modeC_validity, it, fieldnum) ;     \
      TEMPLATE(general.iff_data.iff_mode1_changed , it, fieldnum) ;     \
      TEMPLATE(general.iff_data.iff_mode2_changed , it, fieldnum) ;     \
      TEMPLATE(general.iff_data.iff_mode3_changed , it, fieldnum) ;     \
      TEMPLATE(general.iff_data.iff_mode4_changed , it, fieldnum) ;     \
      TEMPLATE(general.iff_data.iff_modeC_changed , it, fieldnum) ;     \
      TEMPLATE(general.course_validity                          , it, fieldnum) ; \
      TEMPLATE(general.height_depth_valid                       , it, fieldnum) ; \
      TEMPLATE(general.bearing_valid                            , it, fieldnum) ; \
      TEMPLATE(general.bearing_accuracy_valid                   , it, fieldnum) ; \
      TEMPLATE(general.velocity_validity                        , it, fieldnum) ; \
      TEMPLATE(general.course                                   , it, fieldnum) ; \
      TEMPLATE(general.height_depth                             , it, fieldnum) ; \
      TEMPLATE(general.bearing                                  , it, fieldnum) ; \
      TEMPLATE(general.bearing_accuracy                         , it, fieldnum) ; \
      TEMPLATE(general.x_velocity                               , it, fieldnum) ; \
      TEMPLATE(general.y_velocity                               , it, fieldnum) ; \
      TEMPLATE(general.mission_nr_updated                       , it, fieldnum) ; \
      TEMPLATE(general.call_sign_updated                        , it, fieldnum) ; \
      TEMPLATE(general.voice_call_frequency                     , it, fieldnum) ; \
      TEMPLATE(general._is_time_of_task_valid                   , it, fieldnum) ; \
      TEMPLATE(general._time_of_task_in_minute                  , it, fieldnum) ; \
      TEMPLATE(general._is_fuel_valid                           , it, fieldnum) ; \
      TEMPLATE(general._fuel_in_lb                              , it, fieldnum) ; \
      TEMPLATE(general.special_code                             , it, fieldnum) ; \
      TEMPLATE(general.missile_unit                             , it, fieldnum) ; \
      TEMPLATE(general.contacts_size                            , it, fieldnum) ; \
      TEMPLATE(general.current_surface_mission                  , it, fieldnum) ; \
      TEMPLATE(general.asw_sensor_contact                       , it, fieldnum) ; \
      TEMPLATE(general.asw_sensor_contact_validity              , it, fieldnum) ; \
      TEMPLATE(general.asw_secondary_mission                    , it, fieldnum) ; \
      TEMPLATE(general.asw_sec_mission_validity                 , it, fieldnum) ; \
      TEMPLATE(general.asw_contact_status                       , it, fieldnum) ; \
      TEMPLATE(general.special_processing_indicator             , it, fieldnum) ; \
      TEMPLATE(general.time_remaining_validity                  , it, fieldnum) ; \
      TEMPLATE(general.time_remaining                           , it, fieldnum) ; \
      TEMPLATE(general.asw_bearing_classification_ampl          , it, fieldnum) ; \
      TEMPLATE(general.asw_bearing_depth                        , it, fieldnum) ; \
      TEMPLATE(general.asw_bearing_report_type                  , it, fieldnum) ; \
      TEMPLATE(general.asw_bearing_layer_validity               , it, fieldnum) ; \
      TEMPLATE(general.asw_bearing_sensor_validity              , it, fieldnum) ; \
      TEMPLATE(general.main_rate_freq_validity                  , it, fieldnum) ; \
      TEMPLATE(general.notack_validity                          , it, fieldnum) ; \
      TEMPLATE(general.asw_bearing_layer                        , it, fieldnum) ; \
      TEMPLATE(general.asw_bearing_sensor                       , it, fieldnum) ; \
      TEMPLATE(general.main_rate_freq                           , it, fieldnum) ; \
      TEMPLATE(general.notack_duration                          , it, fieldnum) ; \
      TEMPLATE(general.notack_radius                            , it, fieldnum) ; \
      TEMPLATE(general.asw_bearing_first_acoustic_freq_validity , it, fieldnum) ; \
      TEMPLATE(general.asw_bearing_second_acoustic_freq_validity, it, fieldnum) ; \
      TEMPLATE(general.asw_bearing_range_accuracy_validity      , it, fieldnum) ; \
      TEMPLATE(general.asw_bearing_acoustic_frequency_validity  , it, fieldnum) ; \
      TEMPLATE(general.bearing2_valid                           , it, fieldnum) ; \
      TEMPLATE(general.asw_range_validity                       , it, fieldnum) ; \
      TEMPLATE(general.asw_bearing_first_acoustic_freq          , it, fieldnum) ; \
      TEMPLATE(general.asw_bearing_second_acoustic_freq         , it, fieldnum) ; \
      TEMPLATE(general.asw_bearing_range_accuracy               , it, fieldnum) ; \
      TEMPLATE(general.asw_bearing_acoustic_frequency           , it, fieldnum) ; \
      TEMPLATE(general.bearing2                                 , it, fieldnum) ; \
      TEMPLATE(general.asw_range                                , it, fieldnum) ; \
      TEMPLATE(general.datum_speed                              , it, fieldnum) ; \
      TEMPLATE(general.datum_error                              , it, fieldnum) ; \
      TEMPLATE(general.nineteen_bit_action                      , it, fieldnum) ; \
      TEMPLATE(general.ew_intelligence_category                 , it, fieldnum) ; \
      TEMPLATE(general.ew_intelligence_data.category            , it, fieldnum) ; \
      TEMPLATE(general.ew_intelligence_general                  , it, fieldnum) ; \
      TEMPLATE(general.ew_intelligence_validity                 , it, fieldnum) ; \
      TEMPLATE(general.ew_intelligence_changed                  , it, fieldnum) ; \
      TEMPLATE(general.track_special_processing                 , it, fieldnum) ; \
      TEMPLATE(general.tag_validity                             , it, fieldnum) ; \
      TEMPLATE(general.tag_changed                              , it, fieldnum) ; \
      TEMPLATE(general._spi                   , it, fieldnum) ;         \
      TEMPLATE(general.time_of_initiation.fine_time   , it, fieldnum) ; \
      TEMPLATE(general.time_of_initiation.fine_time   , it, fieldnum) ; \
      TEMPLATE(general.time_validity.coarse_time      , it, fieldnum) ; \
      TEMPLATE(general.time_validity.coarse_time      , it, fieldnum) ; \
                                                                        \
      TEMPLATE(link11.time_of_last_update.coarse_time         , it, fieldnum) ; \
      TEMPLATE(link11.time_of_last_update.fine_time         , it, fieldnum) ; \
      TEMPLATE(link11.transmit_track_request       , it, fieldnum) ;    \
      TEMPLATE(link11.identity_OSindiff_resolve    , it, fieldnum) ;    \
      TEMPLATE(link11.environment_OSindiff_resolve , it, fieldnum) ;    \
      TEMPLATE(link11.identity_R2indiff_resolve    , it, fieldnum) ;    \
      TEMPLATE(link11.environment_R2indiff_resolve , it, fieldnum) ;    \
      TEMPLATE(link11.position_conflict_state      , it, fieldnum) ;    \
      TEMPLATE(link11.track_number_conflict_state  , it, fieldnum) ;    \
      TEMPLATE(link11.own_track_quality            , it, fieldnum) ;    \
      TEMPLATE(link11.iff_mode2_conflict_state     , it, fieldnum) ;    \
      TEMPLATE(link11.iff_mode4_conflict_state     , it, fieldnum) ;    \
      TEMPLATE(link11.iff_mode1_local              , it, fieldnum) ;    \
      TEMPLATE(link11.iff_mode2_local              , it, fieldnum) ;    \
      TEMPLATE(link11.iff_mode3_local              , it, fieldnum) ;    \
      TEMPLATE(link11.iff_mode4_local              , it, fieldnum) ;    \
      TEMPLATE(link11.change_data_order_running    , it, fieldnum) ;    \
      TEMPLATE(link11.site_coordinate_centre       , it, fieldnum) ;    \
                                                                        \
      TEMPLATE(track_delete_time.coarse_time  , it, fieldnum) ;         \
      TEMPLATE(track_delete_time.fine_time    , it, fieldnum) ;         \
      TEMPLATE(height_depth               , it, fieldnum) ;             \
      TEMPLATE(height_depth_received      , it, fieldnum) ;             \
      TEMPLATE(is_changed                 , it, fieldnum) ;             \
      TEMPLATE(_change_data_order_counter , it, fieldnum) ;             \
      TEMPLATE(_special_code_counter      , it, fieldnum) ;             \
      TEMPLATE(training_target_kind       , it, fieldnum) ;             \
      TEMPLATE(training_counter           , it, fieldnum) ;             \
      TEMPLATE(training_NTN               , it, fieldnum) ;             \
      TEMPLATE(training_SRN               , it, fieldnum) ;             \
      TEMPLATE(training_manual_track_kind , it, fieldnum) ;             \
      TEMPLATE(own_or_lro                 , it, fieldnum) ;             \
      TEMPLATE(is_checkouted              , it, fieldnum) ;             \
      TEMPLATE(_impedence                 , it, fieldnum) ;             \
      TEMPLATE(_STN                       , it, fieldnum) ;             \
      TEMPLATE(_add_info_count            , it, fieldnum) ;             \
      TEMPLATE(_track_source_filter       , it, fieldnum) ;             \
      TEMPLATE(track_delete_time.coarse_time       , it, fieldnum) ;    \
      TEMPLATE(track_delete_time.fine_time       , it, fieldnum) ;      \
                                                                        \
      TEMPLATE(_air_mission_data.air_control_reference_number    , it, fieldnum) ; \
      TEMPLATE(_air_mission_data.control_counter                 , it, fieldnum) ; \
      TEMPLATE(_air_mission_data.air_control_active              , it, fieldnum) ; \
      TEMPLATE(_air_mission_data.kind                            , it, fieldnum) ; \
      TEMPLATE(_air_mission_data.general_mission_counter         , it, fieldnum) ; \
      TEMPLATE(_air_mission_data.asw_mission_counter             , it, fieldnum) ; \
      TEMPLATE(_air_mission_data.asw_mission_repetition_counter  , it, fieldnum) ; \
                                                                        \
                                                                        \
      TEMPLATE(_prohibit_track.validity     , it, fieldnum) ;           \
      TEMPLATE(_prohibit_track.prohibit_time.coarse_time, it, fieldnum) ; \
      TEMPLATE(_prohibit_track.prohibit_time.fine_time, it, fieldnum) ; \
                                                                        \
      TEMPLATE(transmission_info.info_validation                              , it, fieldnum) ; \
      TEMPLATE(transmission_info.information_difference_counter               , it, fieldnum) ; \
      TEMPLATE(transmission_info.last_time_position_message_transmission, it, fieldnum) ; \
      TEMPLATE(transmission_info.last_time_amplifying_message_transmission, it, fieldnum) ; \
                                                                        \
      TEMPLATE(transmission_info.track_alert_counter                          , it, fieldnum) ; \
      TEMPLATE(transmission_info.kind_of_alert                                , it, fieldnum) ; \
      TEMPLATE(transmission_info.iff_difference_clear_isac_mode1              , it, fieldnum) ; \
      TEMPLATE(transmission_info.iff_difference_clear_isac_mode2              , it, fieldnum) ; \
      TEMPLATE(transmission_info.iff_difference_clear_isac_mode3              , it, fieldnum) ; \
      TEMPLATE(transmission_info.iff_difference_clear_isac_mode4              , it, fieldnum) ; \
      TEMPLATE(transmission_info.iff_difference_diference_clear_counter_mode1 , it, fieldnum) ; \
      TEMPLATE(transmission_info.iff_difference_diference_clear_counter_mode2 , it, fieldnum) ; \
      TEMPLATE(transmission_info.iff_difference_diference_clear_counter_mode3 , it, fieldnum) ; \
      TEMPLATE(transmission_info.iff_difference_diference_clear_counter_mode4 , it, fieldnum) ; \
      TEMPLATE(transmission_info.iff_mode1_validity                           , it, fieldnum) ; \
      TEMPLATE(transmission_info.AFRAME_1                                     , it, fieldnum) ; \
      TEMPLATE(transmission_info.iff_mode2_validity                           , it, fieldnum) ; \
      TEMPLATE(transmission_info.AFRAME_2                                     , it, fieldnum) ; \
      TEMPLATE(transmission_info.iff_mode3_validity                           , it, fieldnum) ; \
      TEMPLATE(transmission_info.AFRAME_3                                     , it, fieldnum) ; \
      TEMPLATE(transmission_info.iff_mode4_validity                           , it, fieldnum) ; \
      TEMPLATE(transmission_info.AFRAME_4                                     , it, fieldnum) ; \
      TEMPLATE(transmission_info.iff_report_transmission_time.coarse_time , it, fieldnum) ; \
      TEMPLATE(transmission_info.iff_report_transmission_time.fine_time   , it, fieldnum) ; \
      TEMPLATE(transmission_info.iff_report_counter                           , it, fieldnum) ; \
      TEMPLATE(transmission_info.ew_intelligence_counter                      , it, fieldnum) ; \
                                                                        \
                                                                        \
      TEMPLATE(supporting_info.gen_call_sign_counter      , it, fieldnum) ; \
      TEMPLATE(supporting_info.cont_call_sign_counter     , it, fieldnum) ; \
      TEMPLATE(supporting_info.gen_mission_number_counter , it, fieldnum) ; \
      TEMPLATE(supporting_info.cont_mission_number_counter, it, fieldnum) ; \
      TEMPLATE(supporting_info.voice_control_freq_counter , it, fieldnum) ; \
      TEMPLATE(supporting_info.info_validation            , it, fieldnum) ; \
                                                                        \
      TEMPLATE(_change_data_order.network_cdo            , it, fieldnum) ; \
      TEMPLATE(_change_data_order.source_id              , it, fieldnum) ; \
      TEMPLATE(_change_data_order.NTN                    , it, fieldnum) ; \
      TEMPLATE(_change_data_order.pu_address             , it, fieldnum) ; \
      TEMPLATE(_change_data_order.old_identity           , it, fieldnum) ; \
      TEMPLATE(_change_data_order.new_identity           , it, fieldnum) ; \
      TEMPLATE(_change_data_order.old_environment        , it, fieldnum) ; \
      TEMPLATE(_change_data_order.new_environment        , it, fieldnum) ; \
      TEMPLATE(_change_data_order.old_primary_air_ampl   , it, fieldnum) ; \
      TEMPLATE(_change_data_order.old_secondary_air_ampl , it, fieldnum) ; \
      TEMPLATE(_change_data_order.new_primary_air_ampl   , it, fieldnum) ; \
      TEMPLATE(_change_data_order.new_secondary_air_ampl , it, fieldnum) ; \
      TEMPLATE(_change_data_order.old_primary_surf_ampl  , it, fieldnum) ; \
      TEMPLATE(_change_data_order.old_secondary_surf_ampl, it, fieldnum) ; \
      TEMPLATE(_change_data_order.new_primary_surf_ampl  , it, fieldnum) ; \
      TEMPLATE(_change_data_order.new_secondary_surf_ampl, it, fieldnum) ; \
      TEMPLATE(_change_data_order.order_result           , it, fieldnum) ; \
      TEMPLATE(_change_data_order.order_reject_reason    , it, fieldnum) ; \
      TEMPLATE(_change_data_order.finished               , it, fieldnum) ; \
      TEMPLATE(_change_data_order.order_running          , it, fieldnum) ;  
      
