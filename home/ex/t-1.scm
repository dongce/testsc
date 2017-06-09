;;; ��� ���� - ���������� ����� �׽�Ʈ���� ������ �� �ִ�. 
(define   pri_surf_ampl_amphibious                 4 )
(define   sec_surf_ampl_frigate                    11 )
(define   sec_surf_ampl_landing_ship               12 )


;;; �׽�Ʈ���� 
(define priampl 0)
(define secampl 0)

(foreach-tnum
 1                                      ; testcase ���۰�
 (lambda (x)                            ; testcase ��ȣ���� testcase ���۰��� �� ��° ���� ���� �Ķ���ͷ� �����Ѵ�. 
   (set! priampl (nth 0 x))             ; ���հ��� ù��° ���� priampl
   (set! secampl (nth 1 x)))            ; ���԰��� �ι�° ���� secampl
 (combi (num-list 0 8) (num-list 0 30)))

;;; combi (num-list 0 8 ) (num-list 0 30 ) 
;;; -> ((0 0 ) (0 1 ) (0 2 )... (0 29) (1 0 ) (1 1 ) ...)
;;;     �� testcase ���� ���� ���� ��� lambda �Լ��� ����
;;;            �� testcase ���� ������ 1 Ŭ ��� lambda �Լ��� ����

(case (testsc-get-testnum)              ; C �� switch ���� �ش� - testcase ��ȣ
  ((241)                                ; C �� case ���� �ش� - testcase ��ȣ�� 241 �� ���  
   (set! secampl -1)                    ; �׽�Ʈ���� secampl �� -1 �� �����Ѵ�.
   (set! priampl -1))                   ; �׽�Ʈ���� priampl �� -1 �� �����Ѵ�.
  ((242 243)                            ; �׽�Ʈ��ȣ ������ �����ϴ�. 
   (set! priampl pri_surf_ampl_amphibious)      ; define ���� ���ǵ� ������� ����� �� �ִ�. 
   (set! secampl sec_surf_ampl_landing_ship)))  ; define ���� ���ǵ� ������� ����� �� �ִ�. 

