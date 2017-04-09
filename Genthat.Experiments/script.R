library(genthat);
fn1 <- function(a) { a + 1 }
fn1 <- decorate_function_val(fn1, "fn1")
fn1(42)
undecorate_all()
res <- gen_tests()
run_generated_tests("generated_tests")

f1 <- function(a = 10) {
    missing(a)
}

f1(20)
