
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((3)
   (define testsc 1 )
   (tnset 0)
   (tnset 0  'supporting_info.info_validation 1 )
   (define icv 1))

  ((11)
   (define testsc 1 )
   (tnset 0)
   (tnset 0  'supporting_info.info_validation 1
          'general.track_kind  system_types-track_kind_air_point_track
          )
   (tnset 1  'supporting_info.info_validation 1
          'supporting_info.gen_call_sign_counter 10
          'supporting_info.gen_mission_number_counter 10
          'supporting_info.voice_control_freq_counter 10
          'general.voice_call_frequency 10
          'general.nineteen_bit_action system_types-response
          'general.track_kind  system_types-track_kind_air_point_track
          )
   (define imrv 1)
   (define icv 1))

  
  )

