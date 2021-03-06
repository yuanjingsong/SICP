(define (lookup records given-key)
  (cond ((null? records) #f)
        ((= given-key  (key (entry records))) (entry records) )
        ((< given-key (key (entry records))) (lookup (left-branch records) given-key ))
        ((> given-key (key (entry records))) (lookup (right-branch records) given-key))
    )
  )
