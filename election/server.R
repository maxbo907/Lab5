shinyServer(function(output,input){
        q<-GET("http://www.val.se/val/val2014/statistik/2014_riksdagsval_per_kommun.xls")
        kommun<-content(q,"raw")
        writeBin(kommun,"kommun.xlsx")
        theData <- readWorksheet(loadWorkbook("kommun.xlsx"),sheet=1,header = TRUE)
        na.omit(theData)
        colnames(theData)<-theData[2,]
        theData<-theData[3:292,]
        distr<-input$district
        city<-input$city
        parties<-c("M","C","FP","KD","S","V","MP","SD","FI","OVR","BL","OG")
        party_col<-paste(parties,"proc",sep=" ")
        #Now we can data$...with as.numeric theData$`M tal`
        output$main_plot <- renderPlot({
                #basic plot: Choose a party, and it will plot the % of each city.
                #have an option only doing some specific district. Name the outliers
                
                plot(theData[theData$==""])
#                 x    <- theData[, 2]  # Old Faithful Geyser data
                #bins <- seq(min(x), max(x), length.out = input$bins + 1)
                
#                 
#                 # draw the histogram with the specified number of bins
#                 hist(x, breaks = bins, col = 'darkgray', border = 'white')
        })
        })