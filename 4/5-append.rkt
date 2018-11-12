#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да залепим два списъка
(define (my-append x y)

(append x y)
  )
(define tests
  (test-suite "Append tests"

    (test-case "" (check-equal? (my-append '(1 2 3) '()) '(1 2 3)))
    (test-case "" (check-equal? (my-append '() '(1 2 3)) '(1 2 3)))
    (test-case "" (check-equal? (my-append '(4 5 6) '(1 2 3)) '(4 5 6 1 2 3)))
  )
)

(run-tests tests 'verbose)

