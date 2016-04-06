
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((1)
   (define testsc 1 )
   (m-set '(M9ENVCAT 0 ENV_CAT_AIR)
   )
  ((2)
   (define testsc 1 )
   (m-set '(M9ENVCAT 0 ENV_CAT_SURF)
   )
  )


