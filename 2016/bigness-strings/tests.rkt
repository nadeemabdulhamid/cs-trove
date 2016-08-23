(proc bigness 1)
(proc bigness-add 2)

(type (bigness 1) "a string" string?)
(type (bigness-add 1 2) "a string" string?)

(test (bigness 0) "0")
(test (bigness 2) "<<2>>")
(test (bigness 4) "<<<<4>>>>")
(test (bigness 6) "<<<<<<6>>>>>>")

(test (bigness-add 0 2) "0 + <<2>> = <<2>>")
(test (bigness-add 2 4) "<<2>> + <<<<4>>>> = <<<<<<6>>>>>>")
