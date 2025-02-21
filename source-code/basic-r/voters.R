# Demonstrates reading data from a URL
url <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
voters <- read.csv(url)
# Demonstrates finding number of rows and columns in a large data set

nrow(voters)
ncol(voters)
# Demonstrates finding unique values in a vector


unique(voters$voter_category)
# Demonstrates NA

voters$Q22
unique(voters$Q22)
# Demonstrates converting a vector to a factor

voters$Q21

factor(
  voters$Q21
)

factor(
  voters$Q21,
  labels = c("?", "Yes", "No", "Unsure/Undecided")
)
# Demonstrates excluding values from the levels of a factor

voters$Q21 <- factor(
  voters$Q21,
  labels = c("Yes", "No", "Unsure/Undecided"),
  exclude = c(-1)
)
levels(voters$Q21)