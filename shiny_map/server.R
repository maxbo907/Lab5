shinyServer(function(input,output)){
        q<-GET("http://brottsplatskartan.se/api.php?action=getEvents&period=1440&area=Uppsala Län")
        bin<-content(q,"raw")
        writeBin(bin,"map.txt")
        lines<-readLines("map.txt",n=3)
        return(lines)
}