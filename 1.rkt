;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;an expression to compute number of seconds in a leap year
(* 366 24 60 60)

;two more expressions that have the same value
(* (* 366 24) (* 60 60))
(* (+ 360 6) 120/2 60 24)