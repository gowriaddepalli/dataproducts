
library(shiny)
Percentage <- function(id3,id4,id5) (id3+id4+id5) / 3
shinyServer(
function(input, output) {
output$oid1 <- renderPrint({input$id1})
output$oid2 <- renderPrint({input$id2})
output$oid3 <- renderPrint({input$id3})
output$oid4 <- renderPrint({input$id4})
output$oid5 <- renderPrint({input$id5})
output$odate <- renderPrint({input$date})
output$prediction <- renderPrint({Percentage(input$id3,input$id4,input$id5)})
}
)