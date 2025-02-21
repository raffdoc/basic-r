# Demonstrates counting votes for 3 different candidates

rafik <- as.integer(readline("Rafik: "))
giacomo <- as.integer(readline("Giacomo: "))
simone <- as.integer(readline("Simone: "))

total <- sum(rafik, giacomo, simone)
cat("Total votes:", total)
# Demonstrates defining a function

get_votes <- function() {
  votes <- as.integer(readline("Enter votes: "))
  return(votes)
}

rafik <- get_votes()
giacomo <- get_votes()
simone <- get_votes()

total <- sum(rafik, giacomo, simone)
cat("Total votes:", total)