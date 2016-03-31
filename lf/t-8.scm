(testsc-require icmsdefine)
(testsc-require system_types)
(case (testsc-get-testnum)
  ((2)
   (testsc-track-nset 1 (list '_track_source_filter 1) )
   (testsc-track-nset 1 (list 'general.link_state  system_types-not_link_involved) )
   )
  ((3)
   (testsc-track-nset 1 (list '_track_source_filter 1) )
   (testsc-track-nset 1 (list 'general.link_state  system_types-correlated) )
   )
  
  ((4)
   (testsc-track-nset 1 (list '_track_source_filter 0) )
   (testsc-track-nset 1 (list 'general.identity  system_types-hostile) )
   )

  
  ((7)
   (testsc-track-nset 1 (list '_track_source_filter 1) )
   (testsc-track-nset 1 (list 'general.link_state  system_types-prohibit) )
   )
  )
  

