library(maps)
library(mapproj)
source("helpers.R")
counties <- readRDS("counties.rds")

shinyServer(
  function(input, output) {
    
    output$map <- renderPlot({
      
      percent_map( # some arguments )
    })
      
  }
    )