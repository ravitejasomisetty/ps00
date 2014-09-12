;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |14|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(define-struct student (id name major))
; A student is a (make-student PosNumber String String)
; Interpretation:
; id = the unique id of the student
; name = name of the student
; major = the course major of the student

; Following functions are created upon defining a struct as above.

; make-student
(define a (make-student 10 "ravi" "CS"))
(check-expect a (make-student 10 "ravi" "CS"))

; student-id
(define b (student-id a))
(check-expect b (student-id a))

; student-name
(define c (student-name a))
(check-expect c (student-name a))

; student-major
(define d (student-major a))
(check-expect d (student-major a))

; student?
(define f (student? a))
(check-expect f (student? a))