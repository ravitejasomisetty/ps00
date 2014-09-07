;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;quadratic-root : Number Number Number -> Number
;GIVEN : the coefficients of any quadratic equation a,b and c
;RETURNS : one of its roots using the quadratic formula for roots of a quadratic equation
;EXAMPLES:
;(quadratic-root 10 2 10) => -0.1+0.99498743710662i
;(quadratic-root -1 10 0.1) => -0.009990019950139484
(define (quadratic-root a b c)
  
  (/ (+ (sqrt (discriminant a b c)) (- b)) (* a 2)))

(check-within (quadratic-root 10 2 10) -0.1+0.9i 0.1)
(check-within (quadratic-root -1 10 0.1) -0.009 0.001)

;discriminant : Number Number Number -> Number
;GIVEN : the coefficients of any quadratic equation a,b and c
;RETURNS : the discriminant of the quadratic equation
;EXAMPLES:
;(discriminant 10 2 10) => -396
;(discriminant -1 10 0.1) => 100.4
(define (discriminant a b c)
  (- (sqr b) (* 4 a c)))



(check-expect (discriminant 10 2 10) -396)
(check-expect (discriminant -1 10 0.1) 100.4)