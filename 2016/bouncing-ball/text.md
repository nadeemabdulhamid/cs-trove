You have been hired by the local psychology department to assist with the software for a perception experiment. They would like you to develop a program that helps people control the movement of a ball across the screen.

The ball can move on straight lines only, that is, up, down, left or right. Pressing the arrow keys on the keyboard changes the ball’s direction of motion.

1. Develop a data representation for the *current position of the ball*. The position is best described with a pair of positive integers.

2. Develop a data representation for the *speed and direction of the ball*. You may assume that the ball always moves exactly 10 pixels at a time.

3. Develop a data representation for the *ball*.

4. Design the function `ball-next`, which consumes the representation of a ball and creates a ball that represents where it will be after one tick.

5. Design the function `ball-image`, which consumes representation of a ball and produces a rectangle of 300x300 pixels with a red dot (diameter 10 pixels) placed at the ball’s position.

6. Design the function `ball-change`, which consumes a ball and a key-event which represents the user hitting a key on the keyboard. If the key event represents the user hitting the up-arrow key, then `ball-change` produces a new ball which is just like the input ball, except that the new ball is moving upward; similarly for key events representing the left-, right- and down-arrow keys: they cause the resulting ball to be one that is moving left, right, or down, respectively. Passing any other keystroke to `ball-change` causes the ball to be unchanged. Reading about key-events in the HelpDesk is a good place to start.

7. After you have developed these functions, add a main function, which launches a `big-bang` program.
