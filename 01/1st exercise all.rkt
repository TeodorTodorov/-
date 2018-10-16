#lang racket

(define (sum a b)
  (+ a b)
  )
;(sum 2 3)

(define(isEven a)
  (if(= (remainder a 2) 0) '(e f ) "ne")

  )
;(isEven 6)

(define (fact a)
 ( if(= a 1) 1 (* a (fact (- a 1))))

  )
;(fact 34)


(define (AtoBsum a b)
  
   (define(AtoBsum2 n j k)
   (if(> n j) k ( AtoBsum2 (+ n 1) j (+ k n)))
     )
  
  (AtoBsum2 a b 0)
  )
  
;(AtoBsum 1 100)

(define (aToPowerB a b)
  
  (define (powerNum a b current product)
    (if(< b current) 1 (* a(powerNum a b (+ current 1) product))  )

    )
  (powerNum a b 1 1)
  )


(aToPowerB -2 11)