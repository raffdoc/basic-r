# Reads 4 separate CSVs

Q1 <- read.csv("data/Q1.csv")
Q2 <- read.csv("data/Q2.csv")
Q3 <- read.csv("data/Q3.csv")
Q4 <- read.csv("data/Q4.csv")

# Combines data frames with `rbind`

Q1 <- read.csv("Q1.csv")
Q2 <- read.csv("Q2.csv")
Q3 <- read.csv("Q3.csv")
Q4 <- read.csv("Q4.csv")

sales <- rbind(Q1, Q2, Q3, Q4)
# Adds quarter column to data frames

Q1 <- read.csv("data/Q1.csv")
Q1$quarter <- "Q1"

Q2 <- read.csv("data/Q2.csv")
Q2$quarter <- "Q2"

Q3 <- read.csv("data/Q3.csv")
Q3$quarter <- "Q3"

Q4 <- read.csv("data/Q4.csv")
Q4$quarter <- "Q4"

sales <- rbind(Q1, Q2, Q3, Q4)


# Demonstrates flagging sales as high value

Q1 <- read.csv("data/Q1.csv")
Q1$quarter <- "Q1"

Q2 <- read.csv("data/Q2.csv")
Q2$quarter <- "Q2"

Q3 <- read.csv("data/Q3.csv")
Q3$quarter <- "Q3"

Q4 <- read.csv("data/Q4.csv")
Q4$quarter <- "Q4"

sales <- rbind(Q1, Q2, Q3, Q4)

sales$value <- ifelse(sales$sale_amount > 100, "High Value", "Regular")
