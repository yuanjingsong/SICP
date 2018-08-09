(define (repeated f n)
  (if (= n 1) f
      (lambda (x) 
        (f ((repeated f (- n 1)) x))
        )
      )
  )
(define (repeated-iter f n)
  (define (iter i repeated-f)
    (if (= i 1)
        repeated-f
        (iter (- i 1) (lambda (x) (f (repeated-f x))))
        )
    )
  (iter n f)
  )
;with compose function
(load "1-42.scm")
(define (repeated f n)
  (if (= n 1) f
      (compose f (repeated f (- n 1)))
      )
  )

(define (repeated-iter f n)
  (define (iter i repeated-f)
    (if (= i 1)
        repeated-f
        (iter (- i 1) (compose f repeated-f ))
      )
    )
  (iter n f)
  )

