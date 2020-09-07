;; Tree-recursion fibonacci

(define (tree-fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (tree-fib (- n 1))
                 (tree-fib (- n 2))))))

(tree-fib 1)
(tree-fib 2)
(tree-fib 3)
(tree-fib 4)
(tree-fib 5)
(tree-fib 6)
(tree-fib 7)
(tree-fib 8)
(tree-fib 9)
(tree-fib 35)

;; fibonacci via iteration

(define (iter-fib n)
  (define (iter-fib-loop a b count)
    (if (= count 0)
        b
        (iter-fib-loop (+ a b) a (- count 1))))
  (iter-fib-loop 1 0 n))

(iter-fib 1)
(iter-fib 2)
(iter-fib 3)
(iter-fib 4)
(iter-fib 5)
(iter-fib 6)
(iter-fib 7)
(iter-fib 8)
(iter-fib 9)
(iter-fib 35)
