#
# This is the user-interface definition of your main Shiny web application.
# You can run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

ui <- function(request) {
  shinyjs::useShinyjs()

  # Configure the dashboard header
  dashboardheader <- dashboardHeader(
    title = "9 Lives",
    jnjtemplates::logo_shiny("Janssen-logo.png")
  )

  # Configure the dashboard's left hand side slide bar
  dashboardslider <- dashboardSidebar(
    sidebarMenu(
      menuItem("Main Game", icon = icon("tachometer-alt"), tabName = "tabItem1")
      #menuItem("Scatterplot", icon = icon("tachometer-alt"), tabName = "tabItem2")
    )
  )

  # Configure the dashboard's main body on the right
  dashboardbody <- dashboardBody(

    jnjtemplates::janssen_shiny_themes(),

    tags$span(class="marquee",tags$span(textOutput("general_msg"))),
    
    
    #NEED TO MOVE ALL OF THIS I THINK TO BE MODULARISED#
    tabItems(
     tabItem(
       tabName = "tabItem1",
    
      #fluidRow(
        #column(4,
               
               #add a slider so users can choose between 3 letter words or 10 letter words - default is 5 
               #sliderInput("slider1", label = h3("Choose Word Length"), min = 3, 
                           #max = 5, value = 5)
        #)),
      fluidRow(
        column(6,
               textInput("word", label = " ", value = " ")
        ),
               p("Num. in Correct Position:  Num. Letters Correct:")
      ),
      fluidRow(
        column(1,
               textInput("text11", label = NULL, value = "")
        ),
        column(1,
               textInput("text12", label = NULL, value = "")
        ),
        column(1,
               textInput("text13", label = NULL, value = "")
        ),
        column(1,
               textInput("text14", label = NULL, value = "")
        ),
        column(1,
               textInput("text15", label = NULL, value = "")
        ),
        column(1,
                uiOutput("action1x")
                #actionButton("action1", label = "Submit")
        ),
        column(1, verbatimTextOutput("summary11")),
        column(1, verbatimTextOutput("summary12")),
      ),
      fluidRow(
        column(1,
               textInput("text21", label = NULL, value = "")
        ),
        column(1,
               textInput("text22", label = NULL, value = "")
        ),
        column(1,
               textInput("text23", label = NULL, value = "")
        ),
        column(1,
               textInput("text24", label = NULL, value = "")
        ),
        column(1,
               textInput("text25", label = NULL, value = "")
        ),
        column(1,
               uiOutput("action2x")
               #actionButton("action2", label = "Submit")
        ),
        column(1, verbatimTextOutput("summary21")),
        column(1, verbatimTextOutput("summary22")),
      ),
      fluidRow(
        column(1,
               textInput("text31", label = NULL, value = "")
        ),
        column(1,
               textInput("text32", label = NULL, value = "")
        ),
        column(1,
               textInput("text33", label = NULL, value = "")
        ),
        column(1,
               textInput("text34", label = NULL, value = "")
        ),
        column(1,
               textInput("text35", label = NULL, value = "")
        ),
        column(1,
               uiOutput("action3x")
               #actionButton("action3", label = "Submit")
        ),
        column(1, verbatimTextOutput("summary31")),
        column(1, verbatimTextOutput("summary32")),
      ),
      fluidRow(
        column(1,
               textInput("text41", label = NULL, value = "")
        ),
        column(1,
               textInput("text42", label = NULL, value = "")
        ),
        column(1,
               textInput("text43", label = NULL, value = "")
        ),
        column(1,
               textInput("text44", label = NULL, value = "")
        ),
        column(1,
               textInput("text45", label = NULL, value = "")
        ),
        column(1,
               uiOutput("action4x")
               #actionButton("action4", label = "Submit")
        ),
        column(1, verbatimTextOutput("summary41")),
        column(1, verbatimTextOutput("summary42")),
      ),
      fluidRow(
        column(1,
               textInput("text51", label = NULL, value = "")
        ),
        column(1,
               textInput("text52", label = NULL, value = "")
        ),
        column(1,
               textInput("text53", label = NULL, value = "")
        ),
        column(1,
               textInput("text54", label = NULL, value = "")
        ),
        column(1,
               textInput("text55", label = NULL, value = "")
        ),
        column(1,
               uiOutput("action5x")
               #actionButton("action5", label = "Submit")
        ),
        column(1, verbatimTextOutput("summary51")),
        column(1, verbatimTextOutput("summary52")),
      ),
      fluidRow(
        column(1,
               textInput("text61", label = NULL, value = "")
        ),
        column(1,
               textInput("text62", label = NULL, value = "")
        ),
        column(1,
               textInput("text63", label = NULL, value = "")
        ),
        column(1,
               textInput("text64", label = NULL, value = "")
        ),
        column(1,
               textInput("text65", label = NULL, value = "")
        ),
        column(1,
               uiOutput("action6x")
               #actionButton("action6", label = "Submit")
        ),
        column(1, verbatimTextOutput("summary61")),
        column(1, verbatimTextOutput("summary62")),
      ),
      fluidRow(
        column(1,
               textInput("text71", label = NULL, value = "")
        ),
        column(1,
               textInput("text72", label = NULL, value = "")
        ),
        column(1,
               textInput("text73", label = NULL, value = "")
        ),
        column(1,
               textInput("text74", label = NULL, value = "")
        ),
        column(1,
               textInput("text75", label = NULL, value = "")
        ),
        column(1,
               uiOutput("action7x")
               #actionButton("action7", label = "Submit")
        ),
        column(1, verbatimTextOutput("summary71")),
        column(1, verbatimTextOutput("summary72")),
      ),
      fluidRow(
        column(1,
               textInput("text81", label = NULL, value = "")
        ),
        column(1,
               textInput("text82", label = NULL, value = "")
        ),
        column(1,
               textInput("text83", label = NULL, value = "")
        ),
        column(1,
               textInput("text84", label = NULL, value = "")
        ),
        column(1,
               textInput("text85", label = NULL, value = "")
        ),
        column(1,
               uiOutput("action8x")
               #actionButton("action8", label = "Submit")
        ),
        column(1, verbatimTextOutput("summary81")),
        column(1, verbatimTextOutput("summary82")),
      ),
      fluidRow(
        column(1,
               textInput("text91", label = NULL, value = "")
        ),
        column(1,
               textInput("text92", label = NULL, value = "")
        ),
        column(1,
               textInput("text93", label = NULL, value = "")
        ),
        column(1,
               textInput("text94", label = NULL, value = "")
        ),
        column(1,
               textInput("text95", label = NULL, value = "")
        ),
        column(1,
               uiOutput("action9x")
               #actionButton("action9", label = "Submit")
        ),
        column(1, verbatimTextOutput("summary91")),
        column(1, verbatimTextOutput("summary92")),
      ),
      
      
      hr(),
      
      fluidRow(
        column(4, verbatimTextOutput("messagex"))
      ),
      fluidRow(
        column(4, verbatimTextOutput("message"))
      ),
      fluidRow(
        column(4, verbatimTextOutput("choice"))
      ),
      fluidRow(
      column(1,
          actionButton("NewGame", label = "Play Again")
      ),
      ),
    )
    ),
    
    ####END OF MY CODE
    
    #tabItems(
      #tabItem(
        #tabName = "tabItem1",
        #jnjtemplates::widgets_gallery_ui("gallery")
      #),

      #tabItem(
        #tabName = "tabItem2",
        #fluidRow(
          #column(
            #width = 4,
            #wellPanel(
              #varselect_mod_ui("plot_vars", dataset = iris)
            #)
          #),
          #column(
            #width = 8,
            #scatterplot_mod_ui("plots")
          #)
        #)
      #)
    #)
  )

  dashboardPage(
    dashboardheader,
    dashboardslider,
    dashboardbody,
    skin = app_config$envskin
  )
}
