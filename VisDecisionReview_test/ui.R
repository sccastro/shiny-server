# Load the ggplot2 package which provides
# the 'mpg' dataset.


mpg2 <- readRDS("data.rds")

# Load the ggplot2 package which provides
# the 'mpg' dataset.
library(ggplot2)

fluidPage(
  titlePanel("Basic DataTable"),
  
  # Create a new Row in the UI for selectInputs
  fluidRow(
    column(4,
           selectInput("man",
                       "Manufacturer:",
                       c("All",
                         unique(as.character(mpg2$UP))))
    ),
    column(4,
           selectInput("trans",
                       "Transmission:",
                       c("All",
                         unique(as.character(mpg2$Items))))
    ),
    column(4,
           selectInput("cyl",
                       "Cylinders:",
                       c("All",
                         unique(as.character(mpg2$Links))))
    )
  ),
  # Create a new row for the table.
  fluidRow(
    DT::dataTableOutput("table")
  )
)
