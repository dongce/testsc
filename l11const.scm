(define   ONE_DAY_IN_SEC           (*  24 60 60 ))
(define   MAX_CHANNEL_DATA_LENGTH  8192             )
(define   DROP_TRACK_COUNT         2                )
(define   FIVE_TIMES               5                )
(define   TEN_TIMES                10               )
(define   HUNDREAD_TIMES           100              )
(define   THOUSAND_TIMES           1000             )
(define   MILLION_TIMES            10000            )
(define  PI          3.14159265358979323846264338327950288   )      ;FFX 에서 정의하는 PI 값을 사용합니다. )
(define  TWO_PI      6.28318530717958647692528676655900576   )
(define  HALF_PI     1.57079632679489661923132169163975144   )
(define  THIRD_PI    1.04719755119659774615                  )
(define  QUARTER_PI  0.78539816339744830961566084581987572   )
(define  SIXTH_PI    0.52359877559829887308                  )
(define  NM_TO_M     1852.0                                  )
(define  MEGA        1000000.0                               )
(define  KILLO       1000.0                                  )
(define  MILLI       0.001                                   )
(define  MICRO       0.000001                                )
(define  PREAFRAMEM9DSW1                       #x800039                           )
(define  ARCSECOND_TO_RADIAN                   4.8481368110953599359e-6            )
(define  RADIAN_TO_ARCSECOND                   206264.80624709635515647335733078   );3600 * 180/PI
(define  ARCMINUTE_TO_RADIAN                   2.9088820866572159615394846141477e-4); 1/60 * PI /180
(define  RADIAN_TO_ARCMINUTE                   3437.7467707849392526078892888463   );60 * 180/PI
(define  OWNSHIP_WEAPON_CONFIG_UNAVAILABLE     #xFF                               )
(define  NDDS_MESSAGE_SERIAL_MAX               1024                               )
(define   SPECIAL_CODE_TYPE_FIRST              0                                  )
(define   SPECIAL_CODE_TYPE_LAST               4095                               )
(define  MAX_NETWORK_TRACKS                    500                                )
(define  MAX_PU                                62                                 )
(define  MAXIMUM_OF_TRAINING_TRACKS            #o177                               )
(define  RECEIVED_TRAINING_TRACKS_RANGE_MAX    MAXIMUM_OF_TRAINING_TRACKS)
(define  MAX_TRACKS  5000);!!!ticket:1975 20110324 김동일 | DLP DB 에 5000 개 표적을 가지고 있습니다. 
(define  MINIMUM_SECOND_FOR_QUALITY_DECREASE             20           )
(define  MINIMUM_TIME_FOR_NEW_ALLOC                      120          )
(define  INVALID_TRACK_ID                                0            )
(define  INVALID_IFF_MODE                                -1            )
(define  DURATION_FOR_PERIODIC_PROCESSING                 2000        )
(define  EARTH_RADIUS                                    6378122.88    )
(define   MAXIMUM_TRACKS_TO_REPORT_SPECIAL_CODE_CHANGES  200          )
(define  MAXIMUM_NUMBER_OF_DELETED_TRACKS                5            )
(define  NETWORK_TRACK_QUALITY_TYPE_FIRST                0            )
(define  PU_ADDRESS_LAST                                 63           )
(define  TASK_TRACK_INPUT_STACK_SIZE                     100000       )
(define  TASK_TRACK_INPUT_PRIORITY                       101          )
(define  TASK_DEFAULT_STACK                              (* 200 1024 ))
(define  WORD_BYTES                                               4   )
(define  FRAME_BYTES                                              8   )
(define  FRAME_WORDS                                              2   )
(define  INTERRUPT_MASK                                    #x00000007 )
(define  NTDS_EI_RESET                                  2              )
(define  NTDS_EI_EOR                                    3              )
(define  NTDS_EI_PTTD                                   5              )
(define  NTDS_EI_PTTB                                   7              )
(define  NTDS_EI_PTR                                    6              )
(define  DATA_FROM_DEVICE_BYTES                         20480         )
(define MAX_PU_ADDRESS          63                                      )
(define MIN_PU_ADDRESS_TYPE     1             )
(define MAX_TRACK_ID            2000000000    )
(define MAX_EMITTER_NUMBER      16383         )
(define MAX_EMITTER_MODE        MAX_PU_ADDRESS)
(define MAX_SOURCE_ID           2147483647    )
(define MIN_SOURCE_ID           0             )
(define  MESSAGE_NUMBER_M0     0             )
(define  MESSAGE_NUMBER_M1     1             )
(define  MESSAGE_NUMBER_M2     2             )
(define  MESSAGE_NUMBER_M3     3             )
(define  MESSAGE_NUMBER_M4     4             )
(define  MESSAGE_NUMBER_M5     5             )
(define  MESSAGE_NUMBER_M6     6             )
(define  MESSAGE_NUMBER_M7     7             )
(define  MESSAGE_NUMBER_M8     8             )
(define  MESSAGE_NUMBER_M9     9             )
(define  MESSAGE_NUMBER_M10    10            )
(define  MESSAGE_NUMBER_M11    11            )
(define  MESSAGE_NUMBER_M12    12            )
(define  MESSAGE_NUMBER_M13    13            )
(define  MESSAGE_NUMBER_M14    14            )
(define  MESSAGE_NUMBER_M15    15            )
(define  LABEL_NUMBER_M4A   0                )
(define  LABEL_NUMBER_M4B   1                )
(define  LABEL_NUMBER_M4C   2                )
(define  LABEL_NUMBER_M4D   3                )
(define  LABEL_NUMBER_M6A   0                )
(define  LABEL_NUMBER_M6B   1                )
(define  LABEL_NUMBER_M6C   2                )
(define  LABEL_NUMBER_M6D   3                )
(define  LABEL_NUMBER_M9A   0                )
(define  LABEL_NUMBER_M9B   1                )
(define  LABEL_NUMBER_M9C   2                )
(define  LABEL_NUMBER_M9D   3                )
(define  LABEL_NUMBER_M9E   4                )
(define  LABEL_NUMBER_M9F   5                )
(define  LABEL_NUMBER_M9G   6                )
(define  LABEL_NUMBER_M11B   1               )
(define  LABEL_NUMBER_M11C   2               )
(define  LABEL_NUMBER_M11D   3               )
(define  LABEL_NUMBER_M11M   12              )
(define  DTS_ERROR_BIT_MASK   #x30000000     )
(define  track_exchange_source_id       120            )
(define  command_and_control_source_id  119            )
(define  house_keeping_source_id        118            )
(define  MAX_SIMULATED_TRACKS_PER_PU    400            )
(define  PU_NUMBER_RANGE                62             )
(define  MIN_PU_NUMBER_RANGE            1              )
(define  MAX_PU_NUMBER_RANGE            62             )
(define  INVALID_PU                     INVALID_TRACK_ID)
(define  INVALID_FIELD_VALUE              -1         )      
(define  SW_SPARE                         1         )                                     ;M4C SWITCH
(define  ASW_POINT_NOTACK_AREA            12        )                        ; M84A ASW Pt Type field
(define  SW_SONOBUOY_POSITION             2         )                         ; M4C SW field
(define  SW_REFERENCE_SONOBUOY            3         )                        ; M4C SW field
(define  SECOND_FRAME_OFFSET             2          )
(define  THIRD_FRAME_OFFSET              4          )
(define  FOURTH_FRAME_OFFSET             6          )
(define  FIFTH_FRAME_OFFSET              8          )
(define  MAX_TRACK_ID_TYPE               2000000000 )
(define  MAX_NETWORK_TRACK_NUMBER_TYPE    4095 )
(define  MAX_DLRP_DELTA_RADIAN (degree-to-radian 17.06640625 ))  
(define  DLRP_60_DEGREE_LATITUDE  (degree-to-radian 60))  
(define  POUND_TO_KG_CONVERSION         0.453592 )
(define  TRACK_QUALITY_OF_MANUAL_TRACK  0       )
(define  IFF_iff_mode1_FIRST            0       )
(define  IFF_iff_mode1_LAST             59      )
(define  IFF_iff_mode2_3_FIRST          0       )
(define  IFF_iff_mode2_3_last           4095    )
(define  EVERY_CONSOLE_ID               -1       )
(define  DTSCTRL_SOM                    #x02    )
(define  DTSCTRL_EOM                    #x03    )
(define  DTSCTRL_EXTRA                  #xFF    )
(define  DTSCTRL_BUFF_LENGTH            1024    )
