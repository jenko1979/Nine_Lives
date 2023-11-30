#library(jnjtemplates)
library(shinydashboard)
library(shinyjs)
library(glue)
library(ggplot2)
# detach and reload shiny if shiny::validate() is masked by jsonlite::validate()
# detach("package:shiny")
library(shiny)
library(dplyr)

APP_ENV <- dplyr::case_when(
  interactive() |  Sys.getenv("APP_ENV") == "" ~ "default",
  TRUE ~ Sys.getenv("APP_ENV")
)

app_config <- config::get(config = APP_ENV)
