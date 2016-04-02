
;; (testsc-require l11const)
;; (testsc-require system_types)
;; (testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((3)
   (define testsc 1 )
   (anset 0 '_update_request.counter 1 )
   (anset 1 '_update_request.counter 0 )
   )
  ((4)
   (define testsc 1 )
   (anset 0 '_update_request.counter 1 )
   (anset 1 '_update_request.counter 1 )
   )
  )

