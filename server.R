library(shiny)

shinyServer(function(input, output) {

  formulaText <- reactive({
  paste("mpg~",paste0(input$factors,collapse="+"))
  })
  #output$text1<-renderText({formulaText()})
  output$distPlot <- renderPlot({
 data(mtcars)

    par(mfrow=c(2,2))
    fit<-lm(as.formula(formulaText()),data=mtcars)
plot(fit,height=500,width=900)

  })
output$fitSummary<-renderPrint({
    fit<-lm(as.formula(formulaText()),data=mtcars)
print(summary(fit))})
})
