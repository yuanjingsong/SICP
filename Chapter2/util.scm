(define (accumulate op initial sequence)
  (if (null? sequence)
        initial
       (op (car sequence) (accumulate op initial (cdr sequence))) 
      )
  )
(define (enumerate-interval low high)
  (if (> low high)
        '()
        (cons low (enumerate-interval (+ 1 low) high))
      )
  )
(define (flatmap proc seq)
  (accumulate append '() (map proc seq))
  )