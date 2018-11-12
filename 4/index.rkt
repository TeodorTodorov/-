#lang racket
(require racket/trace)
(define (equaltwo x)
  (cond
    ((= x 2)#t)
    (else #f)

    )
  )
(define (even? x)
  (cond
    ((= (remainder x 2) 0)#t)
    (else #f)

    )
  )
(define(inc1 x)
  (+ 1 x)
  )
(define (notequaltwo x )
  (not (equaltwo x))
  )
(define (any? predicate xs)
  (define (any-iter lis)

    (cond
      ((null? lis)#f)
      ((predicate (car lis))#t)
      (else (any-iter (cdr lis)))
      
      )

    )
  (any-iter xs)


  )

(define (all? predicate xs)
  (define (all-iter lis)

    (cond
      ((null? lis)#t)
      ((not(any? predicate (list(car lis))))#f)
      (else (all-iter (cdr lis)))
      
      )

    )
  (all-iter xs)
  
  )

(define (all2? p? xs)
  (not (any? (lambda (x) (not (p? x))) xs)))
(define (all3? p? xs)
  (not (any? (lambda(x) (not (p? x ))) xs) )
  )

(define (map xs op )
 
    (cond ((null? xs)'())
    (else (cons (op( car xs)) (map (cdr xs) op )))
    )
    
  
  )
(define (filter xs op)
(cond ((null? xs)'())
      ((op (car xs)) (cons ( car xs) (filter (cdr xs) op )) )
    (else (filter (cdr xs) op )  )
    )
  )
(define (addMarks ls)
  (cond
    ((null? ls) (string append "!!!"))
    (else (list( addMarks (cdr ls))))
    )
  
  )
; poluchavame spisuk ot stringove i dobavqme 3udivitelni na vseki string
(define (addCoolMarks xs )
  (map xs addMarks)
  )

(define (sum-numbers xs)
  (if (null? xs) 0
      (+ (car xs) (sum-numbers(cdr xs)))

  ))
(define (concat-string xs)
(if (null? xs) ""
      (string-append (car xs) (sum-numbers(cdr xs)))

  )
  
  )
(define (foldr op null-value xs)
  (if (null? xs) null-value
      (op (car xs)(foldr op null-value (cdr xs)))


      )
  

  )
; foldl e fold no v obraten red zapochva ot lqvo nadqsno da sukvashtqva, purvo funkciqta se prilaga na dunoto o posledniqt element
(define (foldl op null-value xs)
  (if (null? xs) null-value
  (op (foldl op null-value (cdr xs)) (car xs) )
  )
  )
;(any? equaltwo '(1 3 4))
;(all? equaltwo '(2 2 2))
;(any? notequaltwo '(1 2 2))
;(all3? equaltwo '(2 2 1))
;(map '(1 2 3) inc1)
(map '("as" "bas") (lambda (x) (string-append x "!!!") ))
(filter '( 4 2 11 5 6 9 10 10) even?)

(trace foldr)
(trace foldl)
;(fold (lambda(a b)(+ a b)) 0 '(1 2 3 ))
(foldr (lambda(a b)(list a b)) '() '(1 2 3 ))
(foldl (lambda(a b)(list a b)) '() '(1 2 3 ))
(foldr (lambda (current acc)(cons current acc)) '(1 2 3 ) )


