
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((7)
   (define testsc 1 )
   (anset 0 '_weapon_engagement.weapon_counter             1)
   (anset 0 '_weapon_engagement.engagement_counter         1)
   (anset 0 '_weapon_engagement.head_up_counter            1)
   (anset 0 '_weapon_engagement.target_destroyed_counter   1)
   (anset 0 '_weapon_engagement.engagement_broken_counter  1)
   (anset 0 '_weapon_engagement.engagement_active  1)
   (anset 0 '_weapon_engagement.engagement_state  system_types-available)
   )         

  ((8)
   (define testsc 1 )
   (anset 0 '_weapon_engagement.weapon_counter             1)
   (anset 0 '_weapon_engagement.engagement_counter         1)
   (anset 0 '_weapon_engagement.head_up_counter            1)
   (anset 0 '_weapon_engagement.target_destroyed_counter   1)
   (anset 0 '_weapon_engagement.engagement_broken_counter  1)
   (anset 0 '_weapon_engagement.engagement_state  system_types-available)
   )         

  ((9)
   (define testsc 1 )
   (anset 0 '_weapon_engagement.weapon_counter             1)
   (anset 0 '_weapon_engagement.engagement_counter         1)
   (anset 0 '_weapon_engagement.head_up_counter            1)
   (anset 0 '_weapon_engagement.target_destroyed_counter   1)
   (anset 0 '_weapon_engagement.engagement_broken_counter  1)
   (anset 0 '_weapon_engagement.weapon_engagement_state  -1)
   )         
  )

