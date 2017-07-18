rm(list=ls())

path = "E:/shortselling/Data/Raw/WRDS/Markit/Markit Securities Finance Institutional - Bonds/Government/splitted"

files <- list.files(path=path,pattern = "*.csv",full.names = TRUE)

i=1
pb <- txtProgressBar(min = 1, max = length(files),style = 3, initial = 1)
for(fn in files) {
  setTxtProgressBar(pb, i)
  temp <- read.csv(file=fn,stringsAsFactors = FALSE)
  saveRDS(temp,file=sub('.csv', '.rds', fn))
  i=i+1
}



temp <- readRDS(file="E:/shortselling/Data/Raw/WRDS/Markit/Markit Securities Finance Analytics - Bonds/Corporate/splitted/6fdda45686dca554-081.rds")
temp2 <- readRDS(file="E:/shortselling/Data/Raw/WRDS/Markit/Markit Securities Finance Institutional - Bonds/Corporate/splitted/cf20909ff2b334d5-141.rds")
