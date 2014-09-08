;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |9|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;even-number? : Number -> Boolean
;GIVEN : any number as argument
;RETURNS : true if the number is even else false
;EXAMPLES:
;(even-number? 10) -> true
;(even-number? 0 -) -> true
;(even-number? -1 )-> false
(define (even-number? x)
  (= (remainder x 2) 0)
  )

(check-expect (even-number? 10) true)
(check-expect (even-number? 0) true)
(check-expect (even-number? -1) false)