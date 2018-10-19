#lang racket


; TODO  : add the recursion floor be a predicate ??  f-qta koqto preverqva dali upravlqvashtata promenliva e stignala null-value (dunoto)
;; fp1817 - DA SE IZRESHAVAT
(define (sum a b)
  
   (define(AtoBsum2 n j k)
   (if(> n j) k ( AtoBsum2 (+ n 1) j (+ k n)))
     )
  
  (AtoBsum2 a b 0)
  )

(define (abstract-sum term start end)
(if (> start end)

0
(+ (term start) (sum(+ start 1) end))

    )
 )



(define (product start end)
  (accumulate * 1 id start end )
  )

(define (sum2 start end)
  (accumulate + 0 id start end )
  )
(define(id x)x)
(define (cube x) (* x x x))
(abstract-sum id 1 100)
(define (sum-roots2 start end)
  (define(term x) (/ (sqrt x 4)))
(abstract-sum term start end)
  )

(define (prodcube start end)
  (accumulate * 1 cube start end)
  )
(define (inc x)(+ x 1))

(define(factorial n)
  (accumulate * 1 id 1 inc n)
  )
(define (accumulate op null-value term start next end)

(if (> start end)
     null-value
(op ( term start)  (accumulate op null-value term (next start) next end))

    )
  )


(define (pow x n)
(define (const p)
  x)
  (accumulate * x const 1 inc (- n 1))

  )

(define (pow2 x n)
(define (const p)
  x)
  (accumulate (lambda (a b) (* a b)) x (lambda(a) x) 1 (lambda(x)(+ x 1)) (- n 1))

  )
(pow 3 3)
(pow2 3 3)

((lambda (x y) (+ x y)) 2 3 )

((lambda (x y)(x (y 9))) sqrt (lambda (y) (* y 9)))

(define (compose f g)
  (lambda(x)( f (g x))
    )
  )
(define (inc2 x) (+ x 2))
(define (mul3 x)(* x 3))
'( gosho compose)
((compose inc2 mul3) 2 )
(define (inc2mul3) (compose inc2 mul3) )
