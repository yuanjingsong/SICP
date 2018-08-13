(define (make-center-percent center percent) 
  (make-interval center (* center percent))
  )
(define (percent interval)
   ( / (width interval) ( center interval) )
  )

