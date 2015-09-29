library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
        titlePanel("Election data!!!! yeeeeeeEEEEEhhhaaa"),
        
        selectInput(inputId = "party",
                    label = "Choose a party",
                    choices = parties<-c("M","C","FP","KD","S","V","MP","SD","FI","OVR","BL","OG"),
                    selected = c("S"),
        # Application title
        selectInput(inputId = "district",
                    label = "Choose a district",
                    choices = c(unique(theData$LÄN)),
                    selected = theData$LÄN[1]),
        
        
        plotOutput(outputId = "main_plot", height = "300px")
))