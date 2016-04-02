

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)


(case (testsc-get-testnum)
  (
   (1 )
   (define testsc 1 )
   (define networks 2)
   (define usepar 1 )
   (tnset 0 'general.tag_validity  1)
   (tnset 0  'general.link_state  system_types-transmitted_link_state)
   )
  ((2 )
   (define testsc 1 )
   (define networks 2)
   (define usepar 1 )
   (tnset 0 'general.tag_validity  1)
   (tnset 0  'general.link_state  system_types-transmitted_link_state)
   (tstrset 0  'general.tag  "abc123")
   )

  )
