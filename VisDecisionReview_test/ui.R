# Load the ggplot2 package which provides
# the 'mpg' dataset.


mpg2 <- readRDS("data2.rds")

# Load the ggplot2 package which provides
# the 'mpg' dataset.
library(ggplot2)

fluidPage(
  titlePanel("Basic DataTable"),
  
  # Create a new Row in the UI for selectInputs
  fluidRow(
    column(3, offset = 3,
           "3 offset 3"
    ),
    
    column(4,
           selectInput("TaskType",
                       "Task Type:",
                       c("All",
                         unique(as.character(mpg2$TaskType))))
    ),
    column(4,
           selectInput("DataType",
                       "Data Type:",
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
