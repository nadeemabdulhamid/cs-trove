For this set of problems, use the following data definition for graphs.

    (define-struct graph (nodes neighbors node=?))
    ; A [Graph X] is a structure:
    ; (make-graph [Listof X] [X -> [Listof X]] [X X -> Boolean])
    
**Problem 1** Design the function `find-paths`.

    ; find-paths : [Graph X] X X -> [Listof [Listof X]]
    ; Find all of the paths in the graph from src to dest
    (define (find-paths g src dest) ...)
    
Note that input graphs may contain cycles. Make sure that your code can handle cycles in the graph and doesn’t loop forever. Below are some tests to clarify what we expect.

    (define G1
      (make-graph '(A B C D E F G)
              (lambda (n)
                (cond [(symbol=? n 'A) '(B E)]
                      [(symbol=? n 'B) '(E F)]
                      [(symbol=? n 'C) '(D)]
                      [(symbol=? n 'D) '()]
                      [(symbol=? n 'E) '(C F A)]
                      [(symbol=? n 'F) '(D G)]
                      [(symbol=? n 'G) '()]))
              symbol=?))
 
    (check-expect (find-paths G1 'C 'C) (list (list 'C))) ; src = dest
    (check-expect (find-paths G1 'C 'G) empty) ; no paths from 'C to 'G
    (check-expect (find-paths G1 'A 'B)
                  (list (list 'A 'B)))
    (check-expect (find-paths G1 'E 'G)
                  (list (list 'E 'F 'G)
                        (list 'E 'A 'B 'F 'G)))
    (check-expect (find-paths G1 'B 'G)
                  (list (list 'B 'E 'F 'G)
                        (list 'B 'F 'G)))
    (check-expect (find-paths G1 'A 'G)
                  (list (list 'A 'B 'E 'F 'G)
                        (list 'A 'B 'F 'G)
                        (list 'A 'E 'F 'G)))
                        
**Problem 2** Design the function `same-graph?`

    ; same-graph? : [Graph X] [Graph X] -> Boolean
    ; Determine whether g1 and g2 have the same nodes,
    ; and each node in g1 has the same neighbors as that node in g2.
    ; Assume that both graphs have the same node equality function
    ; and that this node equality function is symmetric.
    (define (same-graph? g1 g2) ...)
 
    ; Examples
    (same-graph? (make-graph '() (lambda (x) '()) symbol=?)
                 (make-graph '() (lambda (x) '()) symbol=?))
    --> true
 
    (same-graph? (make-graph '(a) (lambda (x) '()) symbol=?)
                 (make-graph '() (lambda (x) '()) symbol=?))
    --> false
 
    (same-graph? (make-graph '(a) (lambda (x) '()) symbol=?)
                 (make-graph '(a) (lambda (x) '()) symbol=?))
    --> true
 
    (same-graph? (make-graph '(b) (lambda (x) '()) symbol=?)
                 (make-graph '(a) (lambda (x) '()) symbol=?))
    --> false
 
    (same-graph? (make-graph '(a b) (lambda (x) '()) symbol=?)
                 (make-graph '(b a) (lambda (x) '()) symbol=?))
    --> true
 
    (same-graph? (make-graph '(a b)
                             (lambda (x)
                               (cond
                                 [(symbol=? x 'a) '(b)]
                                 [(symbol=? x 'b) '()]))
                             symbol=?)
                 (make-graph '(a b)
                             (lambda (x)
                               (cond
                                 [(symbol=? x 'b) '(a)]
                                 [(symbol=? x 'a) '()]))
                            symbol=?))
    --> false
 
    (same-graph? (make-graph '(a b)
                             (lambda (x)
                               (cond
                                 [(symbol=? x 'a) '(a b)]
                                 [(symbol=? x 'b) '()]))
                             symbol=?)
                 (make-graph '(a b)
                             (lambda (x)
                               (cond
                                 [(symbol=? x 'a) '(b a)]
                                 [(symbol=? x 'b) '()]))
                             symbol=?))
    --> true

**Problem 3** Design the following function and use `same-graph?` to test it.

    ; reverse-edge-graph : [Graph X] -> [Graph X]
    ; Build a graph with the same nodes as g, but with reversed edges.
    ; That is, if g has an edge from a to b then the result graph will
    ; have an edge from b to a.
    (define (reverse-edge-graph g) ...)
    
**Problem 4** Design the following function.

    ; undirected? : [Graph X] -> Boolean
    ; Determine if each edge in g has a matching edge going the opposite direction
    (define (undirected? g) ...)
