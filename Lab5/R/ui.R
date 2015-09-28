shinyUI(fluidPage(
  titlePanel("Election results"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create graphs"),
      
      selectInput("län", 
                  label = "Choose a län",
                  choices = län1,
                  selected = "Östergötlands län"),
      
      selectInput("kommun", 
                  label = "Choose a kommun",
                  selected = "Linköping"),
      
      selectInput("party",
                  label = "Choose party",
                  selected = "M")
      ),
    
    mainPanel(
      textOutput("text1")
    )
  )
))