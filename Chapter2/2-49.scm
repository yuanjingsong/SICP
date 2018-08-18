(define top-left-point (make-vect 0 1.0))
(define top-right-point (make-vect 1.0 1.0) )
(define bottom-left-point (make-vect 0.0 0.0))
(define bottom-right-point (make-vect 1.0 0.0))

(define top (make-segement top-left-point top-right-point ))
(define left (make-segement bottom-right-point top-left-point))
(define bottom (make-segement bottom-left-point bottom-right-point))
(define right (make-segement bottom-right-point top-right-point))

(segments->painter (list top left bottom right))
