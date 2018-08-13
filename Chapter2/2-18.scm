(define (reverse list)
  (define (iter remainder-items result)
    (if (null? remainder-items)
        result
        (iter (cdr remainder-items) (cons (car remainder-items) result))
        )
    )
  (iter list '())
  )
