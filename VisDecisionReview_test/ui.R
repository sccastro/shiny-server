# Load the ggplot2 package which provides
# the 'mpg' dataset.


mpg2 <- readRDS("data.rds")

# Load the ggplot2 package which provides
# the 'mpg' dataset.
library(ggplot2)

fluidPage(
  titlePanel("Basic DataTable"),
  
  # Create a new Row in the UI for selectInputs
  sidebarLayout(
    
        
    column(4,
           selectInput("TaskType",
                       "TaskType:",
                       c("All",
                         unique(as.character(mpg2$TaskType))))
    ),
    column(4,
           selectInput("DataType",
                       "DataType:",
                       c("All",
                         unique(as.character(mpg2$DataType))))
    ),
    column(4,
           selectInput("Users",
                       "Users:",
                       c("All",
                         unique(as.character(mpg2$Users))))
    )
  ),
  # Create a new row for the table.
  fluidRow(
    DT::dataTableOutput("table")
  )
)
