

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((2)
   (define testsc 1)
   (define mas 3 )
   (anset 0 '_aircraft_control.reply   system_types-machine_receipt)
   (anset 1 '_aircraft_control.reply   system_types-will_comply)
   (anset 2 '_aircraft_control.reply   -1)
   )

  
  ((3)
   (define testsc 1)
   (define mas 0 )
   (anset 0 '_aircraft_control.reply   system_types-will_comply)
   )

  
  ((4)
   (define testsc 1)
   (define mas 0 )
   (define allocid -1 )
   (anset 0 '_aircraft_control.reply   system_types-will_comply)
   )
  )

