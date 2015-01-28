# dscr-example

This is a simple example of a repository for a dynamic statistical comparison (DSC) using the `dscr` R package.
It was made using the repo [`dscr-template`](https://github.com/stephens999/dscr-template) as a template, and you can see more
instructions on how to proceed there.

# Background 

For a general introduction to DSCs, see [here](https://github.com/stephens999/dscr/blob/master/intro.md).

The aim of this example DSC is to compare methods for estimating the mean (or perhaps the median) of a distribution f
from a random sample of independent and identically distributed samples from f.
It is intended to illustrate the idea of a DSC and use of the dscr package, and not a serious attempt to 
compare methods for this problem.

# Input, meta and output formats

This DSC uses the following formats:

`input: list(x=numeric vector)` #x is a vector of iid samples from f

`meta: list(truemean = numeric scalar)` #truemean is the true mean (or median) of f

`output: list(meanest=numeric scalar)` #meanest is the estimated mean of f


# Scores

Methods are scored based on their mean squared error and their absolute error in estimating the true mean/median.
See [score.R](score.R).

# To add a method

To add a method there are two steps.

- add a `.R` file containing an R function implenting that method to the `methods/` subdirectory
- add the method to the list of methods in the `methods.R` file.

Each method function must take arguments `(input,args)` where `input` is a list with the correct format (defined above), and `args` is a list containing any additional arguments the method requires.

Each method function must return `output`, where `output` is a list with the correct format (defined above).

# To add a scenario

To add a scenario there are two steps, the first of which can be skipped if you are using an existing datamaker function

- add a `.R` file containing an R function implenting a datamaker to the `datamakers/` subdirectory
- add the scenario to the list of scenarios in the `scenarios.R` file.

Each datamaker function must return a `list(meta,input)` where `meta` and `input` are each lists with the correct format
(defined above).




