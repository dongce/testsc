

;; (testsc-require l11const)
;; (testsc-require system_types)
(testsc-require dlplink11types)



(define testsc 1 )
(tnset 0 'general.NTN 0)
(tnset 1
       'general.NTN 1
       '_air_mission_data.air_control_active 1
       '_air_mission_data.kind AIRCRAFT_STATUS_KIND_AIR_GENERAL
       )

(tnset 2
       'general.NTN 1
       '_air_mission_data.air_control_active 1
       '_air_mission_data.kind AIRCRAFT_STATUS_KIND_AIR_GENERAL
       '_add_info_count 1
       '_air_mission_data.general_mission_counter 1
       )


(tnset 3
       'general.NTN 1
       '_air_mission_data.air_control_active 1
       '_air_mission_data.kind AIRCRAFT_STATUS_KIND_AIR_GENERAL
       '_add_info_count 1
       '_air_mission_data.general_mission_counter 2
       )

(tnset 4
       'general.NTN 1
       '_air_mission_data.air_control_active 1
       '_air_mission_data.kind AIRCRAFT_STATUE_KIND_ASW
       '_air_mission_data.asw_mission_repetition_counter 1
       )

(tnset 5
       'general.NTN 1
       '_air_mission_data.air_control_active 1
       '_air_mission_data.kind AIRCRAFT_STATUE_KIND_ASW
       '_add_info_count 1
       '_air_mission_data.asw_mission_counter 1
       )


(tnset 6
       'general.NTN 1
       '_air_mission_data.air_control_active 1
       '_air_mission_data.kind AIRCRAFT_STATUE_KIND_ASW
       '_add_info_count 1
       )
