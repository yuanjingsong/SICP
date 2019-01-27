(define (lookup key-1 key-2 table)
  (let ((subtable (assoc key-1 (cdr table))))
    (if subtable
        (let ((record (assoc key-2 (cdr subtable))))
          (if record
              (cdr record)
              #f
              )
          )
        #f
      )
    )
  )
(define (assoc key records)
  (cond ((null? records) #f)
        ((equal? key (caar records)) (car records) )
        (else (assoc key (cdr records)))
    )
  )
