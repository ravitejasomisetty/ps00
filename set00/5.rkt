;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;sq : number -> number
;GIVEN : any number as an argument
;RETURNS : the square of the number
;EXAMPLES : 
;(sq 2) => 4
;(sq 10.1) => 102.01
(define (sq num)
  (* num num))

(check-expect (sq 2) 4)
(check-expect (sq 10.1) 102.01)