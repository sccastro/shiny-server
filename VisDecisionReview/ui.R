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
        checkboxGroupInput('show_vars', '',
                           c("Authors", "Year", "N"), selected = c("Authors", "Year", "N"))
      ), 
      conditionalPanel(
        'input.dataset === "mpg2"',
        checkboxGroupInput('show_vars', 'Study Type',
                           c("UP", "VDAR", "UWP"), selected = c("UP", "VDAR", "UWP"))
      ),
      conditionalPanel(
        'input.dataset === "mpg2"',
        checkboxGroupInput('show_vars', 'Data Type',
                           c("Items", "Attributes", "Links", "Positions", "Grids"), selected = "Items")
      ), 
      h2("Tasks"),
      h3("Why"),
      conditionalPanel(
        'input.dataset === "mpg2"',
        checkboxGroupInput('show_vars', 'Data Type',
                           c("Items", "Attributes", "Links", "Positions", "Grids"), selected = "Items")
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