
#################################################
#   A short introduction to R   		#
#                               		#
# by M. Beaumont,  L. Chikhi, and V. Sousa  	#
#                               		#
#################################################


# The first thing to know is perhaps how to quit
# So, if you have already started R but wonder how to get out 
# you just need to type "q()" at anytime

# It is also rather important to start,
# so here is one way to do it in Windows environments
#  (assuming that you have already installed R ...

# First, make a copy of the shortcut currently on the desktop
# and place this in the folder with the data you wish to analyse

# Second, right-click on the new shortcut, click on the ‘Properties’ tab 
# and change the ‘Start in:’ field to point to the folder with the data
# you want to analyse.
# Instead of typing it you can click on the ‘General’ tab and simply copy 
# the "Location path" and paste it in between the quotes in the ‘Start in:’ field.

# Now we're ready : you only need to double-click on the new shortcut to start up R.
# The default working folder (for this shortcut) will be the folder with the data.

# The # symbol allows you to put comments that are ignored by R.
# This is very important if you want to write comments to code you write 
# in such a way that you can just copy and paste large bits of text.
# Everything after this symbol is ignored until the next line.

# To be sure you are in the correct directory use the getwd() function
# get working directory
getwd()

# The text below can thus be copied directly into R and should work straightforwardly

# "<-" is an assignment. Some people also use the "_" (underscore) character 
# but we find it less readable:
# x <- c(1,2,3,4,5,6) creates a vector x containing the numbers 1, 2, 3, 4, 5 and 6.

# Whenever you have round parenthesis "()" it is a function!
# Whenever we have square "[]" we want to look at an element in a vector or matrix!
x <- c(1,2,3,4,5,6)

# "c()" is a function that puts data together. "c" stands for "combine" or "concatenate".

# y <- c(1:6) means the same but is much shorter to write

y <- c(1:6)

# with the <- symbol we have assigned values to x and y
# x and y have been stored in memory as long as R is running,
# but they have not been displayed to you yet.
# if we want to see what x and y are we only need to type their name

x
y

# You may want to know which "objects" (as x and y) 
# are currently stored in the memory.
# You only need to type ls() 

ls()

# if you just want to know the value of a particular element of x you 
# need to type its position using square brackets []

x[2]     # gives you the second element of x
x[2:5]   # gives you elements 2 to 5

# you can also create a "composite" vector

z <- c(1:6, 10:20)
z

# or go the other way around

w <- c(10:1)
w

# in all the previous cases it was abvious that the increment was one
# you can also define another increment using the seq function:

w <- seq(1,10)  # is the same as c(1:10) or 1:10
w
w <- seq(1,10, by=2)  # increments elements by 2
w

# the seq function also allows you to get a sequence in "inverse" order

seq(10,1)

# and you can also change the increment

seq(10,1, by=2)

# of course this did not work:
# you have to change the increment from 2 to -2 ...

seq(10,1, by=-2)

# You can note that seq(1,10, by=2) is NOT the inverse of seq(10,1, by=-2)


# while working with R you create objects such as the vectors we created 
# above you can see a list of these objects by using the following functions

ls()
objects()

# Note that no argument has been given to these functions, just as for q()
# BEWARE: these functions are very important.
# New objects will ERASE previous objects with the same name without warning !!

# Let us create a vector called "ex" by simply copying x into it

ex <- x ; x ; ex  

# Note that you can type a series of short commands using ";"

# If the ls() function produces too many objects you may want 
# to look for a subset. This can be done using the "pattern" option.
# The following command lists the objects whose name contains "x"

objects(pattern="x")

# It is important to realise that these objects have been created and stored 
# But have NOT BEEN SAVED YET.
# If R crashes *now* nothing will be saved.
# When you decide to leave R - by typing "q()" - you are asked whether you you want 
# to save the "Workspace Image".
# If you say "yes" R will create two files called
#	* ".RData" storing all the objects and
#	* ".Rhistory" storing the last commands you typed in R before quitting

# Vectors are just one type of objects in R
# other types have the following names 
# matrix, array, list, data.frame, factor, ts (for time series)

# In this introduction we only focus on vectors and matrices
# If you decide to use R you will have the opportunity to discover the other objects
# Let us just note that arrays are matrices with n dimensions.

###############################
# A bit of input and output
###############################

# As we often have our data in files created outside R it is important 
# to be able to input your data into R.
# There are different ways to do it but we will focus on the "scan()" function
# This will allow us to work with simple ASCII files.

# Note that the "read.table" function is also very practical and allows 
# to read text files and put them in "data.frame" objects.
# We will not use this function but we strongly advise you to explore it...

# Another important point is that we have seen how to type commands into R using the
# R command window.
# You can notice that if you use the "up" and "down" arrows you will see 
# the previous commands. While this is very practical, this can be quite cumbersome
# when commands start to be more complicated or longer. Also you may want to use
# an old command. In practice, the solution we prefer is to have a text editor open 
# where you type the required commands. You then execute them in R by simply copying
# them. In fact this is the reason why we use this text file: all comments have been 
# put after the "#" character so that you can copy as many lines of text as you wish
# and it should work in R, as we noted above.

# To read from a file called "datafile_nb.txt" which contains only a single column
# of numbers: 

d1 <- scan("datafile_nb.txt")

# This reads the contents of the file (assumed to be in the working directory) 
# and assigns it as a vector of numbers to the variable d1.
# You can inspect these values by typing d1, as we did before for the vectors 
# we created.

d1

# You can also access particular elements by typing e.g. d1[5] for the fifth element. 

d1[4:5]

# Suppose now that you have a file with TEXT instead of NUMBERS
# the "scan" function will not recognise it unless you specify it
# using the "what" option.
# To read a column of text strings (without spaces) you'll type

d2 <- scan("datafile_text.txt",what="")
d2

# If the file now has 3 columns of numbers this becomes more complicated.
# It is very important to realise that the scan function 
#   * reads the original file ROW by ROW.
#   * puts them into a single VECTOR
# so, to put them back in the form of a table you have to use a few "tricks":
# The matrix function converts a vector to a matrix by filling the matrix 
# COLUMN by COLUMN. This means that the number of rows is the number of columns
# in your data file (nrow=3). Therefore to get things right you need the transpose
# function "t()" which swaps rows and columns:

m1 <- t(matrix(scan("datafile_3col_nb.txt"),nrow=3))
m1

# In this command we have put together the three "actions" together
# As a beginner it is natural to do things one by one but here 
# it is easier to just type one line.

# In fact the "matrix()" function has a number of options allowing you to actually
# fill the matrix *by row* in which case the following command should do the same

m1.test <- matrix(scan("datafile_3col_nb.txt"),ncol=3, byrow=T)

# thus we did not need the transpose function.

# One simple way to check that they are exactly the same, is 
# to use the "-" (minus) operand, since equal terms will produc zeros
# Non zero numbers will be easy to spot.

m1 - m1.test

# If m1 and m1.test were very long it might be easier to sum all 
# the differences and check whether they sum up to zero:

sum(m1 - m1.test)

# To access elements of a matrix you need to give the row and column
# e.g. m1[2,3] for the element of the second row, third column.

m1[2,3]

# Similarly you can obtain a whole column by typing e.g. m1[,1] or a whole 
# row by typing m1[3,]. 

m1[,1]
m1[3,]

# You can also get the lines 5 to 10

m1[5:10,]

# or everything BUT lines 5 to 10

m1[-(5:10),]

# Or a sub-matrix, for instance between line 5 and 10 
# and between column 1 and 2

m1[5:10, 1:2]

# Here we assign the first column to the variable var1.

var1 <- m1[,1]
var1

# To read 1 column of text  and 2 columns of numbers

m2 <- t( matrix(scan("datafile_3col_nb_text.txt",what=""),nrow=3) )
m2

# Note that this interprets everything as text even though we have two columns of
# numbers. If the first column corresponds to some description of the data we can
# assign it to the variable label1 as follows:

label1 <- m2[,1]
label1  

# If we wish to use the second and third column as numerical data
# we need to create a new variable using the as.numeric() function 
# which converts data into the "numeric" mode (when possible)

var2 <- as.numeric(m2[,2])
var3 <- as.numeric(m2[,3])
var2 ; var3

# Now that we have seen some aspects of vector and matrix manipulations
# and been able to input text file, we can do some simple calculations.

x ; y
y <- c(y,y) ; y
x+y

# An important rule in R is the recycling rule which means that when you add
# vectors of different length, the shorter is increased in size, recycling elements
# until it reaches the length of the longest vector.
# This can be dangerous, but this can also be extremely useful.
# One advantage is that if you wish to add 25 to vector x or y 25 is automatically
# increased in size so that all elements of x or y are incremented.

x ; x + 25

# If you square a vector of numbers and assign it to another vector
# all elements are squared

p1 <- d1^2     
p1

# We can plot p1 against d1 using the "plot()" function

plot(d1,p1)

plot(d1,p1, pch=19 )  

# "pch" is an argument for the type of character to be used as a plotted point.
# The following commands allow you to plot symbols.

plot(d1,p1, pch=".")
plot(d1,p1, pch="+")

# An important notion in plotting functions is the difference between 
# HIGH LEVEL and LOW LEVEL functions.
# Every time you use the "plot()" function you create a new plotting window
# In order to add curves you need to use low level functions such as "lines()" "text()"
# or "abline()".
# You can use the "help()" function to find out about these plotting functions.

lines(sort(d1),sort(p1), col="red")

# R has many interesting functions to generate random numbers.
# The following generates a vector of 100 random normal deviates with mean 5 and sd 2.

v1 <- rnorm(100,5,2)
v1

# Plot var3 against var2 and label the points with label1

plot(var2, var3)
text(var2, var3, label1, pos=3)

plot(var2,var3,type="n")  # "n" means "null" i.e. no plot
text(var2,var3,label1)    # writes "label1" at coordinates (var1, var2)

# To write a column of data in a file

write(d1, file="output1.txt", ncol=1)

# To write 3 columns of data from the matrix, we need to remember that 
# the internal ordering is by COLUMNS, which needs to be transposed so that it is  

write(t(m1),file="output2.txt",ncol=3)

# To write 2 columns of text and 1 column of numbers

write(rbind(label1,sample(label1, 50),as.character(d1)), file="output.txt",ncol=3)
write(rbind(label1,sample(label1, 50),d1), file="output.txt",ncol=3)

# R is extremely flexible and allows you to write functions
# The simplest case is obtained with one variable

het <- function(x) {2*x*(1-x)}

# Curly brackets have to be used to type the code for the function.
# We can test the function :

het(0.5) ; het(0.1)

# The following is for you to experiment using the "help()" function...

########################################################
# Hardy Weinberg equilibrium and the Wahlund effect.
########################################################

plot(het, 0,1)

# A nicer plot

plot(het, 0, 1, ylim=c(0,0.75), xlab="", ylab="", lwd=2)

#mtext(expression(italic(heterozygotes)), side=2, line=2.5)
#mtext(expression(italic(p[1])), side=1, line=2.5)

segments(0.2, het(0.2), 0.6, het(0.6), lwd=2)
segments(0.2, 0, 0.2, het(0.2), lwd=2, lty=2)
segments(0.6, 0, 0.6, het(0.6), lwd=2, lty=2)
segments(0.35, 0, 0.35, het(0.35), lwd=2, lty=2)
text(0.6, het(0.6)*1.1, "P1", cex=2)
text(0.18, het(0.2)*1.2, "P2", cex=2)
text(0.41, het(0.35)*0.75, "P", cex=2)
#text(0.6, het(0.6)*1.03, labels=(expression(P[1])), cex=2)
#text(0.18, het(0.2)*1.1, labels=(expression(P[2])), cex=2)
#text(0.41, het(0.35)*0.75, labels=(expression(P)), cex=2)
title (main="Hardy-Weinberg equilibrium and Wahlund effect")
text(0.6, 0.3, "Heterozygote deficit", cex=1.1)
text(0.85, 0.47, "Heterozygote excess", cex=1.1)
points(0.6, het(0.6), lwd=2)
points(0.2, het(0.2), lwd=2)
points(0.35, het(0.35), lwd=2)
points(0.35, het(0.2) + (het(0.6) - het(0.2))*0.15/0.4, lwd=4)

# Function to print the figure in a postscript file

dev.print(height=7, width=7, horizontal=F, file="Wahlund.ps")
