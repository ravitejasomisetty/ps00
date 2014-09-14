;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |31|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
;circle-image-list : ListofNumbers -> ListofImages
;GIVEN : list of numbers
;RETURNS : images of circle with radius as the respective number from the given list

;DESIGN STRATEGY : Functional Composition
(define (neg-list a)
  (cond [ (empty? a) empty]
          [else (append (cons (circle (first a) "solid" "red") empty) (neg-list (rest a)))] )
  )


(check-expect (neg-list  (cons 10 empty))  (cons  (circle 10 "solid" "red") empty)  )
(check-expect (neg-list (cons 10 (cons 20 empty))) (cons  (circle 10 "solid" "red")   (cons  (circle 20 "solid" "red") empty))  ) 