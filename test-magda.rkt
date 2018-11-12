#lang racket
(letrec ((loop (lambda (i) (display i) (display " ")
(if (< i 16) (loop (+ i 1)) 0))))
(loop 0)) 