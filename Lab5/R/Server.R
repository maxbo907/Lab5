library(httr)
library(xlsx)
shinyServer(function(input, output){
  q<-GET("http://www.val.se/val/val2014/statistik/2014_riksdagsval_per_kommun.xls")
  kommun<-content(q,"raw")
  writeBin(kommun,"kommun.xlsx")
  num <- rep("numeric", length(theData)-4)
  chara <- rep("character", 4)
  nam <- c(chara, num)
  theData <- read.xlsx("kommun.xlsx",sheetIndex = 1,header = TRUE, 
                       colClasses = nam, startRow = 3, encoding = "UTF-8")
  
  output$main_plot <- renderPlot(
    if(!(input$kommun=="") && is.null(input$party)){
      hist(theData[which(theData$KOMMUN==input$kommun),
                   which(names(tail(theData,n=4))=="proc")],input$kommun)
    }
  )
})