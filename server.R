
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)
library(readr)
shinyServer(function(input, output) {
   
  output$df <- renderTable({
    
    raw <- input$text_input
    
    read_delim(raw, 
               delim = input$delim, 
               col_names = input$header)
    
  })
  
})