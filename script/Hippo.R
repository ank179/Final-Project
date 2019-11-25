#changing working directory 
getwd()
setwd("/Users/anyakapur/Desktop/Biostat/finalproject/script")


#loading data 
hipp <- read.csv("hippvolume.csv")

setwd("/Users/anyakapur/Desktop/Biostat/finalproject/results")
hipp$group <- factor(hipp$group, levels = c("no seizures", "no CFS", "CFS")) 
hipp
hippAnova <- lm(hipp$hippoVolumeRatio ~ group, data = hipp)
anova(hippAnova)
