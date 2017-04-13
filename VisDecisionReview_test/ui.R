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
           selectInput("UP",
                       "Manufacturer:",
                       c("All",
                         unique(as.character(mpg2$UP))))
    ),
    column(4,
           selectInput("VDAR",
                       "Transmission:",
                       c("All",
                         unique(as.character(mpg2$VDAR))))
    ),
    column(4,
           selectInput("UWP",
                       "Cylinders:",
                       c("All",
                         unique(as.character(mpg2$UWP))))
    )
  ),
  # Create a new row for the table.
  fluidRow(
    DT::dataTableOutput("table")
  )
)
