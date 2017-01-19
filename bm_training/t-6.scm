

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)


(case (testsc-get-testnum)
  (
   (3 )
   (define testsc 1 )
   (tnset 0 'general.network_track_phase  system_types-wiped)
   (tnset 1 'general.network_track_phase  system_types-wiped)
   (tnset 2 'general.network_track_phase  system_types-wiped)
   )
  ((8)
   (define testsc 1 )
   (tnset 0  'general.iff_data.iff_mode1_changed  1)
   (tnset 0  'general.iff_data.iff_mode3_changed  1)
   (tnset 1  'general.iff_data.iff_mode1_changed  1)
   (tnset 1  'general.iff_data.iff_mode3_changed  1)
   (tnset 2  'general.iff_data.iff_mode1_changed  1)
   (tnset 2  'general.iff_data.iff_mode3_changed  1)))

