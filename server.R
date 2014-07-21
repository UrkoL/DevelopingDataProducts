data(mtcars)
carSelection <- function(cylinders,transmission) subset(mtcars,cyl==cylinders & am==transmission)
shinyServer(
    function(input, output) {
        output$cyl <- renderPrint({as.numeric(input$cylinders)})
        output$trans <- renderPrint({as.numeric(input$transmission)})
        output$cars <- renderPrint({carSelection(input$cylinders,input$transmission)})
    }
)