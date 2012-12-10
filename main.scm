(c-declare #<<c-declare-end
#include "struct.h"
c-declare-end
)

(define (bla msg)
  (print msg))

(c-define (doinc a) (int) int "doinc" ""
  (print "doinc\n")
  (+ a 1))

(define (make-bottle capacity filling towin)
  (define (get-capacity) capacity)
  (define (get-filling) filling)
  (define (get-towin) towin)
  (define (self message)
    (case message
      ((capacity) get-capacity)
      ((filling) get-filling)
      ((towin) get-towin)
      (else (error "unknown message for bottle"))))
  self)

;(define-structure bottle capacity filling towin)

(define (find-towin bottle)
  (let* ((minn 1)
	 (maxx ((bottle 'capacity)))
	 (fill ((bottle 'filling)))
	 (candidate (+ minn (random-integer (- maxx minn)))))
    (if (= candidate fill)
	(find-towin bottle)
	candidate)))

(define (make-random-bottle maxcapacity iswinningbottle)
  (let* ((capacity (+ 2 (random-integer (- maxcapacity 1))))
	 (filling (+ 1 (random-integer (- capacity 1)))))
    (if iswinningbottle
	(let ((find-towin (lambda ()
    (make-bottle capacity filling -1)))

(define (make-random-bottles maxbottles maxcapacity howmanytowin)
  (letrec ((subfunc (lambda (curbottles)
		      (if (< (length curbottles) maxbottles)
			  (subfunc (cons (make-random-bottle maxcapacity) curbottles))
			  curbottles))))
    (subfunc '())))

(define (tag-bottles-towin howmany bottles)
  (letrec ((subfunc (lambda (howmany bottles togo)
		      (let ((bottle (car bottles)))
		      (if (= togo 0)
			  (

(define (make-random-game difficulty)
  

(define-structure mystruct a b)
;(c-define-type mystruct "mystruct")

(c-define (makestruct a b) (int int) () "makestruct" ""
          (println "makestruct")
          (make-mystruct (+ a 11) (+ b 22)))

;(bla "wurst\n")

