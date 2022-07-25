
# ussie

<!-- badges: start -->

[![R-CMD-check](https://github.com/miosisoniii/ussie/workflows/R-CMD-check/badge.svg)](https://github.com/miosisoniii/ussie/actions)
[![test-coverage](https://github.com/miosisoniii/ussie/workflows/test-coverage/badge.svg)](https://github.com/miosisoniii/ussie/actions)
<!-- badges: end -->

The goal of ussie is to demonstrate the usage of devtools/testthat for
package development using the engsoccerdata() dataset. The function
created will create a column that will help join two datasets that may
be different based on the country they are from.

## Installation

You can install the development version of ussie from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("miosisoniii/ussie")
```

## Example

This is a basic example which shows you how to solve a common problem:
Each dataset from each country has a different structure, so comparison
by join is possible by adding a column *country*.

``` r
library(ussie)
## basic example code
uss_make_matches(engsoccerdata::italy, "Italy")
#> # A tibble: 25,404 x 8
#>    country tier  season date       home            visitor       goals~1 goals~2
#>    <chr>   <fct>  <int> <date>     <chr>           <chr>           <int>   <int>
#>  1 Italy   1       1934 1934-09-30 Lazio Roma      US Livorno          6       1
#>  2 Italy   1       1934 1934-09-30 Torino FC       Unione Tries~       3       1
#>  3 Italy   1       1934 1934-09-30 Sampierdarenese Bologna FC          2       1
#>  4 Italy   1       1934 1934-09-30 SSC Napoli      US Alessandr~       0       1
#>  5 Italy   1       1934 1934-09-30 ACF Fiorentina  AS Roma             4       1
#>  6 Italy   1       1934 1934-09-30 Brescia Calcio  Juventus            0       2
#>  7 Italy   1       1934 1934-09-30 Inter           US Palermo          3       0
#>  8 Italy   1       1934 1934-09-30 Pro Vercelli    AC Milan            1       2
#>  9 Italy   1       1934 1934-10-07 AC Milan        ACF Fiorenti~       1       1
#> 10 Italy   1       1934 1934-10-07 US Livorno      Inter               1       1
#> # ... with 25,394 more rows, and abbreviated variable names 1: goals_home,
#> #   2: goals_visitor
#> # i Use `print(n = ...)` to see more rows
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:
