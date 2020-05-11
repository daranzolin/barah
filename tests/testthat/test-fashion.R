context("fashion")

test_that("fashion - phone numbers", {
  # skip_on_cran()
  
  out <- fashion(c(1234567890, 9876543210), "(XXX) XXX-XXXX")
  
  expect_equal(out, c("(123) 456-7890", "(987) 654-3210"))
})


