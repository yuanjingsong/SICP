(load "1-37.scm")
(define (d i)
  (if (= 0 (remainder (+ i 1) 3)) (* 2 (/ (+ i 1) 3))
      1
      )
  )
(define (n i) 1.0)
(cont-frac-iter n d 10)
