

mpg2 <- readRDS("data.rds")
# Load the ggplot2 package which provides
# the 'mpg' dataset.
library(ggplot2)


function(input, output) {
  
  
  
  # sorted columns are colored now because CSS are attached to them
  output$mytable2 <- DT::renderDataTable({
    DT::datatable(mtcars, options = list(orderClasses = TRUE))
  })
  
  
  
}