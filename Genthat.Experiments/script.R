library(genthat);
fn1 <- function(a) { a + 1 }
fn1 <- decorate_function_val(fn1, "fn1_label")
fn1(42)
undecorate_all()
while (traces$has_next()) {
    trace <- traces$get_next()
    print(trace)
}