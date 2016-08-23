# Blood Cell Compatibility

Everyone has a "blood type" that depends on many things, including the antigens they were exposed to early in life. There are many different ways to classify blood; one of the most common is by group: O, A, B, and AB. This is augmented by the "Rh factor" which is either "positive" or "negative". This yields a set of eight relevant types. We'll use the following strings to represent them: "O-", "O+", "A-", "A+", "B-", "B+", "AB-", and "AB+".

If a person needs a blood transfusion, the type of the donor's blood is restricted to only being a type which the recipients body can accept. In the following chart (from the "Blood Type" article on Wikipedia), a checkmark indicates which types are acceptable for each type of recipient. For example, a person with type "O+" can donate to a person with type "A+", but not to someone with a type "B-". You can observe that "O-" is sometimes referred to as the universal donor and "AB+" is sometimes referred to as the universal acceptor.

![Blood compatibility chart](../../../raw/master/2016/blood-cell-compatibility/blood-chart.png)

Design a function `can-donate-to?` which consumes two strings denoting the donor's blood type (as the first parameter) and the recipient's blood type (as the second parameter). Produce true if the donor's blood type is acceptable for the recipient's blood type, according to the above chart, and false otherwise.

Hints: Look for patterns in the chart. You should probably use a `cond` with not more than 10 clauses.The `string-contains?` function may be _very_ helpful.

