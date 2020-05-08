#' Fashion an element according to a specified pattern
#'
#' @param x an atomic vector
#' @param pattern specified pattern with pattern_replace characters
#' @param replace_char character specifying replacement 
#' @param ignore characters to ignore. Multiple characters should be separated by regex vertical pipe operator |
#'
#' @return character vector
#' @export
#'
#' @examples
#' fashion(c("1234567890", "0987654321"), "(XXX) XXX-XXXX")
fashion <- function(x, pattern, replace_char = "X", ignore = NULL) {
  if (!is.null(ignore)) {
    x <- gsub(ignore, "", x)
  }
  rcpp_fashion(x, pattern, replace_char)
}
