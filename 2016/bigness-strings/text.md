Exercise 1: Design a function that consumes a quantity (a nonnegative integer), and returns a string representing how important it is (bigger numbers are more important). Specifically, it should surround the number n with n pairs of angle braces. So 0 becomes "0", 2 becomes "<<2>>", and 5 becomes "<<<<<5>>>>>". Look up the functions number->string, make-string, and string-append in the Help Desk. (if you are having trouble accessing the Help Desk, you can also get it on the web at http://docs.plt-scheme.org/)

After you are done writing your function, come up with some tests for the function. You should use the check-expect function to test your code. Press the "Run" button in DrScheme and make sure all your tests pass before moving on to the next exercise.

Exercise 2: Design a function that consumes two quantities (nonnegative integers), and produces a string illustrating how their importances add up. For instance, if given 2 and 4, it should produce the string "<<2>> + <<<<4>>>> = <<<<<<6>>>>>>". You should use the program you wrote for Exercise 1! If you don't, your code will be unreadable, and take forever to write.

Don't forget to write tests for your function.
