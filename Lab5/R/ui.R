shinyUI(basicPage(
  titlePanel("Election results"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create graphs"),
      
      selectInput("lan", 
                  label = "Choose a län",
                  choices = län1,
                  selected = "Östergötlands län"),
      
#       selectInput("kommun", 
#                   label = "Choose a kommun",
#                   choices=lan,
#                   selected = "Linköping"),
      
      selectInput("party",
                  label = "Choose party",
                  choices=party1,
                  selected = "M")
),

mainPanel(plotOutput("main_plot"))
)
))