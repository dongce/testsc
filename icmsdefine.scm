(define TDL_FILTER_NON_REAL_TIME  1)	;;Ticket:1608 송영환 추가
(define TDL_FILTER_CIVIL  2) ;;Ticket:1608 송영환 추가


;; #ifndef _ICMS_DEFINE_H_
;; #define _ICMS_DEFINE_H_

;; #include "SysParamIndexDefine.h"

;; struct IPNStartParameter
;; {
;; 	char* ipAddr;
;; 	int iPriority;
;; 	int idomain;
;; 	int idiscoveryType;
;; 	int iResilienceType;
;; 	int iSubsystemID;
;; };

;; /******************************************/
;; /******************************************/


;; #define PI 				3.1415926535897932384626	;;π값 

;; #define RAD2MIL			1018.59163578813			;;radian값을 mil로 변환 하는 상수
;; #define RAD2DEG			(180.0/PI)					;;radian값을 degree로 변환 하는 상수
;; #define RAD2MIN 		(10800./PI)					;;radina값을 mimnute로 변환 하는 상수
;; #define MIL2DEG			0.05625						;;mil값을 degree값으로 변환 하는 상수
;; #define DEG2MIL			17.777777777777				;;degree값을 mil값으로 변환 하는 상수

;; #define KPH2MS			0.27777777					;;m/hour를 m/sec로 변환 하는 상수

;; #define DEG2RAD			(PI/180.0)					;;degree값을 radian값으로 변환 하는 상수	
;; #define MIL2RAD			0.000981747705				;;mil값을 radian값으로 변환 하는 상수

;; #define MIN2DEG			(1./60.)					;;minute값을 degree값으로 변환 하는 상수
;; #define	DEG2MIN			60.							;;degree값을 minute값으로 변환 하는 상수 

;; #define POUND2KG		(0.453592)					;;pound를 kg로 변환 하는 상수 
;; #define SQ2KG			(0.13)						;;square를 kg로 변환 하는 상수 (탄도 계산)

;; #define MBARTONM2		(100.)						;;mbar를 newton/m^2로 변환 하는 상수

;; #define	CONST_INITIAL_GRAVITY	9.80665				;;중력가속도 (RangeTable기준)
;; #define CONST_EARTH_RADIUS		6356766.			;;지구평균반경 m (RangeTable기준)

;; #define	CONST_GRAVITIY_CORRECTION_FACTOR_BY_HEIGHT					CONST_INITIAL_GRAVITY*2/CONST_EARTH_RADIUS ;;중력가속도 보정값 (RangeTable기준)
;; #define CONST_EARTH_ROTATION										0.000073 ;;지구자전상수
;; #define CONST_HEAT_CAPACITY_RATIO									1.4 ;;열용량 (RangeTable기준)

;; #define CONST_GETMACHNUM_SOUNDVELOCITY								20.0468 ;;음속 factor (RangeTable기준)
;; #define CONST_GETMACHNUM_AIRTEMPERATURE								0.0065 ;;기온 factor (RangeTable기준)

;; #define KT2MS			(1852./3600.)				;;kts를 m/s로 변환 하는 상수 
;; #define MS2KT			(3600./1852.)				;;m/s를 kts로 변환 하는 상수



;; #define DmToM 1828.8								;; DM -> m								;;ticket:1320 101126 김영산
;; #define MToDM 1/1828.8								;; m -> DM								;;ticket:1320 101126 김영산					
;; #define DmToNM 1828.8/1852;							;; DM -> NM								;;ticket:1320 101126 김영산 ;;PKX-B ticket:133 140225 김영산
;; #define NMToDM 1852/1828.8;							;; NM -> DM								;;ticket:1320 101126 김영산 ;;PKX-B ticket:133 140225 김영산

;; #define INCH2METER		(0.0254)					;;inch를 m로 변환 하는 상수
;; #define NM2M			1852.						;;nautical mile을 m로 변환 하는 상수 
;; #define M2NM			(1./1852.)					;;m를 nautical mile로 변환 하는 상수

;; #define FT2M 0.3048									;; feet  -> meter						;;ticket:1272 101123 송정훈
;; #define M2FT  3.28084								;; meter -> feet						;;ticket:1272 101123 송정훈

;; #define YD2M			0.91440183					;;yard를 m로 변환 하는 상수
;; #define M2YD			(1./YD2M)					;;m를 yard로 변환 하는 상수				;; ticket:1049 20101022 송정훈, 이흥배 		

;; #define	KNOT2MPS		0.51444444444444			;;knot를 m/sec값으로 변환 하는 상수
;; #define MPS2KNOT		1.9438444924406				;;m/sec를 knot값으로 변환 하는 상수

;; #define TORAD(d)	((d)/57.2957795131)
;; #define TODEG(r)	((r)*57.2957795131)

;; #define Sin(x)			sin(TORAD(x))
;; #define Cos(x)			cos(TORAD(x))
;; #define Tan(x)			tan(TORAD(x))
;; #define Asin(x)			TODEG(asin(x))
;; #define Acos(x)			TODEG(acos(x))
;; #define Atan(x)			TODEG(atan(x))
;; #define Atan2(x1,x2)	TODEG(atan2(x1,x2))

;; #define RADIUS_G 6378137.
;; #define RADIUS_G_NM (RADIUS_G*PI/180.0/1852.)

;; #define WGS84_FF	(1.0/298.257223563)
;; #define WGS84_FF_EQ	(sqrt(2.0*WGS84_FF-WGS84_FF*WGS84_FF))

;; #define EMCON_UNDER_BAR 99 ;; H.GU 2010Y 05M 13D

;; #define MAX_NUM_OF_NETWORK_TRACK 1000		;; ticket:1374 101214 송영환
;; #define MAX_NUM_OF_ISDL   1000
;; #define MAX_NUM_OF_LINK11  500





;; #define FFX_COLOR_GREEN			RGB(0,138,1)				;; 녹색 : 가용
;; #define FFX_COLOR_RED			RGB(165,32,33)				;; 적색 : 비가용
;; #define FFX_COLOR_ORANGE		RGB(189,125,1)				;; 주황색 : 기능저하

;; #define FFX_COLOR_BLACK			RGB(0,0,1)					;; 검정색
;; #define FFX_COLOR_WHITE			RGB(255,255,255)			;; 흰색

;; #define FFX_COLOR_EQUIPAVAIL		RGB(  0, 138,   1)
;; #define FFX_COLOR_EQUIPDEGRADE		RGB(189, 125,   1)
;; #define FFX_COLOR_EQUIPNOTAVAIL		RGB(165,  32,  33)
;; #define FFX_COLOR_EQUIPABSENT		RGB(128, 128, 129)

;; #define FFX_COLOR_BLANK				RGB(202, 202, 203)
;; #define FFX_COLOR_BLUE				RGB(  0,   0, 225)

;; #define COLOR_GREEN				RGB(0,138,1)				;; 녹색 : 가용
;; #define COLOR_RED				RGB(165,32,33)				;; 적색 : 비가용
;; #define COLOR_ORANGE			RGB(189,125,1)				;; 주황색 : 기능저하

;; #define COLOR_BLACK				RGB(0,0,1)					;; 검정색
;; #define COLOR_WHITE				RGB(255,255,255)			;; 흰색

;; #define COLOR_EQUIPAVAIL		RGB(  0, 138,   1)
;; #define COLOR_EQUIPDEGRADE		RGB(189, 125,   1)
;; #define COLOR_EQUIPNOTAVAIL		RGB(165,  32,  33)
;; #define COLOR_EQUIPABSENT		RGB(128, 128, 129)

;; #define COLOR_BLANK				RGB(202, 202, 203)
;; #define COLOR_BLUE				RGB(  0,   0, 225)


;; #define MAX_NUM_OF_CONSOLE		8	;; Ticket:1647		110207 송영환


;; #define FLOAT_EQUAL(a,b) ((((a)<(b))?(b)-(a):(a)-(b)) < (float)0.0000001)			;; TRUE : equal,  FALSE : not equal;;111114-정동한 수정.
;; #define DOUBLE_EQUAL(a,b) ((((a)<(b))?(b)-(a):(a)-(b)) < (double)0.000000000000001)   ;; TRUE : equal,  FALSE : not equal;;130225 정두환 추가

;; #define EXCEPTION_BGEIN\
;; 	__try\
;; {\

;; #define EXCEPTION_ENDS }\
;; 	__except(EXCEPTION_EXECUTE_HANDLER)\
;; {\
;; 	FILE* fp = NULL;\
;; 	fp = fopen("c:\\mfcException.log","a+");\
;; 	fprintf(fp,"%s:%s, 파일명:%s, 함수:%s, 라인:%d, 에러코드:%X\n",__DATE__,__TIME__,__FILE__,__FUNCTION__,__LINE__,GetExceptionCode());\
;; 	fclose(fp);\
;; }\






;; #ifdef _HILS
;; #define SET_CSDS_ADDRESS_WIN32_HILS(p,d) do{                            \
;; 	const int INET_ADDR_LEN       = 20 ;                                  \
;; 	char *csds_ipaddress            = (char*)malloc(INET_ADDR_LEN) ;      \
;; 	const char *CSDS_NETWORK      = "192.168.1." ;                        \
;; 	bool csds_found               = false ;                               \
;; 	DDS_DomainParticipantQos participant_qos;                             \
;; 	memset(csds_ipaddress , 0 , INET_ADDR_LEN ) ;                         \
;; 	strncpy(csds_ipaddress , (d) , INET_ADDR_LEN ) ;                      \
;; 	PIP_ADAPTER_INFO pAdapterInfo;                                        \
;; 	ULONG ulOutBufLen = sizeof (IP_ADAPTER_INFO);                         \
;; 	pAdapterInfo = (IP_ADAPTER_INFO *) malloc(ulOutBufLen) ;              \
;; 	if (GetAdaptersInfo(pAdapterInfo, &ulOutBufLen) == ERROR_BUFFER_OVERFLOW) { \
;; 	free(pAdapterInfo);                                                 \
;; 	pAdapterInfo = (IP_ADAPTER_INFO *) malloc(ulOutBufLen) ;            \
;; 	}                                                                     \
;; 	if (GetAdaptersInfo(pAdapterInfo, &ulOutBufLen) != NO_ERROR) {        \
;; 	break;                                                              \
;; 	}                                                                     \
;; 	for(PIP_ADAPTER_INFO pAdapter = pAdapterInfo ; true !=csds_found && NULL != pAdapter; pAdapter = pAdapter->Next){ \
;; 	for(PIP_ADDR_STRING x = &(pAdapter->IpAddressList) ; NULL != x ; x = x->Next ){ \
;; 	if( NULL != x->IpAddress.String &&                                \
;; 	0 == strncmp( x->IpAddress.String , CSDS_NETWORK , strlen(CSDS_NETWORK))){ \
;; 	/*strncpy(csds_ipaddress , x->IpAddress.String , INET_ADDR_LEN) ;*/ \
;; 	csds_found = true ;                                             \
;; 	break ;                                                         \
;; 	  }                                                                 \
;; 	}                                                                   \
;; 	}                                                                     \
;; 	free(pAdapterInfo) ;                                                  \
;; 	if(true !=csds_found){                                                \
;; 	break ;                                                             \
;; 	}                                                                     \
;; 	if ((p)->participant->get_qos(participant_qos) != DDS_RETCODE_OK) {   \
;; 	printf("error, impossible get participant qos");                \
;; 	break;                                                          \
;; 	}                                                                     \
;; 	if (DDSPropertyQosPolicyHelper::add_property(participant_qos.property,\
;; 	"dds.transport.UDPv4.builtin.parent.allow_interfaces",  		\
;; 	csds_ipaddress,                                         		\
;; 	DDS_BOOLEAN_FALSE) != DDS_RETCODE_OK) {							\
;; 	printf("***Error: get builtin transport property\n");               \
;; 	break ;                                                             \
;;   }                                                                     \
;;   if ((p)->participant->set_qos(participant_qos) != DDS_RETCODE_OK) {   \
;;   printf("error, impossible set participant qos");                \
;;   break;                                                          \
;;   }                                                                     \
;;   printf("CSDS_ADDRESS is %s\n", csds_ipaddress) ;                      \
;; } while(0)
;; #else
;; #define SET_CSDS_ADDRESS_WIN32(p) do{                                   \
;;   const int INET_ADDR_LEN       = 20 ;                                  \
;;   char *csds_ipaddress            = (char*)malloc(INET_ADDR_LEN) ;      \
;;   const char *CSDS_NETWORK      = "192.168.1." ;                        \
;;   bool csds_found               = false ;                               \
;;   DDS_DomainParticipantQos participant_qos;                             \
;;   memset(csds_ipaddress , 0 , INET_ADDR_LEN ) ;                         \
;;   PIP_ADAPTER_INFO pAdapterInfo;                                        \
;;   ULONG ulOutBufLen = sizeof (IP_ADAPTER_INFO);                         \
;;   pAdapterInfo = (IP_ADAPTER_INFO *) malloc(ulOutBufLen) ;              \
;;   if (GetAdaptersInfo(pAdapterInfo, &ulOutBufLen) == ERROR_BUFFER_OVERFLOW) { \
;;     free(pAdapterInfo);                                                 \
;;     pAdapterInfo = (IP_ADAPTER_INFO *) malloc(ulOutBufLen) ;            \
;;   }                                                                     \
;;   if (GetAdaptersInfo(pAdapterInfo, &ulOutBufLen) != NO_ERROR) {        \
;;     break;                                                              \
;;   }                                                                     \
;;   for(PIP_ADAPTER_INFO pAdapter = pAdapterInfo ; true !=csds_found && NULL != pAdapter; pAdapter = pAdapter->Next){ \
;;     for(PIP_ADDR_STRING x = &(pAdapter->IpAddressList) ; NULL != x ; x = x->Next ){ \
;;       if( NULL != x->IpAddress.String &&                                \
;;           0 == strncmp( x->IpAddress.String , CSDS_NETWORK , strlen(CSDS_NETWORK))){ \
;;         strncpy(csds_ipaddress , x->IpAddress.String , INET_ADDR_LEN) ; \
;;         csds_found = true ;                                             \
;;         break ;                                                         \
;;       }                                                                 \
;;     }                                                                   \
;;   }                                                                     \
;;   free(pAdapterInfo) ;                                                  \
;;   if(true !=csds_found){                                                \
;;     break ;                                                             \
;;   }                                                                     \
;;   if ((p)->participant->get_qos(participant_qos) != DDS_RETCODE_OK) {   \
;;         printf("error, impossible get participant qos");                \
;;         break;                                                          \
;;   }                                                                     \
;;   if (DDSPropertyQosPolicyHelper::add_property(participant_qos.property,\
;; 		"dds.transport.UDPv4.builtin.parent.allow_interfaces",  		\
;; 		csds_ipaddress,                                         		\
;; 		DDS_BOOLEAN_FALSE) != DDS_RETCODE_OK) {							\
;;     printf("***Error: get builtin transport property\n");               \
;;     break ;                                                             \
;;   }                                                                     \
;;   if ((p)->participant->set_qos(participant_qos) != DDS_RETCODE_OK) {   \
;;         printf("error, impossible set participant qos");                \
;;         break;                                                          \
;;   }                                                                     \
;;   printf("CSDS_ADDRESS is %s\n", csds_ipaddress) ;                      \
;; } while(0)                                                              

;; #define SET_CSDS_ADDRESS_VXWORKS(p) do{                                 \
;;   bool csds_found        = false  ;                                     \
;;   const char *nicnames[] = {getenv("CSDS_INTERFACE") ,                  \
;;                             "RX0"                    ,                  \
;;                             "geisc0"};                                  \
;;   char *csds_ipaddress     = (char*)malloc(INET_ADDR_LEN) ;             \
;;   DDS_DomainParticipantQos participant_qos;								\
;;   memset(csds_ipaddress , 0 , INET_ADDR_LEN ) ;                         \
;;   for(int i = 0 ; i < sizeof(nicnames)/sizeof(const char*) ; i++){      \
;;     if(NULL != nicnames[i] &&                                           \
;;        OK == ifAddrGet( (char*)nicnames[i] , csds_ipaddress)){          \
;;       printf("OK csds interface is %s(%s)\n" ,                          \
;;              nicnames[i],                                               \
;;              csds_ipaddress) ;                                          \
;;       csds_found = true;                                                \
;;       break ;                                                           \
;;     }                                                                   \
;;   }                                                                     \
;;   if(true !=csds_found){                                                \
;;     break ;                                                             \
;;   }                                                                     \
;;   if ((p)->participant->get_qos(participant_qos) != DDS_RETCODE_OK) {   \
;;         printf("error, impossible get participant qos");                \
;;         break;                                                          \
;;   }                                                                     \
;;   if (DDSPropertyQosPolicyHelper::add_property(participant_qos.property,\
;; 		"dds.transport.UDPv4.builtin.parent.allow_interfaces",  		\
;; 		csds_ipaddress,                                         		\
;; 		DDS_BOOLEAN_FALSE) != DDS_RETCODE_OK) {							\
;;     printf("***Error: get builtin transport property\n");               \
;;     break ;                                                             \
;;   }                                                                     \
;;   if ((p)->participant->set_qos(participant_qos) != DDS_RETCODE_OK) {   \
;;         printf("error, impossible set participant qos");                \
;;         break;                                                          \
;;   }                                                                     \
;;   printf("CSDS_ADDRESS is %s\n", csds_ipaddress) ;                      \
;; } while(0) 
;; #endif

;; #define SET_PMC610_GFEIF( p, d, v ) do{                                 \
;;   char *DEFAULT_610INIT_STRING   = "-1:%d:-1:0:0:-1:-1:-1:-1:-1:-1:%0x" ; \
;;   char *DEFAULT_675INIT_STRING   = "-1:0:0:0:0:0:-1:0:0:0:0x81100152:0" ; \
;;   const char * (v)               = (NULL == getenv(#v) ? (d) : getenv(#v)) ; \
;;   if( OK == setPMC610((p) , (char*)(v) , (char*)DEFAULT_610INIT_STRING)){ \
;;     printf("OK - IPADDRESS_GFEIF  is %s\n" , (v)) ;                     \
;;   }                                                                     \
;;   else{                                                                 \
;;     printf("NOT OK - SET IPADDRESS_GFEIF %s failed\n" , (v)) ;          \
;;   }                                                                     \
;; } while( 0 )                                                            \


;; #define IS_TEMPERATURE_DEGRADED(x) ( 0.0 > (x) || (x) >= 55.0 )





;; #include <limits.h>

;; #define ICMS_SCHAR_MIN  SCHAR_MIN    /* minimum signed char value */
;; #define ICMS_SCHAR_MAX  SCHAR_MAX    /* maximum signed char value */
;; #define ICMS_UCHAR_MAX  UCHAR_MAX    /* maximum unsigned char value */
;; #define ICMS_SHRT_MIN   SHRT_MIN     /* minimum (signed) short value */
;; #define ICMS_SHRT_MAX   SHRT_MAX     /* maximum (signed) short value */
;; #define ICMS_USHRT_MAX  USHRT_MAX    /* maximum unsigned short value */
;; #define ICMS_INT_MIN    INT_MIN      /* minimum (signed) int value */
;; #define ICMS_INT_MAX    INT_MAX      /* maximum (signed) int value */
;; #define ICMS_UINT_MAX   UINT_MAX     /* maximum unsigned int value */
;; #define ICMS_LONG_MIN   LONG_MIN     /* minimum (signed) long value */
;; #define ICMS_LONG_MAX   LONG_MAX     /* maximum (signed) long value */
;; #define ICMS_ULONG_MAX  ULONG_MAX    /* maximum unsigned long value */


;; #if defined(_I64_MAX) 
;; #define ICMS_LLONG_MAX  _I64_MAX     /* maximum signed long long int value */
;; #else                   
;; #define ICMS_LLONG_MAX  LLONG_MAX    /* maximum signed long long int value */
;; #endif

;; #if defined(_I64_MIN) 
;; #define ICMS_LLONG_MIN  _I64_MIN     /* minimum signed long long int value */
;; #else
;; #define ICMS_LLONG_MIN  LLONG_MIN    /* minimum signed long long int value */
;; #endif

;; #if defined(_UI64_MAX) 
;; #define ICMS_ULLONG_MAX _UI64_MAX    /* maximum unsigned long long int value */
;; #else
;; #define ICMS_ULLONG_MAX ULLONG_MAX   /* maximum unsigned long long int value */
;; #endif


  
  


;; /* .cpp 파일 */	
;; inline unsigned int I2UI(int iSrc)     ;; int -> unsigned int
;; {
;; 	if (iSrc < 0)
;; 		iSrc = 0;
;; 	return (unsigned int)iSrc;
;; }

;; inline unsigned char I2UC(int iSrc)    ;; int -> unsigned char
;; {
;; 	if (iSrc < 0)
;; 		iSrc = 0;
;; 	if (iSrc > ICMS_UCHAR_MAX)
;; 		iSrc = ICMS_UCHAR_MAX;

;; 	return (unsigned char)iSrc;
;; }

;; inline unsigned char I2UC_MaxVal( int iSrc, int iMaxVal )
;; {
;; 	if (iSrc < 0)
;; 		iSrc = 0;
;; 	if (iSrc > ICMS_UCHAR_MAX)
;; 		iSrc = ICMS_UCHAR_MAX;
;; 	if(iSrc > iMaxVal )
;; 		iSrc = iMaxVal;
;; 	return (unsigned char)iSrc;
;; }

;; inline unsigned long L2UL( long lSrc )
;; {
;; 	unsigned long ulSrc = 0;
;; 	if (lSrc > 0)
;; 		ulSrc = (unsigned long)lSrc;

;; 	return ulSrc;
;; }

;; inline unsigned short I2US(int iSrc)
;; {
;; 	unsigned short usSrc = 0;
;; 	if (iSrc > 0 && iSrc <= ICMS_USHRT_MAX)
;; 		usSrc = (unsigned short)iSrc;

;; 	return usSrc;
;; }

;; inline long   UL2L(unsigned long ulSrc)
;; {
;; 	long lSrc = 0;
;; 	if(ulSrc <= ICMS_LONG_MAX)
;; 		lSrc = (long)ulSrc;

;; 	return lSrc;
;; }

;; inline unsigned int   ULL2UI(unsigned long long ullSrc)
;; {	
;; 	unsigned int uiSrc = 0;
;; 	if( ullSrc <= ICMS_UINT_MAX)
;; 		uiSrc = (unsigned int)ullSrc;

;; 	return uiSrc;
;; }

;; inline long long   ULL2LL(unsigned long long ullSrc)
;; {	
;; 	long long llSrc = 0;
;; 	if( ullSrc <= ICMS_LLONG_MAX)
;; 		llSrc = (long long)ullSrc;

;; 	return llSrc;
;; }

;; inline unsigned long long   LL2ULL(long long llSrc)
;; {	
;; 	unsigned long long ullSrc = 0;
;; 	if(llSrc > 0)
;; 		ullSrc = (unsigned long long)llSrc;

;; 	return ullSrc;
;; }

;; inline int   US2I(unsigned short usSrc)
;; {	
;; 	int iSrc = 0;	
;; 	iSrc = (int)usSrc;

;; 	return iSrc;
;; }

;; inline int   UI2I(unsigned int uiSrc)
;; {	
;; 	int iSrc = 0;
;; 	if (uiSrc <= ICMS_INT_MAX)
;; 		iSrc = (int)uiSrc;

;; 	return iSrc;
;; }

;; inline short   UI2S(unsigned int uiSrc)
;; {	
;; 	short sSrc = 0;
;; 	if (uiSrc <= ICMS_SHRT_MAX)
;; 		sSrc = (short)uiSrc;

;; 	return sSrc;
;; }

;; inline unsigned char UL2UC(unsigned long ulSrc)
;; {
;; 	unsigned char ucSrc = 0;
;; 	if(ulSrc <= ICMS_UCHAR_MAX)
;; 		ucSrc = (unsigned char)ulSrc;

;; 	return ucSrc;
;; }

;; inline int L2I( long lSrc)
;; {
;; 	int iSrc = 0;
;; 	;; 신뢰성 시험(QAC++) 분석 결과 조치
;; 	;; [조건식-2][M] 조건문의 결과가 항상 true거나 false면 안된다.
;; 	;; [조건식-5][N] 수행되지 않는 소스코드를 작성하지 말아야 한다.
;; 	;; - false alarm ; 개발자 의도된 코드임.  
;; 	;; lSrc 자료형은 long 형이고 비교하는 값은 int의 min, max값으로 비교하기 때문에 항상 true라고 경고함
;; 	;; 개발자의 의도된 코드로 iSrc가 int값을 넘어가는 예외상황을 처리하기 위한 방어코드
;; 	if((lSrc < ICMS_INT_MIN) || (lSrc > ICMS_INT_MAX))
;; 		iSrc = 0;
;; 	else
;; 		iSrc = (int)lSrc;

;; 	return iSrc;
;; }

;; inline unsigned short UL2US( unsigned long ulSrc )
;; {
;; 	unsigned short usSrc =0;
;; 	if(ulSrc <= ICMS_USHRT_MAX)
;; 		usSrc = (unsigned short)ulSrc;

;; 	return usSrc;
;; }

;; inline unsigned long I2UL( int iSrc )
;; {
;; 	unsigned long ulSrc = 0;
;; 	if(iSrc > 0)
;; 		ulSrc = (unsigned long)iSrc;

;; 	return ulSrc;
;; }

;; inline unsigned long UI2UL( unsigned int uiSrc )
;; {
;; 	unsigned long ulSrc = 0;
;; 	if(uiSrc <= ICMS_ULONG_MAX)
;; 		ulSrc = (unsigned long)uiSrc;

;; 	return ulSrc;
;; }

;; inline int UL2I( unsigned long ulSrc )
;; {
;; 	int iSrc = 0;
;; 	if(ulSrc <= ICMS_INT_MAX )
;; 		iSrc = (int)ulSrc;

;; 	return iSrc;
;; }

;; inline unsigned short S2US( short sSrc )
;; {
;; 	unsigned short usSrc = 0;
;; 	if(sSrc > 0 )
;; 		usSrc = (unsigned short)sSrc;

;; 	return usSrc;
;; }

;; inline short US2S( unsigned short usSrc )
;; {
;; 	short sSrc = 0;
;; 	if(usSrc <= S2US(ICMS_SHRT_MAX) )
;; 		sSrc = (short)usSrc;

;; 	return sSrc;
;; }

;; inline int UC2I( unsigned char ucSrc )
;; {
;; 	return (int)ucSrc;
;; }

;; inline short UC2S( unsigned char ucSrc )
;; {
;; 	return (short)ucSrc;
;; }

;; inline int ULL2I( unsigned long long ullSrc )
;; {
;; 	int iSrc = 0;
;; 	if( ullSrc <= ICMS_INT_MAX )
;; 		iSrc = (int)ullSrc;

;; 	return iSrc;
;; }

;; inline unsigned long DO2UL( double doSrc )
;; {
;; 	unsigned long ulSrc = 0;
;; 	if( doSrc > 0 )
;; 		ulSrc = (unsigned long)doSrc;

;; 	return ulSrc;
;; }

;; inline unsigned long LL2UL( long long llSrc )
;; {
;; 	unsigned long ulSrc = 0;
;; 	if(llSrc >=0 && llSrc <= ICMS_ULONG_MAX )
;; 		ulSrc = (unsigned long)llSrc;

;; 	return ulSrc;
;; }

;; inline unsigned int L2UI( long lSrc )
;; {
;; 	unsigned int uiSrc  = 0;
;; 	;;if( lSrc >= 0 && lSrc <= UINT_MAX )
;; 	;;	uiSrc = (unsigned int)lSrc;	
;; 	;;else if( lSrc > UINT_MAX )
;; 	;;if( lSrc < 0 )
;; 	;;	uiSrc = 0;
;; 	;;else if( lSrc > LONG_MAX )
;; 	;;	uiSrc = 0;
;; 	;;else
;; 	;;	uiSrc = (unsigned int)lSrc;
;; 	;;Code Sonar : Useless Assignment
;; 	;;조치 : false alram
;; 	;;사유 : 개발자의 의도된 코드로 예외상황을 처리하기 위한 방어코드
;; 	if( lSrc < 0 || lSrc > ICMS_LONG_MAX )
;; 	{
;; 		uiSrc = 0;
;; 	}
;; 	else
;; 	{
;; 		uiSrc = (unsigned int)lSrc;
;; 	}

;; 	return uiSrc;
;; }

;; inline long I2L( int iSrc )
;; {
;; 	return (long)iSrc;
;; }

;; inline unsigned short DO2US( double doSrc )
;; {
;; 	unsigned short usSrc = 0;
;; 	if( doSrc >= 0 && doSrc <= ICMS_USHRT_MAX )
;; 		usSrc = (unsigned short)doSrc;
;; 	return usSrc;
;; }

;; inline unsigned long long L2ULL( long lSrc )
;; {
;; 	unsigned long long ullSrc = 0;
;; 	if(lSrc >= 0 && lSrc <= ULL2I(ICMS_ULLONG_MAX))
;; 		ullSrc = (unsigned long long)lSrc;
;; 	return ullSrc;
;; }

;; inline unsigned int S2UI( short sSrc )
;; {
;; 	unsigned int uiSrc = 0;
;; 	;;Code Sonar : Useless Assignment
;; 	;;조치 : false alram
;; 	;;사유 : 개발자의 의도된 코드로 예외상황을 처리하기 위한 방어코드
;; 	if( sSrc < 0 )
;; 		uiSrc = 0;
;; 	else
;; 		uiSrc = (unsigned int)sSrc;
;; 	return uiSrc;
;; }

;; inline unsigned char UCCheck( unsigned char ucSrc )
;; {
;; 	if( ucSrc + 8 > ICMS_UCHAR_MAX )
;; 		ucSrc = 0;
;; 	return ucSrc;
;; }




;; enum _ENUM_FFX_TRUE_FALSE
;; {
;; 	FFX_FALSE = 0,
;; 	FFX_TRUE
;; };


;; enum _ENUM_FILE_SYNC
;; {
;; 	FILE_SYNC_NEW = 1,        ;; 화일 신규 생성
;; 	FILE_SYNC_UPDATE,         ;; 화일 갱신
;; 	FILE_SYNC_DELETE,         ;; 화일 삭제
;; 	FILE_SYNC_NOTIFY          ;; 화일 갱신 통보 - 추가 2009.10.22 김종화 
;; };

;; enum _ENUM_FILE_REQUEST_CSCI    
;; {
;; 	FILE_REQUEST_CSCI_IPNTAC = 1,
;; 	FILE_REQUEST_CSCI_IPNTRN,
;; 	FILE_REQUEST_CSCI_IPNSUP
;; };


;; /******************************************/
;; /******************************************/
;; enum _ENUM_IPNTAC_PARTICIPANT_INDEX
;; {
;; 	IPNTAC_PARTICIPANT_INDEX = 1,
;; 	COMMON_PARTICIPANT_INDEX, 	
;; 	IPNTRN_PARTICIPANT_INDEX
;; };

;; enum _ENUM_IPNTAC_RESILIENCE_TYPE
;; {
;; 	IPNTAC_NON_RESILIENCE = 0, 
;; 	IPNTAC_RESILIENCE
;; };

;; enum _ENUM_IPNTAC_RESILIENCE_PRIORITY
;; {
;; 	IPNTAC_STANDBY = 0,
;; 	IPNTAC_ACTIVE
;; };

;; enum _ENUM_IPNTAC_DISCOVERY_TYPE
;; {
;; 	IPNTAC_DYNAMIC = 1,
;; 	IPNTAC_STATIC
;; };

;; enum _ENUM_RESIL_MODE
;; {
;; 	RESIL_MODE_UNDEFINED = 0,
;; 	RESIL_MODE_ACTIVE,
;; 	RESIL_MODE_STANDBY
;; };

;; enum _ENUM_RESIL_STATUS
;; {
;; 	RESIL_STATUS_UNDEFINED_TO_ACTIVE = 0,
;; 	RESIL_STATUS_STANDBY_TO_ACTIVE,
;; 	RESIL_STATUS_PEER_ALIVED,								;; 091006 김종화 수정..
;; 	RESIL_STATUS_PEER_FAILED,
;; 	RESIL_STATUS_ACTIVE_TO_STANDBY,
;; 	RESIL_STATUS_UNDEFINED_TO_STANDBY
;; };

;; enum _ENUM_RESIL_STATUS_FOR_DSS  ;;byhj  ;;20120607 이효조 추가
;; {
;; 	RESIL_STATUS_STANDBY_START=2,
;; 	RESIL_STATUS_CHANGE_TO_STANDBY_START,
;; 	RESIL_STATUS_ACTIVE_START,
;; 	RESIL_STATUS_CHANGE_TO_ACTIVE_START,
;; 	RESIL_STATUS_STANDBY_ALIVED,
;; 	RESIL_STATUS_STANDBY_FAILED
;; };

;; /******************************************/
;; /******************************************/


;; /******************************************/
;; /******************************************/


;; #define MAX_TMSINDEX_OF_TACTICAL_TRACK    6000				;; 3150 -> 2670 개로 수정 100408 김용환 전문  ;;FFX-II ticket: 168, PKX-B ticket: 199 y.san.kim 2015/04/13 [2670 -> 6000으로 변경]


;; #define MAX_NUMBER_OF_DAUGHTER            13   


;; #define MAX_LENGTH_OF_TRACKNAME           12    ;; 2009.0916. 표적명 한글 6자리로 변경 : 10 -> 12


;; #define MAX_LENGTH_OF_IFF_MODE1     2       ;; 모드 1
;; #define MAX_LENGTH_OF_IFF_MODE2     4       ;; 모드 2
;; #define MAX_LENGTH_OF_VEHICLE_NAME  16      ;; 모드 2 코드로 검색한 vehicle name 문자열 길이
;; #define MAX_LENGTH_OF_IFF_MODE3A    4       ;; 모드 3A


;; #define MAX_LENGTH_OF_TRACK_NUMBER        10    ;; 표적번호(문자열)의 최대길이 . 2010.0129


;; #define ONE_OF_SOURCEID_IS_DELETED  0x01 ;; 0x01 - 단독 표적 삭제 (nSRN 또는 nTMSIndex 필드 참조)
;; #define ALL_OF_SOURCEID_IS_DELETED  0x02 ;; 0x02 - 해당 점 또는 방위 표적 모두 삭제 (SourceID, 또는 점방위 모두 삭제)
;; #define ONE_OF_SOURCEID_IS_LOST     0x03 ;; 0x03 - 단독 표적 소실 (nSRN 또는 nTMSIndex 필드 참조)


;; #define MAX_NUM_OF_WEAPON_CONTROL_SECTOR 6


;; enum _ENUM_TRACK_SOURCE
;; {
;; 	TRACK_SOURCE_NO_STATEMENT = 0,
;; 	TRACK_SOURCE_MANUAL,
;; 	TRACK_SOURCE_LYNX_SECOND_BEARING,
;; 	TRACK_SOURCE_LYNX_FIRST_BEARING,
;; 	TRACK_SOURCE_LYNX_SECOND_SONAR,
;; 	TRACK_SOURCE_LYNX_FIRST_SONAR,
;; 	TRACK_SOURCE_IRST,						 ;; 20131211 hk.kim 추가
;; 	TRACK_SOURCE_TACM,
;; 	TRACK_SOURCE_ES,						;; 20131211 hk.kim 추가
;; 	TRACK_SOURCE_EW,
;; 	TRACK_SOURCE_HMS,
;; 	TRACK_SOURCE_LYNX_SECOND_RADAR,
;; 	TRACK_SOURCE_LYNX_FIRST_RADAR,
;; 	TRACK_SOURCE_NRS,                        ;; 2009.0514, 기존 TRACK_SOURCE_NR -> TRACK_SOURCE_NRS 로 변경
;; 	TRACK_SOURCE_IFF,
;; 	TRACK_SOURCE_CIWS_S,
;; 	TRACK_SOURCE_SRS,                        ;; 2009.0514, 기존 TRACK_SOURCE_SR -> TRACK_SOURCE_SRS 로 변경
;; 	TRACK_SOURCE_TWS,
;; 	TRACK_SOURCE_EOTS,
;; 	TRACK_SOURCE_CIWS_T,
;; 	TRACK_SOURCE_TRS,
;; };



;; enum _ENUM_TRACK_STATUS
;; {
;; 	TRACK_STATUS_NORMAL = 1,          ;; 정상상태
;; 	TRACK_STATUS_LOST,                ;; 소실상태
;; 	TRACK_STATUS_KEEPLOST,            ;; 소실유지상태 - 소실과 동일함. - TM 내부 상태
;; 	TRACK_STATUS_CANCEL               ;; 삭제 상태
;; };


;; enum _ENUM_TRACK_TYPE
;; {
;; 	TRACK_TYPE_REAL_TRACK = 1,
;; 	TRACK_TYPE_SIMULATION,
;; 	TRACK_TYPE_TEST
;; };

;; enum _ENUM_TRACK_KIND
;; {
;; 	TRACK_KIND_POINT_TRACK = 1,
;; 	TRACK_KIND_BEARING_TRACK,
;; 	TRACK_KIND_SPECIAL_POINT 
;; };

;; enum _ENUM_TRACK_ENVIRONMENT
;; {
;; 	TRACK_ENVIRONMENT_AIR = 1,
;; 	TRACK_ENVIRONMENT_SURFACE,
;; 	TRACK_ENVIRONMENT_LAND,
;; 	TRACK_ENVIRONMENT_SUBSURFACE,
;; 	TRACK_ENVIRONMENT_UNASSESS,		;; 기존 0 -> 5로 변경함
;; 	TRACK_ENVIRONMENT_SPACE			;;우주 추가(김호년 2014.03.27)
;; };

;; enum _ENUM_TRACK_MODE
;; {
;; 	TRACK_MODE_AUTO = 1,
;; 	TRACK_MODE_SEMI_AUTO
;; };

;; enum _ENUM_TRACK_IDENTITY		;; [2010.0531이후 변경될 FFXDefine.h의 내용]		;; 김용환 전문 수정
;; {
;; 	TRACK_IDENTITY_NO_STATEMENT = -1,                        
;; 	TRACK_IDENTITY_PENDING,         ;; 식별보류              
;; 	TRACK_IDENTITY_UNKNOWN,         ;; 미식별                
;; 	TRACK_IDENTITY_NEUTRAL,         ;; 중립                  
;; 	TRACK_IDENTITY_ASSUMMED_FRIEND, ;; 아군간주              
;; 	TRACK_IDENTITY_SUSPECT,         ;; 적군간주 : TRACK_IDENTITY_ASSUME_HOSTILE -> TRACK_IDENTITY_SUSPECT (2010.0614)
;; 	TRACK_IDENTITY_FRIEND,          ;; 아군
;; 	TRACK_IDENTITY_HOSTILE,         ;; 적군
;; 	TRACK_IDENTITY_JOKER,           ;; 의심적 : TRACK_IDENTITY_SUSPECT -> TRACK_IDENTITY_JOKER (2010.0614)  
;; 	TRACK_IDENTITY_FAKER,           ;; 가상적 : TRACK_IDENTITY_VIRTUAL -> TRACK_IDENTITY_FAKER (2010.0614)
;; 	TRACK_IDENTITY_COUNT 
;; };

;; enum _ENUM_LINK_STATUS
;; {
;; 	LINK_STATUS_LINK_NOT_INVOLVED = 0,
;; 	LINK_STATUS_TX_PROHIBITED,
;; 	LINK_STATUS_TRANSMITTED,
;; 	LINK_STATUS_CORRELATED,
;; 	LINK_STATUS_LINK_RECEIVED
;; };

;; enum _ENUM_LINK_SOURCE
;; {
;; 	LINK_SOURCE_ISDL = 0,
;; 	LINK_SOURCE_LINK11,
;; 	LINK_SOURCE_LINKK,
;; 	LINK_SOURCE_NOT_CONNECTED,
;; 	LINK_SOURCE_COUNT = LINK_SOURCE_NOT_CONNECTED
;; };

;; enum _ENUM_MANUAL_TRACK
;; {
;; 	MANUAL_TRACK_NONE = 0,			;; 2010.0116. by kimyh - byKindOfManual 필드에 사용될값 추가 (= 수동표적 아님)
;; 	MANUAL_TRACK_DEFAULT,
;; 	MANUAL_TRACK_NSFS,
;; 	MANUAL_TRACK_RAM,
;; 	MANUAL_TRACK_ISDL_MARKER,
;; 	MANUAL_TRACK_LINK11_MARKER,		;;2010.04.22 by kjy 링크 마커 추가
;; 	MANUAL_TRACK_KTSLM				;;2014.12.29 by y.san.kim  KTSLM 표적 추가
;; };

;; enum _ENUM_KNCCS_NATION							;; ticket:1024 20101101 김동일 : _ENUM_KNTDS_NATION 에서 _ENUM_KNCCS_NATION 으로 이름 변경
;; {
;; 	KNCCS_NATION_NOSTATEMENT           = 0, ;;세부정보없음
;; 	KNCCS_NATION_SOVIETUNION           = 1, ;;러시아
;; 	KNCCS_NATION_NATO                  = 2, ;;나토
;; 	KNCCS_NATION_BELGIUM               = 3, ;;벨기에
;; 	KNCCS_NATION_CYPRUS                = 4, ;;키프로스
;; 	KNCCS_NATION_DENMARK               = 5, ;;덴마크
;; 	KNCCS_NATION_FRANCE                = 6, ;;프랑스
;; 	KNCCS_NATION_GERMANY               = 7, ;;독일
;; 	KNCCS_NATION_FINLAND               = 8, ;;핀란드
;; 	KNCCS_NATION_GREECE                = 9, ;;그리스
;; 	KNCCS_NATION_ICELAND               = 10, ;;아이슬란드
;; 	KNCCS_NATION_IRELAND               = 11, ;;아일랜드
;; 	KNCCS_NATION_ITALY                 = 12, ;;이탈리아
;; 	KNCCS_NATION_NETHERLANDS           = 13, ;;네덜란드
;; 	KNCCS_NATION_NORWAY                = 14, ;;노르웨이
;; 	KNCCS_NATION_PORTUGAL              = 15, ;;포르투갈
;; 	KNCCS_NATION_SPAIN                 = 16, ;;스페인
;; 	KNCCS_NATION_SWEDEN                = 17, ;;스웨덴
;; 	KNCCS_NATION_SWITZERLAND           = 18, ;;스위스
;; 	KNCCS_NATION_TURKEY                = 19, ;;터키
;; 	KNCCS_NATION_UNITEDKINGDOM         = 20, ;;영국
;; 	KNCCS_NATION_ALBANIA               = 21, ;;알바니아
;; 	KNCCS_NATION_AUSTRIA               = 22, ;;오스트리아
;; 	KNCCS_NATION_BULGARIA              = 23, ;;불가리아
;; 	KNCCS_NATION_CZECHOSLOVAKIA        = 24, ;;체코
;; 	KNCCS_NATION_HUNGARY               = 25, ;;헝가리
;; 	KNCCS_NATION_POLAND                = 26, ;;폴란드
;; 	KNCCS_NATION_RUMANIA               = 27, ;;루마니아
;; 	KNCCS_NATION_YUGOSLAVIA            = 28, ;;유고
;; 	KNCCS_NATION_CANADA                = 29, ;;캐나다
;; 	KNCCS_NATION_UNITEDSTATESOFAMERICA = 30, ;;미국
;; 	KNCCS_NATION_EGYPT                 = 31, ;;이집트
;; 	KNCCS_NATION_IRAN                  = 32, ;;이란
;; 	KNCCS_NATION_IRAQ                  = 33, ;;이라크
;; 	KNCCS_NATION_ISRAEL                = 34, ;;이스라엘
;; 	KNCCS_NATION_JORDAN                = 35, ;;요르단
;; 	KNCCS_NATION_LEBANON               = 36, ;;레바논
;; 	KNCCS_NATION_SAUDIARABIA           = 37, ;;사우디아라비아
;; 	KNCCS_NATION_SYRIA                 = 38, ;;시리아
;; 	KNCCS_NATION_ALGERIA               = 39, ;;알제리
;; 	KNCCS_NATION_ETHIOPIA              = 40, ;;에티오피아
;; 	KNCCS_NATION_LIBERIA               = 41, ;;리베리아
;; 	KNCCS_NATION_LIBYA                 = 42, ;;리비아
;; 	KNCCS_NATION_SOUTHAFRICA           = 43, ;;남아공
;; 	KNCCS_NATION_INDIA                 = 44, ;;인도
;; 	KNCCS_NATION_PAKISTAN              = 45, ;;파키스탄
;; 	KNCCS_NATION_CAMBODIA              = 46, ;;캄보디아
;; 	KNCCS_NATION_LAOS                  = 47, ;;라오스
;; 	KNCCS_NATION_THAILAND              = 48, ;;태국
;; 	KNCCS_NATION_VIETNAM               = 49, ;;베트남
;; 	KNCCS_NATION_CHINAPEOPLESREPUBLIC  = 50, ;;중국
;; 	KNCCS_NATION_KOREANORTH            = 51, ;;북한
;; 	KNCCS_NATION_KOREAREPUBLIC         = 52, ;;대한민국
;; 	KNCCS_NATION_JAPAN                 = 53, ;;일본
;; 	KNCCS_NATION_PHILIPPINES           = 54, ;;필리핀
;; 	KNCCS_NATION_AUSTRALIA             = 55, ;;호주
;; 	KNCCS_NATION_NEWZEALAND            = 56, ;;뉴질랜드
;; 	KNCCS_NATION_ARGENTINA             = 57, ;;아르헨티나
;; 	KNCCS_NATION_BRAZIL                = 58, ;;브라질
;; 	KNCCS_NATION_CHILE                 = 59, ;;칠레
;; 	KNCCS_NATION_COLUMBIA              = 60, ;;콜롬비아
;; 	KNCCS_NATION_MEXICO                = 61, ;;멕시코
;; 	KNCCS_NATION_PANAMA                = 62, ;;파나마
;; 	KNCCS_NATION_PERU                  = 63, ;;페루
;; 	KNCCS_NATION_VENEZUELA             = 64, ;;베네수엘라
;; 	KNCCS_NATION_CUBA                  = 65, ;;쿠바
;; 	KNCCS_NATION_DOMINICANREPUBLIC     = 66, ;;도미니카
;; 	KNCCS_NATION_UNITEDNATIONSFORCE    = 67, ;;UN
;; 	KNCCS_NATION_KUWAIT                = 68, ;;쿠웨이트
;; 	KNCCS_NATION_REPUBLICOFYEMEN       = 69, ;;예멘
;; 	KNCCS_NATION_GUINEA                = 70, ;;기니
;; 	KNCCS_NATION_MADAGASCAR            = 71, ;;마다가스카르
;; 	KNCCS_NATION_MOROCCO               = 72, ;;모로코
;; 	KNCCS_NATION_NIGERIA               = 73, ;;나이지리아
;; 	KNCCS_NATION_SENEGAL               = 74, ;;세네갈
;; 	KNCCS_NATION_ZIMBABWE              = 75, ;;짐바브웨
;; 	KNCCS_NATION_SUDAN                 = 76, ;;수단
;; 	KNCCS_NATION_TANZANIA              = 77, ;;탄자니아
;; 	KNCCS_NATION_TUNISIA               = 78, ;;튀니지
;; 	KNCCS_NATION_UGANDA                = 79, ;;우간다
;; 	KNCCS_NATION_BURMA                 = 80, ;;버마
;; 	KNCCS_NATION_INDONESIA             = 81, ;;인도네시아
;; 	KNCCS_NATION_MALAYSIA              = 82, ;;말레이시아
;; 	KNCCS_NATION_SINGAPORE             = 83, ;;싱가포르
;; 	KNCCS_NATION_BOLIVIA               = 84, ;;볼리비아
;; 	KNCCS_NATION_ECUADOR               = 85, ;;에콰도르
;; 	KNCCS_NATION_GUATEMALA             = 86, ;;과테말라
;; 	KNCCS_NATION_NICARAGUA             = 87, ;;니카라과
;; 	KNCCS_NATION_PARAGUAY              = 88, ;;파라과이
;; 	KNCCS_NATION_URUGUAY               = 89, ;;우루과이
;; 	KNCCS_NATION_JAMAICA               = 90, ;;자메이카	
;; 	KNCCS_NATION_INTERNATIONALREDCROSS = 91,  ;;국제적십자
;; 	KNCCS_NATION_LUXEMBOURG			   = 92, ;;룩셈부르크

;; 	;; KNCCS 에는 없는 코드. ISDL 을 지원하기 위해 다음 코드를 추가함
;; 	KNCCS_NATION_ISDL_COMPATIBILITY_WARSAWPACT  = 93,  ;;바르샤바조약기구			;; ticket:1024 20101101 김동일 
;; 	KNCCS_NATION_ISDL_COMPATIBILITY_CHINAREPUBLIC  = 94, ;;대만				;; ticket:1024 20101101 김동일
;; 	KNCCS_NATION_UNKNOWN				= 95 ;;미확인
;; };

;; /******************************************/
;; /******************************************/


;; /******************************************/
;; /******************************************/
;; enum _ENUM_RESOURCE_KIND
;; {
;;     RESOURCE_KIND_UNDEFINED = 0 ,   
;;     RESOURCE_KIND_WEAPON ,
;;     RESOURCE_KIND_SENSOR 
;; };

;; enum _ENUM_WEAPON_KIND
;; {
;; 	WEAPON_KIND_NOT_DEFINED = 0,
;; 	WEAPON_KIND_CIWS,
;; 	WEAPON_KIND_SAAM,
;; 	WEAPON_KIND_GUN,			;;함포가 하나인 전투체계 사용
;; 	WEAPON_KIND_TACM,
;; 	WEAPON_KIND_SLTS,
;; 	WEAPON_KIND_KSSM,
;; 	WEAPON_KIND_KSLAM,			
;; 	WEAPON_KIND_EW,
;; 	WEAPON_KIND_MASS,			;; 131017 dha.jung DECOY -> MASS 변경
;; 	WEAPON_KIND_RCWS1,			;; 140127 dha.jung 12.7mm원격사격체계 추가
;; 	WEAPON_KIND_RCWS2,			;; 140702 dha.jung 12.7mm원격사격체계 추가, RCWS1, RCWS2로 구분
;; 	WEAPON_KIND_ROCKET,			;; 140616 bf.choi	130mm 유도로켓 추가
;; 	WEAPON_KIND_KVLA,			;; 140825 dhjung	KVLA 추가
;; 	WEAPON_KIND_GUN40,			;; 1501203 kt.kwon GUN40mm 추가
;; 	WEAPON_KIND_GUN76,			;; 1501203 kt.kwon GUN76mm 추가
;; 	WEAPON_KIND_GUN127			;; 1501203 kt.kwon GUN127mm 추가
;; };

;; enum _ENUM_SENSOR_KIND
;; {
;; 	SENSOR_KIND_NOT_DEFINED = 0,
;; 	SENSOR_KIND_FC1,				;;추적레이더
;; 	SENSOR_KIND_FC2,				;;TWS1
;; 	SENSOR_KIND_FC3,				;;TWS2
;; 	SENSOR_KIND_FC4,				;;전자광학추적장비
;; 	SENSOR_KIND_HMS,				;;HMS
;; 	SENSOR_KIND_TACM,				;;TACM
;; 	SENSOR_KIND_CIWS_T,  ;;CIWS추적 - 교전 할당없이 CIWS 스스로 표적을 추적하는 경우에만 사용, 타 용도로 사용못함.	
;; 	SENSOR_KIND_COUNT				
;; };

;; enum _ENUM_SENSOR_SRS_KIND          ;;!!!ticket:2468 20120104 김동일 | 탐색레이더 ICD변경(v2.5) VTWS1, VTWS2 추가
;; {                                   ;;!!!ticket:2468 20120104 김동일 | 탐색레이더 ICD변경(v2.5) VTWS1, VTWS2 추가
;; 	SENSOR_SRS_KIND_VTWS1 = 12,     ;;!!!ticket:2468 20120104 김동일 | 탐색레이더 ICD변경(v2.5) VTWS1, VTWS2 추가
;; 	SENSOR_SRS_KIND_VTWS2           ;;!!!ticket:2468 20120104 김동일 | 탐색레이더 ICD변경(v2.5) VTWS1, VTWS2 추가
;; };                                  ;;!!!ticket:2468 20120104 김동일 | 탐색레이더 ICD변경(v2.5) VTWS1, VTWS2 추가


;; enum _ENUM_FIRE_AUTHORIZATION	;;발사승인/금지
;; {
;; 	FIRE_AUTHORIZATION_OFF = 0,
;; 	FIRE_AUTHORIZATION_ON
;; };

;; enum _ENUM_KILL_ASSESSMENT		;;명중평가
;; {
;; 	KILL_ASSESSMENT_UNKNOWN = 0,	;;미확인
;; 	KILL_ASSESSMENT_KILL,			;;명중
;; 	KILL_ASSESSMENT_MISS			;;실패

;; };

;; enum _ENUM_RESOURCE_STATUS			;;자원 교전 가용 상태
;; {	
;; 	RESOURCE_STATUS_NULL = 0, ;;교전목록에서 무장만 할당된 경우 센서의 상태...또는 그 반대(각 장비로부터는 들어올수 없는 값임)
;; 	RESOURCE_STATUS_AVAILABLE,
;; 	RESOURCE_STATUS_WAITING,
;; 	RESOURCE_STATUS_ASSIGNED,
;; 	RESOURCE_STATUS_NOT_AVAILABLE,
;; 	RESOURCE_STATUS_AVAILABLE_FOR_TRAINING,
;; 	RESOURCE_STATUS_AVAILABLE_FOR_MULTI_CHANNEL ;;20141119 권기태 다중할당무장 교전가용성 타임아웃체크를 위해추가
;; };

;; enum _ENUM_ENGAGEMENT_STATUS   ;;교전상태   
;; {
;; 	ENG_STATUS_NOT_DEFINED = 0,                     ;;의미 없음.
;; 	ENG_STATUS_ALLOC_WAITING = 10,                  ;;할당요청(교전할당명령에 대한 응답도달 전 상태)

;; 	ENG_STATUS_ALLOC_REFUSE = 11,                   ;;할당거부

;; 	ENG_STATUS_DEALLOC_WAITING = 20,                ;;해제요청(교전해제명령에 대한 응답도달 전 상태)

;; 	ENG_STATUS_INDICATING = 30,                     ;;표적지시
;; 	ENG_STATUS_INDICATING_PLAN_REQ = 31,            ;;계획요청
;; 	ENG_STATUS_INDICATING_PLAN_APPROVAL = 32,       ;;계획승인
;; 	ENG_STATUS_INDICATING_PLAN_NOT_APPROVAL = 33,   ;;계획비승인
;; 	ENG_STATUS_INDICATING_COMPLETION = 34,          ;;할당완료
;; 	ENG_STATUS_INDICATING_ENG = 35,                 ;;교전

;; 	ENG_STATUS_ACQUISITION = 40,                    ;;획득
;; 	ENG_STATUS_TRACKING = 50,                       ;;추적

;; 	ENG_STATUS_RTF = 60,                            ;;발사준비
;; 	ENG_STATUS_RTF_GUNSHOT_AVAILABLE = 61,          ;;사격가능
;; 	ENG_STATUS_RTF_FIRE_AVAILABLE = 62,             ;;발사가능
;; 	ENG_STATUS_RTF_ORDER = 63,                      ;;발사지시
;; 	ENG_STATUS_RTF_SCHEDULED = 64,                  ;;발사예정
;; 	ENG_STATUS_RTF_PROGRESS = 65,                   ;;발사진행

;; 	ENG_STATUS_FIRING = 70,                         ;;발사중 
;; 	ENG_STATUS_FIRING_GUNSHOT = 71,                 ;;사격중
;; 	ENG_STATUS_FIRE = 72,                           ;;발사
;; 	ENG_STATUS_FIRING_STOP = 73,                    ;;발사중지

;; 	ENG_STATUS_FIRED = 80,                          ;;발사완료
;; 	ENG_STATUS_SALVOAWAY = 81,                      ;;발사완료이후 살보 
;; 	ENG_STATUS_KILL = 82,							;;명중 

;; 	ENG_STATUS_FIRE_REFUSE = 90,                    ;;발사거부
;; 	ENG_STATUS_DEPARTURE = 91,                      ;;이탈
;; 	ENG_STATUS_ABNORMAL_FIRED = 92,                 ;;비정상발사
;; 	ENG_STATUS_MISS_FIRE = 93,                      ;;불발

;; 	ENG_STATUS_NOT_ENGAGED = 100,                   ;;해제완료 
;; };

;; enum _ENUM_REQUEST_KIND			;;교전할당플래그(ucAllocOrDealloc)
;; {
;; 	REQUEST_KIND_DEFAULT = 0,
;; 	REQUEST_KIND_ALLOC,							;;할당요청
;; 	REQUEST_KIND_DEALLOC,						;;해제요청
;; 	REQUEST_KIND_PERIODIC,						;;필요여부 확인 후 삭제가능성 있음.
;; 	REQUEST_KIND_MOVE_TARGET,					;;교전중인 표적 이동(표적이 고정좌표인 경우에만 적용가능함.)
;; 	REQUEST_KIND_DELETE_BY_FORCE				;;교전정보강제삭제
;; };

;; enum _ENUM_ENGAGEABLE_STATUS		;;교전가능성 정의
;; {
;; 	ENGAGEABLE_STATUS_NENG = 0,
;; 	ENGAGEABLE_STATUS_WENG,
;; 	ENGAGEABLE_STATUS_ENG,
;; 	ENGAGEABLE_STATUS_NENG_ENGAGING
;; };

;; enum _ENUM_NGS_MODE
;; {
;; 	NGS_MODE_NO_STATEMENT = 0,
;; 	NGS_MODE_DIRECT,
;; 	NGS_MODE_INDIRECT,
;; 	NGS_MODE_BLIND
;; };

;; enum _ENUM_WEAPON_OPEN_HOLD_FIRE
;; {
;; 	WEAPON_HOLD_FIRE  = 0,     ;; 0x00: 무장사용 제한(Hold Fire)
;; 	WEAPON_OPEN_FIRE          ;; 0x01 : 무장사용 허용(Open Fire)
;; };

;; enum _ENUM_WEAPON_CONTROL				;; 100306 김기표 선임 추가
;; {
;; 	WEAPON_FREE = 0,
;; 	WEAPON_TIGHT,
;; 	WEAPON_SAFE
;; };


;; enum _ENUM_WF_NENG_REASON      ;; 100429 김기표 전문 추가
;; {
;; 	NENG_REASON_ENG_AVAILABLE = 0,   ;; 교전가능
;; 	NENG_REASON_ENG_WAIT,      ;; 교전대기
;; 	NENG_REASON_SENSOR_UNAVAILABLE,   ;; 센서사용불가
;; 	NENG_REASON_WEAPON_UNAVAILABLE,   ;; 무장사용불가
;; 	NENG_REASON_SENSOR_WEAPON_UNAVAILABLE,  ;; 센서무장사용불가
;; 	NENG_REASON_NOT_WEAPON_AREA,    ;; 무장대응불가
;; 	NENG_REASON_NO_TIME_RESPONSE_WEAPON,  ;; 무장대응시간부족
;; 	NENG_REASON_EXCEED_ENG_WAITTIME,   ;; 교전대기시간초과
;; 	NENG_REASON_OUTSIDE_OF_ENG_AREA,   ;; 교전범위이탈
;; 	NENG_REASON_SENSOR_BLINDARC,    ;; 센서제한각진입
;; 	NENG_REASON_FC2_FC3_SAME_TRACK,   ;; FC2 FC3동시할당불가
;; 	;;20100916 정의 추가
;; 	NENG_REASON_TRACK_VETO_ON, ;; 무장사용금지(20101216 변경기존: 무장사용제한)		;;ticket:1434 101222 김기표 전문 수정
;; 	NENG_REASON_INCONSISTENT_SAAM_MODE, ;;운용모드불일치
;; 	NENG_REASON_MANUAL_OR_BULLET_LOAD_MODE, ;; 수동모드
;; 	NENG_REASON_SAAM_NO_BULLET, ;;유도탄재장전
;; 	NENG_REASON_CIWS_NO_BULLET, ;;탄약재장전
;; 	NENG_REASON_SAFE_MODE, ;;안전모드
;; 	NENG_REASON_GUN_NO_READY, ;; 함포준비 상태 OFF
;; 	NENG_REASON_CIWS_EXCEED_SPD_THRESHOLD, ;; 속도임계치이탈		;;ticket:1309 101126 김기표 전문 추가
;; 	NENG_REASON_TRACK_HOLD_FIRE, ;; 무장사용제한(20101216 추가)						;;ticket:1434 101222 김기표 전문 추가
;; 	NENG_REASON_SAAM_EMPTY_BLK1A,									;;ticket:1845 101222 김기표 전문 추가
;; 	NENG_REASON_SAAM_LOW_TRACK_QUALITY, ;; 표적품질저하				;;ticket:2500 120214 김기표 전문 추가
;; 	NENG_REASON_SAME_TRACK, ;; 동일무장 교전중						;;ticket:2500 120214 김기표 전문 추가
;; 	NENG_REASON_OUTBOUND, ;; 아웃바운드 표적							;;ticket:2500 120214 김기표 전문 추가
;; 	NENG_REASON_NOT_SENSOR_AREA  ;;20120316	;;ticket:2546 120320 김기표 전문 추가
;; };





;; /******************************************/
;; /******************************************/


;; /******************************************/
;; /******************************************/

;; enum _ENUM_SUBSYSTEM_GROUP_ID			;; Subsystem Group ID			;; 100218 양명미 선임 추가
;; {
;; 	SUBSYSTEM_GROUP_ID_START = 200,
;; 	SUBSYSTEM_GROUP_ID_TM,		
;; 	SUBSYSTEM_GROUP_ID_SC,
;; 	SUBSYSTEM_GROUP_ID_WC,
;; 	SUBSYSTEM_GROUP_ID_ALL
;; };

;; /*	;;dhung:141007-FFX2_PKGB_SW_ID.h파일에 재정의
;; enum _ENUM_SW_ID					;; SW ID 
;; {
;; 	SW_ID_MGT_START = 0,
;; 	SW_ID_IPNTAC_MGT = 1,;;1
;; 	SW_ID_IPNTAC_MGT2,
;; 	SW_ID_IPNTAC_MGT3,
;; 	SW_ID_IPNSUP_MGT,
;; 	SW_ID_IPNSUP_MGT2,
;; 	SW_ID_IPNTRN_MGT,
;; 	SW_ID_IPNTRN_MGT2,
;; 	SW_ID_IPNTRN_MGT3,
;; 	SW_ID_KMFCMGR,
;; 	SW_ID_MGT_END,		;;10

;; 	SW_ID_ICU_START = 100,
;; 	SW_ID_ICUIPCIWS = 101,	;;140218 dha.jung SW_ID_ICUCIWS->SW_ID_ICUIPCIWS
;; 	SW_ID_ICUDPCIWS,		;;131017 dha.jung 추가
;; 	SW_ID_ICUIPMASS,		;;131017 dha.jung DECOY -> MASS 변경, 140218 SW_ID_ICUMASS->SW_ID_ICUIPMASS
;; 	SW_ID_ICUDPMASS,		;;140218 dha.jung 추가
;; 	SW_ID_ICUEOTS,
;; 	SW_ID_ICUIPEW,			;;140312 jylee 추가 및 변경
;; 	SW_ID_ICUDPEW,			;;140312 jylee 추가 및 변경
;; 	SW_ID_ICUIPHMS,	    ;; 20140630 js 변경
;; 	SW_ID_ICUDPHMS,     ;; 20140630 js 추가 및 변경
;; 	SW_ID_ICUIPIFF,	    ;; 20140630 js 변경
;; 	SW_ID_ICUKNCCS,
;; 	SW_ID_ICUKSSM,
;; 	SW_ID_ICULYNXESM,
;; 	SW_ID_ICUNRS,		
;; 	SW_ID_ICUOSD,
;; 	SW_ID_ICUSAAM,
;; 	SW_ID_ICUIPSRS,	    ;; 20140630 js 변경
;; 	SW_ID_ICUTRS,
;; 	SW_ID_BCUGUN127,
;; 	SW_ID_BCUGUN40,
;; 	SW_ID_BCUGUN76,
;; 	SW_ID_FCUIPSLTS,		;;140218 dha.jung SW_ID_FCUSLTS->SW_ID_FCUIPSLTS
;; 	SW_ID_FCUTACM,
;; 	SW_ID_DLPISDL,		
;; 	SW_ID_DLPLINK11,
;; 	SW_ID_RVDU,
;; 	SW_ID_RVR,
;; 	SW_ID_TVR,
;; 	SW_ID_ICUIPES,	;; 20131211 hk.kim 추가
;; 	SW_ID_ICUDPES,	;; 20131211 hk.kim 추가 
;; 	SW_ID_ICUIPIRST,;; 20131211 hk.kim 추가
;; 	SW_ID_ICUDPIRST,;; 20131211 hk.kim 추가
;; 	SW_ID_ICUIPLYNXESM,	;; 20131219 hk.kim 추가
;; 	SW_ID_ICUDPLYNXESM,	;; 20131219 hk.kim 추가 
;; 	SW_ID_ICUIPRCWS1,	;; 20140605 dha.jung 추가, 발사대1,2에 따로 응용이 탑재되므로 1,2로 구분
;; 	SW_ID_ICUDPRCWS1,	;; 20140605 dha.jung 추가
;; 	SW_ID_ICUIPRCWS2,	;; 20140605 dha.jung 추가
;; 	SW_ID_ICUDPRCWS2,	;; 20140605 dha.jung 추가
;; 	SW_ID_ICU_END,

;; 	SW_ID_IPN_START = 200,	;;200
;; 	SW_ID_AC = 201,		;;201
;; 	SW_ID_ASWPLAN,
;; 	SW_ID_CABINET,
;; 	SW_ID_FILESYNC,
;; 	SW_ID_GENPLAN,
;; 	SW_ID_NAV,
;; 	SW_ID_SCHMS,
;; 	SW_ID_SCIFF,
;; 	SW_ID_SCLYNXESM,
;; 	SW_ID_SCOSD,		;;210
;; 	SW_ID_SMMODEMANGER,
;; 	SW_ID_SMNMS,
;; 	SW_ID_SMSYSTEMMNG,
;; 	SW_ID_SMSYSTEMPARAMETER,
;; 	SW_ID_SMTIMEANDDATE,
;; 	SW_ID_SMUSERMANAGER,
;; 	SW_ID_SSAREAWARN,
;; 	SW_ID_SSFOCMGR,
;; 	SW_ID_SSHINDRANCEMGR,
;; 	SW_ID_SSICMMGR,		;;220
;; 	SW_ID_SSMSNMGR,
;; 	SW_ID_SSPLATFORMLIB,
;; 	SW_ID_SSRNRMGR,
;; 	SW_ID_SSRRAMGR,
;; 	SW_ID_SSTAMGR,
;; 	SW_ID_SSVIDEODISTMGR,
;; 	SW_ID_TDL,
;; 	SW_ID_TM,
;; 	SW_ID_TRN,	
;; 	SW_ID_WCCIWS,		;;230
;; 	SW_ID_WCMASS,		;; 131017 dha.jung DECOY -> MASS 변경
;; 	SW_ID_WCEW,
;; 	SW_ID_WCKSSM,
;; 	SW_ID_WCSAAM,
;; 	SW_ID_WCSLTS,
;; 	SW_ID_WCTACM,
;; 	SW_ID_WF,
;; 	SW_ID_SIMCIWS,
;; 	SW_ID_SIMMASS,		;; 131017 dha.jung DECOY -> MASS 변경
;; 	SW_ID_SIMEOTS,		;;240
;; 	SW_ID_SIMEW,
;; 	SW_ID_SIMGUN40,
;; 	SW_ID_SIMGUN76,
;; 	SW_ID_SIMGUN127,
;; 	SW_ID_SIMHMS,
;; 	SW_ID_SIMIFF,
;; 	SW_ID_SIMKSSM,
;; 	SW_ID_SIMNRS,
;; 	SW_ID_SIMOSD,
;; 	SW_ID_SIMSAAM,		;;250
;; 	SW_ID_SIMSLTS,
;; 	SW_ID_SIMSRS,
;; 	SW_ID_SIMTACM,
;; 	SW_ID_SIMTRS,
;; 	SW_ID_IPN_END,

;; 	SW_ID_HCI_START = 300,	;;300
;; 	SW_ID_HCI_AC = 301,		;;301
;; 	SW_ID_HCI_ASWPLAN,
;; 	SW_ID_HCI_GENPLAN,
;; 	SW_ID_HCI_MainDisplay,
;; 	SW_ID_HCI_NAV,
;; 	SW_ID_HCI_SCEOTS,
;; 	SW_ID_HCI_SCHMS,
;; 	SW_ID_HCI_SCIFF_TSB3522, ;;140630 js 변경
;; 	SW_ID_HCI_SCIFF_ANUPS,   ;;140630 js 변경
;; 	SW_ID_HCI_SCLYNXESM,
;; 	SW_ID_HCI_SCNRS,		;;310
;; 	SW_ID_HCI_SCOSD,
;; 	SW_ID_HCI_SCSRS_SLK500,  ;;140630 js 변경
;; 	SW_ID_HCI_SCSRS_XSPS550K,  ;;140630 js 추가 및 변경
;; 	SW_ID_HCI_SCTRS,
;; 	SW_ID_HCI_SecondaryDisplay,
;; 	SW_ID_HCI_SIMCIWS,
;; 	SW_ID_HCI_SIMMASS,		;; 131017 dha.jung DECOY -> MASS 변경
;; 	SW_ID_HCI_SIMEOTS,
;; 	SW_ID_HCI_SIMEW,
;; 	SW_ID_HCI_SIMGUN40,
;; 	SW_ID_HCI_SIMGUN76,		;;320
;; 	SW_ID_HCI_SIMGUN127,
;; 	SW_ID_HCI_SIMROCKET,	;;130mm유도로켓
;; 	SW_ID_HCI_SIMRCWS,		;;12.7mm원격사격체계	
;; 	SW_ID_HCI_SIMHMS,
;; 	SW_ID_HCI_SIMKSSM,
;; 	SW_ID_HCI_SIMSAAM,
;; 	SW_ID_HCI_SIMSLTS,
;; 	SW_ID_HCI_SIMSRS,
;; 	SW_ID_HCI_SIMTACM,
;; 	SW_ID_HCI_SIMTRS,;;330
;; 	SW_ID_HCI_SMLOGIN,
;; 	SW_ID_HCI_SMMODECONTROL,
;; 	SW_ID_HCI_SMMODEMONITOR,
;; 	SW_ID_HCI_SMNMS,
;; 	SW_ID_HCI_SMOMDEF,
;; 	SW_ID_HCI_SMOPERSHIFT,
;; 	SW_ID_HCI_SMROLESERVICEREL,
;; 	SW_ID_HCI_SMSYSTEMMNG,
;; 	SW_ID_HCI_SMSWMONITOR,
;; 	SW_ID_HCI_SMSYSTEMPARAMETER,;;340
;; 	SW_ID_HCI_SMTIMEANDDATE, 
;; 	SW_ID_HCI_SMUSERPWCHANGE,
;; 	SW_ID_HCI_SMWARNINGMGR,
;; 	SW_ID_HCI_SSAREAWARN,
;; 	SW_ID_HCI_SSFOCMGR,
;; 	SW_ID_HCI_SSHINDRANCEMGR,
;; 	SW_ID_HCI_SSICMMGR,
;; 	SW_ID_HCI_SSMSNMGR,
;; 	SW_ID_HCI_SSPLATFORMLIB,
;; 	SW_ID_HCI_SSRNRRECORD,;;350
;; 	SW_ID_HCI_SSRNRREPLAY,
;; 	SW_ID_HCI_SSTAMGR,		
;; 	SW_ID_HCI_SSTVVIDEO,
;; 	SW_ID_HCI_SSVIDEODISTMGR,
;; 	SW_ID_HCI_DLPISDL,
;; 	SW_ID_HCI_ICUKNCCS,
;; 	SW_ID_HCI_DLPLINK11,
;; 	SW_ID_HCI_LINKK,
;; 	SW_ID_HCI_TM,
;; 	SW_ID_HCI_TRN,;;360
;; 	SW_ID_HCI_WCCIWS,
;; 	SW_ID_HCI_WCMASS,		;; 131017 dha.jung DECOY -> MASS 변경
;; 	SW_ID_HCI_WCEW,			
;; 	SW_ID_HCI_WCGUN40,
;; 	SW_ID_HCI_WCGUN76,
;; 	SW_ID_HCI_WCGUN127,
;; 	SW_ID_HCI_WCKSSM,
;; 	SW_ID_HCI_WCSAAM,
;; 	SW_ID_HCI_WCSLTS,
;; 	SW_ID_HCI_WCTACM,
;; 	SW_ID_HCI_WCRCWS,	;;12.7mm원격사격체계
;; 	SW_ID_HCI_WCROCKET,	;;130mm유도로켓
;; 	SW_ID_HCI_WF,
;; 	SW_ID_HCI_SCES,			;; 20131211 hk.kim 추가
;; 	SW_ID_HCI_SCIRST,		;; 20140218 hk.kim 추가
;; 	SW_ID_HCI_SCTASS,		;; 20140218 hk.kim 추가
;; 	SW_ID_HCI_SCAIS,		;; 20140218 hk.kim 추가
;; 	SW_ID_HCI_END
;; };
;; */
;; enum _ENUM_LOGIN_STATUS
;; {
;; 	LOGOFF = 0,
;; 	LOGIN_SUCCESS,
;; 	FIRST_LOGIN,
;; 	IS_NOT_FIRST_LOGIN,
;; 	ALREADY_LOGIN,
;; 	LOGIN_AVAIL,
;; 	LOGIN_GRANTED,
;; 	ROLE_LOGIN_APPROVED,				;; mmyang ... 2010.04.16
;; 	ID_PASSWORD_CHANGE_SUCCESS,			;; mmyang ... 2010.03.25
;; 	ID_PASSWORD_INVALID,
;; 	FORCED_SHUTDOWN,
;; 	NON_FORCED_SHUTDOWN,
;; 	SHIFT_GRANTED,
;; 	SHIFT_REJECT
;; };

;; enum _SM_REQ_STATUS
;; {
;; 	CREATE_ITEM = 1,
;; 	MODIFY_ITEM,
;; 	DELETE_ITEM,
;; 	LIST_REQ,
;; 	MODIFY_ITEM_INIT_PASSWD,			;; mmyang ... 2010.01.16
;; 	MODIFY_ITEM_INIT_PASSWD_FAIL,
;; 	ITEM_REQ							;; mmyang ... 2010.04.15
;; };

;; /******************************************/
;; /******************************************/

;; /******************************************/
;; /******************************************/
;; enum _ENUM_TDL_KIND
;; {
;; 	TDL_KIND_NONE = 0,						;; 100401 김동일 선임 수정
;; 	TDL_KIND_ISDL,
;; 	TDL_KIND_LINK11,
;; 	TDL_KIND_KNCCS,
;; 	TDL_KIND_LINK16,
;; 	TDL_KIND_LINK11_B,
;; 	TDL_KIND_LK,							;;140703 이효조 선임 추가
;; 	TDL_KIND_ALL
;; };

;; enum _ENUM_TDL_INFO_KIND
;; {
;; 	TDL_INFO_KIND_FILTER = 1,
;; 	TDL_INFO_KIND_OPNOTE,
;; 	TDL_INFO_KIND_AIRCRAFT_CTRL,
;; 	TDL_INFO_KIND_ALL
;; };

;; enum _ENUM_TDL_TX_ALLOWED
;; {
;; 	TDL_TX_NOT_ALLOWED = 0,
;; 	TDL_TX_ALLOWED
;; };

;; enum _ENUM_TDL_AUTO_NTN_ALLOC
;; {
;; 	TDL_AUTO_NTN_ALLOC_NOT_ALLOWED = 0,
;; 	TDL_AUTO_NTN_ALLOC_ALLOWED
;; };

;; enum _ENUM_TDL_WEAPON_ID
;; {
;; 	;; 무장
;; 	;; LINK11_ORDER 가 다음 값을 가질때
;; 	;; LINK11_ORDER_ENGAGE_SPECIFIC,
;; 	;; LINK11_ORDER_CEASE_ENGAGE_SPECIFIC,
;; 	TDL_WEAPON_ID_NO_STATEMENT_WEAPON = 0,
;; 	TDL_WEAPON_ID_SURF_TO_AIR_MISSILE,      ;;ISDL_WEAPON_ID_SAM/ISDL_WEAPON_ID_SAM_SR
;; 	TDL_WEAPON_ID_SURF_TO_SURF_MISSILE,     ;;ISDL_WEAPON_ID_SSM
;; 	TDL_WEAPON_ID_INTERCEPTOR,              ;;ISDL_WEAPON_ID_INTERCEPTOR
;; 	TDL_WEAPON_ID_CONVENTIONAL,             ;;ISDL_WEAPON_ID_GUN
;; 	TDL_WEAPON_ID_ASW_HELO,                 ;;ISDL_WEAPON_ID_ASW_HELO
;; 	TDL_WEAPON_ID_ASW_MISSILE,              ;;ISDL_WEAPON_ID_ASW_MISSILE
;; 	TDL_WEAPON_ID_DEPTH_CHARGE,             ;;ISDL_WEAPON_ID_DEPTH_BOMB
;; 	TDL_WEAPON_ID_TORPEDO,                  ;;ISDL_WEAPON_ID_TORPEDO
;; 	TDL_WEAPON_ID_FIXED_WING_ASW_AIRCRAFT,  ;;ISDL_WEAPON_ID_FIXED_WING_ASW_AIRCRAFT
;; 	TDL_WEAPON_ID_AIR_TO_SURF_MISSILE,      ;;ISDL_WEAPON_ID_ASM	

;; 	;; 무장형태
;; 	;; LINK11_ORDER 가 다음 값을 가질때
;; 	;; LINK11_ORDER_WEAPONS_FREE
;; 	;; LINK11_ORDER_WEAPONS_TIGHT
;; 	;; LINK11_ORDER_ENGAGE
;; 	;; LINK11_ORDER_ASSIGN
;; 	;; LINK11_ORDER_CEASE_ENGAGE
;; 	;; LINK11_ORDER_HOLD_FIRE
;; 	;; LINK11_ORDER_CEASE_FIRE
;; 	;; LINK11_ORDER_COVER
;; 	;; LINK11_ORDER_SALVO_CLEAR
;; 	TDL_WEAPON_ID_ANY_ALL_TYPE,
;; 	TDL_WEAPON_ID_AIRCRAFT_TYPE,
;; 	TDL_WEAPON_ID_MISSILE_TYPE,
;; 	TDL_WEAPON_ID_CONVENTIONAL_TYPE
;; };

;; enum _ENUM_TDL_ENGAGE_STATUS 
;; {
;; 	TDL_ENGAGE_STATUS_NOT_ENGAGED = 0,
;; 	TDL_ENGAGE_STATUS_ASSIGN_INVEST,
;; 	TDL_ENGAGE_STATUS_TRACKING_LOCKED_ON,
;; 	TDL_ENGAGE_STATUS_FIRING_ENGAGING,
;; 	TDL_ENGAGE_STATUS_EFFECTIVE_TARGET_DESTROYED,
;; 	TDL_ENGAGE_STATUS_PARTIALLY_EFFECTIVE,
;; 	TDL_ENGAGE_STATUS_NOT_EFFECTIVE,
;; 	TDL_ENGAGE_STATUS_ENGAGEMENT_BROKEN,
;; 	TDL_ENGAGE_STATUS_HEAD_UP,
;; 	TDL_ENGAGE_STATUS_ENGAGEMENT_INTERRUPTED
;; };

;; enum _ENUM_TDL_WEAPON_STATUS
;; {
;; 	TDL_WEAPON_STATUS_NO_STATEMENT = 0,
;; 	TDL_WEAPON_STATUS_NOT_AVAILABLE,
;; 	TDL_WEAPON_STATUS_AVAILABLE
;; }; 

;; enum _ENUM_TDL_WEAPON_RANGE
;; {
;; 	TDL_WEAPON_RANGE_NO_STATEMENT = 0,
;; 	TDL_WEAPON_RANGE_SHORT,
;; 	TDL_WEAPON_RANGE_MEDIUM,
;; 	TDL_WEAPON_RANGE_LONG
;; };

;; enum _ENUM_TDL_OWNSHIP_OR_OTHERSHIP
;; {
;; 	TDL_OTHER_SHIP = 0,
;; 	TDL_OWN_SHIP
;; }; 

;; enum _ENUM_TDL_WE_STATUS_TYPE
;; {
;; 	TDL_WE_STATUS_WEAPON_STATUS = 0, 
;; 	TDL_WE_STATUS_ENGAGEMENT_STATUS 
;; }; 


;; enum _ENUM_TDL_FILTER_DIRECTION {
;; 	TDL_FILTER_DIRECTION_NO_STATEMENT,
;; 	TDL_FILTER_DIRECTION_TX,
;; 	TDL_FILTER_DIRECTION_RX,
;; 	TDL_FILTER_DIRECTION_TX_RX
	
;; };
;; enum _ENUM_TDL_FILTER_AREA
;; {
;; 	TDL_FILTER_AREA_NONE = 0,
;; 	TDL_FILTER_AREA_CIRCLE,
;; 	TDL_FILTER_AREA_SECTOR,
;; 	TDL_FILTER_AREA_RING,
;; 	TDL_FILTER_AREA_POLYGON
;; };

;; enum _ENUM_TDL_FILTER_ENVIRONMENT
;; { 
;; 	TDL_FILTER_ENVIRONMENT_AIR = 1,
;; 	TDL_FILTER_ENVIRONMENT_SURFACE = 2,
;; 	TDL_FILTER_ENVIRONMENT_SUBSURFACE = 4,
;; 	TDL_FILTER_ENVIRONMENT_LAND = 8,
;; 	TDL_FILTER_ENVIRONMENT_UNKNOWN = 16,
;; 	TDL_FILTER_ENVIRONMENT_SPACE = 32
;; };

;; enum _ENUM_TDL_FILTER_IDENTITY
;; { 
;; 	TDL_FILTER_IDENTITY_UNKNOWN = 1,						;; 091209 김동일 선임 수정 (NOSTATEMENT=>UNKNOWN)
;; 	TDL_FILTER_IDENTITY_PENDING = 2,
;; 	TDL_FILTER_IDENTITY_ASSUMED_FRIEND = 4,
;; 	TDL_FILTER_IDENTITY_FRIEND = 8,
;; 	TDL_FILTER_IDENTITY_NEUTRAL = 16
;; };

;; enum _ENUM_TDL_FILTER_KIND
;; { 
;; 	TDL_FILTER_KIND_POINT = 1,
;; 	TDL_FILTER_KIND_BEARING = 2,
;; 	TDL_FILTER_KIND_SPECIAL_POINT = 4
;; };

;; enum _ENUM_TDL_FILTER_ETC
;; {
;; 	TDL_FILTER_NON_REAL_TIME = 1,	;;Ticket:1608 송영환 추가
;; 	TDL_FILTER_CIVIL = 2			;;Ticket:1608 송영환 추가
;; };

;; enum _ENUM_TDL_FILTER_FORWARDING
;; { 
;; 	TDL_FILTER_FORWARDING_LINK11 = 1,
;; 	TDL_FILTER_FORWARDING_ISDL   = 2,
;; 	TDL_FILTER_FORWARDING_LINKK  = 4
;; };

;; enum _ENUM_TDL_ORDER
;; {
;; 	TDL_ORDER_WEAPONS_FREE = 0,
;; 	TDL_ORDER_WEAPONS_TIGHT,
;; 	TDL_ORDER_ENGAGE,
;; 	TDL_ORDER_ASSIGN,
;; 	TDL_ORDER_CEASE_ENGAGE,
;; 	TDL_ORDER_HOLD_FIRE,
;; 	TDL_ORDER_CEASE_FIRE,
;; 	TDL_ORDER_COVER,
;; 	TDL_ORDER_SALVO_CLEAR,
;; 	TDL_ORDER_ENGAGE_SPECIFIC,
;; 	TDL_ORDER_CEASE_ENGAGE_SPECIFIC,
;; 	TDL_ORDER_PROCEED_TO_POINT,
;; 	TDL_ORDER_CEASE_PROCEED_TO_POINT,
;; 	TDL_ORDER_PAIRING,
;; 	TDL_ORDER_ASSOCIATION,
;; 	TDL_ORDER_CORRELATION,
;; 	TDL_ORDER_TERMINATE_PAIRING_ASSOCIATION,
;; 	TDL_ORDER_DLP_REPLY
;; };

;; enum _ENUM_TDL_REPLY
;; {
;; 	TDL_REPLY_WILL_COMPLY = 0, ;;accept
;; 	TDL_REPLY_CANT_COMPLY,     ;;reject
;; 	TDL_REPLY_HAVE_COMPLIED,
;; 	TDL_REPLY_CANT_PROCESS, 
;; 	TDL_REPLY_MACHINE_RECEIPT,
;; 	TDL_REPLY_NO_REPLY_RECEIVED, 
;; 	TDL_REPLY_ORIGINAL_MESSAGE 
;; };

;; enum _ENUM_TDL_FILTER_ORIGIN
;; { 
;; 	TDL_FILTER_ORIGIN_GEO = 0,
;; 	TDL_FILTER_ORIGIN_OWNSHIP
;; };

;; enum _ENUM_TDL_NTN_COMMAND
;; {
;; 	TDL_NTN_COMMAND_ALLOCATE = 0,
;; 	TDL_NTN_COMMAND_REMOVE,
;; 	TDL_NTN_COMMAND_TQ_CHANGED,
;; 	TDL_NTN_COMMAND_ALERT_OFF_REQ,
;; 	TDL_NTN_COMMAND_LINK_STATE_CHANGED						;; 091109 김동일 선임 추가
;; }; 

;; enum _ENUM_TDL_NTN_RESULT
;; {
;; 	TDN_NTN_RESULT_ACCEPTED = 0,
;; 	TDN_NTN_RESULT_REJECTED,
;; 	TDN_NTN_RESULT_AUTOMATIC
;; };

;; enum _ENUM_TDL_NTN_REJECT_REASON
;; {
;; 	TDN_NTN_REJECT_REASON_ALREADY_IN_USE = 0,
;; 	TDN_NTN_REJECT_REASON_POOL_EXCEEDED,
;; 	TDN_NTN_REJECT_REASON_TRANS_NOT_ALLOWED
;; };

;; enum _ENUM_TDL_THREAT_LEVEL
;; {
;; 	TDL_TREAT_LEVEL_NO_STATEMENT = 0,
;; 	TDL_TREAT_LEVEL_UNKNOWN,
;; 	TDL_TREAT_LEVEL_NON_THREAT,
;; 	TDL_TREAT_LEVEL_THREAT
;; };

;; enum _ENUM_TDL_SCAN_CATEGORY
;; {
;; 	TDL_SCAN_CATEGORY_NO_STATEMENT = 0,
;; 	TDL_SCAN_CATEGORY_FIXED,
;; 	TDL_SCAN_CATEGORY_CIRCULAR,
;; 	TDL_SCAN_CATEGORY_LOBE_SWITCHING,
;; 	TDL_SCAN_CATEGORY_HEIGHT_FINDER,
;; 	TDL_SCAN_CATEGORY_SECTOR,
;; 	TDL_SCAN_CATEGORY_CONICAL,
;; 	TDL_SCAN_CATEGORY_COMPLEX,
;; 	TDL_SCAN_CATEGORY_SPIRAL,
;; 	TDL_SCAN_CATEGORY_RASTER,
;; 	TDL_SCAN_CATEGORY_VARIABLE_RANDOM,
;; 	TDL_SCAN_CATEGORY_STEADY,
;; 	TDL_SCAN_CATEGORY_MANUAL
;; }; 

;; enum _ENUM_TDL_SCAN_MODE							;; 100305 김동일 선임 추가
;; {
;; 	TDL_SCAN_MODE_NO_MEASUREMENT_SCAN = 0, 
;; 	TDL_SCAN_MODE_TIME_SCAN, 
;; 	TDL_SCAN_MODE_FREQUENCY_SCAN,
;; 	TDL_SCAN_MODE_STEADY_SCAN 
;; };

;; enum _ENUM_TDL_ASW_REFPOS_SENSOR
;; {
;; 	TDL_ASW_REFPOS_SENSOR_NO_STATEMENT = 0,
;; 	TDL_ASW_REFPOS_SENSOR_SHIP_ACTIVE_SONAR,
;; 	TDL_ASW_REFPOS_SENSOR_SHIP_PASSIVE_SONAR,
;; 	TDL_ASW_REFPOS_SENSOR_SHIP_VARIABLE_ACTIVE_SONAR,
;; 	TDL_ASW_REFPOS_SENSOR_SHIP_VARIABLE_PASSIVE_SONAR,
;; 	TDL_ASW_REFPOS_SENSOR_SHIP_SONAR,
;; 	TDL_ASW_REFPOS_SENSOR_SUBMARINE_ACTIVE_SONAR,
;; 	TDL_ASW_REFPOS_SENSOR_SUBMARINE_PASSIVE_SONAR,
;; 	TDL_ASW_REFPOS_SENSOR_HELO_ACTIVE_SONAR,
;; 	TDL_ASW_REFPOS_SENSOR_HELO_PASSIVE_SONAR,
;; 	TDL_ASW_REFPOS_SENSOR_RADAR,
;; 	TDL_ASW_REFPOS_SENSOR_INTELLIGENCE,
;; 	TDL_ASW_REFPOS_SENSOR_ESM,
;; 	TDL_ASW_REFPOS_SENSOR_MAD,
;; 	TDL_ASW_REFPOS_SENSOR_LOFAR_AREA,
;; 	TDL_ASW_REFPOS_SENSOR_LOFAR_H_FIX,
;; 	TDL_ASW_REFPOS_SENSOR_LOFAR_C_FIX,
;; 	TDL_ASW_REFPOS_SENSOR_DIFAR,
;; 	TDL_ASW_REFPOS_SENSOR_ACTIVE_SONOBUOY_RANGE_BEARING,
;; 	TDL_ASW_REFPOS_SENSOR_ACTIVE_SONOBUOY_RANGE,
;; 	TDL_ASW_REFPOS_SENSOR_PASSIVE_SONOBUOY,
;; 	TDL_ASW_REFPOS_SENSOR_DIRECT_PATH,
;; 	TDL_ASW_REFPOS_SENSOR_BOTTOM_BOUNCE,
;; 	TDL_ASW_REFPOS_SENSOR_CONVERGENCE_ZONE_1,
;; 	TDL_ASW_REFPOS_SENSOR_CONVERGENCE_ZONE_2,
;; 	TDL_ASW_REFPOS_SENSOR_CONVERGENCE_ZONE_3,
;; 	TDL_ASW_REFPOS_SENSOR_LLLTV,
;; 	TDL_ASW_REFPOS_SENSOR_VISUAL,
;; 	TDL_ASW_REFPOS_SENSOR_DESIGNATED_FIX,
;; 	TDL_ASW_REFPOS_SENSOR_UNDERWATER_TELEPHONE,
;; 	TDL_ASW_REFPOS_SENSOR_TOWED_ARRAY,
;; 	TDL_ASW_REFPOS_SENSOR_INFRARED_SYSTEM,
;; 	TDL_ASW_REFPOS_SENSOR_PASSIVE_DIRECTIONAL_SONOBUOY,
;; 	TDL_ASW_REFPOS_SENSOR_UNDEFINED,
;; 	TDL_ASW_REFPOS_SENSOR_PASSIVE_SOURCE,
;; 	TDL_ASW_REFPOS_SENSOR_CASS,
;; 	TDL_ASW_REFPOS_SENSOR_ITASS,
;; 	TDL_ASW_REFPOS_SENSOR_DICASS,
;; 	TDL_ASW_REFPOS_SENSOR_SOSUS,
;; 	TDL_ASW_REFPOS_SENSOR_FLIR
;; };

;; enum _ENUM_TDL_ASW_BEARING_SENSOR
;; {
;; 	TDL_ASW_BEARING_SENSOR_NO_STATEMENT = 0,
;; 	TDL_ASW_BEARING_SENSOR_ACTIVE_SONAR,
;; 	TDL_ASW_BEARING_SENSOR_PASSIVE_SONAR,
;; 	TDL_ASW_BEARING_SENSOR_PASSIVE_SONOBUOY,
;; 	TDL_ASW_BEARING_SENSOR_ACTIVE_SONOBUOY,
;; 	TDL_ASW_BEARING_SENSOR_MAD,
;; 	TDL_ASW_BEARING_SENSOR_VISUAL_ELECTRO_OPTICS,
;; 	TDL_ASW_BEARING_SENSOR_RADAR
;; };

;; enum _ENUM_TDL_ASW_REFPOS_MISSION
;; {
;; 	TDL_ASW_REFPOS_MISSION_NO_STATEMENT = 0,
;; 	TDL_ASW_REFPOS_MISSION_ANTI_SHIPPING,
;; 	TDL_ASW_REFPOS_MISSION_ANTI_SUBMARINE,
;; 	TDL_ASW_REFPOS_MISSION_RECONNAISSANCE,
;; 	TDL_ASW_REFPOS_MISSION_MINE_LAYING,
;; 	TDL_ASW_REFPOS_MISSION_TRANSITING,
;; 	TDL_ASW_REFPOS_MISSION_SAR,
;; 	TDL_ASW_REFPOS_MISSION_ESCORT,
;; 	TDL_ASW_REFPOS_MISSION_INTRUDER,
;; 	TDL_ASW_REFPOS_MISSION_COMMAND_AND_CONTROL,
;; 	TDL_ASW_REFPOS_MISSION_AUXILIARY  
;; };

;; enum _ENUM_TDL_CONFIDENCE_LEVEL
;; {
;; 	TDL_CONFIDENCE_LEVEL_NO_STATEMENT = 0, 
;; 	TDL_CONFIDENCE_LEVEL_CONFIDENCE_1,
;; 	TDL_CONFIDENCE_LEVEL_CONFIDENCE_2,
;; 	TDL_CONFIDENCE_LEVEL_CONFIDENCE_3,
;; 	TDL_CONFIDENCE_LEVEL_CONFIDENCE_4,
;; 	TDL_CONFIDENCE_LEVEL_CONFIDENCE_5,
;; 	TDL_CONFIDENCE_LEVEL_CONFIDENCE_6,
;; 	TDL_CONFIDENCE_LEVEL_POSITIVE_EVALUATION
;; };

;; enum _ENUM_TDL_PLATFORM_EVALUATION_CONFIDENCE
;; {
;; 	TDL_PLATFORM_EVALUATION_CONFIDENCE_NO_STATEMENT = 0,
;; 	TDL_PLATFORM_EVALUATION_CONFIDENCE_POSITIVE,
;; 	TDL_PLATFORM_EVALUATION_CONFIDENCE_PROBABLE,
;; 	TDL_PLATFORM_EVALUATION_CONFIDENCE_POSSIBLE,
;; 	TDL_PLATFORM_EVALUATION_CONFIDENCE_LOW
;; };

;; enum _ENUM_TDL_LOCK_ON_SPY
;; {
;; 	TDL_LOCK_ON_SPY_NO_STATEMENT = 0,
;; 	TDL_LOCK_ON_SPY_LOCK_ON,
;; 	TDL_LOCK_ON_SPY_SPY
;; };

;; enum _ENUM_TDL_JITTER
;; {
;; 	TDL_JITTER_NO_STATEMENT = 0,
;; 	TDL_JITTER_JITTER,
;; 	TDL_JITTER_NO_JITTER
;; };

;; enum _ENUM_TDL_POLARISATION
;; {
;; 	TDL_POLARISATION_NO_STATEMENT = 0,
;; 	TDL_POLARISATION_CIRCULAR,
;; 	TDL_POLARISATION_HORIZONTAL,
;; 	TDL_POLARISATION_ROTATIONAL,
;; 	TDL_POLARISATION_VERTICAL,
;; 	TDL_POLARISATION_SLANT
;; };

;; enum _ENUM_TDL_NOTACK_DURATION
;; {
;; 	TDL_NOTACK_DURATION_NO_STATEMENT = 0,
;; 	TDL_NOTACK_DURATION_1H,
;; 	TDL_NOTACK_DURATION_30MN,
;; 	TDL_NOTACK_DURATION_1H30MN,
;; 	TDL_NOTACK_DURATION_2H
;; };

;; enum _ENUM_TDL_NOTACK_RADIUS
;; {
;; 	TDL_NOTACK_RADIUS_NO_STATEMENT = 0,
;; 	TDL_NOTACK_RADIUS_R_10_DM,
;; 	TDL_NOTACK_RADIUS_R_5_DM,
;; 	TDL_NOTACK_RADIUS_R_15_DM,
;; 	TDL_NOTACK_RADIUS_R_20_DM
;; };

;; enum _ENUM_TDL_BEARINT_REPORT
;; {
;; 	TDL_BEARING_REPORT_BEARING_AND_RANGE = 0,
;; 	TDL_BEARING_REPORT_PASSIVE_BEARING_AMBIGUOUS,
;; 	TDL_BEARING_REPORT_PASSIVE_BEARING_RESOLVED,
;; 	TDL_BEARING_REPORT_RANGE_ONLY
;; };

;; enum _ENUM_TDL_ABOVE_BELOW_LAYER
;; {
;; 	TDL_ABOVE_BELOW_LAYER_NO_STATEMENT = 0,
;; 	TDL_ABOVE_BELOW_LAYER_ABOVE_LAYER,
;; 	TDL_ABOVE_BELOW_LAYER_BELOW_LAYER,
;; 	TDL_ABOVE_BELOW_LAYER_UNDEFINED
;; };


;; enum _ENUM_TDL_CONTACT_DEPTH
;; {
;; 	TDL_CONTACT_DEPTH_UNKNOWN = 0,
;; 	TDL_CONTACT_DEPTH_ESTIMATED_SHALOW,
;; 	TDL_CONTACT_DEPTH_ABOVE_LAYER,
;; 	TDL_CONTACT_DEPTH_BELOW_LAYER,
;; 	TDL_CONTACT_DEPTH_ESTIMATED_DEEP,
;; 	TDL_CONTACT_DEPTH_BOTTOMED,
;; 	TDL_CONTACT_DEPTH_PERSCOPE_DEPTH
;; };

;; enum _ENUM_TDL_NETWORK_TRACK_ADD_INFO_KIND
;; {
;; 	TDL_NETWORK_TRACK_ADD_INFO_NONE = 0,
;; 	TDL_NETWORK_TRACK_ADD_INFO_KIND_AIR,
;; 	TDL_NETWORK_TRACK_ADD_INFO_KIND_ESM,
;; 	TDL_NETWORK_TRACK_ADD_INFO_KIND_ASW_FIX,
;; 	TDL_NETWORK_TRACK_ADD_INFO_KIND_SUBSURFACE,
;; 	TDL_NETWORK_TRACK_ADD_INFO_KIND_DATUM,
;; 	TDL_NETWORK_TRACK_ADD_INFO_KIND_ACOUSTIC,
;; 	TDL_NETWORK_TRACK_ADD_INFO_KIND_LAND,
;; 	TDL_NETWORK_TRACK_ADD_INFO_KIND_SURFACE,
;; 	TDL_NETWORK_TRACK_ADD_INFO_KIND_SPACE
;; };

;; enum _ENUM_TDL_RAID_SIZE
;; {
;; 	TDL_RAID_SIZE_NO_STATEMENT = 0,
;; 	TDL_RAID_SIZE_SINGLE_TARGET,
;; 	TDL_RAID_SIZE_FROM_2_TO_8_TARGETS,
;; 	TDL_RAID_SIZE_MORE_THAN_8_TARGETS
;; };

;; enum _ENUM_TDL_UNIT_CAPABILITY
;; {
;; 	TDL_UNIT_CAPABILITY_NO_STATEMENT = 0,
;; 	TDL_UNIT_CAPABILITY_SURFACE_TO_AIR_MISSILE,
;; 	TDL_UNIT_CAPABILITY_SURFACE_TO_SURFACE_MISSILE,
;; 	TDL_UNIT_CAPABILITY_SHORT_RANGE_MISSILE_OR_GUN,
;; 	TDL_UNIT_CAPABILITY_HELICOPTER,
;; 	TDL_UNIT_CAPABILITY_ASW_MISSILE,
;; 	TDL_UNIT_CAPABILITY_DEPTH_CHARGE_BOMB,
;; 	TDL_UNIT_CAPABILITY_TORPEDO,
;; 	TDL_UNIT_CAPABILITY_STOL
;; };

;; enum _ENUM_TDL_DEPTH_HEIGHT_SOURCE
;; {
;; 	TDL_DEPTH_HEIGHT_SOURCE_NO_STATEMENT = 0,
;; 	TDL_DEPTH_HEIGHT_SOURCE_MANUAL,
;; 	TDL_DEPTH_HEIGHT_SOURCE_SENSOR,
;; 	TDL_DEPTH_HEIGHT_SOURCE_AIRCRAFT_VOICE_REPORT,
;; 	TDL_DEPTH_HEIGHT_SOURCE_AIRCRAFT_REPORTED,
;; 	TDL_DEPTH_HEIGHT_SOURCE_VOICE_REPORT,
;; 	TDL_DEPTH_HEIGHT_SOURCE_3D_RADAR,
;; 	TDL_DEPTH_HEIGHT_SOURCE_MODE_C
;; };

;; enum _ENUM_TDL_TRACK_ALERT
;; {
;; 	TDL_TRACK_ALERT_NONE = 0,
;; 	TDL_TRACK_ALERT_EMERGENCY,
;; 	TDL_TRACK_ALERT_FORCETELL,
;; 	TDL_TRACK_ALERT_EMERGENCY_AND_FORCETELL
;; };

;; enum _ENUM_TDL_MAIN_RATE_FREQUENCY
;; {
;; 	TDL_MAIN_RATE_FREQUENCY_NO_STATEMENT = 0,
;; 	TDL_MAIN_RATE_FREQUENCY_F0_TO_100_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F100_TO_200_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F200_TO_300_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F300_TO_400_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F400_TO_500_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F500_TO_600_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F600_TO_700_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F700_TO_800_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F800_TO_900_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F900_TO_1000_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F1000_TO_1100_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F1100_TO_1200_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F1200_TO_1300_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F1300_TO_1400_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F1400_TO_1500_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F1500_TO_1600_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F1600_TO_1700_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F1700_TO_1800_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F1800_TO_1900_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F1900_TO_2000_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F2000_TO_2100_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F2100_TO_2200_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F2200_TO_2300_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F2300_TO_2400_MHZ,
;; 	TDL_MAIN_RATE_FREQUENCY_F2400_TO_2500_MHZ
;; };

;; enum _ENUM_TDL_FREQUENCY_BAND
;; {
;;     TDL_FREQUENCY_BAND_NO_STATEMENT = -1 , 
;; 	TDL_FREQUENCY_BAND_A = 0,
;; 	TDL_FREQUENCY_BAND_B,
;; 	TDL_FREQUENCY_BAND_C,
;; 	TDL_FREQUENCY_BAND_D,
;; 	TDL_FREQUENCY_BAND_E,
;; 	TDL_FREQUENCY_BAND_F,
;; 	TDL_FREQUENCY_BAND_G,
;; 	TDL_FREQUENCY_BAND_H,
;; 	TDL_FREQUENCY_BAND_I,
;; 	TDL_FREQUENCY_BAND_J,
;; 	TDL_FREQUENCY_BAND_K,
;; 	TDL_FREQUENCY_BAND_L,
;; 	TDL_FREQUENCY_BAND_M
;; };

;; enum _ENUM_TDL_AIR_MISSION
;; {
;; 	TDL_AIR_MISSION_NO_STATEMENT = 0,
;; 	TDL_AIR_MISSION_AIRBORNE_EARLY_WARNING,
;; 	TDL_AIR_MISSION_AIR_CONTROLLER,
;; 	TDL_AIR_MISSION_ANTI_SUBMARINE_WARFARE,
;; 	TDL_AIR_MISSION_COMBAT_AIR_SUPPORT,
;; 	TDL_AIR_MISSION_CLOSE_AIR_SUPPORT,
;; 	TDL_AIR_MISSION_DECK_LAUNCH_CAP_CONTROL,
;; 	TDL_AIR_MISSION_ELECTRONIC_WARFARE,
;; 	TDL_AIR_MISSION_EXERCISE,
;; 	TDL_AIR_MISSION_FRIEND_SIMULATING_A_HOSTILE,
;; 	TDL_AIR_MISSION_JAMMER,
;; 	TDL_AIR_MISSION_RECONNAISSANCE,
;; 	TDL_AIR_MISSION_RESCUE_CAP,
;; 	TDL_AIR_MISSION_SEARCH_RESCUE,
;; 	TDL_AIR_MISSION_SIGNAL_INTELLIGENCE,
;; 	TDL_AIR_MISSION_SPECIAL_MISSION,
;; 	TDL_AIR_MISSION_STRIKE,
;; 	TDL_AIR_MISSION_ANTI_SURFACE_CAP
;; };

;; enum _ENUM_TDL_ASW_CLASS 
;; {
;; 	TDL_ASW_CLASS_NO_STATEMENT = 0,
;; 	TDL_ASW_CLASS_POSSIBLE_SUBMARINE_ONE,
;; 	TDL_ASW_CLASS_POSSIBLE_SUBMARINE_TWO,
;; 	TDL_ASW_CLASS_POSSIBLE_SUBMARINE_THREE,
;; 	TDL_ASW_CLASS_POSSIBLE_SUBMARINE_FOUR,
;; 	TDL_ASW_CLASS_PROBABLE_SUBMARINE,
;; 	TDL_ASW_CLASS_CERTAIN_SUBMARINE,
;; 	TDL_ASW_CLASS_NON_SUBMARINE,
;; 	TDL_ASW_CLASS_ACOUSTIC_POSITIVE,
;; 	TDL_ASW_CLASS_TORPEDO
;; };

;; enum _ENUM_TDL_POINTER_KIND
;; {
;; 	TDL_POINTER_KIND_POINTER = 0, 
;; 	TDL_POINTER_KIND_TRAINING_TRACK 
;; };

;; enum _ENUM_TDL_LINK11_OPERATOR_POSITION
;; {
;;     TDL_LINK11_OPERATOR_POSITION_WEAPON_COORDINATOR          ,
;;     TDL_LINK11_OPERATOR_POSITION_TRACKING_OPERATOR           ,
;;     TDL_LINK11_OPERATOR_POSITION_EW_SUPERVISOR               ,
;;     TDL_LINK11_OPERATOR_POSITION_SPECIAL_PROCESSING_OPERATOR 
;; };

;; enum _ENUM_TDL_LINK11_ASW_CLASS_AMPLICATION{                   
;; 	TDL_LINK11_ASW_CLASS_AMPLICATION_NO_STATEMENT             ,  
;; 	TDL_LINK11_ASW_CLASS_AMPLICATION_SUB_PROPUSION_UNKNOWN    ,                 
;; 	TDL_LINK11_ASW_CLASS_AMPLICATION_SUB_PROPUSION_KNUCLEAR   ,                 
;; 	TDL_LINK11_ASW_CLASS_AMPLICATION_SUB_PROPUSION_DISEL      ,                 
;; 	TDL_LINK11_ASW_CLASS_AMPLICATION_TYPE_I_NUCLEAR           ,                
;; 	TDL_LINK11_ASW_CLASS_AMPLICATION_TYPE_II_NUCLEAR          ,                
;; 	TDL_LINK11_ASW_CLASS_AMPLICATION_TYPE_III_NUCLEAR         ,                
;; 	TDL_LINK11_ASW_CLASS_AMPLICATION_TYPE_IV_NUCLEAR          ,                
;; 	TDL_LINK11_ASW_CLASS_AMPLICATION_TYPE_V_NUCLEAR           ,                
;; 	TDL_LINK11_ASW_CLASS_AMPLICATION_TYPE_I_DIESEL            ,                
;; 	TDL_LINK11_ASW_CLASS_AMPLICATION_TYPE_II_DIESEL           ,                
;; 	TDL_LINK11_ASW_CLASS_AMPLICATION_TYPE_III_DIESEL          ,                
;; 	TDL_LINK11_ASW_CLASS_AMPLICATION_SURFACE                  ,  
;; 	TDL_LINK11_ASW_CLASS_AMPLICATION_TORPEDO                  ,  
;; 	TDL_LINK11_ASW_CLASS_AMPLICATION_MASS                     ,  ;; 131017 dha.jung DECOY -> MASS 변경
;; 	TDL_LINK11_ASW_CLASS_AMPLICATION_FISH_MARINE              ,  
;; 	TDL_LINK11_ASW_CLASS_AMPLICATION_SURFACE_MILITARY         ,  
;; 	TDL_LINK11_ASW_CLASS_AMPLICATION_SURFACE_NON_MILITARY        
;; } ; 

;; enum _ENUM_TDL_LINK11_EW_MISSION_AIR {                                   
;; 	TDL_LINK11_EW_MISSION_AIR_NO_STATEMENT_AIR_MISSION,
;; 	TDL_LINK11_EW_MISSION_AIR_CAP,
;; 	TDL_LINK11_EW_MISSION_AIR_CAS,
;; 	TDL_LINK11_EW_MISSION_AIR_INTERDICTION,
;; 	TDL_LINK11_EW_MISSION_AIR_RECCE,
;; 	TDL_LINK11_EW_MISSION_AIR_AIRLIFT,
;; 	TDL_LINK11_EW_MISSION_AIR_OCEAN_PATROL,
;; 	TDL_LINK11_EW_MISSION_AIR_ACP,
;; 	TDL_LINK11_EW_MISSION_AIR_AEW_AIR_MISSION,
;; 	TDL_LINK11_EW_MISSION_AIR_ECM,
;; 	TDL_LINK11_EW_MISSION_AIR_ESM,
;; 	TDL_LINK11_EW_MISSION_AIR_REFUEL,
;; 	TDL_LINK11_EW_MISSION_AIR_AIRBORNE,
;; 	TDL_LINK11_EW_MISSION_AIR_ASSAULT,
;; 	TDL_LINK11_EW_MISSION_AIR_AIR_ASSAULT,
;; 	TDL_LINK11_EW_MISSION_AIR_ASW_AIR_MISSION,
;; 	TDL_LINK11_EW_MISSION_AIR_SAR,
;; 	TDL_LINK11_EW_MISSION_AIR_MEDEVAC,
;; 	TDL_LINK11_EW_MISSION_AIR_MINE_LAYING,
;; 	TDL_LINK11_EW_MISSION_AIR_MINE_SWEEPING,
;; 	TDL_LINK11_EW_MISSION_AIR_ANTI_SHIP,
;; 	TDL_LINK11_EW_MISSION_AIR_AIR_TDB_51                                =51,
;; 	TDL_LINK11_EW_MISSION_AIR_AIR_TDB_52,
;; 	TDL_LINK11_EW_MISSION_AIR_AIR_TDB_53,
;; 	TDL_LINK11_EW_MISSION_AIR_AIR_TDB_54,
;; 	TDL_LINK11_EW_MISSION_AIR_AIR_TDB_55,
;; 	TDL_LINK11_EW_MISSION_AIR_AIR_TDB_56,
;; 	TDL_LINK11_EW_MISSION_AIR_AIR_TDB_57,
;; 	TDL_LINK11_EW_MISSION_AIR_AIR_TDB_58,
;; 	TDL_LINK11_EW_MISSION_AIR_AIR_TDB_59,
;; 	TDL_LINK11_EW_MISSION_AIR_AIR_TDB_60,
;; 	TDL_LINK11_EW_MISSION_AIR_AIR_TDB_61,
;; 	TDL_LINK11_EW_MISSION_AIR_AIR_TDB_62,
;; 	TDL_LINK11_EW_MISSION_AIR_RESET_TO_NO_STATEMENT
;; } ; 

;; enum _ENUM_TDL_LINK11_EW_MISSION_SURFACE {
;; 	TDL_LINK11_EW_MISSION_SURFACE_NO_STATEMENT,
;; 	TDL_LINK11_EW_MISSION_SURFACE_ANTI_AIR,
;; 	TDL_LINK11_EW_MISSION_SURFACE_ANTI_WARFARE,
;; 	TDL_LINK11_EW_MISSION_SURFACE_ANTI_SURFACE,
;; 	TDL_LINK11_EW_MISSION_SURFACE_ASW,
;; 	TDL_LINK11_EW_MISSION_SURFACE_STRIKE,
;; 	TDL_LINK11_EW_MISSION_SURFACE_AMPHIBIOUS,
;; 	TDL_LINK11_EW_MISSION_SURFACE_MINE,
;; 	TDL_LINK11_EW_MISSION_SURFACE_ELECTRONIC,
;; 	TDL_LINK11_EW_MISSION_SURFACE_NON_COMBATANT,
;; 	TDL_LINK11_EW_MISSION_SURFACE_SPECIAL,
;; 	TDL_LINK11_EW_MISSION_SURFACE_SURFACE_TDB_51                        =51,
;; 	TDL_LINK11_EW_MISSION_SURFACE_SURFACE_TDB_52,
;; 	TDL_LINK11_EW_MISSION_SURFACE_SURFACE_TDB_53,
;; 	TDL_LINK11_EW_MISSION_SURFACE_SURFACE_TDB_54,
;; 	TDL_LINK11_EW_MISSION_SURFACE_SURFACE_TDB_55,
;; 	TDL_LINK11_EW_MISSION_SURFACE_SURFACE_TDB_56,
;; 	TDL_LINK11_EW_MISSION_SURFACE_SURFACE_TDB_57,
;; 	TDL_LINK11_EW_MISSION_SURFACE_SURFACE_TDB_58,
;; 	TDL_LINK11_EW_MISSION_SURFACE_SURFACE_TDB_59,
;; 	TDL_LINK11_EW_MISSION_SURFACE_SURFACE_TDB_60,
;; 	TDL_LINK11_EW_MISSION_SURFACE_SURFACE_TDB_61,
;; 	TDL_LINK11_EW_MISSION_SURFACE_SURFACE_TDB_62,
;; 	TDL_LINK11_EW_MISSION_SURFACE_RESET_TO_NO_STATEMENT
;; } ; 

;; enum _ENUM_TDL_LINK11_EW_MISSION_SUBSURFACE {
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_NO_STATEMENT,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_STRIKE,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_ASW,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_ANTI_SURFACE,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_AMPHIBIOUS,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_MINE,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_SPECIAL,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_ELECTRONIC,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_NON_COMBATANT,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_SUBSURFACE_TDB_51                  =51,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_SUBSURFACE_TDB_52,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_SUBSURFACE_TDB_53,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_SUBSURFACE_TDB_54,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_SUBSURFACE_TDB_55,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_SUBSURFACE_TDB_56,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_SUBSURFACE_TDB_57,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_SUBSURFACE_TDB_58,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_SUBSURFACE_TDB_59,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_SUBSURFACE_TDB_60,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_SUBSURFACE_TDB_61,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_SUBSURFACE_TDB_62,
;; 	TDL_LINK11_EW_MISSION_SUBSURFACE_RESET_TO_NO_STATEMENT                 
;; } ;                                                               

;; enum _ENUM_TDL_LINK11_EW_MISSION_LAND {
;; 	TDL_LINK11_EW_MISSION_LAND_NO_STATEMENT,
;; 	TDL_LINK11_EW_MISSION_LAND_RESET_TO_NO_STATEMENT                    =63
;; } ;  


;; enum _ENUM_TDL_LINK11_EW_MISSION_MISSILE {
;; 	TDL_LINK11_EW_MISSION_MISSILE_NO_STATEMENT,
;; 	TDL_LINK11_EW_MISSION_MISSILE_ANTI_AIR,
;; 	TDL_LINK11_EW_MISSION_MISSILE_ANTI_SURFACE,
;; 	TDL_LINK11_EW_MISSION_MISSILE_ASW,
;; 	TDL_LINK11_EW_MISSION_MISSILE_STRIKE,
;; 	TDL_LINK11_EW_MISSION_MISSILE_NON_COMBATANT,
;; 	TDL_LINK11_EW_MISSION_MISSILE_MISSILE_TDB_51                        =51,
;; 	TDL_LINK11_EW_MISSION_MISSILE_MISSILE_TDB_52,
;; 	TDL_LINK11_EW_MISSION_MISSILE_MISSILE_TDB_53,
;; 	TDL_LINK11_EW_MISSION_MISSILE_MISSILE_TDB_54,
;; 	TDL_LINK11_EW_MISSION_MISSILE_MISSILE_TDB_55,
;; 	TDL_LINK11_EW_MISSION_MISSILE_MISSILE_TDB_56,
;; 	TDL_LINK11_EW_MISSION_MISSILE_MISSILE_TDB_57,
;; 	TDL_LINK11_EW_MISSION_MISSILE_MISSILE_TDB_58,
;; 	TDL_LINK11_EW_MISSION_MISSILE_MISSILE_TDB_59,
;; 	TDL_LINK11_EW_MISSION_MISSILE_MISSILE_TDB_60,
;; 	TDL_LINK11_EW_MISSION_MISSILE_MISSILE_TDB_61,
;; 	TDL_LINK11_EW_MISSION_MISSILE_MISSILE_TDB_62,
;; 	TDL_LINK11_EW_MISSION_MISSILE_RESET_TO_NO_STATEMENT
;; } ; 

;; enum _ENUM_TDL_LINK11_EW_GENERAL_AIR {
;; 	TDL_LINK11_EW_GENERAL_AIR_NO_STATEMENT,
;; 	TDL_LINK11_EW_GENERAL_AIR_INTERCEPTOR,
;; 	TDL_LINK11_EW_GENERAL_AIR_BOMBER_ATTACK,
;; 	TDL_LINK11_EW_GENERAL_AIR_BOMBER,
;; 	TDL_LINK11_EW_GENERAL_AIR_HELO,
;; 	TDL_LINK11_EW_GENERAL_AIR_ATTACK_HELO,
;; 	TDL_LINK11_EW_GENERAL_AIR_DRONE,
;; 	TDL_LINK11_EW_GENERAL_AIR_SUPPORT,
;; 	TDL_LINK11_EW_GENERAL_AIR_CIVIL,
;; 	TDL_LINK11_EW_GENERAL_AIR_PATROL,
;; 	TDL_LINK11_EW_GENERAL_AIR_AEW,
;; 	TDL_LINK11_EW_GENERAL_AIR_UNDEF_11_TYPE,
;; 	TDL_LINK11_EW_GENERAL_AIR_UNDEF_12_TYPE,
;; 	TDL_LINK11_EW_GENERAL_AIR_UNDEF_13_TYPE,
;; 	TDL_LINK11_EW_GENERAL_AIR_OTHER                                     =14,
;; 	TDL_LINK11_EW_GENERAL_AIR_RESET_TO_NO_STATEMENT
;; } ; 


;; enum _ENUM_TDL_LINK11_EW_GENERAL_SURFACE {
;; 	TDL_LINK11_EW_GENERAL_SURFACE_NO_STATEMENT,
;; 	TDL_LINK11_EW_GENERAL_SURFACE_AIRCRAFT_SEC_SURF_AMPL_CARRIER,
;; 	TDL_LINK11_EW_GENERAL_SURFACE_SEC_SURF_AMPL_DESTROYER,
;; 	TDL_LINK11_EW_GENERAL_SURFACE_CRUISER,
;; 	TDL_LINK11_EW_GENERAL_SURFACE_FRIGATE,
;; 	TDL_LINK11_EW_GENERAL_SURFACE_PATROL_SURFACE_GENERAL,
;; 	TDL_LINK11_EW_GENERAL_SURFACE_MINE_WARFARE,
;; 	TDL_LINK11_EW_GENERAL_SURFACE_PRI_SURF_AMPL_AMPHIBIOUS,
;; 	TDL_LINK11_EW_GENERAL_SURFACE_SUPPORT,
;; 	TDL_LINK11_EW_GENERAL_SURFACE_TANKER,
;; 	TDL_LINK11_EW_GENERAL_SURFACE_SEC_SURF_AMPL_FISHING_BOAT,
;; 	TDL_LINK11_EW_GENERAL_SURFACE_SEC_SURF_AMPL_MERCHANT,
;; 	TDL_LINK11_EW_GENERAL_SURFACE_UNDEF_12_TYPE, 
;; 	TDL_LINK11_EW_GENERAL_SURFACE_UNDEF_13_TYPE, 
;; 	TDL_LINK11_EW_GENERAL_SURFACE_OTHER                                 =14,
;; 	TDL_LINK11_EW_GENERAL_SURFACE_RESET_TO_NO_STATEMENT
;; } ; 

;; enum _ENUM_TDL_LINK11_EW_GENERAL_SUBSURFACE {
;; 	TDL_LINK11_EW_GENERAL_SUBSURFACE_NO_STATEMENT,
;; 	TDL_LINK11_EW_GENERAL_SUBSURFACE_ATTACK,
;; 	TDL_LINK11_EW_GENERAL_SUBSURFACE_CRUISE_MISSILE_LAUNCHER,
;; 	TDL_LINK11_EW_GENERAL_SUBSURFACE_BALLISTIC_MISSILE_LAUNCHER,   ;;  was 'undef_4'
;; 	TDL_LINK11_EW_GENERAL_SUBSURFACE_NUCLEAR_SUB,                  ;;  was 'undef_5'
;; 	TDL_LINK11_EW_GENERAL_SUBSURFACE_DIESEL_SUB,                   ;;  was 'undef_6'
;; 	TDL_LINK11_EW_GENERAL_SUBSURFACE_OTHER_KOREA_SUB,
;; 	TDL_LINK11_EW_GENERAL_SUBSURFACE_OTHER                            =14,
;; 	TDL_LINK11_EW_GENERAL_SUBSURFACE_RESET_TO_NO_STATEMENT
;; } ; 

;; enum _ENUM_TDL_LINK11_EW_GENERAL_LAND {
;; 	TDL_LINK11_EW_GENERAL_LAND_NO_STATEMENT,
;; 	TDL_LINK11_EW_GENERAL_LAND_SAM_SITE,
;; 	TDL_LINK11_EW_GENERAL_LAND_AAA_SITE,
;; 	TDL_LINK11_EW_GENERAL_LAND_GCI_SITE,
;; 	TDL_LINK11_EW_GENERAL_LAND_ECM_SITE,
;; 	TDL_LINK11_EW_GENERAL_LAND_AIR_BASE,
;; 	TDL_LINK11_EW_GENERAL_LAND_TRAP,
;; 	TDL_LINK11_EW_GENERAL_LAND_DUMMY,
;; 	TDL_LINK11_EW_GENERAL_LAND_COMMAND_CENTER,
;; 	TDL_LINK11_EW_GENERAL_LAND_SSM_SITE,
;; 	TDL_LINK11_EW_GENERAL_LAND_POINT_TARGET,
;; 	TDL_LINK11_EW_GENERAL_LAND_FIELD_ARTILLERY_SITE,
;; 	TDL_LINK11_EW_GENERAL_LAND_TROOP_CONCENTRATION,
;; 	TDL_LINK11_EW_GENERAL_LAND_CONVOY,
;; 	TDL_LINK11_EW_GENERAL_LAND_OTHER,
;; 	TDL_LINK11_EW_GENERAL_LAND_RESET_TO_NO_STATEMENT
;; } ; 

;; enum _ENUM_TDL_LINK11_EW_GENERAL_MISSILE {
;; 	TDL_LINK11_EW_GENERAL_MISSILE_NO_STATEMENT,
;; 	TDL_LINK11_EW_GENERAL_MISSILE_ANTI_AIR,
;; 	TDL_LINK11_EW_GENERAL_MISSILE_ANTI_SURF,
;; 	TDL_LINK11_EW_GENERAL_MISSILE_ANTI_SUB,
;; 	TDL_LINK11_EW_GENERAL_MISSILE_OTHER                                 =14,
;; 	TDL_LINK11_EW_GENERAL_MISSILE_RESET_TO_NO_STATEMENT
;; } ; 


;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_INTERCEPTOR {
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_NO_STATEMENT                     = 0   ,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_1                        = 100 ,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_2,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_3,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_4,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_5,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_6,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_7,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_8,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_9,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_10,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_11,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_12,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_13,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_14,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_15,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_16,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_17,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_18,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_19,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_20,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_21,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_22,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_23,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_24,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_25,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_26,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_27,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_28,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_29,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_30,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_INT_FTR_31,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_MIG_15_17,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_MIG_19,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_MIG_21,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_MIG_23,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_MIG_25,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_SU_7,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_SU_15,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_YAK_28P,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_TU_128,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_F4,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_F5,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_F14,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_F15,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_F16,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_F104,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_MIRAGE_III,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_MIRAGE_IV,
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_OTHER                            = 62 ,                   
;; 	TDL_LINK11_EW_SPECIFIC_INTERCEPTOR_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK {
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_NO_STATEMENT                   = 0 ,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_1                       = 200 ,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_2,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_3,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_4,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_5,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_6,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_7,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_8,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_9,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_10,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_11,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_12,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_13,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_14,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_15,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_16,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_17,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_18,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_19,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_20,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_21,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_22,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_23,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_24,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_25,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_26,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_27,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_28,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_29,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_30,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_FTR_BA_31,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_MIG_15_17,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_MIG_19,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_MBCA,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_MIG_23,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_KFIR,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_SU_7,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_SU_17,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_SU_19,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_A7,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_F4,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_F5,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_A4,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_TA_28,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_F16,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_F104,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_A1,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_A37,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_OTHER                          = 62,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_ATTACK_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_BOMBER {
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_NO_STATEMENT                          = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_1                                 = 300 , 
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_2,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_3,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_4,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_5,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_6,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_7,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_8,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_9,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_10,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_11,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_12,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_13,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_14,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_15,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_16,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_17,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_18,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_19,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_20,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_21,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_22,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_23,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_24,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_25,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_26,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_27,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_28,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_29,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_30,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BMB_31,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_TU_95,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_M_4,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_TU_16,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_TU_22,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_IL_28,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_YAK_28,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_BACK_FIRE,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_B_52,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_FB_111,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_OTHER                                 =62,
;; 	TDL_LINK11_EW_SPECIFIC_BOMBER_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_HELO {
;; 	TDL_LINK11_EW_SPECIFIC_HELO_NO_STATEMENT                            = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_1                                    = 400 , 
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_2,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_3,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_4,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_5,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_6,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_7,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_8,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_9,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_10,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_11,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_12,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_13,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_14,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_15,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_16,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_17,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_18,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_19,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_20,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_21,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_22,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_23,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_24,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_25,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_26,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_27,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_28,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_29,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_30,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HL_31,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_MH_4,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_MI_6,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_MI_10,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HH_53,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_HH_3,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_UH_1,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_OH_58,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_OTHER                                   =62,
;; 	TDL_LINK11_EW_SPECIFIC_HELO_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_ATTACK_HELO {
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_NO_STATEMENT                     = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_1                             = 500 , 
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_2,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_3,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_4,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_5,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_6,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_7,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_8,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_9,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_10,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_11,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_12,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_13,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_14,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_15,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_16,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_17,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_18,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_19,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_20,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_21,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_22,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_23,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_24,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_25,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_26,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_27,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_28,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_29,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_30,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_31,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_KA_25,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_MI_24,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_AH_1_1,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_OTHER                            =62,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_HELO_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_DRONE {
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_NO_STATEMENT                           = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_1                                  = 600 ,  
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_2,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_3,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_4,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_5,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_6,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_7,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_8,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_9,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_10,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_11,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_12,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_13,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_14,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_15,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_16,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_17,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_18,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_19,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_20,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_21,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_22,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_23,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_24,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_25,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_26,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_27,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_28,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_29,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_30,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_D_R_31,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_OTHER                                  =62,
;; 	TDL_LINK11_EW_SPECIFIC_DRONE_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT {
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_NO_STATEMENT                     = 0 ,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_1                            = 700 , 
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_2,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_3,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_4,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_5,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_6,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_7,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_8,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_9,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_10,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_11,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_12,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_13,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_14,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_15,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_16,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_17,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_18,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_19,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_20,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_21,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_22,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_23,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_24,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_25,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_26,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_27,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_28,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_29,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_30,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_SUP_31,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_TU_95,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_AN_12,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_TU_16,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_IL_18,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_BE_12,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_B_707,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_BE_6,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_YAK_27,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_TU_28,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_MOSS,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_C_7,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_C_9,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_C_119,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_C_123,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_C_130,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_IL_38,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_TRAINER,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_OTHER                            =62,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_SUPPORT_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_CIVIL {
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_NO_STATEMENT                           = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_1                                  = 800 , 
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_2,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_3,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_4,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_5,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_6,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_7,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_8,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_9,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_10,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_11,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_12,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_13,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_14,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_15,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_16,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_17,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_18,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_19,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_20,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_21,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_22,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_23,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_24,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_25,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_26,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_27,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_28,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_29,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_30,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CIV_31,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_TU_40,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_TU_104,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_TU_144,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_H_1B,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_TRIDENT,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_B_707,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_B_727,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_B_737,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_B_747,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_DC_8,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_DC_10,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_L_1011,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_CONCORDE,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_OTHER                                  =62,
;; 	TDL_LINK11_EW_SPECIFIC_CIVIL_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_AIR_PATROL {
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_NO_STATEMENT                      = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_1                            = 900 , 
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_2,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_3,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_4,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_5,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_6,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_7,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_8,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_9,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_10,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_11,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_12,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_13,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_14,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_15,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_16,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_17,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_18,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_19,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_20,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_21,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_22,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_23,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_24,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_25,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_26,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_27,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_28,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_29,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_30,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_PTRL_31,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_OTHER                             =62,
;; 	TDL_LINK11_EW_SPECIFIC_AIR_PATROL_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_AEW {
;; 	TDL_LINK11_EW_SPECIFIC_AEW_NO_STATEMENT                             = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_1                                    = 1000 , 
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_2,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_3,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_4,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_5,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_6,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_7,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_8,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_9,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_10,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_11,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_12,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_13,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_14,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_15,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_16,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_17,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_18,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_19,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_20,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_21,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_22,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_23,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_24,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_25,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_26,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_27,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_28,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_29,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_30,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_AEW_31,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_OTHER                                    =62,
;; 	TDL_LINK11_EW_SPECIFIC_AEW_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_OTHER {
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_NO_STATEMENT                           = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_1                                  = 1100 , 
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_2,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_3,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_4,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_5,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_6,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_7,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_8,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_9,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_10,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_11,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_12,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_13,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_14,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_15,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_16,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_17,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_18,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_19,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_20,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_21,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_22,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_23,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_24,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_25,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_26,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_27,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_28,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_29,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_30,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_31,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_OTH_OTHER                              =62,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER {
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_NO_STATEMENT  = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_1         = 1200 , 
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_2,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_3,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_4,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_5,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_6,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_7,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_8,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_9,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_10,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_11,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_12,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_13,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_14,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_15,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_16,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_17,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_18,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_19,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_20,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_21,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_22,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_23,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_24,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_25,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_26,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_27,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_28,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_29,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_30,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_CVX_31,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_OTHER         =62,
;; 	TDL_LINK11_EW_SPECIFIC_AIRCRAFT_SEC_SURF_AMPL_CARRIER_RESET
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER {
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_NO_STATEMENT         = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_1                = 1300 , 
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_2,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_3,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_4,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_5,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_6,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_7,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_8,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_9,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_10,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_11,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_12,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_13,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_14,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_15,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_16,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_17,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_18,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_19,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_20,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_21,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_22,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_23,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_24,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_25,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_26,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_27,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_28,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_29,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_30,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_DDX_31,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_OTHER                =62,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_DESTROYER_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_CRUISER {
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_NO_STATEMENT                         = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_1                                = 1400 , 
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_2,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_3,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_4,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_5,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_6,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_7,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_8,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_9,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_10,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_11,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_12,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_13,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_14,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_15,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_16,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_17,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_18,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_19,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_20,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_21,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_22,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_23,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_24,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_25,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_26,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_27,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_28,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_29,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_30,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_CGX_31,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_OTHER                                =62,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISER_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_FRIGATE {
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_NO_STATEMENT                         = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_1                                = 1500 , 
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_2,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_3,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_4,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_5,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_6,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_7,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_8,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_9,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_10,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_11,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_12,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_13,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_14,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_15,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_16,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_17,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_18,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_19,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_20,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_21,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_22,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_23,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_24,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_25,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_26,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_27,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_28,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_29,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_30,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_FFX_31,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_OTHER                                =62,
;; 	TDL_LINK11_EW_SPECIFIC_FRIGATE_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL {
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_NO_STATEMENT                  = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_1                         = 1600 , 
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_2,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_3,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_4,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_5,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_6,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_7,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_8,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_9,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_10,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_11,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_12,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_13,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_14,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_15,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_16,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_17,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_18,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_19,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_20,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_21,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_22,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_23,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_24,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_25,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_26,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_27,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_28,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_29,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_30,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_PPX_31,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_OTHER                         =62,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_PATROL_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_MINE_WARFARE {
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_NO_STATEMENT                    = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_1                           = 1700 , 
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_2,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_3,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_4,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_5,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_6,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_7,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_8,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_9,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_10,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_11,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_12,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_13,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_14,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_15,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_16,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_17,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_18,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_19,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_20,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_21,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_22,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_23,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_24,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_25,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_26,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_27,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_28,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_29,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_30,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_MWX_31,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_OTHER_OTH_MINE_                 =62,
;; 	TDL_LINK11_EW_SPECIFIC_MINE_WARFARE_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS {
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_NO_STATEMENT        = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_1               = 1800 , 
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_2,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_3,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_4,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_5,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_6,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_7,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_8,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_9,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_10,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_11,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_12,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_13,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_14,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_15,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_16,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_17,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_18,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_19,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_20,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_21,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_22,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_23,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_24,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_25,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_26,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_27,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_28,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_29,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_30,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_AMX_31,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_OTHER               =62,
;; 	TDL_LINK11_EW_SPECIFIC_PRI_SURF_AMPL_AMPHIBIOUS_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT {
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_NO_STATEMENT                 = 0 ,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_1                        = 1900 , 
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_2,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_3,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_4,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_5,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_6,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_7,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_8,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_9,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_10,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_11,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_12,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_13,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_14,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_15,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_16,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_17,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_18,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_19,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_20,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_21,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_22,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_23,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_24,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_25,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_26,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_27,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_28,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_29,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_30,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_AUX_31,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_OTHER_OTH_SURFA              =62,
;; 	TDL_LINK11_EW_SPECIFIC_SURFACE_SUPPORT_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_TANKER {
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_NO_STATEMENT                          = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_1                                 = 2000 , 
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_2,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_3,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_4,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_5,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_6,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_7,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_8,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_9,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_10,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_11,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_12,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_13,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_14,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_15,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_16,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_17,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_18,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_19,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_20,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_21,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_22,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_23,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_24,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_25,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_26,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_27,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_28,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_29,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_30,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_AOX_31,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_OTHER_TANKER_SPECIFIC                 =62,
;; 	TDL_LINK11_EW_SPECIFIC_TANKER_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT {
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_NO_STATEMENT      = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_1             = 2100 , 
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_2,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_3,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_4,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_5,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_6,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_7,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_8,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_9,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_10,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_11,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_12,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_13,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_14,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_15,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_16,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_17,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_18,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_19,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_20,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_21,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_22,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_23,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_24,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_25,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_26,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_27,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_28,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_29,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_30,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_FSH_31,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_OTHER             =62,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_FISHING_BOAT_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT {
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_NO_STATEMENT          = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_1                 = 2200 , 
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_2,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_3,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_4,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_5,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_6,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_7,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_8,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_9,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_10,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_11,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_12,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_13,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_14,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_15,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_16,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_17,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_18,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_19,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_20,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_21,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_22,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_23,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_24,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_25,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_26,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_27,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_28,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_29,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_30,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_MER_31,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_OTHER                 =62,
;; 	TDL_LINK11_EW_SPECIFIC_SEC_SURF_AMPL_MERCHANT_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_ATTACK {
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_NO_STATEMENT                          = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_1                                 = 2300 , 
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_2,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_3,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_4,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_5,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_6,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_7,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_8,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_9,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_10,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_11,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_12,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_13,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_14,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_15,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_16,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_17,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_18,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_19,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_20,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_21,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_22,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_23,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_24,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_25,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_26,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_27,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_28,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_29,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_30,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_SSX_31,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_OTHER                                 =62,
;; 	TDL_LINK11_EW_SPECIFIC_ATTACK_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_CRUISE_MSL {
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_NO_STATEMENT                      = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_1                            = 2400 , 
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_2,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_3,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_4,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_5,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_6,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_7,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_8,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_9,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_10,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_11,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_12,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_13,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_14,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_15,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_16,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_17,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_18,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_19,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_20,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_21,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_22,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_23,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_24,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_25,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_26,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_27,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_28,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_29,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_30,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_SSGX_31,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_OTHER                             =62,
;; 	TDL_LINK11_EW_SPECIFIC_CRUISE_MSL_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL {
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_NO_STATEMENT                   = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_1                         = 2500 , 
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_2,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_3,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_4,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_5,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_6,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_7,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_8,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_9,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_10,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_11,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_12,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_13,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_14,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_15,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_16,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_17,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_18,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_19,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_20,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_21,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_22,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_23,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_24,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_25,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_26,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_27,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_28,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_29,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_30,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_SSBX_31,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_OTHER                          =62,
;; 	TDL_LINK11_EW_SPECIFIC_BALLISTIC_MSL_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_NUCLEAR_SUB {
;; 	TDL_LINK11_EW_SPECIFIC_NUCLEAR_SUB_NO_STATEMENT                     = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_NUCLEAR_SUB_NUCLEAR_SUBMARINE                = 2600 , 
;; 	TDL_LINK11_EW_SPECIFIC_NUCLEAR_SUB_NUCLEAR_SUBMARINE_1,
;; 	TDL_LINK11_EW_SPECIFIC_NUCLEAR_SUB_NUCLEAR_SUBMARINE_2,
;; 	TDL_LINK11_EW_SPECIFIC_NUCLEAR_SUB_NUCLEAR_SUBMARINE_3,
;; 	TDL_LINK11_EW_SPECIFIC_NUCLEAR_SUB_NUCLEAR_SUBMARINE_4,
;; 	TDL_LINK11_EW_SPECIFIC_NUCLEAR_SUB_NUCLEAR_SUBMARINE_5,
;; 	TDL_LINK11_EW_SPECIFIC_NUCLEAR_SUB_NUCLEAR_SUBMARINE_6,
;; 	TDL_LINK11_EW_SPECIFIC_NUCLEAR_SUB_NUCLEAR_SUBMARINE_7,
;; 	TDL_LINK11_EW_SPECIFIC_NUCLEAR_SUB_OTHER                            =62,
;; 	TDL_LINK11_EW_SPECIFIC_NUCLEAR_SUB_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_DIESEL_SUB {
;; 	TDL_LINK11_EW_SPECIFIC_DIESEL_SUB_NO_STATEMENT                      = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_DIESEL_SUB_DIESEL_SUBMARINE                  = 2700 , 
;; 	TDL_LINK11_EW_SPECIFIC_DIESEL_SUB_DIESEL_SUBMARINE_1,
;; 	TDL_LINK11_EW_SPECIFIC_DIESEL_SUB_DIESEL_SUBMARINE_2,
;; 	TDL_LINK11_EW_SPECIFIC_DIESEL_SUB_DIESEL_SUBMARINE_3,
;; 	TDL_LINK11_EW_SPECIFIC_DIESEL_SUB_OTHER                             =62,
;; 	TDL_LINK11_EW_SPECIFIC_DIESEL_SUB_RESET_TO_NO_STATEMENT
;; };

;; enum _ENUM_TDL_LINK11_EW_SPECIFIC_OTHER_KOREA_SUB {
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_KOREA_SUB_NO_STATEMENT                 = 0 , 
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_KOREA_SUB_PROPULSION_UNKNOWN_SUBMARINE = 2900 ,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_KOREA_SUB_SEC_SURF_AMPL_SURFACED_SUBMARINE,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_KOREA_SUB_TORPEDO,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_KOREA_SUB_MASS,						;; 131017 dha.jung DECOY -> MASS 변경
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_KOREA_SUB_MINE_OTHER_KOREA_SUB_SPECIFIC,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_KOREA_SUB_FISH_GROUP,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_KOREA_SUB_KNUCKLE,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_KOREA_SUB_WRECK,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_KOREA                                  =62,
;; 	TDL_LINK11_EW_SPECIFIC_OTHER_KOREA_SUB_RESET_TO_NO_STATEMENT
;; };
 

;; enum _ENUM_TDL_ISDL_OPERATOR_POSITION
;; {
;;     TDL_ISDL_OPERATOR_POSITION_INTEGRATED_SURVEILLANCE = 0x0001,
;;     TDL_ISDL_OPERATOR_POSITION_AREA_SURVEILLANCE       = 0X0002,
;;     TDL_ISDL_OPERATOR_POSITION_AIR_SURVEILLANCE        = 0X0004,
;;     TDL_ISDL_OPERATOR_POSITION_SYSTEM_MON_LINK_CTRL    = 0X0008,
;;     TDL_ISDL_OPERATOR_POSITION_DATA_INPUT              = 0X0010
;; };

;; enum _ENUM_TDL_ISDL_ASW_POINT {                            ;;!!!ticket:1643 20110201 김동일 | ASW POINT 표적 종류           
;; 	TDL_ISDL_ASW_POINT_NO_STATEMENT                        , ;;!!!ticket:1643 20110201 김동일 | ASW POINT 표적 종류 
;; 	TDL_ISDL_ASW_POINT_SINKER                              , ;;!!!ticket:1643 20110201 김동일 | ASW POINT 표적 종류 
;; 	TDL_ISDL_ASW_POINT_BRIEF_CONTACT                       , ;;!!!ticket:1643 20110201 김동일 | ASW POINT 표적 종류 
;; 	TDL_ISDL_ASW_POINT_ASW_SEARCH_CENTRE                   , ;;!!!ticket:1643 20110201 김동일 | ASW POINT 표적 종류 
;; 	TDL_ISDL_ASW_POINT_SONOBUOY_PATTERN_REFERENCE_POINT    , ;;!!!ticket:1643 20110201 김동일 | ASW POINT 표적 종류 
;; 	TDL_ISDL_ASW_POINT_ASW_STATION                         , ;;!!!ticket:1643 20110201 김동일 | ASW POINT 표적 종류 
;; 	TDL_ISDL_ASW_POINT_CHARTED_WRECK                       , ;;!!!ticket:1643 20110201 김동일 | ASW POINT 표적 종류 
;; 	TDL_ISDL_ASW_POINT_ASW_SUBSURFACE_STATION              , ;;!!!ticket:1643 20110201 김동일 | ASW POINT 표적 종류 
;; 	TDL_ISDL_ASW_POINT_SONOBUOY_REFERENCE_CENTER           , ;;!!!ticket:1643 20110201 김동일 | ASW POINT 표적 종류 
;; 	TDL_ISDL_ASW_POINT_BOTTOMED_NON_SUBMARINE              , ;;!!!ticket:1643 20110201 김동일 | ASW POINT 표적 종류 
;; 	TDL_ISDL_ASW_POINT_FIX                                 , ;;!!!ticket:1643 20110201 김동일 | ASW POINT 표적 종류 
;; 	TDL_ISDL_ASW_POINT_ESTIMATED_POSITION                  , ;;!!!ticket:1643 20110201 김동일 | ASW POINT 표적 종류 
;; 	TDL_ISDL_ASW_POINT_NOTACK_AREA                         , ;;!!!ticket:1643 20110201 김동일 | ASW POINT 표적 종류 
;; 	TDL_ISDL_ASW_POINT_FRIENDLY_WEAPON_DANGER_AREA           ;;!!!ticket:1643 20110201 김동일 | ASW POINT 표적 종류 
;; } ;                                                        ;;!!!ticket:1643 20110201 김동일 | ASW POINT 표적 종류 


;; enum _ENUM_LINK11_INFO_KIND
;; {
;; 	LINK11_INFO_KIND_ALL = 1,
;; 	LINK11_INFO_KIND_TRACK_ADD_INFO,
;; 	LINK11_INFO_KIND_ASSOCIATION,			;;표적연관목록
;; 	LINK11_INFO_KIND_LOOPTEST,				;;루프테스트 정보
;; 	LINK11_INFO_KIND_OWN_WEAPON_TX_STATUS,	;;자함 무장상태 정보
;; 	LINK11_INFO_KIND_ENG_STATUS_TX_LIST,	;;교전상태 송신목록
;; 	LINK11_INFO_KIND_ENG_STATUS_RX_LIST,	;;교전상태 수신목록
;; 	LINK11_INFO_KIND_ENG_STATUS_ALL_LIST,	;;교전상태 송/수신목록
;; 	LINK11_INFO_KIND_WEAPON_STATUS_TX_LIST,	;;무장상태 송신목록
;; 	LINK11_INFO_KIND_WEAPON_STATUS_RX_LIST,	;;무장상태 수신목록
;; 	LINK11_INFO_KIND_WEAPON_STATUS_ALL_LIST,;;무장상태 송/수신목록
;; 	LINK11_INFO_KIND_MISSION_STATUS_TX_LIST,    ;;임무상태 송신							;; 091028 김동일 선임 추가
;; 	LINK11_INFO_KIND_MISSION_STATUS_RX_LIST,    ;;임무상태 수신목록						;; 091028 김동일 선임 추가
;; 	LINK11_INFO_KIND_MISSION_STATUS_ALL_LIST,   ;;임무상태 송/수신목록					;; 091028 김동일 선임 추가
;; 	LINK11_INFO_KIND_CMD_TX_LIST,			;;송신명령 목록
;; 	LINK11_INFO_KIND_CMD_RX_LIST,			;;수신명령 목록
;; 	LINK11_INFO_KIND_CMD_ALL_LIST,			;;송/수신명령 목록
;; 	LINK11_INFO_KIND_CMD_LINE_LIST,          ;;교전라인 정보								;; 091028 김동일 선임 추가
;; 	LINK11_INFO_KIND_MAX_RX_COUNT,             ;;동시연동시 최대 수신표적 설정			;; 100329 김동일 선임 추가
;; 	LINK11_INFO_KIND_AIRCRAFT_CONTROL_TX_LIST,		;;항공기통제 송신 목록				;;Ticket:1599 김동일 선임 추가 110124
;; 	LINK11_INFO_KIND_AIRCRAFT_CONTROL_RX_LIST,		;;항공기통제 수신 목록				;;Ticket:1599 김동일 선임 추가 110124
;; 	LINK11_INFO_KIND_AIRCRAFT_CONTROL_ALL_LIST,		;;항공기통제  목록					;;Ticket:1599 김동일 선임 추가 110124
;; };

;; enum _ENUM_LINK11_DLRP_MODE
;; {
;; 	LINK11_DLRP_MODE_TX = 0,
;; 	LINK11_DLRP_MODE_RX,
;; 	LINK11_DLRP_MODE_STANDALONE
;; };

;; enum _ENUM_LINK11_GRIDLOCK_CMD
;; {
;; 	LINK11_GRIDLOCK_CMD_STOP = 0,
;; 	LINK11_GRIDLOCK_CMD_START
;; };

;; enum _ENUM_LINK11_GRIDLOCK_METHOD
;; {
;; 	LINK11_GRIDLOCK_METHOD_TWO_TRACKS_TMSINDEX = 0,		;; 110322 김동일 선임 수정
;; 	LINK11_GRIDLOCK_METHOD_CORRELATED_TRACK,
;; 	LINK11_GRIDLOCK_METHOD_OWNSHIP,
;; 	LINK11_GRIDLOCK_METHOD_TWO_TRACKS_STN,				;; 110322 김동일 선임 추가                  
;; 	LINK11_GRIDLOCK_METHOD_TWO_TRACKS_NTN				;; 110322 김동일 선임 추가
;; };

;; enum _ENUM_LINK11_AIR_CTRL_ORDER
;; {
;; 	LINK11_AIR_CTRL_ORDER_ASSUME_CTRL = 0,
;; 	LINK11_AIR_CTRL_ORDER_CONTROL_AND_ENGAGE,
;; 	LINK11_AIR_CTRL_ORDER_TRANSFER_CTRL,
;; 	LINK11_AIR_CTRL_ORDER_RETURN_TO_BASE,
;; 	LINK11_AIR_CTRL_ORDER_LAUNCH_HELI,
;; 	LINK11_AIR_CTRL_ORDER_REQUEST_CTRL,
;; 	LINK11_AIR_CTRL_ORDER_CANCEL_HANDOVER,
;; 	LINK11_AIR_CTRL_ORDER_START_CTRL,
;; 	LINK11_AIR_CTRL_ORDER_STOP_CTRL
;; };

;; enum _ENUM_LINK11_AIR_MISSION_STATUS_ORDER											;; 091016 - 김동일 선임 추가
;; {
;; 	LINK11_AIR_MISSION_STATUS_ORDER_START_MISSION = 1, ;;LINK11 항공기 임수상태 송신 시작
;; 	LINK11_AIR_MISSION_STATUS_ORDER_STOP_MISSION  , ;;LINK11 항공기 임수상태 송신 종료
;; 	LINK11_AIR_MISSION_STATUS_ORDER_START_CTRL    , ;;START CU
;; 	LINK11_AIR_MISSION_STATUS_ORDER_STOP_CTRL       ;;STOP  CU
;; };

;; enum _ENUM_LINK11_AIR_CANT_REASON
;; {
;; 	LINK11_AIR_CANT_REASON_SYSTEM_LIMIT = 0,
;; 	LINK11_AIR_CANT_REASON_CTRLED_AC_UNKNOWN,
;; 	LINK11_AIR_CANT_REASON_CTRLED_AC_UNDER_OWN_CTRL,
;; 	LINK11_AIR_CANT_REASON_UNIT_NOT_EXERCISING_AC_CAP,
;; 	LINK11_AIR_CANT_REASON_UNACCEPTABLE_ID,
;; 	LINK11_AIR_CANT_REASON_ADDRESSEE_INACTIVE,
;; 	LINK11_AIR_CANT_REASON_NO_MACH_RECEIPT_RX_BY_FORW_UNIT
;; };

;; enum _ENUM_LINK11_AIR_CTRL_ID
;; {
;; 	LINK11_AIR_CTRL_ID_AIR_CTRL_ORDER = 0,
;; 	LINK11_AIR_CTRL_ID_ACKN_AIR_CTRL_ORDER,
;; 	LINK11_AIR_CTRL_ID_CONTROLLING_UNIT_COMMAND,

;; 	LINK11_AIR_CTRL_ID_DLP_REPLY
;; };

;; enum _ENUM_LINK11_AIRCRAFT_ID
;; {
;; 	LINK11_AIRCRAFT_ID_NONE = 0,
;; 	LINK11_AIRCRAFT_ID_F4,
;; 	LINK11_AIRCRAFT_ID_F8,
;; 	LINK11_AIRCRAFT_ID_F14,
;; 	LINK11_AIRCRAFT_ID_F15,
;; 	LINK11_AIRCRAFT_ID_F101,
;; 	LINK11_AIRCRAFT_ID_F102,
;; 	LINK11_AIRCRAFT_ID_F104,
;; 	LINK11_AIRCRAFT_ID_F106,
;; 	LINK11_AIRCRAFT_ID_F111,
;; 	LINK11_AIRCRAFT_ID_A3,
;; 	LINK11_AIRCRAFT_ID_A4,
;; 	LINK11_AIRCRAFT_ID_A5,
;; 	LINK11_AIRCRAFT_ID_A6,
;; 	LINK11_AIRCRAFT_ID_A7,
;; 	LINK11_AIRCRAFT_ID_AV8,
;; 	LINK11_AIRCRAFT_ID_A10,
;; 	LINK11_AIRCRAFT_ID_F16,
;; 	LINK11_AIRCRAFT_ID_F18,
;; 	LINK11_AIRCRAFT_ID_A18,
;; 	LINK11_AIRCRAFT_ID_F5
;; };

;; enum _ENUM_LINK11_ASW_AIRCRAFT_ID								;; 100225 김승진 선임 수정
;; {
;; 	LINK11_ASW_AIRCRAFT_ID_NO_STATEMENT = 0,
;; 	LINK11_ASW_AIRCRAFT_ID_MPA,   ;;VP(FW PatrolAircraft) 
;; 	LINK11_ASW_AIRCRAFT_ID_P_3A_B,
;; 	LINK11_ASW_AIRCRAFT_ID_P_3C,
;; 	LINK11_ASW_AIRCRAFT_ID_NIMROD,
;; 	LINK11_ASW_AIRCRAFT_ID_FIXED_WING_ASW_ASW_AIRCRAFT,
;; 	LINK11_ASW_AIRCRAFT_ID_S_2E,
;; 	LINK11_ASW_AIRCRAFT_ID_S_3,
;; 	LINK11_ASW_AIRCRAFT_ID_ASW_HELO_GENERAL,
;; 	LINK11_ASW_AIRCRAFT_ID_HELO_DIPPING_SONAR,
;; 	LINK11_ASW_AIRCRAFT_ID_ASW_HELO_WEAPON_SEC_SURF_AMPL_CARRIER,
;; 	LINK11_ASW_AIRCRAFT_ID_BREGUET_ATLANTIQUE,
;; 	LINK11_ASW_AIRCRAFT_ID_AURORA
;; };

;; enum _ENUM_LINK11_CONFLICT_ID
;; {
;; 	LINK11_CONFLICT_ID_CHANGE_DATA = 1, 
;; 	LINK11_CONFLICT_ID_CATEGORY_DIFFERENCE,
;; 	LINK11_CONFLICT_ID_IDENTITY_DIFFERENCE,
;; 	LINK11_CONFLICT_ID_IFF_MODE1_DIFFERENCE,
;; 	LINK11_CONFLICT_ID_IFF_MODE2_DIFFERENCE,
;; 	LINK11_CONFLICT_ID_IFF_MODE3_DIFFERENCE,
;; 	LINK11_CONFLICT_ID_IFF_MODE4_DIFFERENCE,

;; 	LINK11_CONFLICT_ID_CATEGORY_CONFLICT,
;; 	LINK11_CONFLICT_ID_IDENTITY_CONFLICT,
;; 	LINK11_CONFLICT_ID_IFF_MODE1_CONFLICT,
;; 	LINK11_CONFLICT_ID_IFF_MODE2_CONFLICT,
;; 	LINK11_CONFLICT_ID_IFF_MODE3_CONFLICT,
;; 	LINK11_CONFLICT_ID_IFF_MODE4_CONFLICT,

;; 	;; NTN CONFLICT 일때 사용합니다. 
;; 	LINK11_CONFLICT_ID_TRACK_NUMBER_CONFLICT, 
;; 	LINK11_CONFLICT_ID_IFF_MODE4_DOWNGRADE,

;; 	LINK11_CONFLICT_ID_CATEGORY_DIFFERENCE_REPLY,
;; 	LINK11_CONFLICT_ID_IDENTITY_DIFFERENCE_REPLY,
;; 	LINK11_CONFLICT_ID_IFF_MODE1_DIFFERENCE_REPLY,
;; 	LINK11_CONFLICT_ID_IFF_MODE2_DIFFERENCE_REPLY,
;; 	LINK11_CONFLICT_ID_IFF_MODE3_DIFFERENCE_REPLY,
;; 	LINK11_CONFLICT_ID_IFF_MODE4_DIFFERENCE_REPLY,

;; 	LINK11_CONFLICT_ID_CATEGORY_CONFLICT_REPLY,
;; 	LINK11_CONFLICT_ID_IDENTITY_CONFLICT_REPLY,
;; 	LINK11_CONFLICT_ID_IFF_MODE1_CONFLICT_REPLY,
;; 	LINK11_CONFLICT_ID_IFF_MODE2_CONFLICT_REPLY,
;; 	LINK11_CONFLICT_ID_IFF_MODE3_CONFLICT_REPLY,
;; 	LINK11_CONFLICT_ID_IFF_MODE4_CONFLICT_REPLY,

;; 	LINK11_CONFLICT_ID_DLP_REPLY
;; };

;; enum _ENUM_LINK11_LOOP_TEST
;; {
;; 	LINK11_LOOP_TEST_NO_STATEMENT = 0,
;; 	LINK11_LOOP_TEST_TEST_MODE
;; };

;; enum _ENUM_LINK11_TEST_RUN
;; {
;; 	LINK11_TEST_RUN_STOP = 0,
;; 	LINK11_TEST_RUN_START
;; };

;; enum _ENUM_LINK11_TEST_RUN_STATUS
;; {
;; 	LINK11_TEST_RUN_STATUS_NONE = 0,
;; 	LINK11_TEST_RUN_STATUS_STOPPED,
;; 	LINK11_TEST_RUN_STATUS_RUNNING,
;; 	LINK11_TEST_RUN_STATUS_FINISHED
;; };

;; enum _ENUM_LINK11_TEST_STOP_REASON
;; {
;; 	LINK11_TEST_STOP_REASON_TIME_OUT_OUTPUT = 0,
;; 	LINK11_TEST_STOP_REASON_TIME_OUT_INPUT,
;; 	LINK11_TEST_STOP_REASON_TIME_OUT_INTERRUPT,
;; 	LINK11_TEST_STOP_REASON_WRONG_INTERRUPT_CODE,
;; 	LINK11_TEST_STOP_REASON_WRONG_NUMBER_OF_INPUT_WORDS,
;; 	LINK11_TEST_STOP_REASON_DIFFERENT_TEST_WORD,
;; 	LINK11_TEST_STOP_REASON_STOPPED_BY_OPERATOR
;; };

;; enum _ENUM_LINK11_WEAPON_PLATFORM
;; {
;; 	LINK11_WEAPON_PLATFORM_ANY_PLATFORM = 0,
;; 	LINK11_WEAPON_PLATFORM_SPECIFIC_PLATFORM
;; };

;; enum _ENUM_LINK11_AIR_CTRL_WEAPON
;; {
;; 	LINK11_AIR_CTRL_WEAPON_NUCLEAR = 0x1,
;; 	LINK11_AIR_CTRL_WEAPON_REAR_ASPECT = 0x2,
;; 	LINK11_AIR_CTRL_WEAPON_ALL_ASPECT = 0x4,
;; 	LINK11_AIR_CTRL_WEAPON_MULTIPLE_INTERCEPT = 0x8
;; };

;; enum _ENUM_LINK11_CMD
;; {
;; 	LINK11_CMD_ACKN_COMMAND = 0,
;; 	LINK11_CMD_COMMAND,
;; 	LINK11_CMD_DATA_UPDATE_REQUEST,
;; 	LINK11_CMD_OWNSHIP_RETRANSMIT,
;; 	LINK11_CMD_IFF_SIF_DATA_UPDATE_REQ,
;; 	LINK11_CMD_TRACK_RELATE_COMMAND,
;; 	LINK11_CMD_IFF_MODE_CLEAR,
;; 	LINK11_CMD_MANAGEMENT,
;; 	LINK11_CMD_IFF_SIF_MODE1_CLEAR             ,;;ticket:1513 20110107 김동일 |MODE 변경관련 명령 추가 
;; 	LINK11_CMD_IFF_SIF_MODE2_CLEAR             ,;;ticket:1513 20110107 김동일 |MODE 변경관련 명령 추가 
;; 	LINK11_CMD_IFF_SIF_MODE3_CLEAR             ,;;ticket:1513 20110107 김동일 |MODE 변경관련 명령 추가 
;; 	LINK11_CMD_IFF_SIF_MODE4_CLEAR             ,;;ticket:1513 20110107 김동일 |MODE 변경관련 명령 추가 
;; 	LINK11_CMD_IFF_SIF_MODE1_MODE2_MODE3_CLEAR ,;;ticket:1513 20110107 김동일 |MODE 변경관련 명령 추가 

;; 	LINK11_CMD_DLP_REPLY
;; };

;; enum _ENUM_LINK11_CONFLICT_STATE
;; {
;; 	LINK11_CONFLICT_STATE_NO_CONFLICT = 0,
;; 	LINK11_CONFLICT_STATE_CONFLICT,
;; 	LINK11_CONFLICT_STATE_AUTO_ACCEPTED
;; };


;; enum _ENUM_ISDL_INFO_KIND
;; {
;; 	ISDL_INFO_KIND_ALL = 1,
;; 	ISDL_INFO_KIND_TRACK_ADD_INFO,
;; 	ISDL_INFO_KIND_ASSOCIATION,				;;표적연관목록
;; 	ISDL_INFO_KIND_OWN_WEAPON_TX_STATUS,	;;자함 무장상태 정보
;; 	ISDL_INFO_KIND_ENG_STATUS_TX_LIST,		;;교전상태 송신목록
;; 	ISDL_INFO_KIND_ENG_STATUS_RX_LIST,		;;교전상태 수신목록
;; 	ISDL_INFO_KIND_ENG_STATUS_ALL_LIST,		;;교전상태 송/수신목록
;; 	ISDL_INFO_KIND_WEAPON_STATUS_TX_LIST,	;;무장상태 송신목록
;; 	ISDL_INFO_KIND_WEAPON_STATUS_RX_LIST,	;;무장상태 수신목록
;; 	ISDL_INFO_KIND_WEAPON_STATUS_ALL_LIST,	;;무장상태 송/수신목록
;; 	ISDL_INFO_KIND_CMD_RX_LIST,				;;수신명령 목록
;; 	ISDL_INFO_KIND_PU_TABLE_CONFIG,			;;PU 리스트 설정
;; 	ISDL_INFO_KIND_MAX_RX_COUNT             ;;동시연동시 최대 수신표적 설정					;; 100329 김동일 선임 추가
;; };

;; enum _ENUM_ISDL_AIRSHIP_CTRL_ORDER
;; {
;; 	ISDL_AIRSHIP_CTRL_ORDER_NO_STATEMENT = 0,	;; 0
;; 	ISDL_AIRSHIP_CTRL_ORDER_HANDOVER_SINGLE,	;; 1
;; 	ISDL_AIRSHIP_CTRL_ORDER_HANDOVER_ENGAGED,	;; 2
;; 	ISDL_AIRSHIP_CTRL_ORDER_TRANSFER_CTRL,		;; 3
;; 	ISDL_AIRSHIP_CTRL_ORDER_RTB,				;; 4
;; 	ISDL_AIRSHIP_CTRL_ORDER_LAUNCH_FIGHTER,		;; 5
;; 	ISDL_AIRSHIP_CTRL_ORDER_LAUNCH_ASW_HELOS,	;; 6
;; 	ISDL_AIRSHIP_CTRL_ORDER_REQUEST_FOR_CTRL,	;; 7
;; 	ISDL_AIRSHIP_CTRL_ORDER_START_CTRL,						;; 091013 김승진 선임 수정
;;     	ISDL_AIRSHIP_CTRL_ORDER_STOP_CTRL						;; 091013 김승진 선임 수정
;; };

;; enum _ENUM_ISDL_AIR_CTRL_WEAPON
;; {
;; 	ISDL_AIR_CTRL_WEAPON_NO_STATEMENT = 0,
;; 	ISDL_AIR_CTRL_WEAPON_SAM,
;; 	ISDL_AIR_CTRL_WEAPON_SSM,
;; 	ISDL_AIR_CTRL_WEAPON_AIRCRAFT,
;; 	ISDL_AIR_CTRL_WEAPON_CONVENTIONAL,
;; 	ISDL_AIR_CTRL_WEAPON_ASW_HELO,
;; 	ISDL_AIR_CTRL_WEAPON_ASW_MISSILE,
;; 	ISDL_AIR_CTRL_WEAPON_DEPTH_CHARGE_BOMB,
;; 	ISDL_AIR_CTRL_WEAPON_TORPEDO,
;; 	ISDL_AIR_CTRL_WEAPON_ASW_FIXED_WING,
;; 	ISDL_AIR_CTRL_WEAPON_ASM
;; };

;; enum _ENUM_ISDL_AIR_CTRL_KIND
;; {
;; 	ISDL_AIR_CTRL_KIND_TRANSFER_CTRL_REQ = 0,
;; 	ISDL_AIR_CTRL_KIND_TRANSFER_CTRL_REQ_REPLY,
;; 	ISDL_AIR_CTRL_KIND_TRANSFER_CTRL_REQ_DLP_REPLY,
;; 	ISDL_AIR_CTRL_KIND_SEND_CTRL_INFO
;; };

;; enum _ENUM_ISDL_AIR_CANT_REASON
;; {
;; 	ISDL_AIR_CANT_REASON_SYSTEM_LIMITATION = 0,
;; 	ISDL_AIR_CANT_REASON_TRACK_NUM_WEAPON_NOT_HELD,
;; 	ISDL_AIR_CANT_REASON_TRACK_NUM_TARGET_UNDER_OWN_UNIT_CTRL,
;; 	ISDL_AIR_CANT_REASON_UNIT_NOT_EXERCISING_AIR_CTRL_CAPABILITY,
;; 	ISDL_AIR_CANT_REASON_UNACCEPTABLE_ID,
;; 	ISDL_AIR_CANT_REASON_ADDRESSEE_INACTIVE,
;; 	ISDL_AIR_CANT_REASON_FORWARDING_UNIT_NOT_RECV_MACHINE_RECEIPT,
;; 	ISDL_AIR_CANT_REASON_TRACK_NUM_WEAPON_NOT_UNDER_CTRL,
;; };

;; enum _ENUM_ISDL_ASSOC_TYPE
;; {
;; 	ISDL_ASSOC_TYPE_NONE = 0,
;; 	ISDL_ASSOC_TYPE_KNTDS_ON_KINEMATICS_CRITERIA,
;; 	ISDL_ASSOC_TYPE_KNTDS_ON_EMERGENCY_CRITERIA,
;; 	ISDL_ASSOC_TYPE_CMS_SSCS_MK7,
;; 	ISDL_ASSOC_TYPE_TADIL_A,
;; 	ISDL_ASSOC_TYPE_ISDL
;; };

;; enum _ENUM_ISDL_ALERT_CONDITION
;; {
;; 	ISDL_ALERT_CONDITION_NOSTATEMENT = 0,
;; 	ISDL_ALERT_CONDITION_WHITE,
;; 	ISDL_ALERT_CONDITION_YELLOW,
;; 	ISDL_ALERT_CONDITION_RED
;; }; 

;; enum _ENUM_ISDL_ASSOCIATION_TYPE
;; {
;; 	ISDL_ASSOCIATION_TYPE_KNTDS_ON_KINETICS = 0,
;; 	ISDL_ASSOCIATION_TYPE_KNTDS_ON_EMERGENCY,
;; 	ISDL_ASSOCIATION_TYPE_CMS_SSCS_MK7,
;; 	ISDL_ASSOCIATION_TYPE_TADIL_A,
;; 	ISDL_ASSOCIATION_TYPE_ISDL
;; };

;; enum _ENUM_ISDL_CORRELATION_STATUS
;; {
;; 	ISDL_CORRELATION_STATUS_DECORRELATE = 0,
;; 	ISDL_CORRELATION_STATUS_CORRELATE
;; };

;; enum _ENUM_ISDL_BEARING_ACCURACY
;; {
;; 	ISDL_BEARING_ACCURACY_NO_STATEMENT ,;;!!!ticket:1589 20110117 김동일 | bearing accuracy 정의 
;; 	ISDL_BEARING_ACCURACY_LESSEQ_2     ,;;!!!ticket:1589 20110117 김동일 | bearing accuracy 정의 
;; 	ISDL_BEARING_ACCURACY_LESSEQ_5     ,;;!!!ticket:1589 20110117 김동일 | bearing accuracy 정의 
;; 	ISDL_BEARING_ACCURACY_LESSEQ_10    ,;;!!!ticket:1589 20110117 김동일 | bearing accuracy 정의 
;; 	ISDL_BEARING_ACCURACY_LESSEQ_15    ,;;!!!ticket:1589 20110117 김동일 | bearing accuracy 정의 
;; 	ISDL_BEARING_ACCURACY_LESSEQ_20    ,;;!!!ticket:1589 20110117 김동일 | bearing accuracy 정의 
;; 	ISDL_BEARING_ACCURACY_LESSEQ_30    ,;;!!!ticket:1589 20110117 김동일 | bearing accuracy 정의 
;; 	ISDL_BEARING_ACCURACY_MORE_30      ,;;!!!ticket:1589 20110117 김동일 | bearing accuracy 정의 
;; };

;; enum _ENUM_SEND_DIRECTION
;; {
;; 	SEND_DIRECTION_NO_STATEMENT = 0,
;; 	SEND_DIRECTION_TX,
;; 	SEND_DIRECTION_RX,
;; 	SEND_DIRECTION_TX_RX
;; };

;; enum _ENUM_TIME_OR_FUEL
;; {
;; 	TIME_OR_FUEL_FUEL = 1,
;; 	TIME_OR_FUEL_TIME
;; };

;; enum _ENUM_INFO_KIND
;; {	
;; 	INFO_KIND_UPDATE = 1,
;; 	INFO_KIND_DELETE
;; };

;; enum _ENUM_OPNOTE_RECEIVE_ALL
;; {	
;; 	OPNOTE_RECEIVE_ALL_NO = 0,
;; 	OPNOTE_RECEIVE_ALL_YES
;; };

;; enum _ENUM_OPNOTE_REPLY
;; {
;; 	OPNOTE_REPLY_NO = 0,
;; 	OPNOTE_REPLY_YES,
;; 	OPNOTE_REPLY_ROGER,
;; 	OPNOTE_REPLY_REQUEST_TRANSMISSION
;; };

;; enum _ENUM_OPNOTE_ORDER
;; {
;; 	OPNOTE_ORDER_SEND = 1,
;; 	OPNOTE_ORDER_DELETE
;; };

;; enum _ENUM_TEST_STATUS
;; {
;; 	TEST_STATUS_STOPPED = 0,
;; 	TEST_STATUS_RUNNING,
;; 	TEST_STATUS_FINISHED
;; };

;; enum _ENUM_TEST_STOP_REASON
;; {
;; 	TIME_OUT_OUTPUT = 0,
;; 	TIME_OUT_INPUT,
;; 	TIME_OUT_INTERRUPT,
;; 	WRONG_INTERRUPT_CODE,
;; 	WRONG_NUMBER_OF_INPUT_WORDS,
;; 	STOPPED_BY_OPERATOR
;; };

;; enum _ENUM_TDL_AIR_CTRL_UNIT_STATUS						;; 091201 김승진 선임 - 수정
;; {
;;     TDL_AIR_CTRL_UNIT_STATUS_NO_STATEMENT = 0,
;;     TDL_AIR_CTRL_UNIT_STATUS_OWNSHIP_CTRLED,
;; 	TDL_AIR_CTRL_UNIT_STATUS_OTHERSHIP_CTRLED,
;;     TDL_AIR_CTRL_UNIT_STATUS_STARTED_MISSION_STATUS,
;;     TDL_AIR_CTRL_UNIT_STATUS_RX_CTRL_REQ,
;;     TDL_AIR_CTRL_UNIT_STATUS_ACCEPT_CTRL_REQ,
;;     TDL_AIR_CTRL_UNIT_STATUS_TX_CTRL_REQ,
;;     TDL_AIR_CTRL_UNIT_STATUS_GAVE_CTRL_AUTHORITY
;; }; 


;; enum _ENUM_LINK11_AIRCRAFT_TYPE							;; 091014 김승진 선임 - 추가
;; {
;;     LINK11_AIRCRAFT_TYPE_GENERAL = 0,
;;     LINK11_AIRCRAFT_TYPE_ASW
;; };

;; enum _ENUM_LINK11_AIR_ROCKET_INVENTORY					;; 091201 김승진 선임 - 추가
;; {
;;     LINK11_AIR_ROCKET_INVENTORY_NO_STATEMENT = 0,
;;     LINK11_AIR_ROCKET_INVENTORY_0,
;;     LINK11_AIR_ROCKET_INVENTORY_1_8,
;;     LINK11_AIR_ROCKET_INVENTORY_9
;; }; 

;; enum _ENUM_LINK11_AIR_ACT_SONO_INVENTORY				;; 091201 김승진 선임 - 추가
;; {
;;     LINK11_AIR_ACT_SONO_INVENTORY_NO_STATEMENT = 0,
;;     LINK11_AIR_ACT_SONO_INVENTORY_0,
;;     LINK11_AIR_ACT_SONO_INVENTORY_1_4,
;;     LINK11_AIR_ACT_SONO_INVENTORY_5
;; }; 

;; enum _ENUM_LINK11_AIR_PASS_SONO_INVENTORY				;; 091201 김승진 선임 - 추가
;; {
;;     LINK11_AIR_PASS_SONO_INVENTORY_NO_STATEMENT = 0,
;;     LINK11_AIR_PASS_SONO_INVENTORY_0,
;;     LINK11_AIR_PASS_SONO_INVENTORY_1_8,
;;     LINK11_AIR_PASS_SONO_INVENTORY_9
;; }; 

;; enum _ENUM_LINK11_ASW_AIRCRAFT_TR ;;Link-11 대잠항공기 Time Remaining			;; 091201 김승진 선임 - 추가
;; {
;;     LINK11_ASW_AIRCRAFT_TR_NO_STATEMENT = 0,
;;     LINK11_ASW_AIRCRAFT_TR_RETURN_TO_BASE,
;;     LINK11_ASW_AIRCRAFT_TR_ROUTE_TO_STATION,
;;     LINK11_ASW_AIRCRAFT_TR_MIN_0_15,
;;     LINK11_ASW_AIRCRAFT_TR_MIN_16_30,
;;     LINK11_ASW_AIRCRAFT_TR_MIN_31_45,
;;     LINK11_ASW_AIRCRAFT_TR_MIN_46_HOUR_1,
;;     LINK11_ASW_AIRCRAFT_TR_HOUR_1_1HALF,
;;     LINK11_ASW_AIRCRAFT_TR_HOUR_1HALF_2,
;;     LINK11_ASW_AIRCRAFT_TR_HOUR_2_2HALF,
;;     LINK11_ASW_AIRCRAFT_TR_HOUR_2HALF_3,
;;     LINK11_ASW_AIRCRAFT_TR_HOUR_3_4,
;;     LINK11_ASW_AIRCRAFT_TR_HOUR_4_6,
;;     LINK11_ASW_AIRCRAFT_TR_HOUR_6_8,
;;     LINK11_ASW_AIRCRAFT_TR_HOUR_8_10,
;;     LINK11_ASW_AIRCRAFT_TR_HOUR_LONGER_10
;; };

;; enum _ENUM_TDL_LINK11_CURRENT_MISSION	;; Link-11 수상표적의 현재임무 정보		;; 100104 김동일 선임 - 추가
;; {
;; 	TDL_LINK11_CURRENT_MISSION_NO_STATEMENT = 0,
;; 	TDL_LINK11_CURRENT_MISSION_ANTI_AIR_WARFARE,
;; 	TDL_LINK11_CURRENT_MISSION_ANTI_SUBSURFACE_WARFARE,
;; 	TDL_LINK11_CURRENT_MISSION_NAVAL_GUNFIRE_SUPPORT,
;; 	TDL_LINK11_CURRENT_MISSION_UNDERWAY_REPLENISHMENT,
;; 	TDL_LINK11_CURRENT_MISSION_PLANE_GUARD_SAR,
;; 	TDL_LINK11_CURRENT_MISSION_STRIKE,
;; 	TDL_LINK11_CURRENT_MISSION_EW,
;; 	TDL_LINK11_CURRENT_MISSION_AMPHIBIOUS_ASSAULT,
;; 	TDL_LINK11_CURRENT_MISSION_SHADOWER,
;; 	TDL_LINK11_CURRENT_MISSION_MARKER,
;; 	TDL_LINK11_CURRENT_MISSION_INTRUDER,
;; 	TDL_LINK11_CURRENT_MISSION_ANTI_SURFACE_WARPARE
;; };

;; enum _ENUM_ISDL_AIRSHIP_CTRL_LINKED_KIND				;; ISDL 항공기/함정 통제 관련	;; 100322 김동일 선임 추가
;; {
;; 	ISDL_AIRSHIP_CTRL_LINKED_KIND_NO_STATEMENT = 0, ;; 0
;; 	ISDL_AIRSHIP_CTRL_LINKED_KIND_NOT_LINKED,  ;; 1
;; 	ISDL_AIRSHIP_CTRL_LINKED_KIND_PAIRED,   ;; 2
;; 	ISDL_AIRSHIP_CTRL_LINKED_KIND_ENGAGED  ;; 3
;; }; 

;; enum _ENUM_LINK11_GRIDLOCK_STATUS						;; 100402 김승진 선임 추가
;; {
;; 	LINK11_GRIDLOCK_STATUS_NONE = 0,
;; 	LINK11_GRIDLOCK_STATUS_ACTIVE,
;; 	LINK11_GRIDLOCK_STATUS_READY,
;; 	LINK11_GRIDLOCK_STATUS_ABORT						;; 101213 송영환 수정(Ticket:1353)
;; };

;; enum _ENUM_TDL_MODECODE_BY_OPERATOR_FLAG ;;ticket:1513 20110107 김동일 | IFF MODE 값 사용자 변경여부
;; {                                        ;;ticket:1513 20110107 김동일 | IFF MODE 값 사용자 변경여부
;; 	TDL_MODECODE_NONE_BY_OPERATOR = 0x00 , ;;ticket:1513 20110107 김동일 | IFF MODE 값 사용자 변경여부
;; 	TDL_MODECODE1_BY_OPERATOR     = 0x01 , ;;ticket:1513 20110107 김동일 | IFF MODE 값 사용자 변경여부
;; 	TDL_MODECODE2_BY_OPERATOR     = 0x02 , ;;ticket:1513 20110107 김동일 | IFF MODE 값 사용자 변경여부
;; 	TDL_MODECODE3_BY_OPERATOR     = 0x04 , ;;ticket:1513 20110107 김동일 | IFF MODE 값 사용자 변경여부
;; 	TDL_MODECODE4_BY_OPERATOR     = 0x08   ;;ticket:1513 20110107 김동일 | IFF MODE 값 사용자 변경여부
;; };                                      ;;ticket:1513 20110107 김동일 | IFF MODE 값 사용자 변경여부


;; enum _ENUM_TDL_LINK11_ECM_CLASS {     ;;!!!ticket:1670 20110208 김동일 | broad classification 일반분류           
;; 	TDL_LINK11_ECM_CLASS_NO_STATEMENT , ;;!!!ticket:1670 20110208 김동일 | broad classification 일반분류 
;; 	TDL_LINK11_ECM_CLASS_RADAR ,        ;;!!!ticket:1670 20110208 김동일 | broad classification 일반분류
;; 	TDL_LINK11_ECM_CLASS_IFF,           ;;!!!ticket:1670 20110208 김동일 | broad classification 일반분류
;; 	TDL_LINK11_ECM_CLASS_COMMUNICATION  ;;!!!ticket:1670 20110208 김동일 | broad classification 일반분류
;; };

;; enum _ENUM_TDL_LINK11_ECM_AMPLICATION {               ;;!!!ticket:1670 20110208 김동일 | amplyfing character 상세분류
;; 	TDL_LINK11_ECM_AMPLICATION_NO_STATEMENT,            ;;!!!ticket:1670 20110208 김동일 | amplyfing character 상세분류
;; 	TDL_LINK11_ECM_AMPLICATION_UNKNOWN,                 ;;!!!ticket:1670 20110208 김동일 | amplyfing character 상세분류
;; 	TDL_LINK11_ECM_AMPLICATION_DISRUPTIVE,              ;;!!!ticket:1670 20110208 김동일 | amplyfing character 상세분류
;; 	TDL_LINK11_ECM_AMPLICATION_DECEPTIVE,               ;;!!!ticket:1670 20110208 김동일 | amplyfing character 상세분류
;; 	TDL_LINK11_ECM_AMPLICATION_IRCM,                    ;;!!!ticket:1670 20110208 김동일 | amplyfing character 상세분류
;; 	TDL_LINK11_ECM_AMPLICATION_LASER_CM,                ;;!!!ticket:1670 20110208 김동일 | amplyfing character 상세분류
;; 	TDL_LINK11_ECM_AMPLICATION_SIDE_LOBE,               ;;!!!ticket:1670 20110208 김동일 | amplyfing character 상세분류
;; 	TDL_LINK11_ECM_AMPLICATION_CHAFF,                   ;;!!!ticket:1670 20110208 김동일 | amplyfing character 상세분류
;; 	TDL_LINK11_ECM_AMPLICATION_MULTIPLE_JAMMER,         ;;!!!ticket:1670 20110208 김동일 | amplyfing character 상세분류
;; 	TDL_LINK11_ECM_AMPLICATION_DECEPTIVE_INTERROGATOR   ;;!!!ticket:1670 20110208 김동일 | amplyfing character 상세분류
;; } ;

;; enum _ENUM_TDL_LINK11_FREQUENCY_RANGE{              ;;!!!ticket:1727 20110214 김동일 | LINK11 의 frequency 는 범위값을 사용합니다. 
;; 	TDL_LINK11_FREQUENCY_RANGE_NO_STATEMENT        ,  ;;!!!ticket:1727 20110214 김동일 | LINK11 의 frequency 는 범위값을 사용합니다. 
;; 	TDL_LINK11_FREQUENCY_RANGE_0_to_250_MHz        ,  ;;!!!ticket:1727 20110214 김동일 | LINK11 의 frequency 는 범위값을 사용합니다. 
;; 	TDL_LINK11_FREQUENCY_RANGE_250_to_500_MHz      ,  ;;!!!ticket:1727 20110214 김동일 | LINK11 의 frequency 는 범위값을 사용합니다. 
;; 	TDL_LINK11_FREQUENCY_RANGE_500_to_1000_MHz     ,  ;;!!!ticket:1727 20110214 김동일 | LINK11 의 frequency 는 범위값을 사용합니다. 
;; 	TDL_LINK11_FREQUENCY_RANGE_1000_to_2000_MHz    ,  ;;!!!ticket:1727 20110214 김동일 | LINK11 의 frequency 는 범위값을 사용합니다. 
;; 	TDL_LINK11_FREQUENCY_RANGE_2000_to_3000_MHz    ,  ;;!!!ticket:1727 20110214 김동일 | LINK11 의 frequency 는 범위값을 사용합니다. 
;; 	TDL_LINK11_FREQUENCY_RANGE_3000_to_4000_MHz    ,  ;;!!!ticket:1727 20110214 김동일 | LINK11 의 frequency 는 범위값을 사용합니다. 
;; 	TDL_LINK11_FREQUENCY_RANGE_4000_to_6000_MHz    ,  ;;!!!ticket:1727 20110214 김동일 | LINK11 의 frequency 는 범위값을 사용합니다. 
;; 	TDL_LINK11_FREQUENCY_RANGE_6000_to_8000_MHz    ,  ;;!!!ticket:1727 20110214 김동일 | LINK11 의 frequency 는 범위값을 사용합니다. 
;; 	TDL_LINK11_FREQUENCY_RANGE_8000_to_10000_MHz   ,  ;;!!!ticket:1727 20110214 김동일 | LINK11 의 frequency 는 범위값을 사용합니다. 
;; 	TDL_LINK11_FREQUENCY_RANGE_10000_to_20000_MHz  ,  ;;!!!ticket:1727 20110214 김동일 | LINK11 의 frequency 는 범위값을 사용합니다. 
;; 	TDL_LINK11_FREQUENCY_RANGE_20000_to_40000_MHz  ,  ;;!!!ticket:1727 20110214 김동일 | LINK11 의 frequency 는 범위값을 사용합니다. 
;; 	TDL_LINK11_FREQUENCY_RANGE_40000_to_60000_MHz  ,  ;;!!!ticket:1727 20110214 김동일 | LINK11 의 frequency 는 범위값을 사용합니다. 
;; 	TDL_LINK11_FREQUENCY_RANGE_60000_to_100000_MHz    ;;!!!ticket:1727 20110214 김동일 | LINK11 의 frequency 는 범위값을 사용합니다. 
;; } ;                                                 ;;!!!ticket:1727 20110214 김동일 | LINK11 의 frequency 는 범위값을 사용합니다.


;; /******************************************/
;; /******************************************/

;; /******************************************/
;; /******************************************/
;; enum _ENUM_ASW_PLAN_ORDER
;; {
;; 	ASW_PLAN_ORDER_ADD = 1,
;; 	ASW_PLAN_ORDER_MODIFY,
;; 	ASW_PLAN_ORDER_DELETE,
;; 	ASW_PLAN_ORDER_INSERT
;; };

;; enum _ENUM_ASW_PLAN_ORIGIN
;; {
;; 	ASW_PLAN_ORIGIN_TRACK = 1,
;; 	ASW_PLAN_ORIGIN_POSITION,
;; };

;; enum _ENUM_FOC_MIN_MAX
;; {
;; 	TDA_FOC_MIN = 1,
;; 	TDA_FOC_MAX
;; };

;; enum _ENUM_NOTACK_AREA_TYPE
;; {
;; 	NOTACK_AREA_TYPE_CIRCLE = 1,
;; 	NOTACK_AREA_TYPE_RECT,
;; };

;; enum _ENUM_DEPART_ENTRY_AREA_TYPE
;; {
;; 	DEPART_ENTRY_AREA_TYPE_SECTOR = 1,
;; 	DEPART_ENTRY_AREA_TYPE_RECT,
;; };

;; enum _ENUM_NUM_OF_HELO
;; {
;; 	NUM_OF_HELO_2 = 2,
;; 	NUM_OF_HELO_3,
;; 	NUM_OF_HELO_4,
;; 	NUM_OF_HELO_5
;; };

;; enum _ENUM_SONOBUOY_PATTERN
;; {
;; 	SONOBUOY_PATTERN_A = 1,
;; 	SONOBUOY_PATTERN_B,
;; 	SONOBUOY_PATTERN_C,
;; 	SONOBUOY_PATTERN_D,
;; 	SONOBUOY_PATTERN_BARRICADE
;; };

;; enum _ENUM_SUB_MOVE_AREA_TYPE
;; {
;; 	SUB_MOVE_AREA_TYPE_MOVING_HAVEN = 1,
;; 	SUB_MOVE_AREA_TYPE_SAFETY_LANE,
;; };

;; enum _ENUM_MOVING_HAVEN_SIZE
;; {
;; 	MOVING_HAVEN_SIZE_WAR_STATE = 1,
;; 	MOVING_HAVEN_SIZE_NORMAL,
;; 	MOVING_HAVEN_SIZE_MANUAL
;; };

;; enum _ENUM_SUB_IDENTITY
;; {
;; 	SUB_IDENTITY_UNKNOWN = 0,
;; 	SUB_IDENTITY_SUSPECT,
;; 	SUB_IDENTITY_NONE_SUB,
;; 	SUB_IDENTITY_POSSIBLE_SUB,
;; 	SUB_IDENTITY_SUB
;; };

;; enum _ENUM_SAFETY_DISTANCE
;; {
;; 	SAFETY_DISTANCE_2000 = 1,
;; 	SAFETY_DISTANCE_3000
;; };

;; enum _ENUM_COMPASS_TYPE
;; {
;; 	COMPASS_TYPE_N_S = 1,
;; 	COMPASS_TYPE_W_E,
;; 	COMPASS_TYPE_SW_NE,
;; 	COMPASS_TYPE_NW_SE
;; };

;; enum _ENUM_SEARCH_DIRECTION
;; {
;; 	SEARCH_DIRECTION_LEFT = 1,
;; 	SEARCH_DIRECTION_RIGHT
;; };
;; /******************************************/
;; /******************************************/



;; /******************************************/
;; /******************************************/
;; enum _ENUM_ICU_FCU_STATUS_ID	;; ICU/FCU 공통사용
;; {
;; 	ICU_FCU_STATUS_ID_UNAVAILABLE = 0,
;; 	ICU_FCU_STATUS_ID_AVAILABLE ,
;; 	ICU_FCU_STATUS_ID_DEGRADE
;; };

;; enum _ENUM_FFX_IF_CTRL
;; {
;; 	FFX_IF_CTRL_STOP = 0x00,    ;; 연동 종료
;; 	FFX_IF_CTRL_START,			;; 연동 개시
;; 	FFX_IF_CTRL_RESET			;; 연동 초기화
;; };

;; enum _ENUM_FFX_FAIL_SUCCESS
;; {
;; 	FFX_FAIL = 0x00,	;; 명령수행 결과 실패
;; 	FFX_SUCCESS			;; 명령수행 결과 성공

;; };

;; enum _ENUM_MODE_STATUS
;; {
;; 	MODE_NOT_AVAILABLE = 0,
;; 	MODE_AVAILABLE
;; };


;; enum _ENUM_ICUTM_TYPE_ID		;; ICU/FCU 공통사용
;; {
;; 	ICUTM_TYPE_PRIMINFO = 1,	;; 원시표적
;; 	ICUTM_TYPE_ADDINFO,			;; 원시표적 상세정보
;; 	ICUTM_TYPE_PRIMINFO_ALL,	;; 모든 원시표적 
;; 	ICUTM_TYPE_ADDINFO_ALL		;; 모든 원시표적 상세정보
;; };

;; enum _ENUM_ICU_FCU_STATE_ID		;; ICU/FCU 공통사용
;; {
;; 	WAIT_FOR_HEARTBEAT  = 1,
;; 	WAIT_FOR_HISTORY,
;; 	WAIT_FOR_CONNECTION_COMMAND,
;; 	TRY_TO_CONNECTION,	
;; 	OPERATIONAL	
;; };


;; enum _ENUM_ICU_FCU_HW_STATUS								;; 100128 송정훈 선임 추가
;; {   
;; 	ICU_FCU_HW_STATUS_OPERATIONAL           = 0,
;; 	ICU_FCU_HW_STATUS_INDICATOR_PANEL_ERROR = 1,
;; 	ICU_FCU_HW_STATUS_FAN_ERROR             = 2,
;; 	ICU_FCU_HW_STATUS_TEMPERATURE_ERROR     = 4,
;; 	ICU_FCU_HW_STATUS_POWER1_ERROR          = 8,
;; 	ICU_FCU_HW_STATUS_POWER2_ERROR          = 16,
;; 	ICU_FCU_HW_STATUS_INTERFACE_CARD_ERROR  = 32
;; };

;; enum _ENUM_TEMP_WARNING_ID {
;; 	TEMP_WARNING_ID_ICU_SRS       = 3501 , 
;; 	TEMP_WARNING_ID_ICU_TRS,                            
;; 	TEMP_WARNING_ID_ICU_EOTS,
;; 	TEMP_WARNING_ID_ICU_IFF,
;; 	TEMP_WARNING_ID_ICU_HMS,     ;; 3505
;; 	TEMP_WARNING_ID_ICU_EW,
;; 	TEMP_WARNING_ID_ICU_OSD1,
;; 	TEMP_WARNING_ID_ICU_OSD2,
;; 	TEMP_WARNING_ID_RVDU1,
;; 	TEMP_WARNING_ID_RVDU2,       ;; 3510
;; 	TEMP_WARNING_ID_TVR,
;; 	TEMP_WARNING_ID_RVR,
;; 	TEMP_WARNING_ID_IPN_TAC1,
;; 	TEMP_WARNING_ID_IPN_TAC2,
;; 	TEMP_WARNING_ID_IPN_SUP1,    ;; 3515
;; 	TEMP_WARNING_ID_IPN_SUP2,
;; 	TEMP_WARNING_ID_IPN_TRN1, 
;; 	TEMP_WARNING_ID_IPN_TRN2,
;; 	TEMP_WARNING_ID_ICU_SAAM,
;; 	TEMP_WARNING_ID_ICU_CIWS,    ;; 3520
;; 	TEMP_WARNING_ID_ICU_KSSM,	 
;; 	TEMP_WARNING_ID_ICU_MASS,	 ;; 131017 dha.jung DCY -> MASS 변경
;; 	TEMP_WARNING_ID_BCU,
;; 	TEMP_WARNING_ID_FCU_SLTS,
;; 	TEMP_WARNING_ID_FCU_TACM,    ;; 3525
;; 	TEMP_WARNING_ID_DLP_LINK11,
;; 	TEMP_WARNING_ID_DLP_ISDL,
;; 	TEMP_WARNING_ID_ICU_KNCCS,
;; 	TEMP_WARNING_ID_ICU_LYNXESM,
;; 	TEMP_WARNING_ID_ICU_NRS,     ;; 3530
;; 	TEMP_WARNING_ID_ICU_ES,		 ;; 20131211 hk.kim 추가
;; 	TEMP_WARNING_ID_ICU_IRST,	 ;; 20131211 hk.kim 추가
;; 	TEMP_WARNING_ID_ICU_RCWS1,   ;; 20140626 dha.jung 추가
;; 	TEMP_WARNING_ID_ICU_RCWS2,	 ;; 20140626 dha.jung 추가
;; 	TEMP_WARNING_ID_ICU_KVLA	 
;; };

;; enum _ENUM_TEMP_ALERT_ID {
;; 	TEMP_ALERT_ID_ICU_SRS       = 3601 , 
;; 	TEMP_ALERT_ID_ICU_TRS,                            
;; 	TEMP_ALERT_ID_ICU_EOTS,
;; 	TEMP_ALERT_ID_ICU_IFF,
;; 	TEMP_ALERT_ID_ICU_HMS,     ;; 3605
;; 	TEMP_ALERT_ID_ICU_EW,
;; 	TEMP_ALERT_ID_ICU_OSD1,
;; 	TEMP_ALERT_ID_ICU_OSD2,
;; 	TEMP_ALERT_ID_RVDU1,
;; 	TEMP_ALERT_ID_RVDU2,       ;; 3610
;; 	TEMP_ALERT_ID_TVR,
;; 	TEMP_ALERT_ID_RVR,
;; 	TEMP_ALERT_ID_IPN_TAC1,
;; 	TEMP_ALERT_ID_IPN_TAC2,
;; 	TEMP_ALERT_ID_IPN_SUP1,    ;; 3615
;; 	TEMP_ALERT_ID_IPN_SUP2,
;; 	TEMP_ALERT_ID_IPN_TRN1, 
;; 	TEMP_ALERT_ID_IPN_TRN2,
;; 	TEMP_ALERT_ID_ICU_SAAM,
;; 	TEMP_ALERT_ID_ICU_CIWS,    ;; 3620
;; 	TEMP_ALERT_ID_ICU_KSSM,
;; 	TEMP_ALERT_ID_ICU_MASS,	   ;; 131017 dha.jung DCY -> MASS 변경
;; 	TEMP_ALERT_ID_BCU,
;; 	TEMP_ALERT_ID_FCU_SLTS,
;; 	TEMP_ALERT_ID_FCU_TACM,    ;; 3625
;; 	TEMP_ALERT_ID_DLP_LINK11,
;; 	TEMP_ALERT_ID_DLP_ISDL,
;; 	TEMP_ALERT_ID_ICU_KNCCS,
;; 	TEMP_ALERT_ID_ICU_LYNXESM,
;; 	TEMP_ALERT_ID_ICU_NRS,     ;; 3630
;; 	TEMP_ALERT_ID_ICU_ES,	   ;; 20131211 hk.kim 추가
;; 	TEMP_ALERT_ID_ICU_IRST,	   ;; 20131211 hk.kim 추가
;; 	TEMP_ALERT_ID_ICU_RCWS1,   ;; 20140626 dha.jung 추가
;; 	TEMP_ALERT_ID_ICU_RCWS2,	   ;; 20140626 dha.jung 추가
;; 	TEMP_ALERT_ID_ICU_KVLA
;; };


;; /******************************************/
;; /******************************************/



;; /******************************************/
;; /******************************************/
;; enum _ENUM_SIM_ID
;; {
;; 	SIM_ID_SRS = 1, 
;; 	SIM_ID_TRS,		;;2
;; 	SIM_ID_EOTS,	;;3
;; 	SIM_ID_NRS,		;;4
;; 	SIM_ID_IFF,		;;5
;; 	SIM_ID_OSD,		;;6
;; 	SIM_ID_HMS,		;;7
;; 	SIM_ID_EW,		;;8
;; 	SIM_ID_TACM,	;;9
;; 	SIM_ID_GUN,		;;10
;; 	SIM_ID_KSSM,	;;11
;; 	SIM_ID_SAAM,	;;12
;; 	SIM_ID_CIWS,	;;13
;; 	SIM_ID_SLTS,	;;14
;; 	SIM_ID_MASS,	;;15  ;; 131017 dha.jung DECOY -> MASS 변경
;; 	SIM_ID_TWS1,	;;16	120109 권상민 추가
;; 	SIM_ID_TWS2,		;;17	120109 권상민 추가
;; 	SIM_ID_ROCKET,	;;18	;;141007 네비웍스 정혜인 추가
;; 	SIM_ID_RCWS1, 	;;19	;;141007 네비웍스 정혜인 추가
;; 	SIM_ID_RCWS2,	;;20	;;141007 네비웍스 정혜인 추가
;; 	SIM_ID_KTSLM,	;;21	;;141007 네비웍스 정혜인 추가
;; 	SIM_ID_KVLA,	;;22	;;141007 네비웍스 정혜인 추가
;; 	SIM_ID_IRST	;;23	;;141007 네비웍스 정혜인 추가
	
;; };

;; enum _ENUM_SIM_POWER
;; {
;; 	SIM_GUN_POWER = 1,
;; 	SIM_KSSM_POWER,	;;2
;; 	SIM_SAAM_POWER,	;;3
;; 	SIM_SLTS_POWER	;;4
;; };

;; enum _ENUM_SIM_HIT_PROBABILITY
;; {
;; 	SIM_GUN_HIT_PROBABILITY = 1,
;; 	SIM_KSSM_HIT_PROBABILITY,	;;2
;; 	SIM_SAAM_HIT_PROBABILITY,	;;3
;; 	SIM_SLTS_HIT_PROBABILITY	;;4
;; };

;; enum _ENUM_OBJECT_CLASS										;; 100210 진광언 연원 수정								
;; {
;; 	OBJECT_CLASS_FIGHTER = 1,   ;;1 (전투기)
;;     OBJECT_CLASS_BOMBER,        ;;2 (폭격기)
;;     OBJECT_CLASS_ATTACKHEL,     ;;3 (공격헬기)
;;     OBJECT_CLASS_MISSILE,       ;;4 (유도탄)
;;     OBJECT_CLASS_FIGHTSHIP,     ;;5 (공격함)
;;     OBJECT_CLASS_CONVOY,        ;;6 (호위함)
;; 	OBJECT_CLASS_DESTROYER,     ;;7 (구축함)
;; 	OBJECT_CLASS_PATROL,        ;;8 (초계함)
;; 	OBJECT_CLASS_CRUISER,       ;;9 (순양함)
;; 	OBJECT_CLASS_SUBMARINE,     ;;10 (잠수함)
;; 	OBJECT_CLASS_TORPEDO,       ;;11 (어뢰)
;; 	OBJECT_CLASS_UNKNOWN_AIR,   ;;12 (미식별대공)
;; 	OBJECT_CLASS_UNKNOWN_SUR,   ;;13 (미식별대함)
;; 	OBJECT_CLASS_UNKNOWN_SUB,    ;;14 (미식별대잠)
;; 	OBJECT_CLASS_MIDDLE	 ;;15 (고속정)	;;141007 네비웍스 정혜인 추가
;; };

;; enum _ENUM_OBJECT_TYPE										;; 100122 진광언 연원 추가		;; 100210 진광언 연원 수정
;; {
;; 	OBJECT_TYPE_AIR = 1,        ;; 대공개체
;; 	OBJECT_TYPE_SUR = 2,        ;; 대함개체
;; 	OBJECT_TYPE_SUB = 4         ;; 대잠개체
;; };

;; enum _ENUM_TRN_SCENARIO          
;; {
;; 	SCENARIO_RUN_REQ = 50,    ;;50 (시나리오 시작요청)
;; 	SCENARIO_RUN_ACK,     ;;51 (시나리오 시작응답)
;; 	SCENARIO_STOP_REQ,     ;;52 (시나리오 종료요청)
;; 	SCENARIO_STOP_ACK,     ;;53 (시나리오 종료응답)
;; 	SCENARIO_PAUSE_REQ,     ;;54 (시나리오 일시정지요청)
;; 	SCENARIO_PAUSE_ACK,     ;;55 (시나리오 일시정지응답)
;; 	SCENARIO_RUN_UNAVAILABLE_NTFY,  ;;56 (시나리오 시작응답(다른시나리오 실행중))
;; 	SCENARIO_RUN_UNAVAILABLE_CSS_NTFY  ;;57 (시나리오 시작응답(실장비훈련 준비안됨))
;; };


;; /******************************************/
;; /******************************************/


;; /******************************************/
;; /******************************************/

;; /*enum _ENUM_SKP_1			
;; {			
;; 	SKP_MSG_PLATFORM_DETAILINFO	=	103	,
;; 	SKP_MSG_CONSOLE_MARKER	=	104	,
;; 	SKP_MSG_TRACKBALL_MARKER	=	105	,
;; 	SKP_MSG_TRACKDRAW_SET	=	110	,
;; 	SKP_MSG_CPA_CAL	=	114	,
;; 	SKP_MSG_DIST_DRAW	=	117	,
;; 	SKP_MSG_COMPASS_DRAW	=	118	,
;; 	SKP_MSG_LEAD_DRAW	=	119	,
;; 	SKP_MSG_APLANE_ADD	=	120	,
;; 	SKP_MSG_CPA_DRAW	=	121	,
;; 	SKP_MSG_DIST_HIDE	=	124	,
;; 	SKP_MSG_COMPASS_HIDE	=	125	,
;; 	SKP_MSG_LEAD_HIDE	=	126	,
;; 	SKP_MSG_APLANE_DEL	=	127	,
;; 	SKP_MSG_CPA_HIDE	=	128	,
;; 	SKP_MSG_COLLISION_AVOID	=	132	,
;; 	SKP_MSG_RPOSITION_MEASURE	=	133	,
;; 	SKP_MSG_DETAIL_DRAW	=	139	
;; };	*/	
;; enum _ENUM_SKP_1   
;; {   
;; 	SKP_MSG_PLATFORM_DETAILINFO = 103 ,
;; 	SKP_MSG_CONSOLE_MARKER = 104 ,
;; 	SKP_MSG_TRACKBALL_MARKER = 105 ,
;; 	SKP_MSG_TRACKDRAW_SET = 110 ,
;; 	SKP_MSG_AIS_SHOW = 111,		;;dhjung140728-add
;; 	SKP_MSG_AIS_HIDE = 112,		;;dhjung140728-add
;; 	SKP_MSG_POPUP_WINDOW = 113,	;;dhjung140728-add
;; 	SKP_MSG_CPA_CAL = 114 ,
;; 	SKP_MSG_AIS_TRACK_INFO = 115 ,
;; 	SKP_MSG_DIST_DRAW = 117 ,
;; 	SKP_MSG_COMPASS_DRAW = 118 ,
;; 	SKP_MSG_LEAD_DRAW = 119 ,
;; 	SKP_MSG_APLANE_ADD = 120 ,
;; 	SKP_MSG_CPA_DRAW = 121 ,
;; 	SKP_MSG_DIST_HIDE = 124 ,
;; 	SKP_MSG_COMPASS_HIDE = 125 ,
;; 	SKP_MSG_LEAD_HIDE = 126 ,
;; 	SKP_MSG_APLANE_DEL = 127 ,
;; 	SKP_MSG_CPA_HIDE = 128 ,
;; 	SKP_MSG_COLLISION_AVOID = 132 ,
;; 	SKP_MSG_RPOSITION_MEASURE = 133 ,
;; 	SKP_MSG_MAIN_CAPTURE = 135, 
;; 	SKP_MSG_DETAIL_DRAW = 139,
;; 	SKP_MSG_INFORMATION_SAVE = 140,
;; 	SKP_MSG_SUB_CAPTURE = 142 
;; }; 

;; enum _ENUM_SKP_2			
;; {			
;; 	SKP_MSG_TRAIN_READY	=	210	,
;; 	SKP_MSG_TRAIN_RUN	=	211	,
;; 	SKP_MSG_RTRACK_CREATE	=	212	,
;; 	SKP_MSG_INDIVIDUAL_DEL	=	213	
;; };			
;; enum _ENUM_SKP_3			
;; {			
;; 	SKP_MSG_TRACK_SUMMARY	=	303	,
;; 	SKP_MSG_EXT_DESIG	= 304,							;;ticket:192 20101027 채병민
;; 	SKP_MSG_EXT_DESIG_OPEN   = 305,						;;ticket:1458 101222 이흥배
;; 	SKP_MSG_SURV_RD_MDEL	=	310	,
;; 	SKP_MSG_SURV_RD_MTRACKING	=	311	,
;; 	SKP_MSG_AIR_RAM	=	312	,
;; 	SKP_MSG_AIR_POINT	=	313	,
;; 	SKP_MSG_EWCOMPASS_TRACK	=	314	,
;; 	SKP_MSG_TRACK_DEL	=	317	,
;; 	SKP_MSG_RAM_UPDATE	=	318	,
;; 	SKP_MSG_SHIP_RAM	=	319	,
;; 	SKP_MSG_SHIP_POINT	=	320	,
;; 	SKP_MSG_EM_CROSSING	=	321	,
;; 	SKP_MSG_MISSING_TRACK_MAINTAIN	=	324	,
;; 	SKP_MSG_POSITION_MOVE	=	325	,
;; 	SKP_MSG_DATAM	=	326	,
;; 	SKP_MSG_SUBMARINE_TRACK	=	327	,
;; 	SKP_MSG_WAVECOMPASS_TRACK	=	328	,
;; 	SKP_MSG_TRACK_DETAILINFO	=	332	,
;; 	SKP_MSG_REF_POINT	=	333	,
;; 	SKP_MSG_EARTH_POINT	=	334	,
;; 	SKP_MSG_WAVE_CROSSING	=	335	,
;; 	SKP_MSG_SHORTTERM_TRACE_SET	=	339	,
;; 	SKP_MSG_LONGTERM_TRACE_SET	=	340	,	
;; 	SKP_MSG_TRACK_SEARCH_SUPPORT	=	341	,	;;dhjung140728-탐지추적지원add
;; 	SKP_MSG_AIR_ELEVATION_HISTORY	=	342		;;dhjung140728-대공표적 고도add
;; };			
;; enum _ENUM_SKP_4			
;; {			
;; 	SKP_MSG_TRACK_FUSION	=	403	,
;; 	SKP_MSG_RELATION	=	404	,
;; 	SKP_MSG_AUTO_RELATION_SET	=	410	,
;; 	SKP_MSG_RELATION_RELEASE	=	411	,
;; 	SKP_MSG_NEUTRAL	=	413	,
;; 	SKP_MSG_UNKNOWN	=	414	,
;; 	SKP_MSG_COMPASSTRACK_COMBINATION	=	417	,
;; 	SKP_MSG_COMPASSCROSSING_MEASURE	=	418	,
;; 	SKP_MSG_TRACK_APPOINT_QUESTION	=	419	,
;; 	SKP_MSG_FRIEND	=	420	,
;; 	SKP_MSG_ALMOST_FRIEND	=	421	,
;; 	SKP_MSG_COMPASSTRACK_COMBINATION_RELEASE	=	424	,
;; 	SKP_MSG_ENEMY	=	427	,
;; 	SKP_MSG_ALMOST_ENEMY	=	428	,
;; 	SKP_MSG_PARING	=	431	,
;; 	SKP_MSG_COMPARE	=	432	,
;; 	SKP_MSG_DOUBT_ENEMY	=	434	,
;; 	SKP_MSG_VITUAL_ENEMY	=	435	,
;; 	SKP_MSG_PARING_RELEASE	=	438	,
;; 	SKP_MSG_COMPARE_RELEASE	=	439	
;; };			
;; enum _ENUM_SKP_5			
;; {			
;; 	SKP_MSG_AIRTHREAT_MSET = 503 ,  ;;위치수정				;; ticket:348 20101028 채병민 2차개발장비(GUN)
;; 	SKP_MSG_AIRTHREAT_MDEL = 510 ,  ;;위치수정				;; ticket:348 20101028 채병민 2차개발장비(GUN)
;; 	SKP_MSG_CIWS_MALLOC = 533 ,
;; 	SKP_MSG_CIWS_MDISALLOC = 540,
;; 	SKP_MSG_MAX_AIR_THREAT_SET = 541, ;; 최대위협 설정		;; ticket:2313 20110822 김기표
;; 	SKP_MSG_MAX_AIR_THREAT_UNSET = 542 ;; 최대위협 해제		;; ticket:2313 20110822 김기표
;; };			
;; enum _ENUM_SKP_6			
;; {			
;; 	SKP_MSG_SHIPTHREAT_MSET = 603 ,     ;;위치수정					;; ticket:348 20101028 채병민 2차개발장비(GUN)
;; 	SKP_MSG_SHIPTHREAT_MDEL = 610 ,     ;;위치수정					;; ticket:348 20101028 채병민 2차개발장비(GUN)
;; 	SKP_MSG_FASTMOVE_POSITION_SEND  =  614,            ;;변경		;; ticket:348 20101028 채병민 2차개발장비(GUN)
;; 	SKP_MSG_FC2_MALLOC = 618 ,
;; 	SKP_MSG_FC3_MALLOC = 619 , 
;; 	SKP_MSG_FC2_MDISALLOC = 625 ,
;; 	SKP_MSG_FC3_MDISALLOC = 626 , 
;; 	SKP_MSG_S2S_TRACK_SET = 667 ,
;; 	SKP_MSG_S2S_COMBAT_CANCEL = 668 ,
;; 	SKP_MSG_S2S_FIRE_STOP = 669 ,
;; 	SKP_MSG_S2E_TRACK_SET = 681 ,
;; 	SKP_MSG_S2E_COMBAT_CANCEL = 682 ,
;; 	SKP_MSG_S2E_FIRE_STOP = 683,
;; 	SKP_MSG_S2E_DBTRACK_SET = 684
;; };			
;; enum _ENUM_SKP_7			
;; {			
;; 	SKP_MSG_SUBTHREAT_MSET      =   703	,		;;ticket:1474 101222 채병민
;; 	SKP_MSG_SUBTHREAT_MDEL      =   710	,		;;ticket:1474 101222 채병민
;; 	SKP_MSG_FOC			=	724	,
;; 	SKP_MSG_TACM_MALLOC	=	731	,
;; 	SKP_MSG_SLTS_MALLOC	=	732	,
;; 	SKP_MSG_KVLA_MALLOC	=	733	,
;; 	SKP_MSG_TACM_MDISALLOC	=	738	,
;; 	SKP_MSG_SLTS_MDISALLOC	=	739	,
;; 	SKP_MSG_KVLA_MDISALLOC	=	740	
;; };			
;; enum _ENUM_SKP_8			
;; {			
;; 	;; 131017 dha.jung DECOY -> MASS 변경
;; 	SKP_MSG_MASS_OP_TI_C	=	817	,
;; 	SKP_MSG_MASS_OP_TI_D	=	818	,
;; 	SKP_MSG_MASS_OP_TI_DS	=	819	,
;; 	SKP_MSG_MASS_OP_TI_CS	=	820	,
;; 	SKP_MSG_MASS_VETO	=	821	,
;; 	SKP_MSG_MASS_TI_CANCEL	=	824	,
;; 	SKP_MSG_MASS_VETO_CANCEL	=	828	,
;; 	SKP_MSG_MASS_MAN_TI_C	=	831	,
;; 	SKP_MSG_MASS_MAN_TI_D	=	832	,
;; 	SKP_MSG_MASS_MAN_TI_DS	=	833	,
;; 	SKP_MSG_MASS_MAN_TI_CS	=	834	,
;; 	SKP_MSG_MASS_EMER_TI	=	835 ,	;;ticket:35	2013.03.30	hcparker
;; 	SKP_MSG_MASS_MAN_TI	=	836		;;ticket:35	2013.03.30	hcparker
;; };			
;; enum _ENUM_SKP_9			
;; {			
;; 	SKP_MSG_EOTS_JOYSTICK_ALLOC	=	903	,
;; 	SKP_MSG_EOTS_JOYSTICK_DISALLOC	=	904	,
;; 	SKP_MSG_EOTS_TRACKING_CANCEL	=	910	,
;; 	SKP_MSG_EOTS_FC1_DEPENDENCY	=	911	,
;; 	SKP_MSG_EOTS_IRSENSOR	=	913	,
;; 	SKP_MSG_EOTS_ZOOM_IN	=	914	,
;; 	SKP_MSG_EOTS_STANDBY = 917,					
;; 	SKP_MSG_EOTS_FC2_DEPENDENCY	=	918	,
;; 	SKP_MSG_EOTS_CAMERA	=	920	,
;; 	SKP_MSG_EOTS_ZOOM_OUT	=	921	,
;; 	SKP_MSG_EOTS_FC3_DEPENDENCY	=	925	,
;; 	SKP_MSG_EOTS_ACQUISTION_DEL	=	927	,
;; 	SKP_MSG_EOTS_MTRACKING	=	931	,
;; 	SKP_MSG_EOTS_ACQUISTION_CREATE	=	934	,
;; 	SKP_MSG_EOTS_ATRACKING	=	938	,
;; 	SKP_MSG_EOTS_TI_UPDATE	=	939	,
;; 	SKP_MSG_EOTS_QUICK_COUNTERPLAN	=	940 ,
;; 	SKP_MSG_EOTS_TRACK_CHANGE	=	941	,
;; 	SKP_MSG_EOTS_GUN_DEPENDENCY =   932,				;;ticket:1270 101123 김종화
;; 	SKP_MSG_EOTS_ACQUISTION_PLUS = 942,		;;OT-1 by MLS-II
;; 	SKP_MSG_EOTS_ACQUISTION_MINUS = 943,	;;OT-1 by MLS-II
;; };			
;; enum _ENUM_SKP_10			
;; {			
;; 	SKP_MSG_TRS_JOYSTICK_ALLOC = 1003 ,
;; 	SKP_MSG_TRS_JOYSTICK_DISALLOC = 1004 ,
;; 	SKP_MSG_TRS_STANDBY = 1010 ,
;; 	SKP_MSG_TRS_LOWA_TRACKING_SET = 1011 ,
;; 	SKP_MSG_TRS_NOSE_TRACKING = 1012 ,
;; 	SKP_MSG_TRS_ZOON_IN = 1014 ,       ;;ticket:1336 101130 김종화
;; 	SKP_MSG_TRS_DIRECTOR_OPERATE = 1017 ,    ;;ticket:1336 101130 김종화
;; 	SKP_MSG_TRS_LOWA_TRACKING_RELEASE = 1018 ,
;; 	SKP_MSG_TRS_CENTER_TRACKING = 1019 ,
;; 	SKP_MSG_TRS_ZOON_OUT = 1021 ,      ;;ticket:1336 101130 김종화
;; 	SKP_MSG_TRS_DIRECTOR_LOCK = 1024 ,
;; 	SKP_MSG_TRS_MISSLE_WARNING_SET = 1025 ,
;; 	SKP_MSG_TRS_MISSLE_WARNING_RELEASE = 1032 ,
;; 	SKP_MSG_TRS_RANGEGATE_PLUS = 1033 ,	;;ticket:2550 20120319 김종화
;; 	SKP_MSG_TRS_RANGEGATE_MINUS = 1034 ,		;;ticket:2550 20120319 김종화
;; 	SKP_MSG_TRS_2NDTRACK_SEARCH = 1038 ,
;; 	SKP_MSG_TRS_2NDTRACK_DIST_MODIFY = 1039 ,
;; 	SKP_MSG_TRS_1STTRACK_DIST_MODIFY = 1040 ,   ;;ticket:1201 101115 채병민
;; 	SKP_MSG_TRS_TRACK_CHANGE = 1041,      ;;ticket:1201 101115 채병민
;; 	SKP_MSG_TRS_SECTOR_SEARCH = 1042
;; };			
;; enum _ENUM_SKP_11			
;; {			
;; 	SKP_MSG_LINK11_TRACK_TRANSMIT_START	=	1110	,
;; 	SKP_MSG_LINK11_PU_INFO_UPDATE_REQ	=	1111	,
;; 	SKP_MSG_LINK11_EMERGENCY_TRACK_START	=	1112	,
;; 	SKP_MSG_LINK11_FORCE_TELL_TRACK_START	=	1114	,
;; 	SKP_MSG_LINK11_TRACK_TRANSMIT_PROHIBIT	=	1117	,
;; 	SKP_MSG_LINK11_EMERGENCY_TRACK_STOP	=	1119	,
;; 	SKP_MSG_LINK11_FORCE_TELL_TRACK_STOP	=	1121	,
;; 	SKP_MSG_LINK11_IFF_UPDATE = 1124,  ;;Ticket:1509 110106 송영환
;; 	SKP_MSG_LINK11_POINTER_SEND	=	1125	,
;; 	SKP_MSG_LINK11_TRACK_ENV_CHANGE	=	1126	,
;; 	SKP_MSG_LINK11_TRAIN_TRACK_MARKER_CONFIRM	=	1128	,
;; 	SKP_MSG_LINK11_IFF_CLEAR = 1131,   ;;Ticket:1509 110106 송영환
;; 	SKP_MSG_LINK11_COMBAT_ORDER	=	1132	,
;; 	SKP_MSG_LINK11_TRACK_ID_CHANGE	=	1133	,
;; 	SKP_MSG_LINK11_TAG_SEND	=	1134	,
;; 	SKP_MSG_LINK11_SPECIAL_CODE = 1138 , ;;Ticket:1509 110106 송영환	
;; 	SKP_MSG_LINK11_AIRCRAFT_CONTROL_TRANSFER_REQUEST = 1139 ;;added by hcparker
;; };			
;; enum _ENUM_SKP_12			
;; {			
;; 	SKP_MSG_ISDL_TRACK_TRANSMIT_START	=	1210	,
;; 	SKP_MSG_ISDL_EMERGENCY_TRACK_START	=	1212	,
;; 	SKP_MSG_ISDL_FORCE_TELL_TRACK_START	=	1214	,
;; 	SKP_MSG_ISDL_TRACK_TRANSMIT_PROHIBIT	=	1217	,
;; 	SKP_MSG_ISDL_EMERGENCY_TRACK_STOP	=	1219	,
;; 	SKP_MSG_ISDL_FORCE_TELL_TRACK_STOP	=	1221	,
;; 	SKP_MSG_ISDL_POINTER_SEND	=	1225	,
;; 	SKP_MSG_ISDL_TRAIN_TRACK_MARKER_CONFIRM	=	1228	,
;; 	SKP_MGS_ISDL_AIRCRAFT_TRANSFER_REQ	=	1231	,
;; 	SKP_MSG_ISDL_TRACK_ID_CHANGE	=	1233	,
;; 	SKP_MSG_ISDL_TAG_SEND	=	1234	
;; };			

;; enum _ENUM_SKP_13			
;; {			
;; 	SKP_MSG_OPEN_FIRE = 1301 ,
;; 	SKP_MSG_HOLD_FIRE = 1302 ,
;; 	SKP_MSG_ITRACK_SET = 1303 ,
;; 	SKP_MSG_ITRACK_RELEASE = 1304 ,
;; 	SKP_MSG_HIT = 1305 ,
;; 	SKP_MSG_VETO = 1306 ,
;; 	SKP_MSG_HIT_FAIL = 1307 ,
;; 	SKP_MSG_VETO_CANCEL = 1308 ,
;; 	SKP_MSG_FC1_MALLOC = 1309 ,
;; 	SKP_MSG_FC4_MALLOC = 1310 ,					;;FC1 직접할당(PKXB)
;; 	SKP_MSG_FC1_MDISALLOC = 1311 ,
;; 	SKP_MSG_FC4_MDISALLOC = 1312 ,				;;FC1 할당해제(PKXB)
;; 	SKP_MSG_GUN_MALLOC = 1313 ,
;; 	SKP_MSG_SAAM_MALLOC = 1314 ,
;; 	SKP_MSG_CIWS_POSITION_SEND = 1315 ,
;; 	SKP_MSG_GUN_MDISALLOC = 1316 ,
;; 	SKP_MSG_SAAM_MDISALLOC = 1317 ,
;; 	SKP_MSG_CIWS_POSITION_SEND_CANCEL = 1318 ,
;; 	SKP_MSG_TDL_SIMULTANEOUS_TRACK_COUNT_SET = 1319,
;; 	SKP_MSG_GUN_ROUND_ADD = 1320,    
;; 	SKP_MSG_GUN_ROUND_DEDUCT = 1321, 
;; 	SKP_MSG_GUN_ROUND_SET =1322,

;; 	SKP_MSG_SAAM_EMERGENCY_FIRE =1323,     ;;신규추가				;; ticket: 20120419 정동한 2차개발장비(SAAM)		

;; 	SKP_MSG_FC1_GUN_ALLOC =1324,
;; 	SKP_MSG_FC2_GUN_ALLOC =1325,				;;FC2-함포 직접할당
;; 	SKP_MSG_FC3_GUN_ALLOC =1326,				;;FC3-함포 직접할당
;; 	SKP_MSG_FC4_GUN_ALLOC =1327,				;;FC1-함포 직접할당(PKXB)

;; 	SKP_MSG_WC_WEAPON_FREE =1328,
;; 	SKP_MSG_WC_WEAPON_TIGHT =1329,
;; 	SKP_MSG_WC_WEAPON_SAFE =1330,

;; 	SKP_MSG_RCWS_P_MALLOC =1331,					;;12.7mm(P) 직접할당
;; 	SKP_MSG_RCWS_S_MALLOC =1332,					;;12.7mm(S) 직접할당
;; 	SKP_MSG_RCWS_P_MDISALLOC =1333,				;;12.7mm(P) 할당해제
;; 	SKP_MSG_RCWS_S_MDISALLOC =1334,				;;12.7mm(S) 할당해제				

;; 	SKP_MSG_ROCKET_MALLOC =1339,						;;130mm 직접할당
;; 	SKP_MSG_ROCKET_MDISALLOC =1340,					;;130mm 할당해제
;; 	SKP_MSG_ROCKET_EMERGENCY_FIRE =1341,					;;130mm 비상폭파
;; };

;; enum _ENUM_SKP_14			
;; {
;; 	SKP_MSG_JTDLS_INTELLIGENCE_INPUT = 1401	,		;;첩보정보입력
;; 	SKP_MSG_JTDLS_WARNER_INPUT = 1402,				;;위협경고 입력
;; 	SKP_MSG_JTDLS_TRACK_TRANSMIT_START = 1403, 		;; 표적송신
;; 	SKP_MSG_JTDLS_TRACKINFO_UPDATE_REQ = 1404,		;;정보갱신요청
;; 	SKP_MSG_JTDLS_EMERGENCY_TRACK_START	= 1405,		;; 긴급송신 설정
;; 	SKP_MSG_JTDLS_MANUAL_CORELATION_START =	1406,	;;수동비교일치
;; 	SKP_MSG_JTDLS_FORCE_TELL_TRACK_START =	1407,	;;강제송신 설정
;; 	SKP_MSG_JTDLS_TRACK_TRANSMIT_PROHIBIT =	1408,	;;표적송신 금지
;; 	SKP_MSG_JTDLS_EMERGENCY_TRACK_STOP =	1409,	;;긴급송신해제
;; 	SKP_MSG_JTDLS_MANUAL_CORELATION_STOP =	1410,	;;수동재분리
;; 	SKP_MSG_JTDLS_FORCE_TELL_STOP = 1411,			;; 강제송신해제	
;; 	SKP_MSG_JTDLS_POINTER_SEND =	1412,			;;포인터 송신
;; 	SKP_MSG_JTDLS_TRACKINFO_COMPARE =	1413,		;;표적정보비교
;; 	SKP_MSG_JTDLS_TRACK_PAIRING_START =	1414,		;;페어링
;; 	SKP_MSG_JTDLS_COMBAT_ORDER = 1415,				;;명령송신
;; 	SKP_MSG_JTDLS_TAG_SEND = 1416,					;;TAG 송신
;; 	SKP_MSG_JTDLS_ASSOCIATION_START	= 1417,			;;연관
;; 	SKP_MSG_JTDLS_TRACK_PAIRING_STOP = 1418,		;;페어링 해제
;; 	SKP_MSG_JTDLS_PLATFORM_SYSTEM_STATUS_START = 1419,		;;플랫폼/체계상태 송신
;; 	SKP_MSG_JTDLS_REFERENCE_POINT =	1420,			;;참조점 생성
;; 	SKP_MSG_JTDLS_ASSOCIATION_STOP = 1421,			;;연관해제
;; 	SKP_MSG_JTDLS_TRACK_NUMBER_CHANGE = 1422,			;;표적번호 변경
;; 	SKP_MSG_JTDLS_CDO = 1423,						;;CDO
;; 	SKP_MSG_JTDLS_IFF_SIF_MNG = 1424,			;;IFF/SIF Mng
;; };

;; enum _ENUM_SKP_15			
;; {
;; 	SKP_MSG_SRS_TRACKING_START = SKP_MSG_SURV_RD_MTRACKING, ;;탐색레이더 추적개시
;; 	SKP_MSG_SRS_TRACKING_STOP = SKP_MSG_SURV_RD_MDEL, ;;탐색레이더 추적해제
;; 	SKP_MSG_SRS_EMCOM_OFF = 1501, ;; 송신승인
;; 	SKP_MSG_SRS_EMCOM_ON = 1502, ;;송신차단
;; 	SKP_MSG_SRS_TRANSMITER_START = 1503, ;;송신기 동작
;; 	SKP_MSG_SRS_TRANSMITER_STOP = 1504, ;;송신기 대기
;; 	SKP_MSG_SRS_SHORT_RANGE = 1505, ;;탐색근거리
;; 	SKP_MSG_SRS_LONG_RANGE = 1506, ;;탐색원거리
;; 	SKP_MSG_SRS_CLUTTER_ON = 1507, ;;클러터 동작
;; 	SKP_MSG_SRS_CLUTTER_OFF = 1508, ;;클러터 중지
;; 	SKP_MSG_SRS_THRESHOLD_FIXED = 1509, ;;임계치 고정
;; 	SKP_MSG_SRS_THRESHOLD_MANUAL = 1510, ;;임계치 수동
;; 	SKP_MSG_SRS_THRESHOLD_UP = 1511, ;;임계치 +
;; 	SKP_MSG_SRS_THRESHOLD_DOWN = 1512, ;;임계치 -
;; 	SKP_MSG_SRS_GAIN_FIXED = 1513, ;;이득치 고정
;; 	SKP_MSG_SRS_GAIN_MANUAL = 1514, ;; 이득치 수동
;; 	SKP_MSG_SRS_GAIN_UP = 1515, ;;이득치 +
;; 	SKP_MSG_SRS_GAIN_DOWN = 1516, ;;이득치 -
;; 	SKP_MSG_SRS_VIDEO_SETUP = 1517, ;;비디오설정
;; 	SKP_MSG_SRS_BLANK_SECTOR = 1518,;;송신금지구역
;; 	SKP_MSG_SRS_SUFRACE_AIA = 1519, ;;대함AIA
;; 	SKP_MSG_SRS_AONI = 1520, ;;비관심구역
;; 	SKP_MSG_SRS_AIR_AIIA = 1521, ;;대공 AIIA
;; 	SKP_MSG_SRS_FOCUS_AIR = 1522, ;; 집중 대공/대함
;; 	SKP_MSG_SRS_LONG_RANGE_AIR_SURF = 1523, ;; 장거리 대공/대함
;; 	SKP_MSG_SRS_SHORT_RANGE_AIR_SURF= 1524, ;; 근거리 대공/대함
;; };

;; enum _ENUM_SKP_16			
;; {
;; 	SKP_MSG_GUN_SURBO_ON = 1601,		;;서보켬
;; 	SKP_MSG_GUN_PRESS_ON = 1602,		;;유압켬
;; 	SKP_MSG_GUN_FUSESTILL_ON = 1603,	;;신관마비켬
;; 	SKP_MSG_GUN_SURBO_PRESS_OFF = 1604,	;;서보/유압끔
;; 	SKP_MSG_GUN_FUSESTILL_OFF = 1605,	;;신관마비끔
;; 	SKP_MSG_GUN_FIRE_ALLOW = 1606,		;; 함포발사승인
;; 	SKP_MSG_GUN_FIRE_STOP = 1607,		;;함포발사금지
;; 	SKP_MSG_GUN_SURFACE_SPOTTING = 1608,;; 대함탄착수정
;; 	SKP_MSG_GUN_GENERAL_SETTING = 1609,	;;일반설정
;; 	SKP_MSG_GUN_AIR_SPOTTING = 1610,	;;대공탄착수정
;; 	SKP_MSG_GUN_OFFSET_LEFT = 1611,		;;전이각<-
;; 	SKP_MSG_GUN_OFFSET_RIGHT = 1612,	;;전이각->
;; 	SKP_MSG_GUN_INIT_POS	= 1613,		;;포제자리


;; };

;; enum _ENUM_SKP_17		
;; {
;; 	SKP_MSG_EMERGENCY_TRACK_INDICATE = 1701,	;;긴급 표적지시

;; 	SKP_MSG_TRACK_INDICATE_CANCEL = 1703,		;;표적지시 취소

;; 	SKP_MSG_MANUAL_TRACK_INDICATE = 1705,		;;수동표적지시


;; };

;; enum _ENUM_SKP_18			
;; {
;; 	SKP_MSG_GUN_REMOTE_REQ_ON = 1801,	;;원격요청
;; 	SKP_MSG_GUN_REMOTE_REQ_CLEAR = 1802,	;;원격요청해제
;; 	SKP_MSG_GUN_MOTOR_ON = 1803,		;;모터 켬
;; 	SKP_MSG_GUN_MOTOR_OFF = 1804,		;;모터 끔
;; 	SKP_MSG_GUN_FIRE_START_ALERT = 1805,	;;사격시작 경보
;; 	SKP_MSG_GUN_FIRE_STOP_ALERT = 1806,	;; 사격종료 경보
;; 	SKP_MSG_GUN_TAGET_MODE = 1807,		;;조준모드 표적점

;; };

;; /******************************************/
;; /******************************************/

;; #endif

;; #if defined _M_IX86
;; #pragma comment(linker,"/manifestdependency:\"type='win32' name='Microsoft.Windows.Common-Controls' version='6.0.0.0' processorArchitecture='x86' publicKeyToken='6595b64144ccf1df' language='*'\"")
;; #elif defined _M_IA64
;; #pragma comment(linker,"/manifestdependency:\"type='win32' name='Microsoft.Windows.Common-Controls' version='6.0.0.0' processorArchitecture='ia64' publicKeyToken='6595b64144ccf1df' language='*'\"")
;; #elif defined _M_X64
;; #pragma comment(linker,"/manifestdependency:\"type='win32' name='Microsoft.Windows.Common-Controls' version='6.0.0.0' processorArchitecture='amd64' publicKeyToken='6595b64144ccf1df' language='*'\"")
;; #else
;; #pragma comment(linker,"/manifestdependency:\"type='win32' name='Microsoft.Windows.Common-Controls' version='6.0.0.0' processorArchitecture='*' publicKeyToken='6595b64144ccf1df' language='*'\"")
;; #endif
