library(ellmer)
library(usethis)
library(tidyverse)
library(pdftools)

# initialize connection after adding api to .Renvironment file
## usethis::edit_r_environ() opens file

client <- chat_anthropic(model = "claude-3-7-sonnet-latest")

  
client$chat("Summarize the plot of Romeo and Juliet in less than 50 words")

# can be used w/ browser
#live_browser(client)

system_prompt <- paste(
  "You are a graduate researcher and need to better understand the current body of research products in the lab",
  "<research_study>",
  pdf_text("InHypo-DM Qualitative - SDoH and Hypoglycemia _ Fam Syst Health_2018.pdf"),
  "/research_study",
  "* Use examples when helpful.",
  collapse = "\n"
)
 
client <- chat_anthropic(system_prompt, model = "claude-3-7-sonnet-latest")
live_browser(client)


