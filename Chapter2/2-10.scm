(load "2-7.scm")
(define (mul-interval x y)
  (let (( p1 (* (lower-bound x) (lower-bound y)))
        ( p2 (* (lower-bound x) (upper-bound y)))
        ( p3 (* (upper-bound x) (lower-bound y)))
        ( p4 (* (upper-bound x) (upper-bound y)))
        )
        (make-interval (min p1 p2 p3 p4) (max p1 p2 p3 p4))
    )
  )

(define (div-interval x y)
  (if (spans-zero? y)
      (error "Error ")
  (mul-interval x (make-interval (/ 1.0 (upper-bound y))
                                 (/ 1.0 (lower-bound y))
                                 ))
  )
  )
(define (spans-zero? y)
  (and (<= (lower-bound y) 0)
       (>= (upper-bound y) 0) 
       )
  )
(define (spans-zero? y)
  (< (* (lower-bound y) (upper-bound y))  0)
  )
