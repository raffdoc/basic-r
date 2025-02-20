# first interaction 
print("hello, world")

# Demonstrates a bug

pritn("hello, world")

# Accepting the answer to prompt

readline("What's your name? ")

# hello to users anwser

readline("What's your name? ")
print("Hello, Rafik!")

# creating name variable
name <- readline("What's your name? ")
print("Hello, name")

# creating age variable right way

name <- readline("What's your name? ")
greeting <- paste("Hello, ", name)
print(greeting)

# adjusting the age variable
name <- readline("What's your name? ")
greeting <- paste("Hello, ", name, sep = "")
print(greeting)

# other way to adjust the age variable
name <- readline("What's your name? ")
greeting <- paste0("Hello, ", name)
print(greeting)

# substituting variable creation

name <- readline("What's your name? ")
print(paste("Hello,", name))

# comacting the code

# Ask user for name

print(paste("Hello,", readline("What's your name? ")))