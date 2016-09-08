Here is a data definition for measuring time:

    (define-struct time (hours minutes))
    ; A Time is a structure:
    ;    (make-time Number Number)
    ; interpretation: (make-time h m) is the time  
    ; expressed in hours, and minutes
    ; Constraints:
    ; – hours is always between 0 and 11
    ; – minutes is always between 0 and 59
    
1. Design the function `tock`, which adds one minute to the given time.

2. Design the function `time->text`, which converts a time to a text. The text should look like the display of a common alarm clock, i.e., it should separate the minutes from the hours with a colon. Hint: a text is an `image`, not a `string`, but you will need a string version of the time, too. See the HelpDesk for more on the text function.

3. After you have developed these functions, add a main function, which launches a `big-bang` program.
