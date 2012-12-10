(define mytree '(1 (2 3) (4 (5 6))))

(define (traverse tree)
  (cond
    ((null? tree)
     '())
    (#t (cond
          ((list? tree) (traverse (car tree)) (traverse (cdr tree)))
          (#t (println tree))))))

(define ccs '())

(define (traversecc tree)
  (cond
   ((null? tree) '())
   (#t
    (call/cc (lambda (cc)
	       (set! ccs (append ccs (list
				      (lambda ()
					(cond
					 ((list? tree)
					  (println "traversing") (print tree) (print " => ") (print (car tree)) (print ", ") (print (cdr tree)) (traversecc (car tree)) (traversecc (cdr tree)))
					 (#t (println tree)))
					(cond
					 ((not (null? ccs))
					  (set! ccs (cdr ccs)))))))))))))
