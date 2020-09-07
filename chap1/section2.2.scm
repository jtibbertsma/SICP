;; Excercise 1.11
;; f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3)
;; a, b, c = b, c, c + 2*b + 3*a
(define (f n)
  (define (f-iter a b c count)
    (if (<= count 3)
        c
        (f-iter b
                c
                (+ c (* 2 b) (* 3 a))
                (- count 1))))
  (f-iter 3 3 3 n))

(f 3)
(f 4)
(f 5)
(f 6)
(f 7)

;; Excercise 1.12
;; Define P(x, y) where x is the row and y is the column of an item in Pascal's triangle
;; Invariants: x >= 1, 1 <= y <= x
;; P(x, y) = P(x - 1, y - 1) + P(x - 1, y)

(define (P x y)
  (cond ((> y x) 0)
        ((or (= y 1) (= y x)) 1)
        ((<= x 2) 1)
        (else (+ (P (- x 1) (- y 1))
                 (P (- x 1) y)))))

(P 3 2)
(p 5 3)
(p 12 9)
