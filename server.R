library(shiny) 

IMC<-function(weight,height) {weight/(height^2)}

diagnostic_f<-function(weight,height){
  IMC_value<-weight/(height^2)
  ifelse(IMC_value<18.5,"underweight",ifelse(IMC_value<25,"normal weight",ifelse(IMC_value<30,"overweight","obesity")))
}

shinyServer(
  function(input, output) {
    
    output$inputweightvalue <- renderPrint({input$weight})
    output$inputheightvalue <- renderPrint({input$height})
    output$estimation <- renderPrint({IMC(input$weight,input$height)})
    output$diagnostic <- renderPrint({diagnostic_f(input$weight,input$height)})
  } 
)