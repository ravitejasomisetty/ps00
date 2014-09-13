;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |20|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(define head (circle 10 "solid" "red"))



(define chest (rectangle 40 50 "solid" "red"))



(define hand1 (rectangle 40 5 "solid" "red" ))
;hand1

(define hand2 (rectangle 40 5 "solid" "red" ))
;hand2

(define leg1 (rectangle 5 40 "solid" "red" ))
;leg1

(define leg2 (rectangle 5 40 "solid" "red" ))
;leg2
(define chest-left-hand (overlay/offset chest 40 -20 hand2 ))
(define head-hands-chest (overlay/offset head 0 35 
                                         (
                                          overlay/offset hand1 60 20 
                                                         chest-left-hand             
                                                         )
                                         )
  )

(place-image
 
 
 (overlay/xy head-hands-chest 40 70
             (overlay/offset leg1 35 0 leg2))
 
 150 150
 
 (empty-scene 300 300))

