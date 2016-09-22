Here is a data definition for s-expressions:

    ;;; An Atom is one of:
    ;;; - Number
    ;;; - Symbol
    ;;; - String
    ;;;
    ;;; An SExp is one of:
    ;;; - Atom
    ;;; - [List-of SExp]
    
Here are the rules for the written, textual representation of an s-expression (that is, as a string):

* A number is represented as a base-ten numeral: `"107"`, `"-92"`.

* A symbol is represented with the characters of the symbol: `"foo"`, `"bar"`. (You may assume that symbols don’t have odd characters, such as space, parentheses, quote characters, etc.)

* A string is represented with the characters of the string, delimited by a pair of double-quote characters: `"\"foo\""`, `"\"bar\""`. (Note that backslash-doublequote is how you put a doublequote character in a string. You may assume that strings don’t have odd characters, such as double-quote characters themselves.)

* A list of s-expressions is represented by (1) a left parenthesis; (2) the items of the list, separated by one or more spaces; (3) a close parenthesis. For example, `"(a (37 \"foo\") c)"` is the string encoding of a three-element list, whose first element is the symbol `"a"`, whose second element is a two-element list (a number and a string), and whose third element is the symbol `"c"`.

**Design a function (and any necessary helper functions) that will consume an s-expression and produce a string with the textual representation of that s-expression.** For example:

    (check-expect (sexp->string '(a (37 "foo") c)) "(a (37 \"foo\") c)")

Note:

* Your function can add a bit of extra whitespace before/after list elements if it makes it simpler; that’s fine. For example, this is a fine three-element list of symbols: `"(a b c )"`.

* You will probably want to look up the useful functions `number->string` and `symbol->string`.

* If you raise the language level to "Advanced Student", you can use the `display` function to make DrRacket print out data in the interaction window.
