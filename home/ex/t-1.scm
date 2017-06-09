;;; 상수 정의 - 공통파일을 만들어 테스트간에 공유할 수 있다. 
(define   pri_surf_ampl_amphibious                 4 )
(define   sec_surf_ampl_frigate                    11 )
(define   sec_surf_ampl_landing_ship               12 )


;;; 테스트변수 
(define priampl 0)
(define secampl 0)

(foreach-tnum
 1                                      ; testcase 시작값
 (lambda (x)                            ; testcase 번호에서 testcase 시작값을 뺀 번째 조합 값을 파라미터로 전달한다. 
   (set! priampl (nth 0 x))             ; 조합값의 첫번째 값은 priampl
   (set! secampl (nth 1 x)))            ; 조함값의 두번째 값은 secampl
 (combi (num-list 0 8) (num-list 0 30)))

;;; combi (num-list 0 8 ) (num-list 0 30 ) 
;;; -> ((0 0 ) (0 1 ) (0 2 )... (0 29) (1 0 ) (1 1 ) ...)
;;;     ↑ testcase 시작 값과 같은 경우 lambda 함수로 전달
;;;            ↑ testcase 시작 값보다 1 클 경우 lambda 함수로 전달

(case (testsc-get-testnum)              ; C 의 switch 문에 해당 - testcase 번호
  ((241)                                ; C 의 case 문에 해당 - testcase 번호가 241 일 경우  
   (set! secampl -1)                    ; 테스트변수 secampl 을 -1 로 설정한다.
   (set! priampl -1))                   ; 테스트변수 priampl 을 -1 로 설정한다.
  ((242 243)                            ; 테스트번호 나열이 가능하다. 
   (set! priampl pri_surf_ampl_amphibious)      ; define 으로 정의된 상수값을 사용할 수 있다. 
   (set! secampl sec_surf_ampl_landing_ship)))  ; define 으로 정의된 상수값을 사용할 수 있다. 

