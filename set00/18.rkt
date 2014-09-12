;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |18|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(rectangle 32 64 "solid" "blue")


(rectangle  64 128 "solid" "blue")

;Formula for the n-th element in sequence
;rec-sequence : PosNum -> Image
;GIVEN : An arbitrary number, n
;RETURNS : n-th element i.e., a solid blue rectangle based on the formula
(define (rec-sequence n)
  (rectangle (expt 2 n) (expt 2 ( + n 1)) "solid" "blue"))

(check-expect (rec-sequence 6) (rectangle 64 128 "solid" "blue"))