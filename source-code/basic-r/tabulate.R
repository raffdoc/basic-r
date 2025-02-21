# basics file reading
votes <- read.table("data/votes.csv")
View(votes)
# some other options
votes <- read.table(
  "data/votes.csv",
  sep = ","
)
View(votes)
# adding header 
votes <- read.table(
  "data/votes.csv",
  sep = ",",
  header = TRUE
)
View(votes)
# dedicated funcion
votes <- read.csv("data/votes.csv")
View(votes)

# subsetting the valus 

votes[, 1]
votes[, 2]
votes[, 3]

# subseting with names

colnames(votes)

votes$candidate
votes$poll
votes$mail

# sum the votes
sum(votes$poll[1], votes$poll[2], votes$poll[3])

# sum all the values in one variable
sum(votes$poll)
sum(votes$mail)

# pairwise suming

votes$poll[1] + votes$mail[1]
votes$poll[2] + votes$mail[2]
votes$poll[3] + votes$mail[3]
# pairvise all summation

votes$poll + votes$mail

# summa variable into new variable
votes$total <- votes$poll + votes$mail

votes$total <- votes$poll + votes$mail

write.csv(votes, "data/totals.csv")

# avoid raw names
votes$total <- votes$poll + votes$mail

write.csv(votes, "totals.csv", row.names = FALSE)