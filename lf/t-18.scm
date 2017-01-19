(testsc-require icmsdefine)
(testsc-require system_types)
(case (testsc-get-testnum)
  ((12)
   (define testsc 1)
   (define ak TDL_FILTER_AREA_CIRCLE)
   (define ba 1)
   )
  ((13)
   (define testsc 1)
   (define ba 1)
   (define ak TDL_FILTER_AREA_SECTOR)
   )
  ((14)
   (define testsc 1)
   (define ba 1)
   (define ak TDL_FILTER_AREA_POLYGON)
   )
  
  ((20)
   (define testsc 1)
   (define ba 1)
   (define ak -1)
   )

  ((15)
   (define testsc 1)
   (testsc-track-nset 1 (list  'general.identity system_types-identity_unknown))
   (define fi TDL_FILTER_IDENTITY_UNKNOWN))


  ((16)
   ;; ByEnvironment
   (define testsc 1)
   (testsc-track-nset 1 (list  'general.track_kind system_types-track_kind_air_point_track))
   (define fe TDL_FILTER_ENVIRONMENT_AIR))

  ((17)
   ;; ByKind
   (define testsc 1)
   (testsc-track-nset 1 (list  'general.track_kind system_types-track_kind_air_point_track))
   (testsc-track-nset 1 (list  'general.network 0))
   (define fk TDL_FILTER_KIND_POINT))

  ((18)
   ;; ByEtc
   (define testsc 1)
   (testsc-track-nset 1
                      (list 'general.quality_syst 0)
                      (list  'general.track_kind system_types-track_kind_air_point_track))
   (define etc TDL_FILTER_NON_REAL_TIME))

  ((19)
   (define testsc 1)
   (testsc-track-nset 1 (list  '_track_source_filter 1)))
  ((21) (define envf 1))
  ((22) (define etcf 1))
  ((23) (define idf 1))
  ((24) (define kf 1))
  ((25) (define sf 1))
  ((26) (define idf 1))
  ((27) (define etcf 1))
  )

