(load "deriv.scm")
(define (make-exponentiation base exponent)
  (cond ((= exponent 0) 1)
        ((= exponent 1) base)
        (else (list '** base exponent))
    )
  )
(define (exponentiation? x)
  (and (pair? x) (eq? (car x)  '**))
  )
(define (base exp)
  (cadr exp)
  )
(define (exponent exp)
  (caddr exp)
  )
(define (deriv-exp exp var)
  (cond ((exponentiation? exp) 
            (let ((u (base exp))
                  (n (exponent exp))
                  )
            (make-product n 
                        (make-product (make-exponentiation u (- n 1))
                                      (deriv u var)
                                      )
                          )
         ))
        (else error "ERROR")
        )
  
  )