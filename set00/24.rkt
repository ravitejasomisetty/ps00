;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |24|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
;product-list : ListofInt -> Number
;GIVEN : list of integers
;RETURNS : product of the integers
;EXAMPLES:
;(list 1 2 3 4 5) -> 120
;(list 3 4 5 0) -> 0
;(list -1 -2) -> 2
;DESIGN STRATEGY : Functional Composition
(define (product-list a)
  (cond [(empty? a) 1]
        [else ( * (first a) (product-list (rest a)))])
  
  )

(check-expect (product-list (cons 1 (cons 2 (cons 3 (cons 4 (cons 5 empty))))) ) 120)
(check-expect (product-list (cons 3 (cons 4 (cons 5 (cons 0 empty)))))  0)
(check-expect (product-list (cons -1 (cons -2 empty))) 2)