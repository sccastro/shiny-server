

mpg2 <- readRDS("data2.rds")
library(ggplot2)
# Load the ggplot2 package which provides
# the 'mpg' dataset.
function(input, output) {
  
  # Filter data based on selections
  output$table <- DT::renderDataTable({
    DT::datatable(mpg2[, input$show_vars, drop = FALSE])
  })
  
  
  output$table <- DT::renderDataTable(DT::datatable({
    data <- mpg2
    if (input$TaskType != "All") {
      data <- data[data$TaskType == input$TaskType,]
    }
    if (input$DataType != "All") {
      data <- data[data$DataType == input$DataType,]
    }
    if (input$Users != "All") {
      data <- data[data$Users == input$Users,]
    }
    data
  }))
  
}