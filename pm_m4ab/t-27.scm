(testsc-set-debug 1 )
(testsc-debug "t-1")
(testsc-require l11const)

(case (testsc-get-testnum)
  ((1)
   (define testsc 1)
   (mmsg-set (list  M84ACBI SECOND_FRAME_OFFSET -1))
   
   )

  ((19)
   (define testsc 1)
   (mmsg-set (list M84AASWPTTYPE  SECOND_FRAME_OFFSET ASW_POINT_NOTACK_AREA))
   
   )
  )
