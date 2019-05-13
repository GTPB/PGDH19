################################################################################
# R script to simulate genetic drift for a bi-allelic locus 
# 
################################################################################

# We need to define 
# * the population size
# * the inital allele frequency of one allele
# * the nb of generations of drift
# * the type of objects that will hold these data

PopSize <- 10         	# the population size (note that this is actually 2N, not N
			# for diploids - this is the nb of genes.
NbGen <- 100           	# the number of generations of drift
FreqInit <- 0.5        	# the initial frequency

# We first create a vector that will contain the results of Binomial trials 
# This vector has a length equal to the total nb of "genes" + 1.
# The last term will keep the number of copies of the allele plotted

x <- vector(length= PopSize +1)


# create the genetic drift vector

FreqAbs <- vector(length = NbGen)

# initialise the nb of generations

i <- 0  

x[PopSize+1] <-  FreqInit*PopSize

for ( i in 1:NbGen) {
	x[1:PopSize] <-  rbinom(PopSize, 1, x[PopSize+1]/PopSize)
	x[PopSize+1] <-  sum(x[1:PopSize])
	FreqAbs[i] <-  x[PopSize+1]
}

# If we now want to see what is in x and FreqAbs we can type:

x 
FreqAbs

# And to see how the allele frequencies changed through time you can simply write :
 
plot(FreqAbs)
lines (FreqAbs)
