# summarize publications

library(ellmer)
library(tidyverse)
library(pdftools)


# where files are stored
setwd("C:/Users/KLinares/Documents/UM-IHC_summer_2025/lit_reviews/LLM_social_sciences/")

# live_browser(client_claude)  is interactive
# read in models

ollamar::list_models()

# read in models
client_claude <- chat_anthropic(model="claude-3-7-sonnet-latest")
# llama4 and 3 are too large
client_llama <- chat_ollama(model = "llama3.2")

client_gemma <- chat_ollama(model = "gemma3")

client_hf <- chat_huggingface(model = "meta-llama/Llama-3.1-8B-Instruct")


# ask the LLM to do so something
string_prompt <- "Summarize the following research on using AI in social science 
as well as main findings and aim of the study in two or three sentences."


# read in pdf publication of a research paper
article <- pdf_text(
  "von_der_heyde_et_al_2024.pdf")


# model claude sonnet 3.7
client_claude$chat(string_prompt, article)

# model llama3
client_llama$chat(string_prompt, article)

# model gemma
client_gemma$chat(string_prompt, article)

# model from HF
client_hf$chat(string_prompt, article)

client_hf$chat(string_prompt, article)
