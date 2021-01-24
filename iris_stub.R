iris
par(mfrow=c(2,2))
qqnorm( iris$Petal.Width, main="Petal Width")
qqnorm( iris$Petal.Length, main="Petal Length")
qqnorm( iris$Sepal.Width, main="Sepal Width")
qqnorm( iris$Sepal.Length, main="Sepal Length")


## Open a new plot window using quartz() or x11() and do a bivariate plot of iris. 
## Use your knowledge of indexing to get rid of the species column
quartz()
plot(iris)

## Color by species. Since iris$Species is a factor, it has an internal numerical value. 
## for a quick and dirty plot by species, we can use that numeric info to assign colors:

plot(iris, col=iris$Species)

as.numeric(iris$Species)
sp <- as.character(iris$Species)

# But I donʻt like those colors.
# Create your own color pallete for the three species
# Magenta, teal, brown, etc. try "colors()" to see all the possibilities
# explain which species goes with which color in a comment

icol <- as.character(sp)
## write code to reassign icol with color names

plot(iris, col=icol) 		# replot with new colors 



## We want to reuse this code, so write a function and call it 
## paint.iris(). You may want to have two arguments: just the numeric data and a vector for the species. 

paint.iris <- function(dat, sp) {
	icol <- as.character(sp)

## add code to reassign your icol to your custom colors here
## if you want to change your plotting symbols you can specify pch=

    plot(dat, col=icol)
  }

# execute paint.iris
sp <- iris$Species
paint.iris(iris, sp)

## Once you are sure everything is working, plot to pdf  
## The function pdf() opens a pipe to the graphics device driver to make a pdf.
## the pipe must also be closed using function dev.off(). if you forget your pdf 
## will be corrupted.

pdf(file="irisplot.pdf")
    sp <- sample(iris$Species) 
    paint.iris(iris, sp)
dev.off ()



## Are these species really distinct? Letʻs do a permutation test. 
## Scramble(=permute) the species names keeping the data in place 
## and replot the data using function sample().
## Normally for a permutation test you might compute the mean 
## or some statistic of interest, but weʻre just coding so weʻll do plots
## (you can certainly compare means  as well if you like!) 
## What do you expect to see? Your points should not change position, 
## just the colors should change after randomizing species.

## Scramble species. Make sure this works

sp <- sample(iris$Species)
paint.iris(iris, sp)

## plot to pdf. 

pdf(file="irissimplot.pdf")
    sp <- sample(iris$Species) 
    paint.iris(iris, sp)
dev.off ()

## Repeat the scramble and plot for a total of 10 simulated pdfs. (can you figure out how to 
## make all the plots in one pdf file?)



############# Density plots ######################################
## Another way to look at data is by plotting a density of the values. 
## For one variable, if we assume that the observations represent a random sample
## we can make a probability distribution using a kernel density assumption (if this
## means nothing to you, donʻt worry - itʻs statistics. I am just giving you this as
## something one might want to do.). For Rbootcamp, focus on what 
## type of objetct you have to give to the density() function, and what is the class of
## the output? There is a built-in plot function for density, but in case you want to get
## at any of the internal information, how would you access it?  So the relevant part
## for this class is about indexing and subsetting objects, passing objects, etc. 
###############################################################

## If you want to know more about density, look at the help page ?density
## check out the example "old faithful" at the bottom. You can look at the data: head(faithful)

## Letʻs plot the density of the Petal.Length points

density(iris$Petal.Length)            # print method shows some basic info
dd <- density(iris$Petal.Length)  # save density output
plot(dd)                                        # plot the density of all Petal.Length points

## Very interesting bumps there. But do they correspond to the different species? 
## Subset the data by species, and store each density in a separate object and replot

density(       )
dd.versicolor <- density(          )
plot(dd.versicolor, col=              )

## Add on additional densities for each species using the lines() function. Please use your 
## fabulous color pallette


lines(dd.virginica, col=             )

## At this point you may have noticed that the density is off the plot. The problem is that the x-limits
## of the different species are different, and by default set by the values given to plot() -- this sets up 
## the new plot window. You can get around this by plotting the density for the full dataset with 
## no points or lines, type="n", and then calling the lines function to add each species:

plot(dd, type="n")
lines(      )
lines(      )
lines(      )


## Now you may have noticed that y-axis is too short!! We need to find the maximum density to set
## the y-limits. To do that, we need to find out where that info is stored. Use the str() function to see
## the structure of a density object

str(dd)

## You can see that it is a list of 7, with x, and y which looks promising! Remember a list is a vector 
## of objects (but they can be different types!) And since the list elements are named you can use the $

dd$y

## use this info to set your ylimits. Remember that argument has this form: ylim=c( , ) 
## Check out ?plot for more info - if you see a choice click on the one in graphics


## Write a function accepts as input a vector of data (i.e., iris$Petal.Length for example), and 
## a vector that has information to indicate groups (i.e., iris$Species), and does what is necessary 
## to produce a pdf of the three densities on a single plot as we just did above.



## Use your function to produce density plots for each of the variables in the original data (Petal.Length,
## Petal.Width, etc.). One plot per variable, should contain the 3 species densities on a single plot.


## Generate these plots for the randomized data you saved earlier. One file per simulation. 
## Once you have a working function, itʻs so easy isnʻt it?!  

## Be sure to delete these stub intructions to make a clean script. Only leave what you need to explain 
## how the final product works. 
