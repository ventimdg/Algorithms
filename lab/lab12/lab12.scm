(define (tail-replicate x n) 
          (define (optimized x n answer) 
                  (if (= n 0)
                  answer
                  (optimized x (- n 1) (cons x answer))))
          (optimized x n nil))


(define-macro (def func args body) 
          (list 'define (cons func args) body))

(define (repeatedly-cube n x)
  (if (zero? n)
      x
      (let ((y (repeatedly-cube (- n 1) x)))
        (* y y y))))
