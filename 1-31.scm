(define (multi term a next b )
  (if (> a b) 1 
      (* (term a) (multi term (next a) next b))
      )
  )
(define (number-term i)
  (cond ((= i 1) 2)
        ( (even? i) (+ i 2))
        (else (+ i 1))
        )
  )
(define (denom-term i)
  (cond ( (even? i) (+ i 1))
        ( else (+ i 2))
        )
  )
(define (next i) (+ i 1))
(define (even? i) (= (remainder i 2) 0))
(define (pi n)
  (* 4 
        (/ (multi number-term 1.0 next n ) 
           (multi denom-term 1.0 next n)
           )
     )
  )
(define (multi-iter term a next b)
  (define (iter a result)
        (if (> a b)
                result
            (iter (+ a 1) (* result (term a)))
            )
    )
  (iter a 1)
  )