
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)
(testsc-require channelid)

(case (testsc-get-testnum)
  ((38 45)
   (define testsc 1 )
   (anset 0 '_pair_assoc.action system_types-terminate_pairing_association))

  ((65)
   (define testsc 1 )
   (anset 0 )
   (define gmt ID_CH_PAIR_ASSOC_TRANSMITTED)
   )
  ((66)
   (define testsc 1 )
   (anset 0 )
   (define gmt ID_CH_PAIRING_ASSOCIATION_RECEIVE)
   )

  
  ((67)
   (define testsc 1 )
   (anset 0 )
   (define gmt ID_CH_TMSINDEX_CANCELED)
   (anset 1 )
   (define usemag 1 )
   (anset 1 '_command_order.ntn_platform                -1
          '_command_order.ntn_target                          -1
          '_command_order.pu_destination                      -1
          '_command_order.pu_sending                          -1
          '_command_order.command                             -1
          '_command_order.weapon_platform                     -1
          '_command_order.weapon                              -1
          '_command_order.number_of_weapons                   -1
          '_command_order.gmt_time_of_impact                  -1
          '_command_order.gmt_time_of_impact_valid            -1
          '_command_order.duty                                -1
          '_command_order.procedur                            -1
          '_command_order.order_reply                         -1
          '_command_order.aframe                              -1
          '_command_order.bframe                              -1
          '_command_order.command_counter                     -1
          '_command_order.order_result                        -1
          '_command_order.order_reject_reason                 -1)

   
   )

  ((68)
   (define testsc 1 )
   (anset 0 '_aircraft_control.aircraft_network 1
            '_aircraft_control.engage_network   1) 
   
   (anset 0 )
   (define gmt ID_CH_TMSINDEX_CANCELED)
   (for-each (lambda (x) (anset x)) (num-list 1 5))
   (anset 1 )
   (define usemag 1 )
   (anset 1 '_command_order.ntn_platform                -1
          '_command_order.ntn_target                          -1
          '_command_order.pu_destination                      -1
          '_command_order.pu_sending                          -1
          '_command_order.command                             -1
          '_command_order.weapon_platform                     -1
          '_command_order.weapon                              -1
          '_command_order.number_of_weapons                   -1
          '_command_order.gmt_time_of_impact                  -1
          '_command_order.gmt_time_of_impact_valid            -1
          '_command_order.duty                                -1
          '_command_order.procedur                            -1
          '_command_order.order_reply                         -1
          '_command_order.aframe                              -1
          '_command_order.bframe                              -1
          '_command_order.command_counter                     -1
          '_command_order.order_result                        -1
          '_command_order.order_reject_reason                 -1)

   
   )

  ((69)
   (define testsc 1 )
   (anset 0 '_command_order.ntn_platform                -1
          '_command_order.ntn_target                          -1
          '_command_order.pu_destination                      -1
          '_command_order.pu_sending                          -1
          '_command_order.command                             -1
          '_command_order.weapon_platform                     -1
          '_command_order.weapon                              -1
          '_command_order.number_of_weapons                   -1
          '_command_order.gmt_time_of_impact                  -1
          '_command_order.gmt_time_of_impact_valid            -1
          '_command_order.duty                                -1
          '_command_order.procedur                            -1
          '_command_order.order_reply                         -1
          '_command_order.aframe                              -1
          '_command_order.bframe                              -1
          '_command_order.command_counter                     -1
          '_command_order.order_result                        -1
          '_command_order.order_reject_reason                 -1)
   (define gmt ID_CH_OWNSHIP_WEAPON_STATUS_TRANSMITTED)
   (for-each (lambda (x) (anset x)) (num-list 1 5))
   (anset 1 )
   (define usemag 1 )
   
   )
 
  )
