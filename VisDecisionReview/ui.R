# Load the ggplot2 package which provides
# the 'mpg' dataset.
library(ggplot2)

fluidPage(
  titlePanel("Decision Making with Visualizations: A Selective Review"),
  
  # Create a new Row in the UI for selectInputs
  fluidRow(
    column(4,
           selectInput("man",
                       "Domain:",
                       c("All",
                         unique(as.character(mpg2$Domain))))
    )
  ),
  # Create a new row for the table.
  fluidRow(
    DT::dataTableOutput("table")
  )
)