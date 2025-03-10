library(readr)
library(ggplot2)
library(Hmisc)
health <- read_csv("data/healthcare_dataset.csv")
health


# visualizing age histogram
health |> 
  select(Age, Gender) |>
  group_by(Gender)|>
  ggplot(aes(x = Age)) + 
  geom_histogram() +
  facet_wrap(~Gender) +
  geom_vline(aes(xintercept = mean(Age)), linetype = 'dotted', colour = 'red')

# boxplot example

health |> 
  select(Age, Gender, `Medical Condition`) |>
  group_by(Gender)|>
  ggplot(aes(x = Gender,y = Age)) + 
  geom_boxplot() +
  facet_wrap(~`Medical Condition`) #+
#  geom_vline(aes(xintercept = mean(Age)), linetype = 'dotted', colour = 'red')

# ggplot thems and colors

health |> 
  select(Age, Gender, `Medical Condition`) |>
  group_by(Gender)|>
  ggplot(aes(x = Gender,y = Age)) + 
  geom_boxplot() +
  facet_wrap(~`Medical Condition`) +
  theme_minimal() +
  xlab("Sex of the patients") +
  ylab("Distribution of the patient")

# advanced libraries 
library(ggstatsplot)
set.seed(123)

ggbetweenstats(
  data  = health,
  x     = Gender,
  y     = Age,
  title = "Distribution of sepal length across Iris species"
) + theme_bw()
