 Define a function that `translates` a blue object closer to a red object on a *200 x 200 plane*. Specifically, the main function consumes two `Posns`, one called **red** and **blue**. It produces an `image` that contains:
 
1. a blue dot

2. a red dot

3. a black line between the blue and the red dots

4. a green dot on this line, 10% of the way along the line from the blue dot to the red dot. (Or, alternately, 90% of the way along the line in the reverse direction, from red to blue.)


**Domain Knowledge (Geometry)** To find the green point between the red and the blue one, cut the "distance" in each dimension to 90% and add the results to the respective coordinates of the red point.
