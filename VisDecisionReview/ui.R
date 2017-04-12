# Load the ggplot2 package which provides
# the 'mpg' dataset.


mpg2 <- readRDS("data.rds")

library(ggplot2)  # for the diamonds dataset

fluidPage(
  title = 'Examples of DataTables',
  sidebarLayout(
    sidebarPanel(
      conditionalPanel(
        'input.dataset === "mpg2"',
        checkboxGroupInput('show_vars', 'Data Options',
                           names(mpg2), selected = c("Authors", "Year"))
      )
    ),
    mainPanel(
      tabsetPanel(
        id = 'dataset',
        tabPanel('mpg2', DT::dataTableOutput('mytable1'))
      )
    )
  )
)