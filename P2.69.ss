(define (successive-merge sort-leaf-sets)
    (define (successive-merge-iter sets result-tree)
      (if (null? sets)
          result-tree
          (make-code-tree result-tree (successive-merge-iter (cdr sets) (car sets)))))
    (successive-merge-iter (cdr sort-leaf-sets) (car sort-leaf-sets)))
