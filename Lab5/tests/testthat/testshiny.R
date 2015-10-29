
test_that("Test that the server selects the correct values",{
        expect_equal(theData[theData$KOMMUN=="Karlshamn",colnames(theData)=="S.proc"],38.65)
})

