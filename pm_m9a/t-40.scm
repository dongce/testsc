

(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(define testsc 1 )
(case (testsc-get-testnum)

  ((1)
   (mmsg-set 
    '( M9SI 0 -1  )
    '( M9AI 0 -1 )
    '( M9ENVCAT 0 ENV_CAT_SURFACE  ))
   (tnset 1 'general.track_kind  -1))

  ;; ((2)
  ;;  (mmsg-set 
  ;;   '( M9SI 0 -1  )
  ;;   '( M9AI 0 -1 )
  ;;   '( M9ENVCAT 0 ENV_CAT_AIR )
  ;;   '( M9ID 0 1  )
  ;;   '( M9IDAMP 0 1  ))
  ;;  (tnset 1 'general.track_kind  system_types-track_kind_air_point_track
  ;;         'general.link_state system_types-transmitted_link_state
  ;;         'general.pu_controlling  0
  ;;         ))

  ((2)
   (mmsg-set 
    '( M9SI 0 -1  )
    '( M9AI 0 -1 )
    '( M9ENVCAT 0 ENV_CAT_AIR )
    '( M9ID 0 1  )
    '( M9IDAMP 0 1  ))
   (tnset 1 'general.track_kind  system_types-track_kind_air_point_track
          'general.link_state system_types-transmitted_link_state
          'general.pu_controlling  1
          ))

  ((3)
   (mmsg-set 
    '( M9SI 0 -1  )
    '( M9AI 0 -1 )
    '( M9ENVCAT 0 ENV_CAT_AIR )
    '( M9ID 0 1  )
    '( M9IDAMP 0 1  ))
   (tnset 1 'general.track_kind  system_types-track_kind_air_point_track
          'general.link_state system_types-transmitted_link_state
          'general.pu_controlling  1
          ))

  ((7)
   (mmsg-set 
    '( M9SI 0 -1  )
    '( M9AI 0 -1 )
    '( M9ENVCAT 0 ENV_CAT_AIR )
    '( M9ID 0 1  )
    '( M9IDAMP 0 1  ))
   (tnset 1 'general.track_kind  system_types-track_kind_surface_point_track
          'general.link_state system_types-transmitted_link_state
          'general.pu_controlling  1
          ))
  
  ((4)
   (mmsg-set 
    '( M9SI 0 -1  )
    '( M9AI 0 -1 )
    '( M9ENVCAT 0 ENV_CAT_AIR )
    '( M9ID 0 1  )
    '( M9IDAMP 0 1  ))
   (tnset 1 'general.track_kind  system_types-track_kind_surface_point_track
          'general.link_state system_types-transmitted_link_state
          'general.pu_controlling  1
          ))

  ((5)
   (mmsg-set 
    '( M9SI 0 -1  )
    '( M9AI 0 -1 )
    '( M9ENVCAT 0 ENV_CAT_SURFACE )
    '( M9ID 0 1  )
    '( M9IDAMP 0 1  ))
   (tnset 1 'general.track_kind  system_types-track_kind_air_point_track
          'general.link_state system_types-transmitted_link_state
          'general.pu_controlling  1
          ))

  ((8)
   (mmsg-set 
    '( M9SI 0 -1  )
    '( M9AI 0 -1 )
    '( M9ENVCAT 0 ENV_CAT_SURFACE )
    '( M9ID 0 1  )
    '( M9IDAMP 0 1  ))
   (tnset 1 'general.track_kind  system_types-track_kind_surface_point_track
          'general.link_state system_types-transmitted_link_state
          'general.pu_controlling  1
          ))

  
  ((11)
   (mmsg-set 
    '( M9SI 0 -1  )
    '( M9AI 0 -1 )
    '( M9ENVCAT 0 ENV_CAT_SURFACE )
    '( M9ID 0 1  )
    '( M9IDAMP 0 1  ))
   (tnset 1 'general.track_kind  system_types-track_kind_surface_point_track
          'general.link_state system_types-transmitted_link_state
          'general.pu_controlling  1
          ))
  ((10)
   (mmsg-set 
    '( M9SI 0 -1  )
    '( M9AI 0 -1 )
    '( M9ENVCAT 0 ENV_CAT_SURFACE )
    '( M9ID 0 1  )
    '( M9IDAMP 0 1  ))
   (tnset 1 'general.track_kind  system_types-track_kind_surface_point_track
          'general.link_state system_types-transmitted_link_state
          'general.pu_controlling  0
          ))

  
  ((6)
   (mmsg-set 
    '( M9SI 0 -1  )
    '( M9AI 0 -1 )
    '( M9ENVCAT 0 ENV_CAT_SURFACE )
    '( M9ID 0 1  )
    '( M9IDAMP 0 1  ))
   (tnset 1 'general.track_kind  system_types-track_kind_surface_point_track
          'general.link_state system_types-transmitted_link_state
          'general.pu_controlling  1
          ))
  )
