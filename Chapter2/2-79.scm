;for scheme-number
(put 'equ? 'scheme-number 'scheme-number (lambda (x y) (= x y)))
;for ration-number
(put 'equ? 'ration 'ration
     (lambda (x y)
       (and (= (numer x) (numer y))
            (= (denom x) (denom y))
         )
       )
     )
;for complex-number
(put 'equ? 'complex 'complex
     (lambda (x y)
        (and (= (real-part x) (real-part y))
             (= (imag-part x) (imag-part y))
          )
       )
     )
