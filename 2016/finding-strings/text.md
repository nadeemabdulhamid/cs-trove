1. Design `find-string`. The function consumes a [List-of String] and a String; it returns a true if and only if the given string is a member of the list.

2. Abstract `find-string` to `generic-find-string` so that the string-comparison operation it uses is a parameter. 

3. Then use this abstraction to define `find-string-case-sensitive`, which should operate the same way as the original `find-string`, and `find-string-case-insensitive`, which has the same contract as `find-string` but ignores the case of alphabetic characters when comparing strings. 

  * That is, "a" is considered the same as "A" and so on; non-alphabetic characters must still match exactly. 
  
  * Look in the documentation for ISL to find appropriate primitive functions.
