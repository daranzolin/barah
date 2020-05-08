
<!-- README.md is generated from README.Rmd. Please edit that file -->

# barah

<!-- badges: start -->

![](https://camo.githubusercontent.com/ea6e0ff99602c3563e3dd684abf60b30edceaeef/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6c6966656379636c652d6578706572696d656e74616c2d6f72616e67652e737667)
![CRAN log](http://www.r-pkg.org/badges/version/barah)
<!-- badges: end -->

![](inst/barahdef.png)

The goal of barah is to bring order to messily-formatted data.

## Installation

You can install the released version of barah from GitHub with:

``` r
remotes::install_github("daranzolin/barah)
```

## Example: Formatting phone numbers

Data and phone numbers come in messy, unpredictable formats. The fashion
function helps you sift through the chaos:

``` r
library(barah)
fashion(c(1234567890, 9876543210), pattern = "(XXX) XXX-XXXX")
#> [1] "(123) 456-7890" "(987) 654-3210"
```

Pass a regex to the ignore parameter in extreme cases:

``` r
fashion(c("DCZ123D456C7890Z", "123   142D1234"), "(XXX) XXX-XXXX", ignore = "[DCZ]| ")
#> [1] "(123) 456-7890" "(123) 142-1234"
```

barah is built with Rcpp, so it *should* be faster than some native R
solutions I’ve seen.

# About the name

I considered just about every creative, input-output verb in the English
language, but nothing quite stuck. And so I reached–perhaps
blasphemously–beyond English for the Hebrew verb barah. Barah captures
the kind of creative forming/molding/shaping/fashioning of something out
of chaos. And hilariously, the subjects of sentences with barah are
always divine (see above). I’ll attribute this to the absolutely divine
power of Rcpp, which undergirds the package.
