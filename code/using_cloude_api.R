library(ellmer)
library(tidyverse)

# initialize connection after adding api to .Renvironment file
## usethis::edit_r_environ() opens file, type 'ANTHROPIC_API_KEY="API_key" '



# we need to install locally ollama and the ollamar package. 
## we can than install llama models using ollamar::pull(<model name>)
### we can print which models are installed locally with 

# we first build a prompt with instructions

llm_prompt <- paste(
  "You are a graduate student at the University of Maryland JPSM program studying data science and survey methodology.",
  "",
  "Objective:",
  "- Study the lectures and answer homework assignments by generating an r quarto file using tidyverse programming when possible. 
  Moreover, explain your answers and the code, as well as interpret results to enrich the tasks. 
  The data for the HW 2 assignment is saved as a csv file. ",
  collapse = "\n"
)


# read in models
client_claude <- chat_anthropic(system_prompt = llm_prompt,
                                model="claude-4-1-sonnet-latest")

content_pdf_file("D:/UMD/classes/Fund_Infe_SURV740/lectures/HW 2.pdf")

live_browser(client_claude)


# llama4 and 3 are too large
#client_llama <- chat_ollama(system_prompt, model = "llama3.3")
#client_gemma <- chat_ollama(system_prompt = system_prompt , model = "gemma3")


# ask the LLM to do so something
string_question <- "Summarize this article in few sentences with an empahsizes on research design."


# read in pdf publication of a research paper
article <- pdf_text("InHypo-DM Qualitative - HCPs' Emotions - Diabetes Spectr_2021.pdf")



# reddit test
client_llama <- chat_ollama( model = "llama3.3")

client_llama <- chat_ollama(system_prompt = llm_prompt,
                            model = "llama3.2")

client_gemma <- chat_ollama(system_prompt = llm_prompt,
                            model = "gemma3")



# reddit test

str_ex <- "Many people have ordered from Brello, Fifty410, Big Easy Weight Loss 
that I can name off the top of my head. Others have received branded Zepbound 
(vials) by making an appointment on CallOnDoc. Feel free to search or just 
scroll through this subreddit for more details"

website <- "https://www.reddit.com/r/compoundedtirzepatide/comments/1jrctt6/worried_on_where_to_get_my_compounded_glp1/"


client_claude$chat(str_ex)

client_llama$chat(website)

client_gemma$chat(website)
