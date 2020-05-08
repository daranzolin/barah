#include <Rcpp.h>

using namespace Rcpp;

std::string fashion_element(std::string x, std::string pattern, char replace_char) {
  int x_ind = 0;
  for (char& ch: pattern) {
    if (ch == replace_char) {
      ch = x[x_ind];
      x_ind++;
    }
  }
  return pattern;
}

// [[Rcpp::export]]
Rcpp::CharacterVector rcpp_fashion(Rcpp::CharacterVector x, std::string pattern, char replace_char) {
  std::string el;
  for (int i = 0; i < x.size(); i++) {
    el = x[i];
    x.at(i) = fashion_element(el, pattern, replace_char);
  }
  return x;
}

