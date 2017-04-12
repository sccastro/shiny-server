

mpg2 <- readRDS("data.rds")
library(ggplot2)
# Load the ggplot2 package which provides
# the 'mpg' dataset.
function(input, output) {
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- mpg2
    if (input$UP != "All") {
      data <- data[data$UP == input$UP,]
    }
    if (input$Items != "All") {
      data <- data[data$Items == input$Items,]
    }
    if (input$Links != "All") {
      data <- data[data$Links == input$Links,]
    }
    data
  }))
  
}