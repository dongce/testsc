
(testsc-require l11const)
(testsc-require system_types)
(testsc-require dlplink11types)

(define testsc 1 )
(define itn 1 )



(case (testsc-get-testnum)
  ((9)
   (define testsc 1 )
   (define gfv 1)
   (mmsg-add
    (list M14WES 0 1000)))
  ((10)
   (define testsc 1 )
   (define gfv 1)
   (set! itn 0 )
   (mmsg-add
    (list M14WT 0 1)))

  ((11)
   (define testsc 1 )
   (define itntrack 1 )
   (define gfv 1)
   (tnset 2)
   (mmsg-add
    '( M14WES 0 2 )
    '(M14TNTARGET 0 1)
    '(M14TNFRIEND 0 2)
    (list M14WT 0 1)))  

  ((12)
   (define testsc 1 )
   (define itntrack 1 )
   (define gfv 1)
   (tnset 2)
   (mmsg-add
    '( M14WES 0 1 )
    '(M14TNTARGET 0 1)
    '(M14TNFRIEND 0 2)
    (list M14WT 0 1)))  

  ((13)
   (define testsc 1 )
   (define itntrack 1 )
   (define gfv 1)
   (tnset 2)
   (mmsg-add
    '( M14WES 0 1 )
    '(M14TNTARGET 0 1)
    '(M14TNFRIEND 0 2)
    '( M14WT 0 1  )
    '(M14WR 0 1 )
    (list M14WT 0 1)))  
  
  ((14)
   (define testsc 1 )
   (define itntrack 1 )
   (define gfv 1)
   (tnset 2)
   (mmsg-add
    '( M14WES 0 1 )
    '(M14TNTARGET 0 1)
    '(M14TNFRIEND 0 2)
    '(M14WR 0 1 )
    (list M14WT 0 2)))  

  ((15)
   (define testsc 1 )
   (define itntrack 1 )
   (define gfv 1)
   (tnset 2)
   (mmsg-add
    '( M14WES 0 1 )
    '(M14TNTARGET 0 1)
    '(M14TNFRIEND 0 2)
    '(M14WR 0 1 )
    (list M14WT 0 3)))  

  ((16)
   (define testsc 1 )
   (define itntrack 1 )
   (define gfv 1)
   (tnset 2)
   (mmsg-add
    '( M14WES 0 1 )
    '(M14TNTARGET 0 1)
    '(M14TNFRIEND 0 2)
    '(M14WR 0 1 )
    (list M14WT 0 10)))  

  
  )

