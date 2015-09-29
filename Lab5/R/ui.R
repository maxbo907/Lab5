shinyUI(fluidPage(
  titlePanel("Election results"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create graphs"),
      
      selectInput("län", 
                  label = "Choose a län",
                  choices = län1,
                  selected = ""),

       
      selectInput("kommun", 
                  label = "Choose a kommun",
                  choices = kommun1,
                  selected = ""),
      
      checkboxGroupInput("party",
                    label = "Choose parties",
                    choices = party1
                  )
      ),

    mainPanel(
      textOutput("text1")
    )
  )
))