library(phyclust)

rm(list = ls())
par(mfrow = c(1, 1))

nbOfTips <- 5
nbOfSites <- 100
recRate <- 5

# Standard Coalescence
# ms options here
msParams <- paste("-T -r", recRate, nbOfSites)
print("Plotting the trees ...")
print("The standard coalescence tree")
coalTrees <- ms(nsam = 5, nreps = 1, opts = msParams)

relativeRecombPositions <- rep(0, length(coalTrees)-2)
absRecPosition <- rep(1, length(coalTrees)-1)
trees <- NULL
currentPos <- 0
for(i in seq(1, length(coalTrees) - 2)){
  localTree <- coalTrees[i + 2]
  pattern <- "\\[[0-9]*\\]"
  m <- regexpr(pattern, localTree)
  recPosition <- regmatches(localTree, m)
  relativeRecombPositions[i] <- as.integer(substr(recPosition, 2, nchar(recPosition)-1))
  nextPos <- currentPos + relativeRecombPositions[i]
  absRecPosition[i+1] <- currentPos + nextPos
  newTree <- read.tree(text = localTree)
  trees <- c(trees, list(newTree))
  plot.phylo(newTree, type="phylogram", direction = "downwards", show.tip.label = TRUE, plot = TRUE,
             main = paste("Tree from position", currentPos +1 , "to position", nextPos))
  currentPos <- nextPos
}

