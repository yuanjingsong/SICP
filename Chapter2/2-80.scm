;scheme number
(define (=zero? 'scheme-number)
  (lambda (value) (= value 0))
  )
;rational number
(define (=zero? 'rational)
  (lambda (r) (= 0 (numer 0)))
  )
;complex number
(define (=zero? 'complex)
  (lambda (r) (and (= 0 (real-part r))
                   (= 0 (imag-part r))
                ) )
  )
