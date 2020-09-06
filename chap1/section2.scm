;; Reference implementation for Excercise 1.9
(define (inc x) (+ x 1))
(define (dec x) (- x 1))

(define (plus a b)
  (if (= 0 a)
      b
      (inc (plus (dec a) b))))

(plus 4 5)

(define (plus2 a b)
  (if (= a 0)
      b
      (plus2 (dec a) (inc b))))

(plus2 4 5)

;; Excercise 1.10: Ackermann's function

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 3 3)
