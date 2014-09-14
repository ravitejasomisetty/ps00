;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |26|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
;circle-list : ListofPosn -> image
;GIVEN : list of posn values
;RETURNS : an empty scene with circles of radius 10 placed at the
;mentioned posn values of x and y co-ordinates
;EXAMPLES:
;(list (10 20)) -> circle at (10,20) on empty scene.
;(list (10 20) (30 40)) -> two circles at (10,20) and (30,40)

;DESIGN STRATEGY : Structural Decomposition
(define (circle-list a)
  (cond [(empty? a) (empty-scene 300 300)]
        [else (place-image (circle 10 "solid" "blue") (posn-x (first a)) (posn-y (first a)) (circle-list (rest a)) )])
  
  )

(circle-list (cons (make-posn 10 20) (cons (make-posn 30 40) empty)))