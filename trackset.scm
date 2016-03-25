;; (testsc-set-debug 1)
(testsc-debug "trackset.scm")

(testsc-debug "trackset done ")
(testsc-debug (number->string 
               (nth (- 88 60)
                    (gen-values
                     (map (lambda (x) (* x 1828.8))'(5 10 15 20 25 30 35 40 45 50 55 60 65 70 75))
                     (lambda (x)  (+ x (* 1828.8  1) ))
                     (lambda (x)  (- x (* 1828.8  1) ))
                     ))))

(if (> (testsc-get-testnum)  25)
    (begin 
      (testsc-track-nset 1 '(general.asw_bearing_range_accuracy_validity  1))
      (testsc-track-nset 1 '(general.bearing_accuracy_valid 1))
      ))

(testsc-debug "trackset.scm 1 ")

(case (testsc-get-testnum)
  ((27) (define r2d (- 5   1 )))
  ((28) (define r2d (- 10  1 )))
  ((19) (define r2d (- 15  1 )))
  ((30) (define r2d (- 20  1 )))
  ((31) (define r2d (- 30  1 )))
  )
(testsc-set-debug 0)

(testsc-debug "trackset.scm 2 ")

;; (testcase-track-nset 40 1 'general.asw_bearing_range_accuracy
;;                  (gen-values
;;                   '(5 10 15 20 25 30 35 40 45 50 55 60 65 70 75)
;;                   (lambda (x) (* 1828.8 (+ x 1 )))
;;                   (lambda (x) (* 1828.8 (- x 1 )))
;;                   ))

(if (and
     (>=   (testsc-get-testnum) 60)
     (>    80 (testsc-get-testnum) ))
    
    (testcase-track-nset 60 1 'general.asw_bearing_range_accuracy
                         (gen-values
                          (map (lambda (x) (* x 1828.8))'(5 10 15 20 25 30 35 40 45 50 55 60 65 70 75))
                          (lambda (x)  (+ x (* 1828.8  1) ))
                          (lambda (x)  (- x (* 1828.8  1) ))
                          )))




;; (testsc-set-debug 1)
(if (>=   (testsc-get-testnum) 80)
    (testcase-track-nset 80 1 'general.asw_bearing_range_accuracy
                         (gen-values
                          (map (lambda (x) (* x 1828.8))'(35 40 45 50 55 60 65 70 75 80 85))
                          (lambda (x)  (+ x (* 1828.8  1) ))
                          (lambda (x)  (- x (* 1828.8  1) ))
                          )))
;; (testsc-set-debug 1)
(if (= 35 (testsc-get-testnum) )
    (begin
      (testsc-set-debug 1)
      (testsc-track-nset 1 '(general.asw_bearing_second_acoustic_freq_validity 1 ))
      (testsc-track-nset 1 `(general.asw_bearing_second_acoustic_freq  ,(* 42767 0.125 ) ))
      (define cea1 400)
      ))

    

(testsc-debug "trackset.scm 3 ")
