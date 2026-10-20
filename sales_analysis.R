# Analyze synthetic monthly sales data
# Input: data/synthetic_sales.csv with month and sales columns.
# Output: summary statistics and a line plot.

sales <- read.csv("data/synthetic_sales.csv", stringsAsFactors = FALSE)
stopifnot(all(c("month", "sales") %in% names(sales)))
stopifnot(is.numeric(sales$sales), !anyNA(sales$sales))
print(summary(sales$sales))
plot(seq_along(sales$sales), sales$sales, type = "b",
     xaxt = "n", xlab = "Month", ylab = "Sales",
     main = "Synthetic Monthly Sales")
axis(1, at = seq_along(sales$month), labels = sales$month)
