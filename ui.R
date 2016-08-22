library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("IMC Calculator"),
    
    sidebarPanel(
      numericInput('weight', 'Insert your weight in kilograms', 70) ,
      numericInput('height', 'Insert your height in metres', 1.70, min = 0.2, max = 3, step = 0.01),
      submitButton('Submit')
    ), 
    mainPanel(
      p('The IMC is a measure of body fat based on height and weight that applies to adult men and women.'),
      p('Regarding the IMC measure, the World Health Organization (WHO) proposes the following classification:'),
      tags$div(
        tags$ul(
          tags$li('IMC <18.5       : Underweight'),
          tags$li('IMC [18.5-24.9] : Normal weight'),
          tags$li('IMC [25-29.9]   : Overweight'),
          tags$li('IMC >=30        : Obesity')
        )
      ),
      
      h4('Taking into account the values entered by you:'), 
      p('weight:'), verbatimTextOutput("inputweightvalue"),
      p('height:'), verbatimTextOutput("inputheightvalue"),
      h4('Your IMC is:'),
      verbatimTextOutput("estimation"),
      p('It means that you are:'),strong(verbatimTextOutput("diagnostic"))
      
      
    )
    
  )   
)