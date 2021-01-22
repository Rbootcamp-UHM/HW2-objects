# setwd("C:/Users/marguerite/Documents/Rclass")

# cars <- read.csv( "cars.csv") # this is how you would read it if it were in your working directory
cars     # built in dataset - comes with R - take a look at it

speed <-  cars$speed  # save speed as a vector
dist <-  cars$dist

plot( speed, dist, cex=1)  # plot x,y
speed.lm <- lm (dist ~ speed)   # fit regression line, save as speed.lm

abline( speed.lm, col="red" )   # plot regression line - best fit line to the points

# Get the coefficients of the line in y= slope*x + intercept form:
coef(speed.lm)

# What is the class of that object? Grab the slope and intercept and save them as 
slope <- 
intercept <- 

# The regression distance ~ (as a function of) speed predicts distance from the speed data. Compute the fitted distance (if they fell perfectly on the line) from speed:
dist_fit <- slope*speed + intercept

# Plot dist_fit vs. speed on the same plot, as red points (pch=16 specified solid points) - complete this line of code
points(                , pch=16)

# The point at the farthest distance is point number 49. Plot point 49 in solid red. 


# Compute the difference between the fitted distance and the actual distance


 # Is point 49 the most extreme point? (biggest deviation from line?). Use code to figure this out. 
 
 
 # We can plot the deviation of point 49 from the regression line using the segments() function. Look up the help page to understand how it works. 
 i=49
segments( speed[i], dist[i], speed[i], dist_fit[i], col="red", lty=2 )

# isnʻt that cool?
## R is "vectorized": it will work on vectors all at once. Write the appropriate line of code similar to this below to draw the lines for all of the points:

#segments( x, y, x, yhat, col="red", lty=2 )


# Is there a relationship between speed and distance? Letʻs mess with the data. 
# Subset the dataframe, selecting only the fastest half of the points.


# Plot the fast data and regression line for faster points
 
   
write.csv(cars, "cars.csv")  # save data to csv file in working directory
# Save the "fast" data to another file "cars