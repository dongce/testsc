
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(case (testsc-get-testnum)
  ((9)
   (define testsc  1)
    (define tc system_types-stop) 
    (define ts system_types-running) 
    (define noc 1) 
    (define nic 1) 
    )
  ((10)
   (define testsc  1)
    (define tc system_types-start) 
    (define ts -1) 
    (define noc 1) 
    (define nic 1) 
    )

  ((11)
   (define testsc  1)
    (define tc system_types-start) 
    (define ts system_types-running) 
    (define noc 1) 
    (define nic 2) 
    )
  
  
  
  )

