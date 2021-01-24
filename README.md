# hw2-objects

## <span style="color:blue">due by Wednesday at midnight</span>

Submit:  
1\. Your script ending in `.R`  
2\. Your output files (details at bottom)

| Criteria           | Evaluation                                                                                             | Scoring |
| ------------------ | ------------------------------------------------------------------------------------------------------ | ------- |
| Runs without Error | Absolutely must be YES                                                                                 | 0/10    |
| Ouptput            | Does code produce correct output                                                                       | 1-5     |
| Code Readable      | Good use of whitespace,etc                                                                             | 1-5     |
| Understandable     | Concise use of helpful comments - see cars_script.R You are welcome to delete the explanation comments | 1-5     |

Clone the `hw2-objects` repository into your `Rclass\Homework` directory (please use the invitation link to accept this assignment https://classroom.github.com/a/yrZ6uyiJ and then copy the link from your personal repository so that your username is correct):

    git clone https://github.com/Rbootcamp-UHM/....git  

If you run into trouble with git or GitHub, check out the instructions here: <https://github.com/Rbootcamp-UHM/github-classroom-for-students/blob/master/README.md>

## The Idea:

Demonstrate your powers to subset, index, match objects, pass objects to functions and set arguments, write your own functions and apply it to interesting data.

The vehicle is the iris data - we will do qq-plots to look at the distribution, scatter plots with species indicated by color, and univariate density plots by species.

Wrapping your working code into a function allows you to easily reuse your code!

## Remember:

-   Make sure your scripts run without error when sourced before you turn it in and produces the requested output.
-   Check each bit of code at each step. When itʻs all working go through and delete the unnecessary parts.
-   Working without error is MOST important, but it is also ideal if the script is concise and just produce the final analysis/output so go through and clean it up before final submission.
-   Make sure the script is commented and readable.
-   You may request feedback prior to due date by submitting an issue.
-   Feel free to discuss on SLACK and help guide each other but do not give answers please.

## Script Notes:

I have started this for you in the stub `iris_stub.R` -- edit and extend into your script. These notes explain more about the what youʻre doing and why, and show you the plots you need to produce. The stub provides the coding hints. 

For this problem, use the built-in dataset iris. We will do a typical preliminary data exploration where we check each variable for normality and do bivariate plots two variables at a time. You may want to check the names of the iris dataframe `head(iris)`

`qqnorm()` is a function to check normality of data. It produces a normal QQ plot (a probability plot - cummulative normal) and compares it to the theoretical QQ for normally-distributed data. If the data are normally distributed, this plot should show points following a straight line at a diagonal.  

1.  **QQ plots** From the four plots, which variables are most normally distributed? Notice which are deviating the most? Do you see that break in some of the variables? Do you think that might be associated with differences among species?

2.  **Explore scatterplots**. The plot method for data frames will automatically make a set of bivariate plots for each pair of variables (i.e., just use the `plot( iris )` function on the data frame).  
  - *Plot the dataframe including only the numeric columns* (exclude the species name column). Do you notice anything about the scatterplots? Do they correspond in any way to the dip seen in the QQ plots of some of the variables?
  - *Do you think there might be species differences in the data?* Remake the scatterplots, but this time color code the species like so. Read about the cheat in the stub I provided:
<img width="700" src="./etc/iris1.png">    

  - *Customize your plot* with your own color palette. `colors()` will show you all the valid color names in R, choose some that you like. Similar to the cheat strategy, you just need to associate your color index vector with the species values (see readings for examples. Let me show you what I mean, if I put the species vector and color index vector side by side it might look like this, and my customized plot looks like:

```
    > cbind(iris$Species, icol)
               icol       
      [1,] "1" "magenta"  
      [2,] "1" "magenta"  
    ...
     [51,] "2" "turquoise"
```  
<img width="700" src="./etc/iris2.png">  

  - Feel free to customize your plot symbols (optional) [PointsShow.pdf is here](etc/PointsShow.pdf).
<img width="700" src="./etc/PointsShow.png">    

3.  **Wrap a function around your working code and call it paint.iris()** so you can reuse it. Use the `function()` function to make your fabulous code reusable. Then test it. Your function should accept a data vector, a species index vector, and return the plot above.

4.  **Plot to pdf** See readings if the hints in the code stub are not enough.

5.  **Are these species really distinct? Letʻs plot a permutation**.
    Scramble(=permute) the species names keeping the data in place and replot the data using function `sample()`. The idea is if all of the flowers come from the same group or species, it shouldnʻt matter which species label they have. Normally for a permutation test you might compute the mean or some statistic of interest and compare the observed statistic vs. for the permutations, but weʻre just coding so weʻll do plots so we can see what is happening (you can certainly compare means  as well if you like! - in any case even when I do stats I often do exploratory plots.) What do you expect to see? Your points should not change position, just the colors should change after randomizing species. Your plot might look something like this:
    
<img width="700" src="./etc/irisrandom1.png">

  * Make sure it works, then plot to pdf. Are the colors correctly assigned to the permuted species?
  * Write permuted dataset to .csv
  * Permute species, plot to pdf, write to csv 10 times. Your fabulous `paint.iris()` makes this easier.

6.  **Univariate Density Plots** Another way to look at data is by plotting the density of the values. For one variable, if we assume that the observations represent a random sample we can estimate a probability distribution using a kernel density assumption (if this means nothing to you, donʻt worry - itʻs statistics. For Rbootcamp, focus on what type of object you have to give to the `density()` function, and what is the class of the output? There is a built-in `plot()` function for density, but you will see that you need to get at some of the internal information stored in what is returned from `density()`. How would you access it?

    The relevant part for this class is about indexing and subsetting objects, passing objects, etc. If you want to know more about density, look at the help page `?density` check out the example "old faithful" at the bottom. You can look at the built-in data: `head(faithful)`

  * The density plot for Petal.Length all three species together looks like this:

```
    density(iris$Petal.Length)       # print method shows some basic info
    dd <- density(iris$Petal.Length) # save density output
    plot(dd)                         # plot the density of all Petal.Length points
```
<img width="700" src="./etc/irisdensity.png">  

* Very interesting bumps there. But do they correspond to the different species? Your task is to plot the densities for Petal.Length by species together on one plot to see: 

<img width="700" src="./etc/irisdensitysp.png"> 

* What do you think?   
* When you code your plots, you will have some issues with the plot size and will have to set xlimits and ylimits. Follow the hints in the stub.  
* Once you get everything working, **Write a function** with two arguments - a vector of data (i.e., `iris$Petal.Length` for example), and a vector that has information to indicate groups (i.e., `iris$Species`), and does what is necessary to produce a pdf of the three densities on a single plot as we just did above.  
* Use your function to produce density plots for each of the variables in the original data.  
* Generate these plots for each of the 10 randomized datasets you saved earlier. One file per simulation (come up with a naming scheme `density_sim1.pdf` or whatever makes sense to you).    

### Once you have a working function, itʻs so easy isnʻt it?!

How are the species different? In what way?

CONGRATULATIONS! You just finished your second homework assignment.

## Submission

1.  Test and debug your script. As a final check, after saving your script, shut down R completely and then restart and run from source. Does it run without error?

2.  Submit:  
  a. Your script,  
  b. pdfs for custom colored bivariate plots for original data and 10 sets of simulated data,  
  c. the 10 .csv files holding the simulated datasets,   
  d. pdf for the custom-colored density plot for three species separated, and the 10 sets of density plots for each set of simulated data.    

3.  As you go along start pushing your work up to your GitHub repo. Push early and push often! When you're done, submit it:

```
    git add -A
    git commit -m "Final Submission"
    git push origin main
```
If you want me to check before the due date, generate an issue on the website for your repository but be sure to tag me @mbutler808 so I get a notification.
