library(ellmer)
library(usethis)

generate_data <- function(data_description) {
  chat <- chat_ollama(
    model = "gemma3",
    system_prompt = readr::read_lines("prompt.md")
  )
  
  csv_string <- chat$chat(data_description, echo = FALSE) 
  
  readr::read_csv(csv_string, show_col_types = FALSE)
}


generate_data("health data for patients who underwent heart surgery")
