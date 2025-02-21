# Demonstrates interactive program to view data by feed type

# Read and clean data
chicks_raw <- read.csv("data/chicks.csv")
chicks <- subset(chicks_raw, !is.na(weight))

# Determine feed options
feed_options <- unique(chicks$feed)

# Prompt user with options
cat("1.", feed_options[1])
cat("2.", feed_options[2])
cat("3.", feed_options[3])
cat("4.", feed_options[4])
cat("5.", feed_options[5])
cat("6.", feed_options[6])
feed_choice <- as.integer(readline("Feed type: "))

# Demonstrates \n
# Prompt user with options
cat("1.", feed_options[1], "\n")
cat("2.", feed_options[2], "\n")
cat("3.", feed_options[3], "\n")
cat("4.", feed_options[4], "\n")
cat("5.", feed_options[5], "\n")
cat("6.", feed_options[6], "\n")
feed_choice <- as.integer(readline("Feed type: "))

# Demonstrates interactive program to view data by feed type
# Determine feed options
feed_options <- unique(chicks$feed)

# Format feed options
formatted_options <- paste0(1:length(feed_options), ". ", feed_options)

# Prompt user with options
cat(formatted_options, sep = "\n")
feed_choice <- as.integer(readline("Feed type: "))

# Demonstrates interactive program to view data by feed type

# Determine feed options
feed_options <- unique(chicks$feed)

# Format feed options
formatted_options <- paste0(1:length(feed_options), ". ", feed_options)

# Prompt user with options
cat(formatted_options, sep = "\n")
feed_choice <- as.integer(readline("Feed type: "))

# Print selected option
selected_feed <- feed_options[feed_choice]
print(subset(chicks, feed == selected_feed))

# Demonstrates interactive program to view data by feed type
# Determine feed options
feed_options <- unique(chicks$feed)

# Format feed options
formatted_options <- paste0(1:length(feed_options), ". ", feed_options)

# Prompt user with options
cat(formatted_options, sep = "\n")
feed_choice <- as.integer(readline("Feed type: "))

# Invalid choice?
if (feed_choice < 1 || feed_choice > length(feed_options)) {
  cat("Invalid choice.")
}

selected_feed <- feed_options[feed_choice]
print(subset(chicks, feed == selected_feed))

# Demonstrates interactive program to view data by feed type
# Determine feed options
feed_options <- unique(chicks$feed)

# Format feed options
formatted_options <- paste0(1:length(feed_options), ". ", feed_options)

# Prompt user with options
cat(formatted_options, sep = "\n")
feed_choice <- as.integer(readline("Feed type: "))

# Invalid choice?
if (feed_choice < 1 || feed_choice > length(feed_options)) {
  cat("Invalid choice.")
} else {
  selected_feed <- feed_options[feed_choice]
  print(subset(chicks, feed == selected_feed))
}

# Implements same functionality with `menu`

# Prompt user for input
feed_options <- unique(chicks$feed)
feed_choice <- menu(
  feed_options,
  title = "Feed type:"
)

# Show subset
selected_feed = feed_options[feed_choice]
print(subset(chicks, feed == selected_feed))
