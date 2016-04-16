


(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((3)
   (define testsc 1 )
   (mmsg-set 
    '( M9SI 0 -1)
    '( M9AI 0 -1)
    '( M9ENVCAT 0 ENV_CAT_SURFACE)

    )

   (tnset 1 'link11.change_data_order_running 1)
   )

  
  ((4)
   (define testsc 1 )
   (mmsg-set 
    '( M9SI 0 -1)
    '( M9ENVCAT 0 ENV_CAT_SURFACE)
    '( M9AI 0 -1))

   (tnset 1 'general.pu_controlling 0) 
   (tnset 1 'general.track_kind system_types-track_kind_air_point_track)
   )

  
  ((5)
   (define testsc 1 )
   (mmsg-set 
    '( M9SI 0 -1)
    '( M9ENVCAT 0 ENV_CAT_SURFACE)
    '( M9AI 0 -1))
   (define gcp 3)
   (tnset 1 'link11.change_data_order_running 0)
   (tnset 1 'general.pu_controlling 3) 
   (tnset 1 'general.track_kind system_types-track_kind_air_point_track)
   )

  ((6)
   (define testsc 1 )
   (mmsg-set 
    '( M9SI 0 -1)
    '( M9ENVCAT 0 ENV_CAT_SURFACE)
    '( M9AI 0 -1))
   (define gcp 3)
   (tnset 1 'link11.change_data_order_running 0)
   (tnset 1 'general.pu_origin gcp) 
   (tnset 1 'general.track_kind system_types-track_kind_air_point_track)
  )
  ((16)
   (define testsc 1 )
   (mmsg-set 
    '( M9SI 0 -1)
    '( M9ENVCAT 0 ENV_CAT_SURFACE)
    '( M9AI 0 -1))
   (define gcp 3)
   (tnset 1 'link11.change_data_order_running 0)
   (tnset 1 'general.pu_origin 1) 
   (tnset 1 'general.link_state system_types-transmitted_link_state) 
   (tnset 1 'general.track_kind system_types-track_kind_air_point_track)
  )
  
  ((17)
   (define testsc 1 )
   (mmsg-set 
    '( M9SI 0 -1)
    '( M9ENVCAT 0 ENV_CAT_AIR)
    '( M9AI 0 -1))
   (define gcp 3)
   (tnset 1 'link11.change_data_order_running 0)
   (tnset 1 'general.pu_origin 1) 
   (tnset 1 'general.link_state system_types-transmitted_link_state) 
   (tnset 1 'general.track_kind system_types-track_kind_air_point_track)
  )
  ((18)
   (define testsc 1 )
   (mmsg-set 
    '( M9SI 0 -1)
    '( M9ENVCAT 0 ENV_CAT_SURFACE)
    '( M9AI 0 -1))
   (define gcp 3)
   (tnset 1 'link11.change_data_order_running 0)
   (tnset 1 'general.pu_origin 1) 
   (tnset 1 'general.link_state system_types-transmitted_link_state) 
   (tnset 1 'general.track_kind system_types-track_kind_surface_point_track)
  )
  ((19 20)
   (define testsc 1 )
   (mmsg-set 
    '( M9SI 0 -1)
    '( M9ENVCAT 0 ENV_CAT_SURFACE)
    '( M9AI 0 -1))
   (define gcp 3)
   (tnset 1 'link11.change_data_order_running 0)
   (tnset 1 'general.pu_origin 1) 
   ;; (tnset 1 'general.link_state ) 
   (tnset 1 'general.track_kind system_types-track_kind_surface_point_track)
  )
  
  
  )



