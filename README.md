
<!-- README.md is generated from README.Rmd. Please edit that file -->

# maf3074

<!-- badges: start -->

[![R-CMD-check](https://github.com/pbenavidesh/maf3074/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/pbenavidesh/maf3074/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of `maf3074` is to provide a companion tool for the Time Series
Forecasting (MAF3074) undergraduate course of the Department of
Mathematics and Physics at [ITESO](https://iteso.mx). Here you will find
tutorials, documentation, and exercises.

## Installation

You can install the development version of maf3074 from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("pbenavidesh/maf3074")
```

## Example

*Pending…*

This is a basic example which shows you how to solve a common problem:

``` r
library(maf3074)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
