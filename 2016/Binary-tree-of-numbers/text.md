Here is a data definition for a binary tree of numbers:

    ;; A BTN is one of
    ;; - Number
    ;; - (make-node BTN BTN)
    (define-struct node (left right))

**Problem 1**

Design a function, `btn-height`, that takes in a *binary tree of numbers* and computes the maximum distance from the root to any leaf. Here "distance" is measured by adding 1 for each internal node on the way from the root to the leaf.

Here are some examples (you should develop more to fully test your code):

    (check-expect (btn-height 42) 0)
    (check-expect (btn-height (make-node 2 (make-node 4 9)) 2))

**Problem 2** 

Design a function, `btn-sum`, that takes in a *binary tree of numbers* and computes the sum of all leaves.

Here are some examples (you should develop more to fully test your code):

    (check-expect (btn-sum 42) 42)
    (check-expect (btn-sum (make-node 2 (make-node 4 9)) 15))
