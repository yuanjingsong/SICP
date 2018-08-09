(define (iterative-improve close-enough? improve)
  (lambda (first-guess)
    (define (try guess)
      (let ((next (improve guess)))
        (if (close-enough? next guess)
            next
            (try next)
            )
        )
      )
    (try first-guess)
    )
  )
(define (fixed-point f first-guess)
  (define tolerance 0.000001)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance)
    )
  (define (improve guess)
    (f guess)
    )
  ((iterative-improve close-enough? improve) first-guess )
  )
