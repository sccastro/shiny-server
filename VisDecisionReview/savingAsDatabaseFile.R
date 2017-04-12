#saving data file
library(xlsx)
total<- read.xlsx("~/Documents/SpencerServer/shiny-server/VisDecisionReview/Table2.xlsx", sheetName="Table2.csv")

saveRDS(total, "~/Documents/SpencerServer/shiny-server/VisDecisionReview/data.rds")
