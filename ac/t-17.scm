
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((8)
   (define testsc 1 )
   (define  bmoaa 1)
   (define  mas 4)
   (anset 0 '_aircraft_control.order system_types-assume_cntrl
          '_aircraft_control.aircraft_network 0 )

   (tnset 0 '_air_mission_data.air_control_active 0 
          '_air_mission_data.counter 1)


   (anset 1 '_aircraft_control.order system_types-assume_cntrl
          '_aircraft_control.counter 1
          '_aircraft_control.aircraft_network 1 )

   (tnset 1 '_air_mission_data.air_control_active 0 
          '_air_mission_data.counter 1)
   
   ;; (anset 1
   ;;        '_aircraft_control.order system_types-assume_cntrl
   ;;        '_aircraft_control.aircraft_network 1 )
   ;; (tnset 1 '_air_mission_data.air_control_active 1 
   ;;        '_air_mission_data.counter 7)

   ;; (anset 2
   ;;        '_aircraft_control.order system_types-assume_cntrl
   ;;        '_aircraft_control.aircraft_network 2 )
   ;; (tnset 2 '_air_mission_data.air_control_active 0 
   ;;        '_air_mission_data.counter 7)
   
   )

  ((9)
   (define testsc 1 )
   (define  bmoaa 1)
   (define  mas 4)
   (anset 0 '_aircraft_control.order -1
          '_aircraft_control.counter 7
          '_aircraft_control.aircraft_network 0 )

   (tnset 0 '_air_mission_data.air_control_active 0 
          '_air_mission_data.counter 1)

   (anset 1
          '_aircraft_control.order -1
          '_aircraft_control.counter 7
          '_aircraft_control.aircraft_network 0 )
   (tnset 1 '_air_mission_data.air_control_active 0 
          '_air_mission_data.counter 7)

   (anset 2
          '_aircraft_control.order -1
          '_aircraft_control.counter 7
          '_aircraft_control.aircraft_network 0 )
   (tnset 2 '_air_mission_data.air_control_active 0 
          '_air_mission_data.counter 7)
   
   )
 
  )

  


