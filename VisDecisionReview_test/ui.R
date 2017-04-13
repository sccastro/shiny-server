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
           selectInput("Identify",
                       "Manufacturer:",
                       c("All",
                         unique(as.character(mpg2$Identify))))
    ),
    column(4,
           selectInput("Select",
                       "Transmission:",
                       c("All",
                         unique(as.character(mpg2$Select))))
    ),
    column(4,
           selectInput("Navigate",
                       "Cylinders:",
                       c("All",
                         unique(as.character(mpg2$Navigate))))
    )
  ),
  # Create a new row for the table.
  fluidRow(
    DT::dataTableOutput("table")
  )
)
