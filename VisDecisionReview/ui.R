# Load the ggplot2 package which provides
# the 'mpg' dataset.


mpg2 <- readRDS("data.rds")

#library(shiny)
library(ggplot2)  # for the diamonds dataset

fluidPage(
  title = 'Examples of DataTables',
  sidebarLayout(
    sidebarPanel(
      
      conditionalPanel(
        'input.dataset === "mtcars"',
        helpText('Click the column header to sort a column.')
      )
    ),
    mainPanel(
      tabsetPanel(
        id = 'dataset',
       
        tabPanel('mtcars', DT::dataTableOutput('mytable2'))
      )
    )
  )
)