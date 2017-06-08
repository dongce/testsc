
(case (testsc-get-testnum)
  ((1)
    (testsc-track-nset 1 (list 'general.aop_data.validity  0) ))
  ((2)
   (testsc-track-nset 1 (list 'general.aop_data.validity  1) )
   (testsc-track-nset 1 (list 'general.aop_data.counter  0) )
   ))

