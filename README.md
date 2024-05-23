# Rapid inference of larval fish recruitment potential from size spectrum models
This repository contains all the data and code used in the manuscript:

* Title: "Rapid inference of larval fish recruitment potential from size spectrum models"
* Authors: Charles Hinchliffe, Hayden T. Schilling, Pierre Pepin, Daniel S. Falster, Iain M. Suthers
* Year of publication: XXX
* Journal: XXX
* doi: XXX


The script `analyses_and_figures.rmd` contains code to reproduce the analysis and figures, from the paper. The output from the analyses is saved in `outputs/` and can be imported and observed directly whe running `analyses_and_figures.Rmd`.

There are 3 major analyses within the manuscript. The first investigates the skill of the recruitment potential estimators under varying mortality and growth scenarios, and is in `Section 1`  of `analyses_and_figures.rmd`. The second is a sensitivity analysis observing the effect of increasing individual variance of vital rates within sampled populations on the skill of the recruitment potential estimators, and is in `Section 2`. The third analysis investigates measurement error of age and size of recruitment potential estimators, and is in `Section 3`.

## Running the code

All analyses were done in `R`. All data and code needed to reproduce the submitted products is included in this repository. 

The paper was written in 2021-2022 using a version of R available at the time (R version 4.3.1). You can try running it on your current version and it may work. 
