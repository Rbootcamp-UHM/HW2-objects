# hw1-cars

Your task is to build off of the `cars_script.R`. Start by studying that working script. Run it line by line to understand what it does, then try running the script all at once using `source("cars_script.R")` from within R. It should run without error. You will want to follow these steps to check that your new and improved script runs without error as well.

## <span style="color:blue">due by Wednesday at midnight</span>
Submit:
1. Your final script ending in `.R` (Your script should produce the plots when I run it but you donʻt need to upload any additional files for the plots).
2. Your output files (`.csv` files)

|Criteria| Evaluation| Scoring |
|---------|-|-|
|Runs without Error| Absolutely must be YES | 0/10 |
|Ouptput| Does code produce correct output | 1-5 |
|Code Readable| Good use of whitespace,etc | 1-5 |
|Understandable| Concise use of helpful comments - see cars_script.R You are welcome to delete the explanation comments | 1-5 |


## The Idea:
- The original script opens the built-in dataset cars, reassigns variables, and creates a bivariate plot to visualize speed and distance. It also calculates the regression line (the best-fit line to the points), and plots that line on top of the bivariate plot. It then saves the dataframe to file on your working directory. The dataset contains 50 observations of speed and distance.

- What we want to do in this homework is build out the functionality of this script: We want to explore and visualize whether there is a relationship between speed and distance with these cars (basically does distance increase with speed)? In the process, you will demonstrate your ability to manipulate data objects, subset objects, and use some basic functions.

# Tasks

1. Create a folder for this work within your `Rclass` directory on your computer. If you wish you could do `Rclass/Homework` and then clone the `hw1-cars` repository there. Or just make a folder. Clone this repository or copy the files there. If you have git installed, you would do from within your `Rclass\Homework` directory (please copy the link from your personal repository so that your username is correct):

If you run into trouble with git or GitHub, check out the instructions here: https://github.com/Rbootcamp-UHM/github-classroom-for-students/blob/master/README.md

```
git clone https://github.com/Rbootcamp-UHM/hw1-cars-USERNAME.git
```

2. Modify `cars_script_stub.R`  I have put comments in there to prompt you for what you need to do. (To ease your way into the script-writing waters:)

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
