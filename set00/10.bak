;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |10|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;highest-sum : Number Number Number -> Number
;GIVEN : any three numbers
;RETURNS : sum of the two largest of those numbers
;EXAMPLES:
;(highest-sum 10 20 0) -> 30
;(highest-sum 10 10 10) -> 20
;(highest-sum -10 -10 -20) -> -20


(define (highest-sum a b c)
  
  (cond [(= (max a b c) a) (+ (max b c) (max a b c))]
        [(= (max a b c) b) (+ (max a c) (max a b c))]
        [else (+ (max a b) (max a b c))]))


(check-expect (highest-sum 10 20 0) 30)
(check-expect (highest-sum 10 10 10) 20)
(check-expect (highest-sum -10 -10 -20) -20)