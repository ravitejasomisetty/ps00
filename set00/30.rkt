;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |30|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
;neg-list : ListofBoolean -> Boolean
;GIVEN : list of boolean values
;RETURNS : true if all the given values are true else false
;EXAMPLES:
;(list true false true false true) -> false
;(list false) -> false
;(list true true) ->true
;DESIGN STRATEGY : Functional Composition
(define (neg-list a)
  (cond [ (empty? a) empty]
          [else (append (cons (not (first a)) empty) (neg-list (rest a)))] )
  )


(check-expect (neg-list  (cons false empty))  (cons true empty))
(check-expect (neg-list (cons true (cons true empty))) (cons false (cons false empty)) )