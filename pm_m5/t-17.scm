(testsc-debug "t-17")
(testsc-require l11const)
;; (define point 10)
(testsc-set-debug 0)
(case (testsc-get-testnum)
  ((18) (define point POINT_REFERENCE_POINT_GENERAL)
   (define point_amp POINT_AMPLIFY_MARSHAL_PT)
   )
  ((19) (define point POINT_REFERENCE_POINT_GENERAL)
   (define point_amp POINT_AMPLIFY_SEARCH_AREA_POINT)
   )
  ((20) (define point POINT_STATION_AIR_EXT)
   (define point_amp POINT_AMPLIFY_TANKER)
   )
  ((21) (define point POINT_STATION_AIR_EXT)
   (define point_amp POINT_AMPLIFY_ORIBIT_POINT)))
