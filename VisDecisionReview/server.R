

mpg2 <- readRDS("data.rds")
# Load the ggplot2 package which provides
# the 'mpg' dataset.
#library(ggplot2)

function(input, output) {
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- mpg2
    if (input$man != "All") {
      data <- data[data$manufacturer == input$man,]
    }
   
    data
  }))
  
}