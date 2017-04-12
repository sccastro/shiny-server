

mpg2 <- readRDS("data.rds")
# Load the ggplot2 package which provides
# the 'mpg' dataset.
library(ggplot2)


function(input, output) {
  
  # choose columns to display
  output$mytable1 <- DT::renderDataTable({
    DT::datatable(mpg2[, input$show_vars, drop = FALSE])
  })
  
  # sorted columns are colored now because CSS are attached to them
  output$mytable2 <- DT::renderDataTable({
    DT::datatable(mtcars, options = list(orderClasses = TRUE))
  })
  
  # customize the length drop-down menu; display 5 rows per page by default
  output$mytable3 <- DT::renderDataTable({
    DT::datatable(iris, options = list(lengthMenu = c(5, 30, 50), pageLength = 5))
  })
  
}