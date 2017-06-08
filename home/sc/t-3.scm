

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((8)
   (define testsc 1 )
   (define gplm system_types-standby_link11_mode))
  ((9)
   (define testsc 1 )
   (define gplm system_types-standby_link11_mode)
   (define gppsc 1))
  ((11)
   (define testsc 1 )
   (define gplm system_types-standby_link11_mode)
   (define gpps 1))

  )



