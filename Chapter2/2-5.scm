(define (cons x y)
  (* (expt 2 x) (expt 3 y))
  )
(define (car x)
  (define (iter x times)
    (cond ((not (= (remainder x 2) 0)) times)
          (else (iter (/ x 2) (+ times 1)))
      )
    )
  (iter x 0)
  )
(define (car x)
  (if (= 0 (remainder x 2))
      (+ 1 (car (/ x 2)))
      0
      )
  )
(define (cdr x)
  (if (= 0 (remainder x 3))
      (+ 1 (cdr (/ x 3)))
      0
      )
  )
