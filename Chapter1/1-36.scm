(define tolerance 0.000001)
(define (fixed-point-print f first-guess)
  (define (close-enough? v1 v2) 
     (< (abs (- v1 v2)) tolerance)
    )
  (define (try guess)
    (display guess)
    (newline)
    (
     let ((next (f guess)))
      (if (close-enough? next guess) next
          (try next)
          )
      )
    )
  (try first-guess)
  )
(define (abs x)
  (if (< x 0) (- x) x
      )
  )
(define (average-damp f)
  (lambda (x)
    (average x (f x))
    )
  )
(define (average x y) (/ (+ x y) 2))
(define fun (lambda (x) (/ (log 1000) (log x))))
