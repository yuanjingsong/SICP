;a
(define top-left-point (make-vect 0 1.0))
(define top-right-point (make-vect 1.0 1.0) )
(define bottom-left-point (make-vect 0.0 0.0))
(define bottom-right-point (make-vect 1.0 0.0))

(define top (make-segement top-left-point top-right-point ))
(define left (make-segement bottom-right-point top-left-point))
(define bottom (make-segement bottom-left-point bottom-right-point))
(define right (make-segement bottom-right-point top-right-point))

(segments->painter (list top left bottom right))
;b
(define left-top (make-vect 0.0 1.0))
(define right-bottom (make-vect 1.0 0))
(define right-top (make-vect 1.0 1.0))
(define left-bottom (make-vect 0.0 0.0))

(define left-2-right (make-segement left-top right-bottom))
(define right-2-left (make-segement right-top left-bottom))
(segments->painter (list left-2-right right-2-left))

;c
(define top-mid (make-vect 1.0 1.0))
(define mid-1 (make-vect 0.0 0.0))
(define mid-2 (make-vect 2.0 0.0))
(define bottom-mid (make-vect 1.0 -1.0))
(define mid-1-2-top (make-segement mid-1 top-mid))
(define mid-1-2-bottom (make-segement mid-1 bottom-mid))
(define top-mid-mid-2 (make-segement top-mid mid-2))
(define bottom-mid-mid-2 (make-segement bottom-mid mid-2))

(segments->painter (list mid-1-2-top mid-1-2-bottom top-mid-mid-2 bottom-mid-mid-2))
