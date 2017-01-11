(testsc-require dlplink11types)
(testsc-require system_types)
(define strlen 10)
(case (testsc-get-testnum)
  ((2)
   (define testsc 1 )
   (define rc 1 )
   (testsc-admin-nset 1 (list '_assign_request.tactical 1 ))
   (testsc-track-nset 1 (list 'general.tactical 1 ))
   (testsc-track-nset 1 (list 'general.network 1 ))
   )
  ((3)
   (define testsc 1 )
   (define rc 1 )
   (testsc-admin-nset 1 (list '_assign_request.tactical 1 ))

   ;; ASSIGNMENT_MANUAL
   (testsc-admin-nset 1 (list '_assign_request.assignment_kind 1  ))
   (testsc-track-nset 1 (list 'general.tactical 1 ))
   (testsc-track-nset 1 (list 'general.network 0 ))
   (define gntc 1000)
   )

  ((4)
   (define testsc 1 )
   (define rc 1 )
   (testsc-admin-nset 1 (list '_assign_request.tactical 1 ))
   (testsc-admin-nset 1 (list '_assign_request.assignment_kind ASSIGNMENT_MANUAL  ))
   (testsc-track-nset 1 (list 'general.tactical 1 ))
   (testsc-track-nset 1 (list 'general.network 0 ))
   (define gntc 0)
   (define if 1)
   )


  ((5)
   (define testsc 1 )
   (define rc 1 )
   (testsc-admin-nset 1 (list '_assign_request.tactical 1 ))
   (testsc-admin-nset 1 (list '_assign_request.assignment_kind ASSIGNMENT_MANUAL  ))
   (testsc-track-nset 1 (list 'general.tactical 1 ))
   (testsc-track-nset 1 (list 'general.network 0 ))
   (testsc-track-nset 1 (list 'general.track_kind  system_types-track_kind_land_point_track)) 
   (define gntc 0)
   (define if 0))

  ((6)
   (define testsc 1 )
   (define rc 1 )
   (testsc-admin-nset 1 (list '_assign_request.tactical 1 ))
   (testsc-admin-nset 1 (list '_assign_request.assignment_kind ASSIGNMENT_MANUAL  ))
   (testsc-track-nset 1 (list 'general.tactical 1 ))
   (testsc-track-nset 1 (list 'general.network 0 ))
   ;; (testsc-track-nset 1 (list 'general.track_kind  system_types-track_kind_land_point_track)) 
   (define gtntc 450)
   (define itfe 1))

  ((7)
   (define testsc 1 )
   (define rc 1 )
   (testsc-admin-nset 1 (list '_assign_request.tactical 1 ))
   (testsc-admin-nset 1 (list '_assign_request.assignment_kind ASSIGNMENT_MANUAL  ))
   (testsc-track-nset 1 (list 'general.tactical 1 ))
   (testsc-track-nset 1 (list 'general.network 0 ))
   ;; (testsc-track-nset 1 (list 'general.track_kind  system_types-track_kind_land_point_track)) 
   (define gtntc 0)
   (define itfe 1)

   (define network 0)
   )


  ((9)
   (define testsc 1 )
   (define rc 1 )
   (testsc-admin-nset 1 (list '_assign_request.tactical 1 ))
   (testsc-admin-nset 1 (list '_assign_request.assignment_kind ASSIGNMENT_MANUAL  ))
   (testsc-track-nset 1 (list 'general.tactical 1 ))
   (testsc-track-nset 1 (list 'general.network 0 ))
   ;; (testsc-track-nset 1 (list 'general.track_kind  system_types-track_kind_land_point_track)) 
   (define gntc 450)
   (define itfe 0))
  


  ((10)
   (define testsc 1 )
   (define rc 1 )
   (testsc-admin-nset 1 (list '_assign_request.tactical 1 ))
   (testsc-admin-nset 1 (list '_assign_request.assignment_kind ASSIGNMENT_MANUAL  ))
   (testsc-track-nset 1 (list 'general.tactical 1 ))
   (testsc-track-nset 1 (list 'general.network 0 ))
   ;; (testsc-track-nset 1 (list 'general.track_kind  system_types-track_kind_land_point_track)) 
   (define gtntc 450)
   (define itfe 0))


  ((11)
   (define testsc 1 )
   (define rc 1 )
   (testsc-admin-nset 1 (list '_assign_request.tactical 1 ))
   (testsc-admin-nset 1 (list '_assign_request.assignment_kind ASSIGNMENT_MANUAL  ))
   (testsc-track-nset 1 (list 'general.tactical 1 ))
   (testsc-track-nset 1 (list 'general.network 0 ))
   ;; (testsc-track-nset 1 (list 'general.track_kind  system_types-track_kind_land_point_track)) 
   (define gtntc 450)
   (define network 1)
   (define itfe 1))

  ((12)
   (define testsc 1 )
   (define rc 1 )
   (testsc-admin-nset 1 (list '_assign_request.tactical 1 ))
   (testsc-admin-nset 1 (list '_assign_request.assignment_kind ASSIGNMENT_MANUAL  ))
   (testsc-track-nset 1 (list 'general.tactical 1 ))
   (testsc-track-nset 1 (list 'general.network 0 ))
   ;; (testsc-track-nset 1 (list 'general.track_kind  system_types-track_kind_land_point_track)) 
   (define gtntc 450)
   (define network 1)
   (define ant 1)
   (testsc-track-nset 1 (list 'general.track_existence system_types-training_track ))
   (testsc-track-nset 1 (list  'general.iff_data.iff_mode1_validity 1))
   (define itfe 1))


  ((13)
   (define testsc 1 )
   (define rc 1 )
   (testsc-admin-nset 1 (list '_assign_request.tactical 1 ))
   (testsc-admin-nset 1 (list '_assign_request.assignment_kind ASSIGNMENT_AUTOMATIC  ))

   (testsc-admin-nset 2 (list '_assign_request.tactical 1 ))
   (testsc-admin-nset 2 (list '_assign_request.assignment_kind ASSIGNMENT_AUTOMATIC  ))

   (testsc-track-nset 1 (list 'general.tactical 1 ))
   (testsc-track-nset 1 (list 'general.network 0 ))
   ;; (testsc-track-nset 1 (list 'general.track_kind  system_types-track_kind_land_point_track)) 
   (define gtntc 450)
   (define network 1)
   (define ant 1)
   (testsc-track-nset 1 (list 'general.track_existence system_types-training_track ))
   (testsc-track-nset 1 (list  'general.iff_data.iff_mode1_validity 1))
   (define itfe 1))

  ((14)
   (define testsc 1 )
   (define rc 1 )
   (testsc-set-debug 0)
   (for-each
    (lambda (x)
      (testsc-admin-nset x (list '_assign_request.tactical 1 ))
      (testsc-admin-nset x (list '_assign_request.assignment_kind ASSIGNMENT_AUTOMATIC  )))
    (num-list 1 600)
    )

   (testsc-admin-nset 2 (list '_assign_request.tactical 1 ))
   (testsc-admin-nset 2 (list '_assign_request.assignment_kind ASSIGNMENT_AUTOMATIC  ))

   (testsc-track-nset 1 (list 'general.tactical 1 ))
   (testsc-track-nset 1 (list 'general.network 0 ))
   ;; (testsc-track-nset 1 (list 'general.track_kind  system_types-track_kind_land_point_track)) 
   (define gtntc 450)
   (define network 1)
   (define ant 1)
   (testsc-track-nset 1 (list 'general.track_existence system_types-training_track ))
   (testsc-track-nset 1 (list  'general.iff_data.iff_mode1_validity 1))
   (define itfe 1))

  ((15)
   (define testsc 1 )
   (define rc 1 )
   (testsc-set-debug 0)
   (for-each
    (lambda (x)
      (testsc-admin-nset x (list '_assign_request.tactical 1 ))
      (testsc-admin-nset x (list '_assign_request.assignment_kind ASSIGNMENT_AUTOMATIC  )))
    (num-list 1 600)
    )

   (testsc-admin-nset 2 (list '_assign_request.tactical 1 ))
   (testsc-admin-nset 2 (list '_assign_request.assignment_kind ASSIGNMENT_AUTOMATIC  ))

   (testsc-track-nset 1 (list 'general.tactical 1 ))
   (testsc-track-nset 1 (list 'general.network 0 ))
   ;; (testsc-track-nset 1 (list 'general.track_kind  system_types-track_kind_land_point_track)) 
   (define gtntc 450)
   (define network 1)
   (define ant 1)
   (testsc-track-nset 1 (list 'general.track_existence system_types-training_track ))
   (testsc-track-nset 1 (list  'general.iff_data.iff_mode1_validity 1))
   (define itfe 1))
  ((16)
   (define testsc 1 )
   (define rc 1 )
   (testsc-set-debug 0)
   (for-each
    (lambda (x)
      (testsc-admin-nset x (list '_assign_request.tactical 1 ))
      (testsc-admin-nset x (list '_assign_request.assignment_kind ASSIGNMENT_AUTOMATIC  )))
    (num-list 1 600)
    )

   (testsc-admin-nset 2 (list '_assign_request.tactical 1 ))
   (testsc-admin-nset 2 (list '_assign_request.assignment_kind ASSIGNMENT_AUTOMATIC  ))

   (testsc-track-nset 1 (list 'general.tactical 1 ))
   (testsc-track-nset 1 (list 'general.network 0 ))
   ;; (testsc-track-nset 1 (list 'general.track_kind  system_types-track_kind_land_point_track)) 
   (define gtntc 450)
   (define network 1)
   (define ant 1)
   (testsc-track-nset 1 (list 'general.track_existence system_types-training_track ))
   (testsc-track-nset 1 (list  'general.iff_data.iff_mode1_validity 1))
   (define itfe 1))

  )
