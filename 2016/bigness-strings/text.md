## Part 1:
Design a function that consumes a quantity (a nonnegative integer), and returns a string representing how important it is (bigger numbers are more important). Specifically, it should surround the number n with n pairs of angle braces. So `0` becomes `"0"`, `2` becomes `"<<2>>"`, and `5` becomes `"<<<<<5>>>>>"`. Look up the functions `number->string`, `make-string`, and `string-append` in the Help Desk. (if you are having trouble accessing the Help Desk, you can also get it on the web at http://docs.racket-lang.org/. When you search for help on built-in functions, select the matches that are provided from `lang/htdp-beginner` or `2htdp/image`.)

Make sure you follow the steps of the Design Recipe, in order, while designing your function.

Hints: Besides reading the documentation in the Help Desk, try entering expressions such as the following to become familiar with the operation of the functions:

    > (number->string 5)
    > (string-append "a" "b" "c")
    > (replicate 1 "a")
    > (replicate 5 "b")
    > (string-append (replicate 1 "a") (replicate 5 "b"))


## Part 2: 
Design a function that consumes two quantities (nonnegative integers), and produces a string illustrating how their importances add up. For instance, if given 2 and 4, it should produce the string "<<2>> + <<<<4>>>> = <<<<<<6>>>>>>". You should use the program you wrote for the previous exercise! If you don't, your code will be unreadable, and take forever to write.

Don't forget to write tests for your function.


## Part 3:
The Stepper is a DrRacket tool that shows every step a program takes. Click on the Stepper button, the one labeled "Step" with a picture of a foot, to the left of the "Run" button. Use the Stepper to step through the examples/test cases of your functions from the previous two exercises. Figure out what happens in the Stepper when one program (function) calls another program (function).
