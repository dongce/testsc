;; (testsc-init 1 )
;; (testsc-track-nset 1 '(network_kinetics.x_position 10 ) '(transmission_info.AFRAME_1 12))
;; (map (lambda (x) (testsc-track-nget 1 x)) '(transmission_info.AFRAME_1 network_kinetics.x_position) )

(case (testsc-get-testnum)
  ((9) (define m2dm 5000))
  ((10) (define cea1 3000))
  ((11) (define m2dm 50000) (define mpstdm1 3000))
  ((38) (define m2dm 50000) (define mpstdm1 3000))
  ((39) (define m2dm 0) (define mpstdm1 3000))
  ((40) (define m2dm 50000) (define mpstdm1 3000))
  ((41) (define m2dm 50000) (define mpstdm1 3000))
  )

(if (> (testsc-get-testnum)  20)
    (define r2d (* 2 (testsc-get-testnum))))

(if (> (testsc-get-testnum)  25)
    (define r2d (- (testsc-get-testnum) 25)))


(testcase-values 40 r2icd 
                 (gen-values
                  '(5 10 15 20 25 30 35 40 45 50 55 60 65 70 75)
                  (lambda (x) (+ x 1 ))
                  (lambda (x) (- x 1 ))
                  ))




