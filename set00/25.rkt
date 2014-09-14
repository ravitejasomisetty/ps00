;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |25|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
;product-list : ListofBoolean -> Boolean
;GIVEN : list of boolean values
;RETURNS : true if all the given values are true else false
;EXAMPLES:
;(list true false true false true) -> false
;(list false) -> false
;(list true true) ->true
;DESIGN STRATEGY : Functional Composition
(define (boolean-list a)
  (cond [(empty? a) true]
        [else ( and (first a) (boolean-list (rest a)))])
  
  )

(check-expect (boolean-list (cons true (cons false (cons true (cons false (cons true empty))))) ) false)
(check-expect (boolean-list  (cons false empty))  false)
(check-expect (boolean-list (cons true (cons true empty))) true)