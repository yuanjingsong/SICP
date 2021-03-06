(define (make-deque)
  (cons '() '())
  )
(define (front-ptr deque)
  (car deque)
  )
(define (rear-ptr deque)
  (cdr deque)
  )

(define (set-front-ptr! deque item)
  (set-car! deque item)
  )

(define (set-rear-ptr! deque item)
  (set-cdr! deque item)
  )

(define (empty-deque? deque)
  (null? (front-ptr deque))
  )

(define (front-deque deque)
  (if (empty-deque? deque)
        (error "EMPTY " deque)
        (car (front-ptr deque))
      )
  )
(define (rear-deque deque)
  (if (empty-deque? deque)
      (error "EMPTY" deque)
      (car (rear-ptr deque))
      )
  )

(define (insert-rear-deque! deque item)
    (let ((new-pair (cons item '())))
        (cond ((empty-deque? deque)
               (set-front-ptr! deque new-pair)
               (set-rear-ptr! deque new-pair)
               deque)
              (else 
                (set-cdr! (rear-ptr deque) new-pair)
                (set-rear-ptr! deque new-pair)
                deque
                )
          )
      )
  )

(define (delete-front-deque! deque)
    (cond  ((empty-deque? deque)
            (error "EMPTY DEQUE" deque)
            )
           (else 
             (set-front-ptr! deque (cdr (front-ptr deque)))
             deque
             )
      )
  )

(define (delete-rear-deque! deque)
  (define (iter deque lst)
    (cond ((null? (cdr (cdr lst)))
           (set-cdr! lst '())
           (set-rear-ptr! deque lst)
           deque
           )
          (else 
            (iter deque (cdr lst))
            )
          )
    )
  (cond ((empty-deque? deque) 
         (error "ERROR " deque)
         )
        ((null? (cdr (front-ptr deque)))
         (set-front-ptr! deque '())
         deque
         )
        (else (iter deque (front-ptr deque)))
    )
  )
