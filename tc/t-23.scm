
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((1)
   (define io 0)
   )

  ((2)
   (define io 1)
   (anset 0 )
   (define if 1 )
   (define itd 1 )


   (for-each-index
    (lambda (index arg)
      (anset index '_network_assignment.assignment_command  arg))

    system_types-track_arrived  
    system_types-start_transmission
    system_types-stop_transmission
    system_types-prohibit_transmission
    system_types-emergency_network_assignment_command
    system_types-stop_emergency
    system_types-forcetell_network_assignment_command
    system_types-stop_forcetell
    -1)

   (for-each-index
    (lambda (index arg)
      (tnset index general.link_state arg))
    system_types-transmitted_link_state 
    system_types-link_received_only     
    system_types-correlated           
    system_types-not_link_involved      
    system_types-prohibit               
    -1
    )
   )
  )


