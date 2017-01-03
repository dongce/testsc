
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(define ew_original_order            0 )
(define ew_machine_receipt_for_order 1 )
(define ew_machine_receipt_for_ackn  2 )
(define cantco                       3 )
(define ew_valid                     4 )
(define ew_invalid                   5 ) 


(case (testsc-get-testnum)
  ((3)
   (define testsc 1 )
   (define mas 5 )
   (define ewiv 1 )
   (define ewor cantco )
   (define ewod 3 )
   (for-each (lambda (x) (anset x)) (num-list 0 5))
   )

  (( 9)
   (define testsc 1 )
   (define mas 5 )
   (define ewiv 1 )
   (define ewor cantco )
   (define ewod 2 )
   (for-each (lambda (x) (anset x)) (num-list 0 5))
   )
  ((10)
   (define testsc 1 )
   (define mas 5 )
   (define ewiv 1 )
   (define ewor cantco )
   (define ewod 5 )
   (for-each (lambda (x) (anset x)) (num-list 0 5))
   )
  ((11)
   (define testsc 1 )
   (define mas 5 )
   (define ewiv 1 )
   (define ewor cantco )
   (define ewod 4 )
   (for-each (lambda (x) (anset x)) (num-list 0 5))
   )
  ((12)
   (define testsc 1 )
   (define mas 5 )
   (define ewiv 1 )
   (define ewor cantco )
   (define ewod 0 )
   (for-each (lambda (x) (anset x)) (num-list 0 5))
   )
  ((13)
   (define testsc 1 )
   (define mas 5 )
   (define ewiv 1 )
   (define ewor cantco )
   (define ewod 3 )
   (for-each (lambda (x) (anset x)) (num-list 0 5))
   )
  ((14)
   (define testsc 1 )
   (define mas 5 )
   (define ewiv 1 )
   (define ewor cantco )
   (define ewod 1)
   (for-each (lambda (x) (anset x)) (num-list 0 5))
   )
  ((15)
   (define testsc 1 )
   (define mas 5 )
   (define ewiv 1 )
   (define ewor cantco )
   (define ewod 1)
   (define punotvalid 1)
   (for-each (lambda (x) (anset x)) (num-list 0 5))
   )
  
  )

