;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |32|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
;manhattan-distance : ListofPosn -> Number
;GIVEN : list of posn values
;RETURNS : sum of the manhattan distances from (0,0) of each posn given
;EXAMPLES:
;(list (10 20)) -> circle at (10,20) on empty scene.
;(list (10 20) (30 40)) -> two circles at (10,20) and (30,40)

;DESIGN STRATEGY : Structural Decomposition
(define (manhattan-distance a)
  (cond [(empty? a) 0]
        [else ( + (distance (first a)) (manhattan-distance (rest a))) ])
  )
(define (distance p)
  ( + (posn-x p) (posn-y p)))

(check-expect (manhattan-distance (list (make-posn 1 2) (make-posn 3 4))) 10)
