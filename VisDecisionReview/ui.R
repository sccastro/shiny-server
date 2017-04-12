# Load the ggplot2 package which provides
# the 'mpg' dataset.


mpg2 <- readRDS("data.rds")

library(ggplot2)  # for the diamonds dataset

fluidPage(
  title = 'Examples of DataTables',
  sidebarLayout(
    sidebarPanel(
      conditionalPanel(
        'input.dataset === "diamonds"',
        checkboxGroupInput('show_vars', 'Columns in diamonds to show:',
                           names(diamonds), selected = names(diamonds))
      )
    ),
    mainPanel(
      tabsetPanel(
        id = 'dataset',
        tabPanel('diamonds', DT::dataTableOutput('mytable1')),
        tabPanel('mtcars', DT::dataTableOutput('mytable2')),
        tabPanel('iris', DT::dataTableOutput('mytable3'))
      )
    )
  )
)