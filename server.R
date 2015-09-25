mpgPrediction <- function(cyl,wt) 39.686 + cyl*-1.508 + (wt/1000)*-3.191 

library(shiny)
shinyServer(
        function(input, output){
                output$ocyl <- renderPrint({input$cyl})
                output$owt <- renderPrint({input$wt})
                output$prediction <- renderPrint({mpgPrediction(input$cyl,input$wt)})
        }
)