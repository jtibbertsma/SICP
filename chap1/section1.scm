;; Excercise 1.2

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3
      (- 6 2)
      (- 2 7)))

;; Excercise 1.3

(define (sum-of-squares x y)
  (+ (* x x) (* y y)))

(define (act-on-larger action x y z)
  (cond ((and (<= x y) (<= x z)) (action y z))
        ((and (<= y x) (<= y z)) (action x z))
        ((and (<= z x) (<= z y)) (action x y))))

(define (sum-of-squares-of-larger x y z)
  (act-on-larger sum-of-squares x y z))

(sum-of-squares-of-larger 1 2 3)
(sum-of-squares-of-larger 6 1 2)

;; Excercise 1.4

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 3 -5)
(a-plus-abs-b 3 5)
