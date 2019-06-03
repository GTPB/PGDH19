---
layout: page
title: Plotting coalescent trees using R
---

## Plotting coalescent trees using R (MAB scripts)

### In order to work the scripts require two packages:
* ape
* phyclust

If they are not installed you need to open R and

1. set Cran Mirror, and choose one e.g. Bristol/Toulouse/ (but not https)
2. select repositories, and accept the default it suggests
3. select packages, choose *ape* and also choose *phyclust*

Also, you can type:
```R
install.packages(c("phyclust", "ape"))
```

<br/>

### There are two scripts:
* [plot_ms_trees_single_pop.R](../src/R/plot_ms_trees_single_pop.R)
* [plot_ms_trees_mig.R](../src/R/plot_ms_trees_mig.R)

Type:
```R
source(“plot_ms_trees_single_pop.R”)
```
This will import the function *plot_ms_tree()*
This function has two parameters:
* The number of haploid samples
* The ms options for a single pop

You can run different scenarios:
* Standard stationary population.
```R
plot_ms_tree(10, "-T")
```
* Population growth.
```R
plot_ms_tree(10, "-T -G 1000")
```
* Population decrease.
```R
plot_ms_tree(100,"-T -G -2.119 -eG 2.5 0.0")
```

The second script allows you to simulate structured populations and works differently

Type:
```R
source(“plot_ms_trees_mig.R”)
```
It should plot a tree with two colors corresponding to two populations.

Open/Edit the **ms** command (change the migration rate for instance) and save your changes.

Type again:
```R
source(“plot_ms_trees_mig.R”)
```

<br/>

## Plotting average trees using R (WR script)

There are two scripts:
* [CoalTreesSimulation.R](../src/R/CoalTreesSimulation.R)
* [extra_functions.R](../src/R/extra_functions.R)

Type:
```R
source(“CoalTreesSimulation.R”)
```

Then you can open the file *CoalTreesSimulation.R* in a text editor and modify some of the parameters to see what happens.

<br/>

### Back

Back to [Day #1](./Day1_coalescent.md).   
Back to [first page](../index.md).
