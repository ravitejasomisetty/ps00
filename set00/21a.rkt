;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 21a) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(define-struct person (first-name last-name age height weight))
; A person is a (make-person ("ravi" "teja" 22 50 60)
;Interpretation
; first-name : the firstname of a person
; last-name : the lastname of the person
; age : Age of the person
; height : height of the person in inches
; weight : weight of the person in pounds





;person-image : person -> image
;A person-image function depicts a non-real image of a person
;along with his/her full name
;computed from his/her height
;DESIGN STRATEGY : Functional Composition


(define (person-image p)
  
  
  (place-image
   
   (above (overlay/offset (circle (* 0.1 (person-height p) ) "solid" "red") 0 ( * 0.35  (person-height p)) 
                          (
                           overlay/offset 
                           (rectangle ( * 0.4  (person-height p)) ( * 0.05  (person-height p)) "solid" "red" )
                           ( * 0.6  (person-height p)) ( * 0.2  (person-height p)) 
                           (overlay/offset 
                            (rectangle  ( * 0.4  (person-height p)) ( * 0.5 (person-height p)) "solid" "red")
                            ( * 0.4  (person-height p)) (- 0 ( * 0.2  (person-height p)))
                            (rectangle ( * 0.4  (person-height p)) ( * 0.05  (person-height p)) "solid" "red" ) )             
                           )
                          ) (overlay/offset  
                             (rectangle ( * 0.05  (person-height p)) ( * 0.4  (person-height p)) "solid" "red" ) 
                             ( * 0.35  (person-height p)) 0  
                             (rectangle ( * 0.05  (person-height p)) ( * 0.4  (person-height p)) "solid" "red" ))
                            (text (string-append (person-first-name p) (person-last-name p)) ( * 0.2  (person-height p)) "red")
                            ) 
   
   ( * 1.5  (person-height p)) ( * 1.5  (person-height p))
   
   (empty-scene ( * 3  (person-height p)) ( * 3  (person-height p))))
  )