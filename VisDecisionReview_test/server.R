

mpg2 <- readRDS("data.rds")
library(ggplot2)
# Load the ggplot2 package which provides
# the 'mpg' dataset.
function(input, output) {
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- mpg2
    if (input$Identify != "All") {
      data <- data[data$Identify == input$Identify,]
    }
    if (input$Select != "All") {
      data <- data[data$Select == input$Select,]
    }
    if (input$Navigate != "All") {
      data <- data[data$Navigate == input$Navigate,]
    }
    data
  }))
  
}