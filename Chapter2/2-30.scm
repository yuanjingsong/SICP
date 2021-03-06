(define square (lambda (x) (* x x)))
(define (square-tree tree)
  (cond ( (null? tree) '())
        ( (not (pair? tree)) (square tree) )
        (else (cons (square-tree (car tree)) (square-tree (cdr tree))))
    )
  )
(define (square-tree-map tree)
  (map (lambda (sub-tree) 
            (if (pair? sub-tree) 
                (square-tree-map sub-tree)
                ( * sub-tree sub-tree) 
                )
            
         ) tree )
  )
