#---
# Practical 1 - Using R in Earth System modelling part I

# Tom Matthews (Original Authors: Murray Hoggett and Tom Pugh)
# 18.09.2012
#---

#Hello! This is an R script  introducing R as a scientific computing language
#through climate data. 


##--- Getting started

# R is a standalone program but these days most people use it through the program
# R Studio. You can easily download (for free) R studio on to your laptop, but for ease
# on this course we are going to using an R Studio Cloud (basically R studio through 
# the internet). This makes life easier as we (the course leaders) can upload all the code
# and data to the cloud, meaning you don't have to worry about downloading anything!

##NB Make sure you have watched the introductory video before working through the script,
# as this will show you how the cloud R studio version works!

#An answers / output file is on Canvas that accompanies the practical. This file shows
#how all the output (e.g. code output, plots etc) should look. So if you think something
#doesn't look right, or you get stuck on the code it yourself parts below, have a look
#at this file.

#Code in this script can be
#executed within the script by clicking on the line in this document and
#pressing *Ctrl+Enter* (or *Cmd+Enter* for mac users), which makes the results
#appear in the terminal below. Opening this document in any other program (e.g.
#a text editor) than R studio will lead to you being able to see the code, but
#not being able to run it.


###--- Introducing R ---
# R is quite easy to start working with. R is a fully fledged programming
# language and therefore can be hugely powerful for analyzing data. It allows
# you to analyse much bigger datasets than are possible in other programs (such
# as Microsoft Excel), and there are many jobs for people skilled in R and
# analyzing data. The two introductory practicals of the module will introduce some parts of
# R, will teach finding summary statistics (such as mean, median, standard
# deviation etc.), and will teach how to make a number of different types of
# graphs and maps. This specific practical will show you some of the basics of
# R to allow you to get started using R as a programming language for science,
# so you can discover cool stuff and make publication quality figures quickly
# and easily.


###--- R programming 101 part 1 - the variable. ---
# Lets jump straight in. We are going to teach you a few bits of programming to
# make your life easier. Don't panic, we are not about to ask you to write loads
# of complex code or build new software or anything like that. **We don't
# actually expect you to remember any of this code or any of these commands**.
# You will always have these R scripts, so you can just copy and paste code
# and modify it as you need. 

# The first important concept in programming you need to know to be able to use
# R is the concept of a "variable". A variable is like an postal address. It
# refers to a location in computer memory. It is a location that we can store
# almost anything. Below this paragraph is the first piece of code (anything
# without "#" in front of it). In this first piece of code we make a variable
# called my_var and store the number 144 in it.

# Creates a variable called "my_var" and stores the number 144 in it.
my_var <- 144

# To run the code above, you need to click on the line and press *Ctrl+Enter*
# (or *Cmd+Enter* on a mac). Alternatively you can highlight the row of code and click
# the run button at the top. You will see the command appear on the
# console window below this editor. R has stored the number 144 somewhere in
# your computer's memory, and given that space in memory the address "my_var".

# The rules for creating variables are simple:

# *  Variable names can have letters, numbers, full stops, or underlines. Don't use any other characters. 
# *  Variable names must start with a letter (they cannot start with a number)
# *  Variable names must not contain a space or any other characters

# So "my_var", "My_var", "MY_VAR", "My_var1" are all valid variable names. 

# Invalid variable names would be "1my_var" (because it starts with a number) or
# "my_var#1" (because it contains a character which isn't a letter, number, full
# stop or underline)

# Lastly, variable names do not have to have the words "my" and "var" in them.
# General advice is to call your variable a name which gives an idea of what is
# contained inside it. E.g. if you had some climate data from a Global Climate
# Model that you were going to store in a variable, calling that variable
# "GCM_data", or "gcm_data_1" might be sensible.

# We use the <- operator to assign values. The = operator works in the same way,
#so my_var <- 144 and my_var = 144, do the same thing: they assign the value of 144
#to the variable 'my_var'.

# Once you have made a variable, you can access whatever is stored in that
# variable by just using it's name. For example, to find out what we stored in
# the variable "my_var", just type it's name and press *Ctrl+Enter* (or
# *Cmd+Enter* on a mac); or alternatively you can highlight the code and click
# 'run' at the top of the screen.

# Print the contents of my_var to the screen
my_var

# If you run this code chunk, you should see an output underneath
# that looks something like "[1] 144". The "[1]" is unimportant - it just shows
# that this is output by R rather than what we typed in. The "144" is the
# important bit - the computer went to someplace in memory and retrieved that
# value for us. We can now do useful things with that data. (Note if you didn't
# see this output, you probably haven't run the first code chunk where we made
# the variable in the first place).

# Note, throughout this document you will see the "#" symbol and some text. This
# is called a "comment". Comments in your code allow you to write notes to
# yourself or to other people. If R sees the "#" symbol, it considers everything
# on the line after the '#' to be a comment and ignores it.


###--- R programming 101 part 2 - basic maths. ---

# Storing a single number isn't very useful if we can't do anything with that.
# The whole point of a variable is that we can *reuse* it. All the standard
# mathematical operations can be done on a variable.

# For example, we can add a number to a variable like this:
my_var + 4

# You will see the output printed in the console window below. You will see
# this is the same as if you do

144 + 4

# That's right - R can be used as a standard calculator!

# Lets look at the rest of the mathematical operations on variables: 

# Subtraction:

my_var - 7.5

# Multiplication 

my_var * 1000

# Division

my_var / 12

# Brackets and longer expressions

((my_var + 4) / 10) + (2*my_var) + (1/4)

# Raising to a power 

my_var^2

# You can also store the result of mathematical operations in a new variable. Let's try some variations of that: 

# Create a new variable and store the value of Pi in it 

pi_3dp <- 3.142

# Create a radius variable and store the radius of some circle in it

radius <- 5

# Find the area of this circle

circle_area <- pi_3dp * radius^2

# You shouldn't see any output from this yet. We have just stored the circle's
# area in a variable called "circle_area". We haven't yet printed it to our
# screen. We can see the value in this variable by running just the variable
# name on it's own.

# Print the contents of circle_area to the screen in the "console" area

circle_area

# So our circle with radius 5 has an area of 78.55 units squared. 

### Ok I get it, but what else can be stored in a variable? 
# Lots of other data types can be stored in a variable. This is why a variable
# is like an address for a house. You can store lots of things in a house, or
# just a few things - you don't just have to store one number like we have in
# the "my_var" and the "pi_3dp" examples. For example, you can store a string of
# several characters:

# Make a variable containing a string
my_fav_sentence = "climate data is cool"
# Print the contents of the varible
my_fav_sentence 

# Or you can store several numbers in an object called a "vector". For example, we could store the Fibonacci sequence 

# Make a vector containing the start of the Fibonacci sequence

fib <- c(0, 1, 1, 2, 3, 5, 8, 13, 21, 34)

# Print the contents of the fib variable to the screen

fib

# A vector is made with the concatenate function. This has the form "c()", where
# any number of "things" can go in between the brackets. These things must be
# separated by a comma. We will see this function many times in this series of R
# practicals. You can also use characters instead of number

cha <- c("a", "b", "c")

cha

# The concatenate function is useful because we can apply mathematical
# operations to everything inside the vector (if they are numeric) at the same time. For example to
# double every number in the "fib" variable, all we need to do is:

# Multiply every number inside the fib variable by 2.

fib * 2

# We could also store a 2 dimensional matrix of numbers in a variable 

# Create a matrix of test data with 3 rows, containing the numbers 1:12

my_mat = matrix(1:12, nrow = 3)

# Print the matrix to the screen

my_mat

# Ok, you can store lots of things in a variable. This is kinda boring. 
# I know, this hasn't been interesting so far. But if you don't know the rules
# of naming variables in R and how to use them, you can't do very much. Also
# note that we can now do simple or complex mathematical operations on a whole
# matrix of numbers at the same time. This can allow us to calculate new
# quantities super quickly, or change units for all of our data at the same
# time, etc. Lets move onto something more interesting. Lets get a small
# dataset, and make some graphs.

# The "data()" function is a special function in R that loads a small practise
# datasets for you into a variable of the same name as between the quotes (in
# this case, "faithful"). This is not the normal way to load your own data into R, so
# don't worry about it! # We will show you how to read a dataset into R properly below

data("faithful")

#We can print the whole dataset to the console, or we can use the head() function
#to just look at the top few rows

faithful

head(faithful)

# This is a tiny dataset (only 272 rows long) of eruptions from the Old Faithful
# geyser in Yellowstone National Park, USA. It has two columns: the first
# providing the eruption time in mins, and the second the waiting time in mins
# to the next eruption

# As we don't know much about the dataset we have just loaded into the
# "faithful" variable, lets use two functions to explore what the faithful data
# is. The first function is the "dim()" function, which tells us the dimensions
# of the data (i.e. the number of rows and columns). The second function is the
# "str()" function, short for structure. These two functions are super useful
# when you have new data and you want to work out how to use it / how to plot it
# / how to summarize it / etc.

# Find the dimensions of the data stored in the faithful variable

dim(faithful)

# This tells us that the data stored in the faithful variable has 272 rows and 2
# columns. You might be thinking we can see this from just typing "faithful" and
# looking at how many rows the output says. This works for a very small dataset
# like the faithful dataset, but for datasets of millions of lines you might be
# waiting several minutes at everything is printed to screen. Or your computer
# might crash as it tries to do too much. But the dim() function handles big
# datasets with ease. You can also use nrow() and ncol() to work out the number
# of rows and columns individually.

# Lets get a little more information about the faithful data with the "str()" function
# Print the structure of the faithful variable to the screen

str(faithful)

# So this tells us that the data inside the "faithful" variable is something
# called a dataframe (these are similar to a matrix but with some different features, which
# we will go over later). Like the dim function, the str() function tells us there
# are 272 rows and 2 columns. It tells us that the two columns are called
# "eruptions" and "waiting". It tells us that all the data in both the eruptions
# column and the waiting column are numbers. This means the data can be
# immediately plotted! And finally the str() function shows us the first few
# entries in each column.

# Lets make a scatter graph plotting the eruption times on the x axis, and the
# waiting times on the y axis. To be able to do this we need to know how to plot
# on two axes, and we need to know how to get at the data in each column of a
# dataframe. But first, we should probably also talk about what a dataframe is.


###--- R programming 101 part 3 - subsetting dataframes or matrices. ---
# In R, the most common way to store data is in a dataframe. This is kind of
# like an excel spreadsheet (and a bit like the matrix we discussed above),
# in that it has rows and columns. It is much more
# powerful than excel though, as it can have millions of rows of data without
# crashing, while excel does not manage such big datasets.

# You can access data in dataframes in a couple of different ways. The first way
# is to use the "$" symbol and the column name to extract the whole column. This
# is most often useful for plotting, when plotting all of one column against
# another is a common thing to want to do:

# Print the whole eruptions column

faithful$eruptions

# The second way to extract data from a dataframe is with the square bracket
# notation. This will be very useful later, as this is also how we extract
# subsets of data from matrices, which will will meet again in next week's practical

# In the square bracket notation the first number specifies the row and the second number specifies the column. See below: 
# Print the fifth row of the first column of the faithful dataset

faithful[5,1]

# We can also specify several rows (or several columns) at the same time using a
# colon symbol ":". The colon symbol means "everything between these numbers".
# So 1:9 would mean the numbers 1,2,3,4,5,6,7,8 and 9. This is very useful for
# printing a range of data. See below:

# Print the first 5 rows of the first column

faithful[1:5, 1]

# Print rows 10 to 41 of the second column

faithful[10:41,2]

# Lastly, if we leave the rows or the columns space blank, it means all rows (or
# all columns). Therefore to print all rows of the second column, we can do
# this:

# Select all of the second column in the dataset (this is equivalent to faithful$waiting)
faithful[ ,2]

# we can even get R to show us that these two extraction methods are identical!

identical(faithful[ ,2], faithful$waiting)

# So, two different ways to do the same thing: helpful or confusing!? The reason
# it is useful to know both, is that the square bracket notation is more
# flexible, while the dollar sign notation is easier to understand.

# We now know everything we need to be able to plot the faithful data. The basic
# "plot()" function takes two main arguments, the series of numbers for the x
# axis, and the series of numbers for the y axis:

# Make a scatter plot of old faithful eruptions. The plot will appear in the window on the bottom left.

plot(x = faithful$eruptions, y = faithful$waiting)

# This is a good time to talk about functions. I have mentioned "functions"
# several times already without explaining what they are. So far, we have used
# the concatenate function "c()" to make a vector, the dimensions function
# "dim()" to find the dimensions of some data, the structure function "str()" to
# find more information about a dataset, and now the "plot()" function for
# plotting a scatter graph, as well as others above.

# In R, a function has the general structure of the function name, open
# brackets, then a series of one or more function arguments separated by commas.
# Like this: > some_random_function(argument1=a, argument2=b, argument3=c,
# argument4=d)

# Functions are often used without specifying the name of the argument. This is
# kind of lazy, but if you know how the function works it is fine. In this case,
# the above function would look like this: > some_random_function(a, b, c, d)

# An important note - don't call a variable the same name as a function. R will
# either throw an error, or actually overwrite that function with your variable.
# If this happens don't panic, just save your script, and close and restart R to
# go back to the defaults.

# For the plot function the first two arguments are the x and y data. But there
# are many other arguments. Lets explore a few. Lets start by changing the point
# marker, using the pch argument:

# Change plot symbols

plot(x = faithful$eruptions, y = faithful$waiting, pch = 17)

# There are loads of symbols - Google "plot pch in R" to find out others. 

# Then lets change the colour of the points. Don't forget to put quotation marks around
# "red", as it is a string of characters, and R likes strings of characters to
# be enclosed with quotation marks. Otherwise R would think red was a variable.

plot(x = faithful$eruptions, y = faithful$waiting, pch = 17, col= "red")

# So far we have changed the "pch" and "col" function arguments. The plot is
# looking better. But those axes labels don't look great. Lets change those.

# Use extra function arguments in the plot() function to change the axis labels.
plot(x=faithful$eruptions, y=faithful$waiting, pch=17, col="red", xlab="Eruption time (minutes)", ylab="Time between eruptions (minutes)")

# Now lets add a title with the "main" argument, and change the axis titles. Finally, often
# you want to control what values axes start from and finish at. The xlim and
# ylim function arguments control that. Be careful to use the concatenate
# function "c()" for the start and end values.

# Use extra function arguments for the plot() function to add a title, axis titles,  and change the limits of the plot. 
plot(x=faithful$eruptions, y=faithful$waiting, pch=17, col="red", xlab="Eruption time (minutes)",
     ylab="Time between eruptions (minutes)", main="Old faithful eruption times", 
     xlim= c(0,6), ylim= c(0, 120))

# Finally, lets add a subtle grid to the plot.

grid()

# You might forget how to use the "plot()" function, in which case you can
# either Google it (googling R problems is *very* recommended. Websites like
# stackoverflow.com have the answers to almost every programming question,
# ever), or you can use R's internal documentation pages. R's internal
# documentation can be accessed by putting a question mark before the function
# name (in this case, choose the first option that pops up):

?plot

###--- Real climate data ---
# It feels like time to start working with real climate data. In this section,
# we will revise what we have learnt about storing data inside a variable, and
# about functions. We will learn a couple of new functions to change the folder
# that R looks inside to find data, and a new function to read in data from a
# file. Lets get started!

# The easiest way to organize data files in R is to have the R script (i.e. this
# document you are reading right now) and the data files all in the same folder
# on your computer. This folder is then called your "working directory"
# (directory is another name for folder). In R, you use the "setwd()" (which is
# short for set working directory) function to set the working directory. Inside
# the quotation marks below, put the folder name where your data is. For this module
# we are working in the cloud, but the same principle applies. We want to set the 
# working directory (within the cloud) so R can find our data.

# Set the working directory, so R can find the data files. It will be set to
# the 'Earth_systems_Practical1' folder.

setwd("/home/jovyan/Earth_Systems_Practical1")

# We can also use the getwd() function to ask R to return the current working directory
# at any time

getwd()

# Once you have set your working directory, you can read in a file to R. For
# most data, the most common functions for reading in data are the "read.csv()"
# or "read.table()" functions. read.csv() is good for comma separated value
# files, while read.table is good for space separated files. There are many
# other functions in R for reading in other data (e.g. excel files) - you can
# find out about those by googling them. Anyway, lets read in some data:

# Read in the data

my_data <- read.csv("RCP85_MIDYR_CONC_CO2.csv")

# As usual, we want to run our usual two functions to check the data has loaded
# correctly and find out what the data is. These functions are the dim() and the
# str() functions that we have introduced already.

# Quality check the data loading

dim(my_data)

str(my_data)

# It looks like the data has loaded OK - it seems to have 251 rows and 2
# columns. This time there are variable names in the column header (if there
# were no variable names in the file they would be called "V1" and "V2", which
# are R's placeholder variable names). We can easily change names of the columns
# in a dataframe in R using the "colnames()" function:

# Set the column names in the dataframe stored in the variable called my_data

colnames(my_data) <- c("year", "CO2")

# Now if we recheck the column names with head(), we should see they have changed. 

# Check that the data names have changed

head(my_data)

# Easy! Lets make a quick scatter plot of this data. Note the use of a new
# function, the "expression()" function, which lets us use mathematical notation
# and sub and superscripts in axes labels. If you want to use mathematical
# symbols and expressions in R axes labels, Google more about R's "expression()"
# function. Note the square brackets for subscripts (use "CO"^2 for superscripts
# inside the expression function). Also note the *, which inside the expression
# function means to stick two bits of text together.

# Plot the time series data. Note the new expression() function, which allows mathematical expressions, 
# superscripts and subscripts to be used in plot labels.

plot(x = my_data$year, y = my_data$CO2, xlab = "Year", ylab = expression("Annual CO"[2] * " (ppm)"))

# The graph looks quite good, but with time series data like this it would be
# more normal to plot it as a line graph. Note "time series" data is any data
# measured at regularly spaced intervals. This is done by changing the "type="
# function argument. We can make the line thicker with the "lwd=" argument, and
# we might want to change the color.

# Change from a scatter graph to a line graph with the type='l' function argument. lwd=2 changes the line width. 

plot(x=my_data$year, y=my_data$CO2, xlab="Year", ylab=expression("Annual CO"[2] * ' (ppm)'), 
     type='l', lwd=2, col="darkgreen")


###--- Now over to you! ---

# In the above you have made line plots of CO2 equivalent mixing ratios for the
# RCP 8.5 scenario. How does this compare to the other RCPs? Make your own plots
# for RCP 2.6 based on the process above. To do this, you will need to load in the
# data file ("RCP26_MIDYR_CONC_CO2.csv") using the read.csv() function and then
# plot using the plot() function. 


#Have a go! NB if you get stuck, the code is provided in an answers / output file on Canvas that accompanies
#the practical.





## Additional exercise.
#Have a go at plotting both lines on the same plot (i.e. the RCP85 and RCP26 data). You can do this by
#using the lines() function - this adds additional lines on to an already created plot. 
#So, first plot the RCP85 data using the plot() function, as you did
#above. Then, add the RCP26 data on using the lines() function - you give it the same x and y
#arguments as you do for plot(). Try coloring the lines different colours.






###--- End of practical 1 --- 
#OK, so if you haven't seen R before, that was a
#HUGE amount of information. You are may feel totally overwhelmed, and like this
#course isn't for you. If you feel this way don't panic, it is normal to feel
#like this. Go and take a break and then possibly go through this whole practical
#again. There is so much information in this that it will be difficult to take
#it all in in just one sitting.

# The really good news, is that you now know almost everything you need to know
# about variables and using functions. Everything else we do is just a variation
# on what you have done here. Sure there are a couple of new
# functions and some different datasets, but everything else is just repeating
# what we have already done. If you understand most of this R practical, you have
# already understood about 80% of what you need for this module So well done!

