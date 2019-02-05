library(ggplot2)
############Load 50 files from second file
CY1 <- NULL
CY2 <- NULL
CY3 <- NULL
CY4 <- NULL
CY5 <- NULL
CY6 <- NULL
CY7 <- NULL
CY8 <- NULL
CY9 <- NULL
CY10 <- NULL
for (var in 1:1)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outCalibrate", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD")
  
  CY1 <- rbind(CY1, tempFile[1:365,])
  CY2 <- rbind(CY2, tempFile[366:730,])
  CY3 <- rbind(CY3, tempFile[731:1095,])
  CY4 <- rbind(CY4, tempFile[1096:1460,])
  CY5 <- rbind(CY5, tempFile[1461:1825,])
  CY6 <- rbind(CY6, tempFile[1826:2190,])
  CY7 <- rbind(CY7, tempFile[2191:2555,])
  CY8 <- rbind(CY8, tempFile[2556:2920,])
  CY9 <- rbind(CY9, tempFile[2921:3285,])
  CY10 <- rbind(CY10, tempFile[3286:3650,]) #YRS
}

#Create Total Columns for P1 P2 P3
CY1$PminTotal <- CY1$Pmin0+CY1$Pmin1+CY1$Pmin2+CY1$Pmin3+CY1$Pmin4+CY1$Pmin5+CY1$Pmin6+CY1$Pmin7+CY1$Pmin8+CY1$Pmin9+CY1$Pmin10+CY1$Pmin11
CY2$PminTotal <- CY2$Pmin0+CY2$Pmin1+CY2$Pmin2+CY2$Pmin3+CY2$Pmin4+CY2$Pmin5+CY2$Pmin6+CY2$Pmin7+CY2$Pmin8+CY2$Pmin9+CY2$Pmin10+CY2$Pmin11
CY3$PminTotal <- CY3$Pmin0+CY3$Pmin1+CY3$Pmin2+CY3$Pmin3+CY3$Pmin4+CY3$Pmin5+CY3$Pmin6+CY3$Pmin7+CY3$Pmin8+CY3$Pmin9+CY3$Pmin10+CY3$Pmin11
CY4$PminTotal <- CY4$Pmin0+CY4$Pmin1+CY4$Pmin2+CY4$Pmin3+CY4$Pmin4+CY4$Pmin5+CY4$Pmin6+CY4$Pmin7+CY4$Pmin8+CY4$Pmin9+CY4$Pmin10+CY4$Pmin11
CY5$PminTotal <- CY5$Pmin0+CY5$Pmin1+CY5$Pmin2+CY5$Pmin3+CY5$Pmin4+CY5$Pmin5+CY5$Pmin6+CY5$Pmin7+CY5$Pmin8+CY5$Pmin9+CY5$Pmin10+CY5$Pmin11
CY6$PminTotal <- CY6$Pmin0+CY6$Pmin1+CY6$Pmin2+CY6$Pmin3+CY6$Pmin4+CY6$Pmin5+CY6$Pmin6+CY6$Pmin7+CY6$Pmin8+CY6$Pmin9+CY6$Pmin10+CY6$Pmin11
CY7$PminTotal <- CY7$Pmin0+CY7$Pmin1+CY7$Pmin2+CY7$Pmin3+CY7$Pmin4+CY7$Pmin5+CY7$Pmin6+CY7$Pmin7+CY7$Pmin8+CY7$Pmin9+CY7$Pmin10+CY7$Pmin11
CY8$PminTotal <- CY8$Pmin0+CY8$Pmin1+CY8$Pmin2+CY8$Pmin3+CY8$Pmin4+CY8$Pmin5+CY8$Pmin6+CY8$Pmin7+CY8$Pmin8+CY8$Pmin9+CY8$Pmin10+CY8$Pmin11
CY9$PminTotal <- CY9$Pmin0+CY9$Pmin1+CY9$Pmin2+CY9$Pmin3+CY9$Pmin4+CY9$Pmin5+CY9$Pmin6+CY9$Pmin7+CY9$Pmin8+CY9$Pmin9+CY9$Pmin10+CY9$Pmin11
CY10$PminTotal <- CY10$Pmin0+CY10$Pmin1+CY10$Pmin2+CY10$Pmin3+CY10$Pmin4+CY10$Pmin5+CY10$Pmin6+CY10$Pmin7+CY10$Pmin8+CY10$Pmin9+CY10$Pmin10+CY10$Pmin11

CY1$PmedTotal <- CY1$Pmed0+CY1$Pmed1+CY1$Pmed2+CY1$Pmed3+CY1$Pmed4+CY1$Pmed5+CY1$Pmed6+CY1$Pmed7+CY1$Pmed8+CY1$Pmed9+CY1$Pmed10+CY1$Pmed11
CY2$PmedTotal <- CY2$Pmed0+CY2$Pmed1+CY2$Pmed2+CY2$Pmed3+CY2$Pmed4+CY2$Pmed5+CY2$Pmed6+CY2$Pmed7+CY2$Pmed8+CY2$Pmed9+CY2$Pmed10+CY2$Pmed11
CY3$PmedTotal <- CY3$Pmed0+CY3$Pmed1+CY3$Pmed2+CY3$Pmed3+CY3$Pmed4+CY3$Pmed5+CY3$Pmed6+CY3$Pmed7+CY3$Pmed8+CY3$Pmed9+CY3$Pmed10+CY3$Pmed11
CY4$PmedTotal <- CY4$Pmed0+CY4$Pmed1+CY4$Pmed2+CY4$Pmed3+CY4$Pmed4+CY4$Pmed5+CY4$Pmed6+CY4$Pmed7+CY4$Pmed8+CY4$Pmed9+CY4$Pmed10+CY4$Pmed11
CY5$PmedTotal <- CY5$Pmed0+CY5$Pmed1+CY5$Pmed2+CY5$Pmed3+CY5$Pmed4+CY5$Pmed5+CY5$Pmed6+CY5$Pmed7+CY5$Pmed8+CY5$Pmed9+CY5$Pmed10+CY5$Pmed11
CY6$PmedTotal <- CY6$Pmed0+CY6$Pmed1+CY6$Pmed2+CY6$Pmed3+CY6$Pmed4+CY6$Pmed5+CY6$Pmed6+CY6$Pmed7+CY6$Pmed8+CY6$Pmed9+CY6$Pmed10+CY6$Pmed11
CY7$PmedTotal <- CY7$Pmed0+CY7$Pmed1+CY7$Pmed2+CY7$Pmed3+CY7$Pmed4+CY7$Pmed5+CY7$Pmed6+CY7$Pmed7+CY7$Pmed8+CY7$Pmed9+CY7$Pmed10+CY7$Pmed11
CY8$PmedTotal <- CY8$Pmed0+CY8$Pmed1+CY8$Pmed2+CY8$Pmed3+CY8$Pmed4+CY8$Pmed5+CY8$Pmed6+CY8$Pmed7+CY8$Pmed8+CY8$Pmed9+CY8$Pmed10+CY8$Pmed11
CY9$PmedTotal <- CY9$Pmed0+CY9$Pmed1+CY9$Pmed2+CY9$Pmed3+CY9$Pmed4+CY9$Pmed5+CY9$Pmed6+CY9$Pmed7+CY9$Pmed8+CY9$Pmed9+CY9$Pmed10+CY9$Pmed11
CY10$PmedTotal <- CY10$Pmed0+CY10$Pmed1+CY10$Pmed2+CY10$Pmed3+CY10$Pmed4+CY10$Pmed5+CY10$Pmed6+CY10$Pmed7+CY10$Pmed8+CY10$Pmed9+CY10$Pmed10+CY10$Pmed11

CY1$PmaxTotal <- CY1$Pmax0+CY1$Pmax1+CY1$Pmax2+CY1$Pmax3+CY1$Pmax4+CY1$Pmax5+CY1$Pmax6+CY1$Pmax7+CY1$Pmax8+CY1$Pmax9+CY1$Pmax10+CY1$Pmax11
CY2$PmaxTotal <- CY2$Pmax0+CY2$Pmax1+CY2$Pmax2+CY2$Pmax3+CY2$Pmax4+CY2$Pmax5+CY2$Pmax6+CY2$Pmax7+CY2$Pmax8+CY2$Pmax9+CY2$Pmax10+CY2$Pmax11
CY3$PmaxTotal <- CY3$Pmax0+CY3$Pmax1+CY3$Pmax2+CY3$Pmax3+CY3$Pmax4+CY3$Pmax5+CY3$Pmax6+CY3$Pmax7+CY3$Pmax8+CY3$Pmax9+CY3$Pmax10+CY3$Pmax11
CY4$PmaxTotal <- CY4$Pmax0+CY4$Pmax1+CY4$Pmax2+CY4$Pmax3+CY4$Pmax4+CY4$Pmax5+CY4$Pmax6+CY4$Pmax7+CY4$Pmax8+CY4$Pmax9+CY4$Pmax10+CY4$Pmax11
CY5$PmaxTotal <- CY5$Pmax0+CY5$Pmax1+CY5$Pmax2+CY5$Pmax3+CY5$Pmax4+CY5$Pmax5+CY5$Pmax6+CY5$Pmax7+CY5$Pmax8+CY5$Pmax9+CY5$Pmax10+CY5$Pmax11
CY6$PmaxTotal <- CY6$Pmax0+CY6$Pmax1+CY6$Pmax2+CY6$Pmax3+CY6$Pmax4+CY6$Pmax5+CY6$Pmax6+CY6$Pmax7+CY6$Pmax8+CY6$Pmax9+CY6$Pmax10+CY6$Pmax11
CY7$PmaxTotal <- CY7$Pmax0+CY7$Pmax1+CY7$Pmax2+CY7$Pmax3+CY7$Pmax4+CY7$Pmax5+CY7$Pmax6+CY7$Pmax7+CY7$Pmax8+CY7$Pmax9+CY7$Pmax10+CY7$Pmax11
CY8$PmaxTotal <- CY8$Pmax0+CY8$Pmax1+CY8$Pmax2+CY8$Pmax3+CY8$Pmax4+CY8$Pmax5+CY8$Pmax6+CY8$Pmax7+CY8$Pmax8+CY8$Pmax9+CY8$Pmax10+CY8$Pmax11
CY9$PmaxTotal <- CY9$Pmax0+CY9$Pmax1+CY9$Pmax2+CY9$Pmax3+CY9$Pmax4+CY9$Pmax5+CY9$Pmax6+CY9$Pmax7+CY9$Pmax8+CY9$Pmax9+CY9$Pmax10+CY9$Pmax11
CY10$PmaxTotal <- CY10$Pmax0+CY10$Pmax1+CY10$Pmax2+CY10$Pmax3+CY10$Pmax4+CY10$Pmax5+CY10$Pmax6+CY10$Pmax7+CY10$Pmax8+CY10$Pmax9+CY10$Pmax10+CY10$Pmax11

#Summary
#Min
summary(CY1$PminTotal) #CY1
summary(CY2$PminTotal) #CY1
summary(CY3$PminTotal) #CY1
summary(CY4$PminTotal) #CY1
summary(CY5$PminTotal) #CY1
summary(CY6$PminTotal) #CY1
summary(CY7$PminTotal) #CY1
summary(CY8$PminTotal) #CY1
summary(CY9$PminTotal) #CY1
summary(CY10$PminTotal) #CY1

#Med
summary(CY1$PmedTotal) #CY1
summary(CY2$PmedTotal) #CY1
summary(CY3$PmedTotal) #CY1
summary(CY4$PmedTotal) #CY1
summary(CY5$PmedTotal) #CY1
summary(CY6$PmedTotal) #CY1
summary(CY7$PmedTotal) #CY1
summary(CY8$PmedTotal) #CY1
summary(CY9$PmedTotal) #CY1
summary(CY10$PmedTotal) #CY1

#Max
summary(CY1$PmaxTotal) #CY1
summary(CY2$PmaxTotal) #CY1
summary(CY3$PmaxTotal) #CY1
summary(CY4$PmaxTotal) #CY1
summary(CY5$PmaxTotal) #CY1
summary(CY6$PmaxTotal) #CY1
summary(CY7$PmaxTotal) #CY1
summary(CY8$PmaxTotal) #CY1
summary(CY9$PmaxTotal) #CY1
summary(CY10$PmaxTotal) #CY1

#Incidence and Prevalence
#Create total IDU columns
CY1$TotalIDU <- CY1$Pmin0+CY1$Pmin1+CY1$Pmin2+CY1$Pmin3+CY1$Pmin4+CY1$Pmin5+CY1$Pmed0+CY1$Pmed1+CY1$Pmed2+CY1$Pmed3+CY1$Pmed4+CY1$Pmed5+CY1$Pmax0+CY1$Pmax1+CY1$Pmax2+CY1$Pmax3+CY1$Pmax4+CY1$Pmax5
CY2$TotalIDU <- CY2$Pmin0+CY2$Pmin1+CY2$Pmin2+CY2$Pmin3+CY2$Pmin4+CY2$Pmin5+CY2$Pmed0+CY2$Pmed1+CY2$Pmed2+CY2$Pmed3+CY2$Pmed4+CY2$Pmed5+CY2$Pmax0+CY2$Pmax1+CY2$Pmax2+CY2$Pmax3+CY2$Pmax4+CY2$Pmax5
CY3$TotalIDU <- CY3$Pmin0+CY3$Pmin1+CY3$Pmin2+CY3$Pmin3+CY3$Pmin4+CY3$Pmin5+CY3$Pmed0+CY3$Pmed1+CY3$Pmed2+CY3$Pmed3+CY3$Pmed4+CY3$Pmed5+CY3$Pmax0+CY3$Pmax1+CY3$Pmax2+CY3$Pmax3+CY3$Pmax4+CY3$Pmax5
CY4$TotalIDU <- CY4$Pmin0+CY4$Pmin1+CY4$Pmin2+CY4$Pmin3+CY4$Pmin4+CY4$Pmin5+CY4$Pmed0+CY4$Pmed1+CY4$Pmed2+CY4$Pmed3+CY4$Pmed4+CY4$Pmed5+CY4$Pmax0+CY4$Pmax1+CY4$Pmax2+CY4$Pmax3+CY4$Pmax4+CY4$Pmax5
CY5$TotalIDU <- CY5$Pmin0+CY5$Pmin1+CY5$Pmin2+CY5$Pmin3+CY5$Pmin4+CY5$Pmin5+CY5$Pmed0+CY5$Pmed1+CY5$Pmed2+CY5$Pmed3+CY5$Pmed4+CY5$Pmed5+CY5$Pmax0+CY5$Pmax1+CY5$Pmax2+CY5$Pmax3+CY5$Pmax4+CY5$Pmax5
CY6$TotalIDU <- CY6$Pmin0+CY6$Pmin1+CY6$Pmin2+CY6$Pmin3+CY6$Pmin4+CY6$Pmin5+CY6$Pmed0+CY6$Pmed1+CY6$Pmed2+CY6$Pmed3+CY6$Pmed4+CY6$Pmed5+CY6$Pmax0+CY6$Pmax1+CY6$Pmax2+CY6$Pmax3+CY6$Pmax4+CY6$Pmax5
CY7$TotalIDU <- CY7$Pmin0+CY7$Pmin1+CY7$Pmin2+CY7$Pmin3+CY7$Pmin4+CY7$Pmin5+CY7$Pmed0+CY7$Pmed1+CY7$Pmed2+CY7$Pmed3+CY7$Pmed4+CY7$Pmed5+CY7$Pmax0+CY7$Pmax1+CY7$Pmax2+CY7$Pmax3+CY7$Pmax4+CY7$Pmax5
CY8$TotalIDU <- CY8$Pmin0+CY8$Pmin1+CY8$Pmin2+CY8$Pmin3+CY8$Pmin4+CY8$Pmin5+CY8$Pmed0+CY8$Pmed1+CY8$Pmed2+CY8$Pmed3+CY8$Pmed4+CY8$Pmed5+CY8$Pmax0+CY8$Pmax1+CY8$Pmax2+CY8$Pmax3+CY8$Pmax4+CY8$Pmax5
CY9$TotalIDU <- CY9$Pmin0+CY9$Pmin1+CY9$Pmin2+CY9$Pmin3+CY9$Pmin4+CY9$Pmin5+CY9$Pmed0+CY9$Pmed1+CY9$Pmed2+CY9$Pmed3+CY9$Pmed4+CY9$Pmed5+CY9$Pmax0+CY9$Pmax1+CY9$Pmax2+CY9$Pmax3+CY9$Pmax4+CY9$Pmax5
CY10$TotalIDU <- CY10$Pmin0+CY10$Pmin1+CY10$Pmin2+CY10$Pmin3+CY10$Pmin4+CY10$Pmin5+CY10$Pmed0+CY10$Pmed1+CY10$Pmed2+CY10$Pmed3+CY10$Pmed4+CY10$Pmed5+CY10$Pmax0+CY10$Pmax1+CY10$Pmax2+CY10$Pmax3+CY10$Pmax4+CY10$Pmax5

summary(CY1$TotalIDU)
summary(CY2$TotalIDU)
summary(CY3$TotalIDU)
summary(CY4$TotalIDU)
summary(CY5$TotalIDU)
summary(CY6$TotalIDU)
summary(CY7$TotalIDU)
summary(CY8$TotalIDU)
summary(CY9$TotalIDU)
summary(CY10$TotalIDU)

#TotalIDU incidence and prevalence
#mean(PWID) - mean(Opd)
TotalIDU <- data.frame("Value"=c(mean(CY1$TotalIDU),mean(CY2$TotalIDU),mean(CY3$TotalIDU),mean(CY4$TotalIDU),
  mean(CY5$TotalIDU),mean(CY6$TotalIDU),mean(CY7$TotalIDU),mean(CY8$TotalIDU),mean(CY9$TotalIDU)))
TotalIDU$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalIDU$Description <- c("number of pwid")

TotalIDUMin <- data.frame("Value"=c(min(CY1$TotalIDU),min(CY2$TotalIDU),min(CY3$TotalIDU),min(CY4$TotalIDU),
                                 min(CY5$TotalIDU),min(CY6$TotalIDU),min(CY7$TotalIDU),min(CY8$TotalIDU),min(CY9$TotalIDU)))
TotalIDUMin$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalIDUMin$Description <- c("number of pwid")

TotalIDUProp <- data.frame("Value"=c(mean(CY1$TotalIDU)/mean(CY1$TotalPrisonPop),mean(CY2$TotalIDU)/mean(CY2$TotalPrisonPop),mean(CY3$TotalIDU)/mean(CY3$TotalPrisonPop),mean(CY4$TotalIDU)/mean(CY4$TotalPrisonPop),
                                     mean(CY5$TotalIDU)/mean(CY5$TotalPrisonPop),mean(CY6$TotalIDU)/mean(CY6$TotalPrisonPop),mean(CY7$TotalIDU)/mean(CY7$TotalPrisonPop),mean(CY8$TotalIDU)/mean(CY8$TotalPrisonPop),mean(CY9$TotalIDU)/mean(CY9$TotalPrisonPop)))
TotalIDUProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalIDUProp$Description <- c("proportion of PWID")

TotalIDUMinProp <- data.frame("Value"=c(min(CY1$TotalIDU)/mean(CY1$TotalPrisonPop),min(CY2$TotalIDU)/mean(CY2$TotalPrisonPop),min(CY3$TotalIDU)/mean(CY3$TotalPrisonPop),min(CY4$TotalIDU)/mean(CY4$TotalPrisonPop),
                                     min(CY5$TotalIDU)/mean(CY5$TotalPrisonPop),min(CY6$TotalIDU)/mean(CY6$TotalPrisonPop),min(CY7$TotalIDU)/mean(CY7$TotalPrisonPop),min(CY8$TotalIDU)/mean(CY8$TotalPrisonPop),min(CY9$TotalIDU)/mean(CY9$TotalPrisonPop)))
TotalIDUMinProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalIDUMinProp$Description <- c("proportion of PWID")

TotalIDUMaxProp <- data.frame("Value"=c(max(CY1$TotalIDU)/mean(CY1$TotalPrisonPop),max(CY2$TotalIDU)/mean(CY2$TotalPrisonPop),max(CY3$TotalIDU)/mean(CY3$TotalPrisonPop),max(CY4$TotalIDU)/mean(CY4$TotalPrisonPop),
                                        max(CY5$TotalIDU)/mean(CY5$TotalPrisonPop),max(CY6$TotalIDU)/mean(CY6$TotalPrisonPop),max(CY7$TotalIDU)/mean(CY7$TotalPrisonPop),max(CY8$TotalIDU)/mean(CY8$TotalPrisonPop),max(CY9$TotalIDU)/mean(CY9$TotalPrisonPop)))
TotalIDUMaxProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalIDUMaxProp$Description <- c("proportion of PWID")

TotalOpd <- data.frame("Value"=c(mean(CY1$OPD),mean(CY2$OPD),mean(CY3$OPD),mean(CY4$OPD),
                                     mean(CY5$OPD),mean(CY6$OPD),mean(CY7$OPD),mean(CY8$OPD),mean(CY9$OPD)))
TotalOpd$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalOpd$Description <- c("number of opioid users")

TotalOpdMin <- data.frame("Value"=c(min(CY1$OPD),min(CY2$OPD),min(CY3$OPD),min(CY4$OPD),
                                 min(CY5$OPD),min(CY6$OPD),min(CY7$OPD),min(CY8$OPD),min(CY9$OPD)))
TotalOpdMin$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalOpdMin$Description <- c("number of opioid users")

TotalOpdMax <- data.frame("Value"=c(max(CY1$OPD),max(CY2$OPD),max(CY3$OPD),max(CY4$OPD),
                                    max(CY5$OPD),max(CY6$OPD),max(CY7$OPD),max(CY8$OPD),max(CY9$OPD)))
TotalOpdMax$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalOpdMax$Description <- c("number of opioid users")

TotalOpdProp <- data.frame("Value"=c(mean(CY1$OPD)/mean(CY1$TotalPrisonPop),mean(CY2$OPD)/mean(CY2$TotalPrisonPop),mean(CY3$OPD)/mean(CY3$TotalPrisonPop),mean(CY4$OPD)/mean(CY4$TotalPrisonPop),
                                 mean(CY5$OPD)/mean(CY5$TotalPrisonPop),mean(CY6$OPD)/mean(CY6$TotalPrisonPop),mean(CY7$OPD)/mean(CY7$TotalPrisonPop),mean(CY8$OPD)/mean(CY8$TotalPrisonPop),mean(CY9$OPD)/mean(CY9$TotalPrisonPop)))
TotalOpdProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalOpdProp$Description <- c("proportion of opioid pwid")

TotalOpdMinProp <- data.frame("Value"=c(min(CY1$OPD)/mean(CY1$TotalPrisonPop),min(CY2$OPD)/mean(CY2$TotalPrisonPop),min(CY3$OPD)/mean(CY3$TotalPrisonPop),min(CY4$OPD)/mean(CY4$TotalPrisonPop),
                                     min(CY5$OPD)/mean(CY5$TotalPrisonPop),min(CY6$OPD)/mean(CY6$TotalPrisonPop),min(CY7$OPD)/mean(CY7$TotalPrisonPop),min(CY8$OPD)/mean(CY8$TotalPrisonPop),min(CY9$OPD)/mean(CY9$TotalPrisonPop)))
TotalOpdMinProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalOpdMinProp$Description <- c("proportion of opioid pwid")

TotalOpdMaxProp <- data.frame("Value"=c(max(CY1$OPD)/mean(CY1$TotalPrisonPop),max(CY2$OPD)/mean(CY2$TotalPrisonPop),max(CY3$OPD)/mean(CY3$TotalPrisonPop),max(CY4$OPD)/mean(CY4$TotalPrisonPop),
                                        max(CY5$OPD)/mean(CY5$TotalPrisonPop),max(CY6$OPD)/mean(CY6$TotalPrisonPop),max(CY7$OPD)/mean(CY7$TotalPrisonPop),max(CY8$OPD)/mean(CY8$TotalPrisonPop),max(CY9$OPD)/mean(CY9$TotalPrisonPop)))
TotalOpdMaxProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalOpdMaxProp$Description <- c("proportion of opioid pwid")

TotalNonOpd <- data.frame("Value"=TotalIDU$Value-TotalOpd$Value)
TotalNonOpd$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalNonOpd$Description <- c("number of non-opioid users")

TotalNonOpdMin <- data.frame("Value"=TotalIDU$Value-TotalOpdMin$Value)
TotalNonOpdMin$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalNonOpdMin$Description <- c("number of non-opioid users")

TotalNonOpdMax <- data.frame("Value"=TotalIDU$Value-TotalOpdMax$Value)
TotalNonOpdMax$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalNonOpdMax$Description <- c("number of non-opioid users")

TotalNonOpdProp <- data.frame("Value"=c(TotalNonOpd$Value[1]/mean(CY1$TotalPrisonPop),TotalNonOpd$Value[2]/mean(CY2$TotalPrisonPop),TotalNonOpd$Value[3]/mean(CY3$TotalPrisonPop),TotalNonOpd$Value[4]/mean(CY4$TotalPrisonPop),
                                        TotalNonOpd$Value[5]/mean(CY5$TotalPrisonPop),TotalNonOpd$Value[6]/mean(CY6$TotalPrisonPop),TotalNonOpd$Value[7]/mean(CY7$TotalPrisonPop),TotalNonOpd$Value[8]/mean(CY8$TotalPrisonPop),TotalNonOpd$Value[9]/mean(CY9$TotalPrisonPop)))
TotalNonOpdProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalNonOpdProp$Description <- c("proportion of non-opioid pwid")

TotalNonOpdMinProp <- data.frame("Value"=c(TotalNonOpdMin$Value[1]/mean(CY1$TotalPrisonPop),TotalNonOpdMin$Value[2]/mean(CY2$TotalPrisonPop),TotalNonOpdMin$Value[3]/mean(CY3$TotalPrisonPop),TotalNonOpdMin$Value[4]/mean(CY4$TotalPrisonPop),
                                        TotalNonOpdMin$Value[5]/mean(CY5$TotalPrisonPop),TotalNonOpdMin$Value[6]/mean(CY6$TotalPrisonPop),TotalNonOpdMin$Value[7]/mean(CY7$TotalPrisonPop),TotalNonOpdMin$Value[8]/mean(CY8$TotalPrisonPop),TotalNonOpdMin$Value[9]/mean(CY9$TotalPrisonPop)))
TotalNonOpdMinProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalNonOpdMinProp$Description <- c("proportion of non-opioid pwid")

TotalNonOpdMaxProp <- data.frame("Value"=c(TotalNonOpdMin$Value[1]/mean(CY1$TotalPrisonPop),TotalNonOpdMin$Value[2]/mean(CY2$TotalPrisonPop),TotalNonOpdMin$Value[3]/mean(CY3$TotalPrisonPop),TotalNonOpdMin$Value[4]/mean(CY4$TotalPrisonPop),
                                           TotalNonOpdMin$Value[5]/mean(CY5$TotalPrisonPop),TotalNonOpdMin$Value[6]/mean(CY6$TotalPrisonPop),TotalNonOpdMin$Value[7]/mean(CY7$TotalPrisonPop),TotalNonOpdMin$Value[8]/mean(CY8$TotalPrisonPop),TotalNonOpdMin$Value[9]/mean(CY9$TotalPrisonPop)))
TotalNonOpdMaxProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalNonOpdMaxProp$Description <- c("proportion of non-opioid pwid")

TotalSubpops <- rbind(TotalNonOpdProp, TotalOpdProp)

barPlotAll <- ggplot(data = TotalSubpops, aes(x = Year, y = Value, 
  fill = Description)) + geom_bar(stat = "identity") + 
  xlab("Year") + ylab("Number of incarcerated individuals") +
  scale_fill_manual(values = c("red", "blue"), name = "Subpopulations",
                    guide = guide_legend(reverse=FALSE)) + ggtitle("Proportion of incarcerated PWID") 

+ theme(legend.position = "right",
  legend.text = element_text(size = 21), legend.title = element_text(size = 22), 
  plot.title = element_text(hjust = 0.5, size = 24), axis.title.x = element_text(size=22), 
  axis.text.x = element_text(size=21), axis.title.y = element_text(size=22), 
  axis.text.y = element_text(size=21))
#scale_x_continuous(breaks = xValues) +
  
#Seaparate plots for HCV infected
#Ever IDU
TotalEver <- data.frame("Value"=c(mean(CY1$everIDU),mean(CY2$everIDU),mean(CY3$everIDU),mean(CY4$everIDU),
                                  mean(CY5$everIDU),mean(CY6$everIDU),mean(CY7$everIDU),mean(CY8$everIDU),mean(CY9$everIDU)))
TotalEver$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalEver$Description <- c("number of incarcerated individuals with a history of IDU")

TotalEverMin <- data.frame("Value"=c(min(CY1$everIDU),min(CY2$everIDU),min(CY3$everIDU),min(CY4$everIDU),
                                  min(CY5$everIDU),min(CY6$everIDU),min(CY7$everIDU),min(CY8$everIDU),min(CY9$everIDU)))
TotalEverMin$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalEverMin$Description <- c("number of incarcerated individuals with a history of IDU")

TotalEverMax <- data.frame("Value"=c(max(CY1$everIDU),max(CY2$everIDU),max(CY3$everIDU),max(CY4$everIDU),
                                     max(CY5$everIDU),max(CY6$everIDU),max(CY7$everIDU),max(CY8$everIDU),max(CY9$everIDU)))
TotalEverMax$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalEverMax$Description <- c("number of incarcerated individuals with a history of IDU")

TotalEverProp<- data.frame("Value"=c(TotalEver$Value[1]/mean(CY1$TotalPrisonPop),TotalEver$Value[2]/mean(CY2$TotalPrisonPop),TotalEver$Value[3]/mean(CY3$TotalPrisonPop),TotalEver$Value[4]/mean(CY4$TotalPrisonPop),
                                        TotalEver$Value[5]/mean(CY5$TotalPrisonPop),TotalEver$Value[6]/mean(CY6$TotalPrisonPop),TotalEver$Value[7]/mean(CY7$TotalPrisonPop),TotalEver$Value[8]/mean(CY8$TotalPrisonPop),TotalEver$Value[9]/mean(CY9$TotalPrisonPop)))
TotalEverProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
#TotalEverProp$Description <- c("proportion of incarcerated individuals with a history of IDU")

TotalEverProp<- data.frame("Value"=c(TotalEver$Value[1]/mean(CY1$TotalPrisonPop),TotalEver$Value[2]/mean(CY2$TotalPrisonPop),TotalEver$Value[3]/mean(CY3$TotalPrisonPop),TotalEver$Value[4]/mean(CY4$TotalPrisonPop),
                                     TotalEver$Value[5]/mean(CY5$TotalPrisonPop),TotalEver$Value[6]/mean(CY6$TotalPrisonPop),TotalEver$Value[7]/mean(CY7$TotalPrisonPop),TotalEver$Value[8]/mean(CY8$TotalPrisonPop),TotalEver$Value[9]/mean(CY9$TotalPrisonPop)))
TotalEverProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")

ggplot(data = TotalEverProp, aes(x = Year, y = Value)) + geom_bar(stat = "identity") + 
  xlab("Year") + ylab("Proportion of incarcerated individuals") + ylim(0.0, 1.0) +
  scale_fill_manual(values = c("red"), name = "Subpopulations",
                    guide = guide_legend(reverse=FALSE)) + ggtitle("Proportion of incarcerated individuals with a history of IDU") 

TotalActive <- data.frame("Value"=TotalEver$Value-(TotalOpd$Value+TotalNonOpd$Value))
TotalActive$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalActive$Description <- c("number of incarcerated individuals with a history of IDU")

TotalActiveMin <- data.frame("Value"=TotalEverMin$Value-(TotalOpd$Value+TotalNonOpd$Value))
TotalActiveMin$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalActiveMin$Description <- c("number of incarcerated individuals with a history of IDU")

TotalActiveMax <- data.frame("Value"=TotalEverMax$Value-(TotalOpd$Value+TotalNonOpd$Value))
TotalActiveMax$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalActiveMax$Description <- c("number of incarcerated individuals with a history of IDU")

TotalAProp<- data.frame("Value"=c(TotalActive$Value[1]/mean(CY1$TotalPrisonPop),TotalActive$Value[2]/mean(CY2$TotalPrisonPop),TotalActive$Value[3]/mean(CY3$TotalPrisonPop),TotalActive$Value[4]/mean(CY4$TotalPrisonPop),
                                     TotalActive$Value[5]/mean(CY5$TotalPrisonPop),TotalActive$Value[6]/mean(CY6$TotalPrisonPop),TotalActive$Value[7]/mean(CY7$TotalPrisonPop),TotalActive$Value[8]/mean(CY8$TotalPrisonPop),TotalActive$Value[9]/mean(CY9$TotalPrisonPop)))
TotalAProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalAProp$Description <- c("proportion of non-active pwid")

TotalAMinProp<- data.frame("Value"=c(TotalActiveMin$Value[1]/mean(CY1$TotalPrisonPop),TotalActiveMin$Value[2]/mean(CY2$TotalPrisonPop),TotalActiveMin$Value[3]/mean(CY3$TotalPrisonPop),TotalActiveMin$Value[4]/mean(CY4$TotalPrisonPop),
                                     TotalActiveMin$Value[5]/mean(CY5$TotalPrisonPop),TotalActiveMin$Value[6]/mean(CY6$TotalPrisonPop),TotalActiveMin$Value[7]/mean(CY7$TotalPrisonPop),TotalActiveMin$Value[8]/mean(CY8$TotalPrisonPop),TotalActiveMin$Value[9]/mean(CY9$TotalPrisonPop)))
TotalAMinProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalAMinProp$Description <- c("proportion of non-active pwid")

TotalAMaxProp<- data.frame("Value"=c(TotalActiveMax$Value[1]/mean(CY1$TotalPrisonPop),TotalActiveMax$Value[2]/mean(CY2$TotalPrisonPop),TotalActiveMax$Value[3]/mean(CY3$TotalPrisonPop),TotalActiveMax$Value[4]/mean(CY4$TotalPrisonPop),
                                     TotalActiveMax$Value[5]/mean(CY5$TotalPrisonPop),TotalActiveMax$Value[6]/mean(CY6$TotalPrisonPop),TotalActiveMax$Value[7]/mean(CY7$TotalPrisonPop),TotalActiveMax$Value[8]/mean(CY8$TotalPrisonPop),TotalActiveMax$Value[9]/mean(CY9$TotalPrisonPop)))
TotalAMaxProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
TotalAMaxProp$Description <- c("proportion of non-active pwid")

TotalSubpops <- rbind(TotalNonOpdProp, TotalOpdProp, TotalAProp)

barPlotAll <- ggplot(data = TotalSubpops, aes(x = Year, y = Value, 
                                              fill = Description)) + geom_bar(stat = "identity") + xlab("Year") + ylab("Proportion of incarcerated individuals") +
  scale_fill_manual(values = c("steelblue", "steelblue2", "steelblue4"), name = "Subpopulations", guide = guide_legend(reverse=FALSE)) + ggtitle("Proportion of incarcerated PWID with injecting history")
