You are designing software for the post office to help process physical mail. There are two kinds of physical mail: `letters` and `boxes`. A letter has an `address` (which we’ll represent simply, as a string) and a `weight` (measured in ounces). A box has `height`, `width` and `length` dimensions (measured in inches) and a `weight` (measured in ounces).

There are some rules for mail:
- A letter must weigh less than 3.5 ounces.

- The sum of a box’s height, width and length must be 62 inches or less, its total volume must be 7938 cubic inches or less, and its weight must be 50 pounds (800 ounces) or less.

- A letter costs fifty cents to mail, while a box is fifteen cents an ounce.

Here are the tasks before you:

1. Design a data definition, `Item`, to represent one item of mail.

2. Design a function, `item-ok?`, to determine if a piece of mail satisfies the rules.

3. Design a data definition, `LOI`, for a list of items.

4. Design a function, `bad-items`, that takes a collection of mail (represented as an LOI), and returns all the items that don’t satisfy the rules.

5. Design a function, `total-postage`, that produces the total postage for a collection of mail.
