

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)


(case (testsc-get-testnum)
  (
   (7 )
   (define testsc 1 )
   ;; (define ta-1   1)
   (define itn 1)
   (define usepar 1 )
   (tnset 0 'general.tag_validity  1)
   (tnset 0  'general.link_state  system_types-transmitted_link_state)
   )
  ((8 )
   (define testsc 1 )
   (define ta-1   1)
   (define itn 0)
   (tnset 0 'general.tag_validity  1)
   (tnset 0  'general.link_state  system_types-transmitted_link_state)
   (tstrset 0  'general.tag  "abc123")
   )
  (
   (9 )
   (define testsc 1 )
   (define ta-1   1)
   (define itn 1)
   (define usepar 1 )
   (tnset 0 'general.tag_validity  1)
   (tnset 0  'general.link_state  system_types-transmitted_link_state)
   )

  )
