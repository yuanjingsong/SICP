(define (union-set setA setB)
  (cond ( (and (null? setA) (null? setB)) '() )
        ( (null? setA) setB)
        ( (null? setB) setA)
        (else 
           (let ( (x (car setA))
                 (y (car setB))
                 ) 
             (cond ( (= x y) (cons x (union-set (cdr setA) (cdr setB))))
                   ( (< x y) (cons x (union-set (cdr setA) setB)))
                   ( (> x y) (cons y (union-set setA (cdr setB)))) 
                   )
             ) 
          )
    )
  )

