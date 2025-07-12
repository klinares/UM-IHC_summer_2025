library(ellmer)
library(tidyverse)

# initialize connection after adding api to .Renvironment file
## usethis::edit_r_environ() opens file, type 'ANTHROPIC_API_KEY="API_key" '



# we need to install locally ollama and the ollamar package. 
## we can than install llama models using ollamar::pull(<model name>)
### we can print which models are installed locally with 

# we first build a prompt with instructions

llm_prompt <- paste(
  "You are an academic medical researcher analyzing Reddit comments for a study on GLP-1 compound medication sourcing.",
  "",
  "Objective:",
  "- Identify any companies, websites, or named sources that Reddit users mention as places to order GLP-1 compound medications.",
  "",
  "Important Instructions:",
  "- Only extract source or medication names if they are presented in a list format (e.g., bullet points, numbered lists, or comma-separated mentions).",
  "- Do NOT infer or fabricate any information.",
  "- This task is for research purposes only and not intended for public dissemination or medical advice.",
  "",
  "Please return only the names of the sources or medications mentioned, along with the format in which they were presented (e.g., bullet list, inline list).",
  collapse = "\n"
)


# read in models
client_claude <- chat_anthropic(system_prompt = llm_prompt,
                                model="claude-3-7-sonnet-latest")
# llama4 and 3 are too large
<<<<<<< HEAD
client_llama <- chat_ollama(system_prompt, model = "llama3.3")
client_gemma <- chat_ollama(system_prompt = system_prompt , model = "gemma3")

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


# reddit test
client_llama <- chat_ollama( model = "llama3.3")
=======
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
>>>>>>> ab270f61b9aed64c8f86f7e3c01add3d73be0e89

client_llama$chat(website)

client_gemma$chat(website)
