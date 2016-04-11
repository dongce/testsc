
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((2)
   (define testsc 1 )
   (mmsg-set '(M9ENVCAT 0 ENV_CAT_AIR))
   )
  ((3)
   (define testsc 1 )
   (mmsg-set '(M9ENVCAT 0 ENV_CAT_SURFACE))
   )
  )


