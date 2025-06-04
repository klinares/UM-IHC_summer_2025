library(ellmer)
library(tidyverse)
library(pdftools)

# initialize connection after adding api to .Renvironment file
## usethis::edit_r_environ() opens file, type 'ANTHROPIC_API_KEY="API_key" '

client <- chat_anthropic(model = "claude-3-7-sonnet-latest")

  
client$chat("Summarize the plot of Romeo and Juliet in less than 50 words")

# can be used w/ browser
#live_browser(client)

# where files are stored
setwd("C:/Users/KLinares/Documents/UM-IHC_summer_2025/past_studies")

system_prompt <- paste(
  "You are a graduate researcher and need to better understand the current body of research products in the lab",
  #"<research_study>",
  #pdf_text("InHypo-DM Qualitative - HCPs' Emotions - Diabetes Spectr_2021.pdf"),
  #"/research_study",
  "* Use examples when helpful.",
  collapse = "\n"
)

client_claude <- chat_anthropic(system_prompt, 
                                model = "claude-3-7-sonnet-latest")
 
# live_browser(client_claude)  is interactive

# we need to install locally ollama and the ollamar package. 
## we can than install llama models using ollamar::pull(<model name>)
### we can print which models are installed locally with 
ollamar::list_models()

# llama4 and 3 are too large
client_llama <- chat_ollama(system_prompt, model = "llama3.2")
client_gemma <- chat_ollama(system_prompt = system_prompt , model = "gemma")

# ask the LLM to do so something
string_question <- "Summarize this article in few sentences with an empahsizes on research design."


# read in pdf publication of a research paper
article <- pdf_text("InHypo-DM Qualitative - HCPs' Emotions - Diabetes Spectr_2021.pdf")

# model claude sonnet 3.7
client_claude$chat(string_question, article)

# model llama3
client_llama$chat(string_question, article)

# model gemma
client_gemma$chat(string_question, article)









