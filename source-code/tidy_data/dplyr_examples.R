# Demonstrates calculating average GPA by major
library(tidyr)
library(dplyr)
students <- read.csv("data/students.csv")

students <- pivot_wider(
  students,
  id_cols = student,
  names_from = attribute,
  values_from = value
)

students$GPA <- as.numeric(students$GPA)

students |>
  group_by(major) |>
  summarize(GPA = mean(GPA))

library(readr)
health <- read_csv("data/healthcare_dataset.csv")
health

health |> 
  select(Age, Gender, `Blood Type`) |>
  filter(`Blood Type` %in% c("O+", "O-")) |>
  group_by(Gender, `Blood Type`) |>
  summarise(mean_age = mean(Age), 
            sd_age = sd(Age), 
            n_age = n()
            )
