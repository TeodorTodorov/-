#lang racket

;(define tree ( list 1 (list 2 (list'()) (list'())) (list 3 (list'()) (list'())))  )

(define tree '(
   1
   (2
    (4 () () )
    ()
    )
   (3 () () )
 


   )
  )

(define (sum-tree t)
 (cond
    ((and (null? (car(cdr t))) (null? (car(cdr(cdr t)))) )(car t) )
    ((null? (car(cdr t))) (+(car t) (sum-tree (car(cdr(cdr t))) )  ))
    ((null?  (car(cdr(cdr t))) ) (+(car t) (sum-tree (car(cdr t)) )  ) )
    (else (+(car t) (sum-tree (car(cdr t)) )  (sum-tree(car(cdr(cdr t)))) ) )
    

    )

  )
;(sum-tree tree)
(define (map xs op )
 
    (cond ((null? xs)'())
    (else (cons (op( car xs)) (map (cdr xs) op )))
    )
    
  
  )
(define (inc1 x)
  (+ x 1)
  )

(define (map-tree t f)
  
  (cond
    ((and (null? (car(cdr t))) (null? (car(cdr(cdr t)))) )   (cons (f(car t)) (cons '() (cons '() '() ))) )
    ((null? (car(cdr t))) (append (list(f(car t))) (list(map-tree (car(cdr(cdr t))) f )  )))
    ((null?  (car(cdr(cdr t))) ) (append (list(f(car t))) (list(map-tree (car(cdr t)) f )  )) )
    (else (append (list(f(car t))) (list(map-tree (car(cdr t)) f ))  (list(map-tree(car(cdr(cdr t))) f) )) )
    

    )


  )
  (map-tree tree inc1)



  

; listo '(1 () ())