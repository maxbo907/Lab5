test_that("Test that we can download the data with our GET-verb.",{
        expect_that(GET("http://www.val.se/val/val2014/statistik/2014_riksdagsval_per_kommun.xls"),not(throws_error()))
})
test_that("Test that the server selects the correct values",{
        expect_equal(theData[theData$KOMMUN=="Karlshamn",colnames(theData)=="S.proc"],38.65)
})

