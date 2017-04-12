#saving data file
library(xlsx)
total<- read.xlsx("~/Documents/SpencerServer/shiny-server/VisDecisionReview/mpg2.xltx", sheetName="mpg2.csv")

saveRDS(total, "~/Documents/SpencerServer/shiny-server/VisDecisionReview/data.rds")
