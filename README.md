# hw2-objects

## <span style="color:blue">due by Monday at midnight</span>
Submit:
1. Two scripts ending in `.R` 
2. Your output files (`.csv` files)

|Criteria| Evaluation| Scoring |
|---------|-|-|
|Runs without Error| Absolutely must be YES | 0/10 |
|Ouptput| Does code produce correct output | 1-5 |
|Code Readable| Good use of whitespace,etc | 1-5 |
|Understandable| Concise use of helpful comments - see cars_script.R You are welcome to delete the explanation comments | 1-5 |


## The Idea:
- Script 1: In the first part you will demonstrate your ability to make R bend to your will. 
- Script 2: In the second part you will use your powers to manipulate iris and generate pdf plots. 

# Practice

Vectors and data frames
```
> x <- c( 1, 5, 7) >x
[1] 1 5 7

> rep( x, times=2)
[1] 1 5 7 1 5 7

> rep( x, each=2)
[1] 1 1 5 5 7 7

> y <- rnorm(6) 
> y
[1] -0.45039371 2.57843737 0.16857918 0.53228122 0.09552438 -0.27390916

> xxy <- data.frame(x,x,y) 
> xxy
x x.1
1 1 1
2 5 5
3 7 7
4 1 1
5 5 5
6 7 7
y -0.45039371 2.57843737 0.16857918 0.53228122 0.09552438 -0.27390916

> xxy[-2] ## What does the negative index do?
xy
1 1 -0.45039371
2 5 2.57843737
3 7 0.16857918
4 1 0.53228122
5 5 0.09552438
6 7 -0.27390916
```
Vectors and matrices
```
> x <- 1:10 
> x
 [1]  1  2  3  4  5  6  7  8  9 10

> class(x)
[1] "integer"

> dim(x)
NULL

> dim(x) <- c(2,5) 
> x
# what just happened?
2
[,1] [,2] [,3] [,4] [,5]
[1,]    1    3    5    7    9
[2,]    2    4    6    8   10
We just made a matrix from a vector by manipulating the attributes (here, dimension). Another way to accomplish the same thing:

> x <- 1:10 
> class(x)
[1] "integer"

> x <- matrix(x, nrow=2) 
> class(x)
[1] "matrix"

> dim(x)
[1] 2 5
```

# Tasks

Make sure your scripts run without error when sourced before you turn it in, and produces the requested output. Make sure they are commented and readable. 

## Script 1 

**Matrix reshaping and indexing** You may want to review the help page for matrix, as well as chapter 5&6 Creating data objects and What is it? For question 1, indicate each part a-i in your script with comments (#1a, #1b, etc.).  
 a. Create a matrix with the values 1 through 20, filling four rows. Save it as “x”.   
 1b. What are the attributes of x? Put the answer in the code as a comment.  
 1c. Change it to a matrix with 2 rows and 10 columns by changing its attribute.   
 d. Change x to a vector.  
 e. Change x to a matrix with four rows, this time filling it by rows rather than by columns (you may want to check the help page).  
 f.  Coerce x to a vector again. Is it in the same order as the previous vector? What does this tell you about R’s default behavior when flattening matrices to vector?  
 g.  Create the original x matrix again. Select only the 3rd row, 4th column. What is it?  
 h.  Select rows 3 and 4, columns 4 and 5. Print it to the console by using the print(x) function.  
 i.  Select the first and last rows, first and last columns. Print it.  
 
 ## Script 2

**Exploring data and plotting** For this problem, use the built-in dataset iris. We will do a typical preliminary data exploration where we check each variable for normality and do bivariate plots two variables at a time. You may want to check the names of the iris dataframe to do the exercises. For this problem, what you should include in the final script is explained in 2(d).

 a. Let’s start by checking normality of the data. We will use the function qqnorm(). It produces a normal QQ plot (a probability plot) and compares it to the theoretical QQ for normally-distributed data. If the data are normally distributed, this plot should show points following a straight line at a diagonal. Since there are four variables, let’s make four plots on one page. Set this up in the plot environment using the code:
```
> par(mfrow=c(2,2))
```
Now make the four qqnorm plots (one for each variable), and they will fill the page by row first. Let’s also add a title to each panel so we know what’s what. Like this:
```
> qqnorm( iris$Petal.Width, main="Petal Width")
```
Make all four plots. Which variables are most normally distributed? Which are deviating the most? (We’re just going to note it, but not do anything about it).

 b.  Make an new plot window using quartz() for Mac or x11() for PC or Linux. Now let’s make some scatterplots. The plot method for data frames will auto- matically make a set of bivariate plots for each pair of variables (i.e., just use the plot( iris ) function on the data frame). Plot the dataframe including only the numeric columns (exclude the species name column). Do you notice anything about the scatterplots? Do they correspond in any way to the dip seen in the QQ plots of some of the variables?

c.  Do you think there might be species di↵erences in the data? Remake the scatterplots, but this time let’s color code the species so that we can see the clouds of points for each species on each plot. We do this by creating a color vector, with one entry for each row of the iris dataframe, where setosa gets a value of "red", versicolor gets a value of "blue", and virginica gets a value of "black". First find out how the species are arranged in the levels of the factor by printing the vector of Species to screen (or check the attributes). Create a vector of colors to correspond to the species names. Set the col= argument in plot() to the color vector that you just created. Your plot should look like this:

What do you see? Are the species di↵erent? In what way? Which are most different?

 d.  Remake the QQ plots and the bivariate scatter with color, but this time make pdfs. Turn in your finished script that creates these plots as pdfs and answers the questions in comments.

CONGRATULATIONS! You just finished your second homework assignment. 







1. Create a folder for this work within your `Rclass` directory on your computer. If you wish you could do `Rclass/Homework` and then clone the `hw1-cars` repository there. Or just make a folder. Clone this repository or copy the files there. If you have git installed, you would do from within your `Rclass\Homework` directory (please copy the link from your personal repository so that your username is correct):

If you run into trouble with git or GitHub, check out the instructions here: https://github.com/Rbootcamp-UHM/github-classroom-for-students/blob/master/README.md

```
git clone https://github.com/Rbootcamp-UHM/hw1-cars-USERNAME.git
```

3. Test and debug your script. Rename your script removing `_stub` and put your name or initials there. As a final check, after saving your script, shut down R completely and then restart and run from source. Does it run without error?

4. When you're done, push it back up to GitHub. You can either commit your files or just use the web interface to submit your files back to this repository. To

To use git to submit (don't do this if you're using the web to drag and drop). First tell git what files you want to send up to the server:  
```
git add myscript.R cars.csv
```
Write a commit message - it can be whatever is helpful to you, it has version history so you can read through your messages if you ever want to track back to earlier versions
```
git commit -m "Submitting my homework"
```
Finally push up the changes
```
git push origin main
```
## Sorry everyone! My error in class was that I was trying `git push origin master` when `master` should have been `main`

## For this first homework, Iʻll allow you 3 tries
1. Submit your homework but pushing your work up to your homework repository
```
git add -A
git commit -m "Submission #1"
git push origin main
```
2. Go on the website for your repository
3. Generate an issue or use the feedback under pull request to ask me to check your homework. Be sure to tag me @mbutler808
