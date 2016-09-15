##Centipede! (Part 1)

**Be sure to change your language level from BSL to BSL+List: in the lower left corner, click on "Beginner Student", then select "Choose Language", and then click on "BSL + List Abbreviations" in the window that pops up, and click "OK".**

For this assignment, you will build a simplified version of Centipede with the following changes:

-No mushrooms

-When the centipede is shot, all of the segments from the point of impact to the end of the list are removed, so there is only one centipede at a time

#### Here’s the full game description. 
Keep the mushrooms and multiple centipedes in mind, you’ll be adding them in the next assignment.

In the game Centipede, a long centipede starts at the top of the screen and zig-zags its way down to the bottom, attempting to eat the player, before making its way back to top to start all over again if both it and the player survives that long. When a centipede hits an obstacle, which is either a wall or a mushroom, it moves down (or up) a level and reverses its direction (except for obstacle avoiding, a centipede only ever moves left or right).

The player is fixed at the bottom of the screen, but can move left or right and fire a single bullet at a time (using the left/right arrow keys and space bar, respectively). Bullets are faster than the centipede (exactly how much faster is up to you, but we recommend 3–5 times as fast). If the bullet hits a mushroom, its health decrements (mushrooms take 4 hits to be killed completely and removed). If the bullet hits the centipede, the centipede splits into two at the point of impact, and a mushroom appears at the point of contact.

The game is over when the player collides with the centipede or the player has killed all centipedes. The game displays a victory image if the player wins and a failure one if they lose (look at the documentation for stop-when which will show how to display a final image).

For example, here is a screen recording of the game made by one of your TAs: https://vid.me/lWfu. The TA deliberately took a while to finish the game to demonstrate the centipede moving back up after reaching the bottom.

If you wish for the game to look the same, these are the graphical constants they used.

    (define GRID-WIDTH 25)
    (define GRID-HEIGHT 40)
    (define CELL-SIZE 15)
    (define BG (empty-scene (* CELL-SIZE GRID-WIDTH) (* CELL-SIZE GRID-HEIGHT)))

    (define PLAYER (square CELL-SIZE 'solid 'black))
    (define BULLET (rectangle 3 8 'solid 'orange))
    (define CENTIPEDE-CELL (square CELL-SIZE 'solid 'green))
    (define TONGUE (triangle 5 'solid 'red))
    (define LEFT-HEAD (overlay/align "left" "middle" (rotate 90 TONGUE) CENTIPEDE-CELL))
    (define RIGHT-HEAD (overlay/align "right" "middle" (rotate 30 TONGUE) CENTIPEDE-CELL))
 
    (define MUSHROOM-RADIUS (/ CELL-SIZE 2))
    (define MUSHROOM-1-C 'LightSalmon)
    (define MUSHROOM-2-C 'Salmon)
    (define MUSHROOM-3-C 'OrangeRed)
    (define MUSHROOM-4-C 'DarkRed)
 
    (define WINNER (text "WINNER" 72 'black))
    (define LOSER (text "LOSER" 72 'black))

>Keep the Design Recipe in mind at all times and follow it at all times. After properly designing your data definitions and their interpretations, templates and examples, there are two general programming practices you could follow: *wish-list-as-you-go*, often called top-down programming, or *build-from-the-wish-list*, often called bottom-up programming. In the former, you would begin by writing your on-tick function with helpers you don’t actually have, commenting it out, and then adding those helpers to your wish list with their proper signature and purpose statement. In the latter, you start by building your wish list, writing those helpers, and then finish with writing the on-tick function. The latter has the disadvantage in that only after you have written helpers might you realize that the helper is not as helpful as you would hope, but the former has the disadvantage in that it is much harder to test code you don’t actually have helpers for. All programmers do a mixture of both to some extent, and it is up to you decide what balance will best help you write this program.

>Keep in mind, also, that the on-tick function in this game is not atomic. In previous programs, one sentence was added to the rendering of a paragraph, or one minute was added to the time. In this game, in one tick, a bullet can hit a centipede, split it, generate a mushroom, the bullet disappears, and then the centipedes might move. These events have to happen in a certain order to keep bad things from happening, such as a centipede being inside a mushroom or a bullet hitting a centipede and the mushroom right above it. This will require a very careful order in which you use helpers.

>Also note, although a bullet moves faster than a centipede, it can never move past a centipede or mushroom. Thus, it cannot jump more than 1 cell in a single tick. If one cannot control speed via distance, one must do it via time, e.g. if the bullet is 3 times as fast as the centipede, the centipedes should only move once for every three times the bullet moves. How might you enable this functionality?

Some finer details:

1. The centipede cannot leave the playing area. When it reaches a bottom corner of the screen, it should begin zig-zagging its way back up the screen. For example, if a centipede reaches the bottom left corner while headed left, the next time it moves its head should be all the way to the left, on the row above the player, and headed right. For example, the centipede’s head’s coordinates would follow along this path if no mushrooms or bullets interfered: (2, 0), (1, 0), (0, 0), (0, 1), (1, 1), (2, 1). It should follow analogous paths for the bottom right corner, or either of the top two corners.

2. If a bullet has been fired, a new bullet cannot be fired until the old one goes off-screen or collides with a mushroom or centipede and disappears.

3. The player should not be able to move past the right and left walls.

4. There should be a visual indication of where the head of a centipede is and if it is heading left or right.

**Your program should be launched with a main function that takes in *the initial length of the centipede*.**

*Just to clarify, unlike in Snake, the player never controls the motion of the centipedes.* 
