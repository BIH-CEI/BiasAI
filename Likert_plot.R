library(likert)
library(magrittr)
library(mosaic)
library(HH)
library(RColorBrewer)
library(dplyr)
library(ggplot2)

##reading Data from Table 3
d_gesamt3 <- read.csv2("Mappe3.csv")
d_gesamt3 <-rename(d_gesamt3, "Not fair at all" = Not.fair.at.all,"Barely Fair"=Barely.fair, "Moderately Fair" = Moderately.fair, "Very fair"= Very.Fair)
type2 <- c("Gender","Gender","Gender","Gender","Age","Age","Age","Age","Environment","Environment","Environment")
d_gesamt_new3 <- cbind(d_gesamt3, type2)
##likert Plot
likert(Item~. | type2, d_gesamt_new3, main = list("How would you rate the level of fairness of AI in your AI development?"), layout=c(1,3),scales=list(y=list(relation="free")),col = brewer.pal(n=6,"RdYlBu"), between=list(y=1),par.strip.text=list(cex=1.1, lines=1), strip.left=TRUE, strip = FALSE, as.percent=TRUE,xlab="Percentage",ylab="")
