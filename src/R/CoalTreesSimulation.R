rm(list = ls())
source("extra_functions.R")
par(mfrow = c(1, 1))

nbOfTips <- 10

# Standard Coalescence
# ms options here
standardCoal <- "-T"
print("Plotting the trees ...")
print("The standard coalescence tree")
standardCoalTrees <- plot_ms_tree(nsamples = nbOfTips, ms_options = standardCoal)


# Exponential population size change
# For a given \alpha, the population size change (going backward in time) according to the equation
#   N(t) = N_0 exp(-\alpha t)


# Forward in time, exponential growth
# Set value of \alpha
alpha <- 1000
# The population size gets constant at t=5 
expGrow <- paste("-T -G", alpha, "-eG 5 0")
print("Exponential growth")
expGrowCoalTrees <- plot_ms_tree(nsamples = nbOfTips, ms_options = expGrow)


# Forward in time, exponential decrease
# Set value of \alpha
alpha <- -2
# The population size gets constant at t=5 
expDecrease <- paste("-T -G", alpha, "-eG 5 0")
print("Exponential decrease")
expDecreaseCoalTrees <- plot_ms_tree(nsamples = nbOfTips, ms_options = expDecrease)


##########################################################
######  Plotting the mean coalescence tree ###############
##########################################################

# The standard coalescence case

sampleSize <- 10
nbOfRep <- 1000
stdCoalOptions <- "-T"
# The expected standard coalescence tree
k <- seq(sampleSize, 2)
expT <- 1/(k*(k-1))
expCoalTree <- createNewick(expT)
plot.phylo(expCoalTree, type="phylogram", direction = "rightwards", show.tip.label = T, plot=T)

  
# Simulate trees
stdCoalResults <- ms(nsam = sampleSize, nreps = nbOfRep, opts = stdCoalOptions)
# Compute the mean tree
meanTreeStdCoal <- computeMeanTreeMS(stdCoalResults)
plot.phylo(meanTreeStdCoal, type="phylogram", direction = "rightwards", show.tip.label = T, plot=T)


# Forward in time, exponential growth
# Set value of \alpha
alpha <- 100
# The population size gets constant at t=5 
expGrow <- paste("-T -G", alpha, "-eG 5 0")
print("Exponential growth")
expGrowCoalTrees <- ms(nsam = sampleSize, nreps = nbOfRep, opts = expGrow)
# Compute the mean tree
meanTreeExpGrow <- computeMeanTreeMS(expGrowCoalTrees)
plot.phylo(meanTreeExpGrow, type="phylogram", direction = "rightwards", show.tip.label = T, plot=T)


# Forward in time, exponential decrease
# Set value of \alpha
alpha <- -1.5
# The population size gets constant at t=5 
expDecrease <- paste("-T -G", alpha, "-eG 5 0")
print("Exponential decrease")
expDecreaseCoalTrees <- ms(nsam = sampleSize, nreps = nbOfRep, opts = expDecrease)
# Compute the mean tree
meanTreeExpDecrease <- computeMeanTreeMS(expDecreaseCoalTrees)
plot.phylo(meanTreeExpDecrease, type="phylogram", direction = "rightwards", show.tip.label = T, plot=T)



##############################
###  Plotting all trees
##############################

##  Set up plotting in two rows and two columns, plotting along rows first.
par(mfrow = c( 2, 2 ))
plot.phylo(expCoalTree, type="phylogram", direction = "downwards", show.tip.label = T, plot=T, 
           main = "Expected standard coalescent tree")
plot.phylo(meanTreeStdCoal, type="phylogram", direction = "downwards", show.tip.label = T, plot=T, 
           main = "Simulated standard coalescent tree")
plot.phylo(meanTreeExpGrow, type="phylogram", direction = "downwards", show.tip.label = T, plot=T, 
           main = "Simulated exponential growth")
plot.phylo(meanTreeExpDecrease, type="phylogram", direction = "downwards", show.tip.label = T, plot=T, 
           main = "Simulated exponential decrease")
