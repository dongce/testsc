(testsc-debug "test")

(case (testsc-get-testnum)
  ((4) (mmsg (87 4 1) (84 4 -1)))
  ((5) (mmsg (87 4 1)))
  )
