(define (bla msg)
  (print msg))

(c-define (doinc a) (int) int "doinc" ""
  (print "doinc\n")
  (+ a 1))

;(bla "wurst\n")

