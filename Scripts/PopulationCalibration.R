library(ggplot2)


#Load 50 files
Y1 <- NULL
Y2 <- NULL
Y3 <- NULL
Y4 <- NULL
Y5 <- NULL
Y6 <- NULL
Y7 <- NULL
Y8 <- NULL
Y9 <- NULL
Y10 <- NULL
Y11 <- NULL
for (var in 1:10)
{
#fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
#fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/DAA scenario/results/outOSTDAA", var, ".xls", sep="")
tempFile <- read.csv(fileName, sep="\t",header=TRUE)

#colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "totalOST", "totalDAA", "totalClrDAA", "reinfected")

Y1 <- rbind(Y1, tempFile[1:365,])
Y2 <- rbind(Y2, tempFile[366:730,])
Y3 <- rbind(Y3, tempFile[731:1095,])
Y4 <- rbind(Y4, tempFile[1096:1460,])
Y5 <- rbind(Y5, tempFile[1461:1825,])
Y6 <- rbind(Y6, tempFile[1826:2190,])
Y7 <- rbind(Y7, tempFile[2191:2555,])
Y8 <- rbind(Y8, tempFile[2556:2920,])
Y9 <- rbind(Y9, tempFile[2921:3285,])
Y10 <- rbind(Y10, tempFile[3286:3650,]) #YRS
Y11 <- rbind(Y11, tempFile[3651:4015,]) #YRS
}

#Create Total Columns for P1 P2 P3
Y1$PminTotal <- Y1$Pmin0+Y1$Pmin1+Y1$Pmin2+Y1$Pmin3+Y1$Pmin4+Y1$Pmin5+Y1$Pmin6+Y1$Pmin7+Y1$Pmin8+Y1$Pmin9+Y1$Pmin10+Y1$Pmin11
Y2$PminTotal <- Y2$Pmin0+Y2$Pmin1+Y2$Pmin2+Y2$Pmin3+Y2$Pmin4+Y2$Pmin5+Y2$Pmin6+Y2$Pmin7+Y2$Pmin8+Y2$Pmin9+Y2$Pmin10+Y2$Pmin11
Y3$PminTotal <- Y3$Pmin0+Y3$Pmin1+Y3$Pmin2+Y3$Pmin3+Y3$Pmin4+Y3$Pmin5+Y3$Pmin6+Y3$Pmin7+Y3$Pmin8+Y3$Pmin9+Y3$Pmin10+Y3$Pmin11
Y4$PminTotal <- Y4$Pmin0+Y4$Pmin1+Y4$Pmin2+Y4$Pmin3+Y4$Pmin4+Y4$Pmin5+Y4$Pmin6+Y4$Pmin7+Y4$Pmin8+Y4$Pmin9+Y4$Pmin10+Y4$Pmin11
Y5$PminTotal <- Y5$Pmin0+Y5$Pmin1+Y5$Pmin2+Y5$Pmin3+Y5$Pmin4+Y5$Pmin5+Y5$Pmin6+Y5$Pmin7+Y5$Pmin8+Y5$Pmin9+Y5$Pmin10+Y5$Pmin11
Y6$PminTotal <- Y6$Pmin0+Y6$Pmin1+Y6$Pmin2+Y6$Pmin3+Y6$Pmin4+Y6$Pmin5+Y6$Pmin6+Y6$Pmin7+Y6$Pmin8+Y6$Pmin9+Y6$Pmin10+Y6$Pmin11
Y7$PminTotal <- Y7$Pmin0+Y7$Pmin1+Y7$Pmin2+Y7$Pmin3+Y7$Pmin4+Y7$Pmin5+Y7$Pmin6+Y7$Pmin7+Y7$Pmin8+Y7$Pmin9+Y7$Pmin10+Y7$Pmin11
Y8$PminTotal <- Y8$Pmin0+Y8$Pmin1+Y8$Pmin2+Y8$Pmin3+Y8$Pmin4+Y8$Pmin5+Y8$Pmin6+Y8$Pmin7+Y8$Pmin8+Y8$Pmin9+Y8$Pmin10+Y8$Pmin11
Y9$PminTotal <- Y9$Pmin0+Y9$Pmin1+Y9$Pmin2+Y9$Pmin3+Y9$Pmin4+Y9$Pmin5+Y9$Pmin6+Y9$Pmin7+Y9$Pmin8+Y9$Pmin9+Y9$Pmin10+Y9$Pmin11
Y10$PminTotal <- Y10$Pmin0+Y10$Pmin1+Y10$Pmin2+Y10$Pmin3+Y10$Pmin4+Y10$Pmin5+Y10$Pmin6+Y10$Pmin7+Y10$Pmin8+Y10$Pmin9+Y10$Pmin10+Y10$Pmin11
Y11$PminTotal <- Y11$Pmin0+Y11$Pmin1+Y11$Pmin2+Y11$Pmin3+Y11$Pmin4+Y11$Pmin5+Y11$Pmin6+Y11$Pmin7+Y11$Pmin8+Y11$Pmin9+Y11$Pmin10+Y11$Pmin11

Y1$PmedTotal <- Y1$Pmed0+Y1$Pmed1+Y1$Pmed2+Y1$Pmed3+Y1$Pmed4+Y1$Pmed5+Y1$Pmed6+Y1$Pmed7+Y1$Pmed8+Y1$Pmed9+Y1$Pmed10+Y1$Pmed11
Y2$PmedTotal <- Y2$Pmed0+Y2$Pmed1+Y2$Pmed2+Y2$Pmed3+Y2$Pmed4+Y2$Pmed5+Y2$Pmed6+Y2$Pmed7+Y2$Pmed8+Y2$Pmed9+Y2$Pmed10+Y2$Pmed11
Y3$PmedTotal <- Y3$Pmed0+Y3$Pmed1+Y3$Pmed2+Y3$Pmed3+Y3$Pmed4+Y3$Pmed5+Y3$Pmed6+Y3$Pmed7+Y3$Pmed8+Y3$Pmed9+Y3$Pmed10+Y3$Pmed11
Y4$PmedTotal <- Y4$Pmed0+Y4$Pmed1+Y4$Pmed2+Y4$Pmed3+Y4$Pmed4+Y4$Pmed5+Y4$Pmed6+Y4$Pmed7+Y4$Pmed8+Y4$Pmed9+Y4$Pmed10+Y4$Pmed11
Y5$PmedTotal <- Y5$Pmed0+Y5$Pmed1+Y5$Pmed2+Y5$Pmed3+Y5$Pmed4+Y5$Pmed5+Y5$Pmed6+Y5$Pmed7+Y5$Pmed8+Y5$Pmed9+Y5$Pmed10+Y5$Pmed11
Y6$PmedTotal <- Y6$Pmed0+Y6$Pmed1+Y6$Pmed2+Y6$Pmed3+Y6$Pmed4+Y6$Pmed5+Y6$Pmed6+Y6$Pmed7+Y6$Pmed8+Y6$Pmed9+Y6$Pmed10+Y6$Pmed11
Y7$PmedTotal <- Y7$Pmed0+Y7$Pmed1+Y7$Pmed2+Y7$Pmed3+Y7$Pmed4+Y7$Pmed5+Y7$Pmed6+Y7$Pmed7+Y7$Pmed8+Y7$Pmed9+Y7$Pmed10+Y7$Pmed11
Y8$PmedTotal <- Y8$Pmed0+Y8$Pmed1+Y8$Pmed2+Y8$Pmed3+Y8$Pmed4+Y8$Pmed5+Y8$Pmed6+Y8$Pmed7+Y8$Pmed8+Y8$Pmed9+Y8$Pmed10+Y8$Pmed11
Y9$PmedTotal <- Y9$Pmed0+Y9$Pmed1+Y9$Pmed2+Y9$Pmed3+Y9$Pmed4+Y9$Pmed5+Y9$Pmed6+Y9$Pmed7+Y9$Pmed8+Y9$Pmed9+Y9$Pmed10+Y9$Pmed11
Y10$PmedTotal <- Y10$Pmed0+Y10$Pmed1+Y10$Pmed2+Y10$Pmed3+Y10$Pmed4+Y10$Pmed5+Y10$Pmed6+Y10$Pmed7+Y10$Pmed8+Y10$Pmed9+Y10$Pmed10+Y10$Pmed11
Y11$PmedTotal <- Y11$Pmed0+Y11$Pmed1+Y11$Pmed2+Y11$Pmed3+Y11$Pmed4+Y11$Pmed5+Y11$Pmed6+Y11$Pmed7+Y11$Pmed8+Y11$Pmed9+Y11$Pmed10+Y11$Pmed11

Y1$PmaxTotal <- Y1$Pmax0+Y1$Pmax1+Y1$Pmax2+Y1$Pmax3+Y1$Pmax4+Y1$Pmax5+Y1$Pmax6+Y1$Pmax7+Y1$Pmax8+Y1$Pmax9+Y1$Pmax10+Y1$Pmax11
Y2$PmaxTotal <- Y2$Pmax0+Y2$Pmax1+Y2$Pmax2+Y2$Pmax3+Y2$Pmax4+Y2$Pmax5+Y2$Pmax6+Y2$Pmax7+Y2$Pmax8+Y2$Pmax9+Y2$Pmax10+Y2$Pmax11
Y3$PmaxTotal <- Y3$Pmax0+Y3$Pmax1+Y3$Pmax2+Y3$Pmax3+Y3$Pmax4+Y3$Pmax5+Y3$Pmax6+Y3$Pmax7+Y3$Pmax8+Y3$Pmax9+Y3$Pmax10+Y3$Pmax11
Y4$PmaxTotal <- Y4$Pmax0+Y4$Pmax1+Y4$Pmax2+Y4$Pmax3+Y4$Pmax4+Y4$Pmax5+Y4$Pmax6+Y4$Pmax7+Y4$Pmax8+Y4$Pmax9+Y4$Pmax10+Y4$Pmax11
Y5$PmaxTotal <- Y5$Pmax0+Y5$Pmax1+Y5$Pmax2+Y5$Pmax3+Y5$Pmax4+Y5$Pmax5+Y5$Pmax6+Y5$Pmax7+Y5$Pmax8+Y5$Pmax9+Y5$Pmax10+Y5$Pmax11
Y6$PmaxTotal <- Y6$Pmax0+Y6$Pmax1+Y6$Pmax2+Y6$Pmax3+Y6$Pmax4+Y6$Pmax5+Y6$Pmax6+Y6$Pmax7+Y6$Pmax8+Y6$Pmax9+Y6$Pmax10+Y6$Pmax11
Y7$PmaxTotal <- Y7$Pmax0+Y7$Pmax1+Y7$Pmax2+Y7$Pmax3+Y7$Pmax4+Y7$Pmax5+Y7$Pmax6+Y7$Pmax7+Y7$Pmax8+Y7$Pmax9+Y7$Pmax10+Y7$Pmax11
Y8$PmaxTotal <- Y8$Pmax0+Y8$Pmax1+Y8$Pmax2+Y8$Pmax3+Y8$Pmax4+Y8$Pmax5+Y8$Pmax6+Y8$Pmax7+Y8$Pmax8+Y8$Pmax9+Y8$Pmax10+Y8$Pmax11
Y9$PmaxTotal <- Y9$Pmax0+Y9$Pmax1+Y9$Pmax2+Y9$Pmax3+Y9$Pmax4+Y9$Pmax5+Y9$Pmax6+Y9$Pmax7+Y9$Pmax8+Y9$Pmax9+Y9$Pmax10+Y9$Pmax11
Y10$PmaxTotal <- Y10$Pmax0+Y10$Pmax1+Y10$Pmax2+Y10$Pmax3+Y10$Pmax4+Y10$Pmax5+Y10$Pmax6+Y10$Pmax7+Y10$Pmax8+Y10$Pmax9+Y10$Pmax10+Y10$Pmax11
Y11$PmaxTotal <- Y11$Pmax0+Y11$Pmax1+Y11$Pmax2+Y11$Pmax3+Y11$Pmax4+Y11$Pmax5+Y11$Pmax6+Y11$Pmax7+Y11$Pmax8+Y11$Pmax9+Y11$Pmax10+Y11$Pmax11

#Summary
#Min
summary(Y1$PminTotal) #Y1
summary(Y2$PminTotal) #Y1
summary(Y3$PminTotal) #Y1
summary(Y4$PminTotal) #Y1
summary(Y5$PminTotal) #Y1
summary(Y6$PminTotal) #Y1
summary(Y7$PminTotal) #Y1
summary(Y8$PminTotal) #Y1
summary(Y9$PminTotal) #Y1
summary(Y10$PminTotal) #Y1
summary(Y11$PminTotal) #Y1

#Med
summary(Y1$PmedTotal) #Y1
summary(Y2$PmedTotal) #Y1
summary(Y3$PmedTotal) #Y1
summary(Y4$PmedTotal) #Y1
summary(Y5$PmedTotal) #Y1
summary(Y6$PmedTotal) #Y1
summary(Y7$PmedTotal) #Y1
summary(Y8$PmedTotal) #Y1
summary(Y9$PmedTotal) #Y1
summary(Y10$PmedTotal) #Y1
summary(Y11$PmedTotal) #Y1

#Max
summary(Y1$PmaxTotal) #Y1
summary(Y2$PmaxTotal) #Y1
summary(Y3$PmaxTotal) #Y1
summary(Y4$PmaxTotal) #Y1
summary(Y5$PmaxTotal) #Y1
summary(Y6$PmaxTotal) #Y1
summary(Y7$PmaxTotal) #Y1
summary(Y8$PmaxTotal) #Y1
summary(Y9$PmaxTotal) #Y1
summary(Y10$PmaxTotal) #Y1
summary(Y11$PmaxTotal) #Y1

#Plots
#Population
# Define 2 vectors
DCSMin <- data.frame("Population"=c(3320, 3481, 3286, 3347, 3362, 3312, 3221, 3443, 3627, 3827, 4294))
DCSMin$floor <- 0
DCSMin$ceiling <- 0 
DCSMin$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016") 
DCSMin$Security <- c("DCS mininimum security")

Min <- data.frame("Population"=c(summary(Y1$PminTotal)["Mean"], summary(Y2$PminTotal)["Mean"], summary(Y3$PminTotal)["Mean"], summary(Y4$PminTotal)["Mean"], summary(Y5$PminTotal)["Mean"], summary(Y6$PminTotal)["Mean"], summary(Y7$PminTotal)["Mean"], summary(Y8$PminTotal)["Mean"], summary(Y9$PminTotal)["Mean"], summary(Y10$PminTotal)["Mean"], summary(Y11$PminTotal)["Mean"]))
Min$floor <- c(summary(Y1$PminTotal)["Mean"]-summary(Y1$PminTotal)["Min."], summary(Y2$PminTotal)["Mean"]-summary(Y2$PminTotal)["Min."], summary(Y3$PminTotal)["Mean"]-summary(Y3$PminTotal)["Min."], summary(Y4$PminTotal)["Mean"]-summary(Y4$PminTotal)["Min."], summary(Y5$PminTotal)["Mean"]-summary(Y5$PminTotal)["Min."], summary(Y6$PminTotal)["Mean"]-summary(Y6$PminTotal)["Min."], summary(Y7$PminTotal)["Mean"]-summary(Y7$PminTotal)["Min."], summary(Y8$PminTotal)["Mean"]-summary(Y8$PminTotal)["Min."], summary(Y9$PminTotal)["Mean"]-summary(Y9$PminTotal)["Min."], summary(Y10$PminTotal)["Mean"]-summary(Y10$PminTotal)["Min."], summary(Y11$PminTotal)["Mean"]-summary(Y11$PminTotal)["Min."])
Min$ceiling <- c(summary(Y1$PminTotal)["Max."]-summary(Y1$PminTotal)["Mean"], summary(Y2$PminTotal)["Max."]-summary(Y2$PminTotal)["Mean"], summary(Y3$PminTotal)["Max."]-summary(Y3$PminTotal)["Mean"], summary(Y4$PminTotal)["Max."]-summary(Y4$PminTotal)["Mean"], summary(Y5$PminTotal)["Max."]-summary(Y5$PminTotal)["Mean"], summary(Y6$PminTotal)["Max."]-summary(Y6$PminTotal)["Mean"], summary(Y7$PminTotal)["Max."]-summary(Y7$PminTotal)["Mean"], summary(Y8$PminTotal)["Max."]-summary(Y8$PminTotal)["Mean"], summary(Y9$PminTotal)["Max."]-summary(Y9$PminTotal)["Mean"], summary(Y10$PminTotal)["Max."]-summary(Y10$PminTotal)["Mean"], summary(Y11$PminTotal)["Max."]-summary(Y11$PminTotal)["Mean"])
Min$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016") 
Min$Security <- c("Sim minimum security")

DCSMed <- data.frame("Population"=c(2200, 2354, 2410, 2558, 2665, 2282, 1983, 1951, 2043, 1867, 1927))
DCSMed$floor <- 0
DCSMed$ceiling <- 0 
DCSMed$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
DCSMed$Security <- c("DCS medium security")

Med <- data.frame("Population"=c(summary(Y1$PmedTotal)["Mean"], summary(Y2$PmedTotal)["Mean"], summary(Y3$PmedTotal)["Mean"], summary(Y4$PmedTotal)["Mean"], summary(Y5$PmedTotal)["Mean"], summary(Y6$PmedTotal)["Mean"], summary(Y7$PmedTotal)["Mean"], summary(Y8$PmedTotal)["Mean"], summary(Y9$PmedTotal)["Mean"], summary(Y10$PmedTotal)["Mean"], summary(Y11$PmedTotal)["Mean"]))
Med$floor <- c(summary(Y1$PminTotal)["Mean"]-summary(Y1$PminTotal)["Min."], summary(Y2$PmedTotal)["Mean"]-summary(Y2$PmedTotal)["Min."], summary(Y3$PmedTotal)["Mean"]-summary(Y3$PmedTotal)["Min."], summary(Y4$PmedTotal)["Mean"]-summary(Y4$PmedTotal)["Min."], summary(Y5$PmedTotal)["Mean"]-summary(Y5$PmedTotal)["Min."], summary(Y6$PmedTotal)["Mean"]-summary(Y6$PmedTotal)["Min."], summary(Y7$PmedTotal)["Mean"]-summary(Y7$PmedTotal)["Min."], summary(Y8$PmedTotal)["Mean"]-summary(Y8$PmedTotal)["Min."], summary(Y9$PmedTotal)["Mean"]-summary(Y9$PmedTotal)["Min."], summary(Y10$PmedTotal)["Mean"]-summary(Y10$PmedTotal)["Min."], summary(Y11$PmedTotal)["Mean"]-summary(Y11$PmedTotal)["Min."])
Med$ceiling <- c(summary(Y1$PminTotal)["Max."]-summary(Y1$PminTotal)["Mean"], summary(Y2$PmedTotal)["Max."]-summary(Y2$PmedTotal)["Mean"], summary(Y3$PmedTotal)["Max."]-summary(Y3$PmedTotal)["Mean"], summary(Y4$PmedTotal)["Max."]-summary(Y4$PmedTotal)["Mean"], summary(Y5$PmedTotal)["Max."]-summary(Y5$PmedTotal)["Mean"], summary(Y6$PmedTotal)["Max."]-summary(Y6$PmedTotal)["Mean"], summary(Y7$PmedTotal)["Max."]-summary(Y7$PmedTotal)["Mean"], summary(Y8$PmedTotal)["Max."]-summary(Y8$PmedTotal)["Mean"], summary(Y9$PmedTotal)["Max."]-summary(Y9$PmedTotal)["Mean"], summary(Y10$PmedTotal)["Max."]-summary(Y10$PmedTotal)["Mean"], summary(Y11$PmedTotal)["Max."]-summary(Y11$PmedTotal)["Mean"])
Med$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
Med$Security <- c("Sim medium security")

DCSMax <- data.frame("Population"=c(2880, 2974, 3313, 3627, 3480, 3634, 3627, 3793, 4179, 5132, 5322))
DCSMax$floor <- 0
DCSMax$ceiling <- 0 
DCSMax$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
DCSMax$Security <- c("DCS maximum security")

Max <- data.frame("Population"=c(summary(Y1$PmaxTotal)["Mean"], summary(Y2$PmaxTotal)["Mean"], summary(Y3$PmaxTotal)["Mean"], summary(Y4$PmaxTotal)["Mean"], summary(Y5$PmaxTotal)["Mean"], summary(Y6$PmaxTotal)["Mean"], summary(Y7$PmaxTotal)["Mean"], summary(Y8$PmaxTotal)["Mean"], summary(Y9$PmaxTotal)["Mean"], summary(Y10$PmaxTotal)["Mean"], summary(Y11$PmaxTotal)["Mean"]))
Max$floor <- c(summary(Y1$PmaxTotal)["Mean"]-summary(Y1$PmaxTotal)["Min."], summary(Y2$PmaxTotal)["Mean"]-summary(Y2$PmaxTotal)["Min."], summary(Y3$PmaxTotal)["Mean"]-summary(Y3$PmaxTotal)["Min."], summary(Y4$PmaxTotal)["Mean"]-summary(Y4$PmaxTotal)["Min."], summary(Y5$PmaxTotal)["Mean"]-summary(Y5$PmaxTotal)["Min."], summary(Y6$PmaxTotal)["Mean"]-summary(Y6$PmaxTotal)["Min."], summary(Y7$PmaxTotal)["Mean"]-summary(Y7$PmaxTotal)["Min."], summary(Y8$PmaxTotal)["Mean"]-summary(Y8$PmaxTotal)["Min."], summary(Y9$PmaxTotal)["Mean"]-summary(Y9$PmaxTotal)["Min."], summary(Y10$PmaxTotal)["Mean"]-summary(Y10$PmaxTotal)["Min."], summary(Y11$PmaxTotal)["Mean"]-summary(Y11$PmaxTotal)["Min."])
Max$ceiling <- c(summary(Y1$PmaxTotal)["Max."]-summary(Y1$PmaxTotal)["Mean"], summary(Y2$PmaxTotal)["Max."]-summary(Y2$PmaxTotal)["Mean"], summary(Y3$PmaxTotal)["Max."]-summary(Y3$PmaxTotal)["Mean"], summary(Y4$PmaxTotal)["Max."]-summary(Y4$PmaxTotal)["Mean"], summary(Y5$PmaxTotal)["Max."]-summary(Y5$PmaxTotal)["Mean"], summary(Y6$PmaxTotal)["Max."]-summary(Y6$PmaxTotal)["Mean"], summary(Y7$PmaxTotal)["Max."]-summary(Y7$PmaxTotal)["Mean"], summary(Y8$PmaxTotal)["Max."]-summary(Y8$PmaxTotal)["Mean"], summary(Y9$PmaxTotal)["Max."]-summary(Y9$PmaxTotal)["Mean"], summary(Y10$PmaxTotal)["Max."]-summary(Y10$PmaxTotal)["Mean"], summary(Y11$PmaxTotal)["Max."]-summary(Y11$PmaxTotal)["Mean"])
Max$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
Max$Security <- c("Sim maximum security")

pop <- rbind(DCSMin, Min)
pop <- rbind(pop, DCSMed)
pop <- rbind(pop, Med)
pop <- rbind(pop, DCSMax)
pop <- rbind(pop, Max)

#ggplot(data=pop, aes(x=Year, y=Population, group=Security, col=Security, linetype=Security)) + geom_errorbar(aes(ymin=Population-floor, ymax=Population+ceiling), colour="black", width=.1) + geom_line(aes(linetype=Security, color=Security)) + geom_point(aes(color=Security)) + scale_linetype_manual(values=c("solid","solid","solid","twodash","dotted", "twodash","dotted","twodash", "dotted")) + scale_color_manual(values=c("#660000", "#006633", "#003366", "#993333", "#C0392B", "#009933", "#239B56", "#3399CC", "#2874A6")) + ylim(0, 5000) + ggtitle("NSW prison population") + theme(legend.position="right")

ggplot(data=pop, aes(x=Year, y=Population, group=Security, col=Security, linetype=Security)) + geom_errorbar(aes(ymin=Population-floor, ymax=Population+ceiling), colour="black", width=.1) + geom_line(aes(linetype=Security, color=Security)) + geom_point(aes(color=Security)) + scale_linetype_manual(values=c("solid","solid","solid","twodash","dotted", "twodash","dotted","twodash", "dotted")) + scale_color_manual(values=c("#660000", "#006633", "#003366", "#C0392B", "#239B56", "#3399CC", "#2874A6")) + ylim(0, 5000) + ggtitle("NSW prison population") + theme(legend.position="right")

totalPop <- Min
totalPop$Population <- Min$Population + Med$Population + Max$Population
totalPop$Security <- "Simulated prison population"
totalPopDCS <- DCSMin
totalPopDCS$Population <- DCSMin$Population + DCSMed$Population + DCSMax$Population
totalPopDCS$Security <- "DCS"
pop2 <- rbind(totalPop, totalPopDCS)
ggplot(data=pop2, aes(x=Year, y=Population, group=Security, col=Security, linetype=Security)) + geom_errorbar(aes(ymin=Population-floor, ymax=Population+ceiling), colour="black", width=.1) + geom_line(aes(linetype=Security, color=Security)) + geom_point(aes(color=Security)) + scale_linetype_manual(values=c("solid","solid","solid","twodash","dotted", "twodash","dotted","twodash", "dotted")) + scale_color_manual(values=c("#660000", "#006633", "#003366", "#C0392B", "#239B56", "#3399CC", "#2874A6")) + ylim(5000, 10000) + ggtitle("NSW prison population") + theme(legend.position="right")


#Incidence and Prevalence
#Create total IDU columns
Y1$TotalIDU <- Y1$Pmin0+Y1$Pmin1+Y1$Pmin2+Y1$Pmin3+Y1$Pmin4+Y1$Pmin5+Y1$Pmed0+Y1$Pmed1+Y1$Pmed2+Y1$Pmed3+Y1$Pmed4+Y1$Pmed5+Y1$Pmax0+Y1$Pmax1+Y1$Pmax2+Y1$Pmax3+Y1$Pmax4+Y1$Pmax5
Y2$TotalIDU <- Y2$Pmin0+Y2$Pmin1+Y2$Pmin2+Y2$Pmin3+Y2$Pmin4+Y2$Pmin5+Y2$Pmed0+Y2$Pmed1+Y2$Pmed2+Y2$Pmed3+Y2$Pmed4+Y2$Pmed5+Y2$Pmax0+Y2$Pmax1+Y2$Pmax2+Y2$Pmax3+Y2$Pmax4+Y2$Pmax5
Y3$TotalIDU <- Y3$Pmin0+Y3$Pmin1+Y3$Pmin2+Y3$Pmin3+Y3$Pmin4+Y3$Pmin5+Y3$Pmed0+Y3$Pmed1+Y3$Pmed2+Y3$Pmed3+Y3$Pmed4+Y3$Pmed5+Y3$Pmax0+Y3$Pmax1+Y3$Pmax2+Y3$Pmax3+Y3$Pmax4+Y3$Pmax5
Y4$TotalIDU <- Y4$Pmin0+Y4$Pmin1+Y4$Pmin2+Y4$Pmin3+Y4$Pmin4+Y4$Pmin5+Y4$Pmed0+Y4$Pmed1+Y4$Pmed2+Y4$Pmed3+Y4$Pmed4+Y4$Pmed5+Y4$Pmax0+Y4$Pmax1+Y4$Pmax2+Y4$Pmax3+Y4$Pmax4+Y4$Pmax5
Y5$TotalIDU <- Y5$Pmin0+Y5$Pmin1+Y5$Pmin2+Y5$Pmin3+Y5$Pmin4+Y5$Pmin5+Y5$Pmed0+Y5$Pmed1+Y5$Pmed2+Y5$Pmed3+Y5$Pmed4+Y5$Pmed5+Y5$Pmax0+Y5$Pmax1+Y5$Pmax2+Y5$Pmax3+Y5$Pmax4+Y5$Pmax5
Y6$TotalIDU <- Y6$Pmin0+Y6$Pmin1+Y6$Pmin2+Y6$Pmin3+Y6$Pmin4+Y6$Pmin5+Y6$Pmed0+Y6$Pmed1+Y6$Pmed2+Y6$Pmed3+Y6$Pmed4+Y6$Pmed5+Y6$Pmax0+Y6$Pmax1+Y6$Pmax2+Y6$Pmax3+Y6$Pmax4+Y6$Pmax5
Y7$TotalIDU <- Y7$Pmin0+Y7$Pmin1+Y7$Pmin2+Y7$Pmin3+Y7$Pmin4+Y7$Pmin5+Y7$Pmed0+Y7$Pmed1+Y7$Pmed2+Y7$Pmed3+Y7$Pmed4+Y7$Pmed5+Y7$Pmax0+Y7$Pmax1+Y7$Pmax2+Y7$Pmax3+Y7$Pmax4+Y7$Pmax5
Y8$TotalIDU <- Y8$Pmin0+Y8$Pmin1+Y8$Pmin2+Y8$Pmin3+Y8$Pmin4+Y8$Pmin5+Y8$Pmed0+Y8$Pmed1+Y8$Pmed2+Y8$Pmed3+Y8$Pmed4+Y8$Pmed5+Y8$Pmax0+Y8$Pmax1+Y8$Pmax2+Y8$Pmax3+Y8$Pmax4+Y8$Pmax5
Y9$TotalIDU <- Y9$Pmin0+Y9$Pmin1+Y9$Pmin2+Y9$Pmin3+Y9$Pmin4+Y9$Pmin5+Y9$Pmed0+Y9$Pmed1+Y9$Pmed2+Y9$Pmed3+Y9$Pmed4+Y9$Pmed5+Y9$Pmax0+Y9$Pmax1+Y9$Pmax2+Y9$Pmax3+Y9$Pmax4+Y9$Pmax5
Y10$TotalIDU <- Y10$Pmin0+Y10$Pmin1+Y10$Pmin2+Y10$Pmin3+Y10$Pmin4+Y10$Pmin5+Y10$Pmed0+Y10$Pmed1+Y10$Pmed2+Y10$Pmed3+Y10$Pmed4+Y10$Pmed5+Y10$Pmax0+Y10$Pmax1+Y10$Pmax2+Y10$Pmax3+Y10$Pmax4+Y10$Pmax5

#Incidence
summary(Y1$NewCases) #Y1
summary(Y2$NewCases) #Y2
summary(Y3$NewCases) #Y3
summary(Y4$NewCases) #Y4
summary(Y5$NewCases) #Y5
summary(Y6$NewCases) #Y6
summary(Y7$NewCases) #Y7
summary(Y8$NewCases) #Y8
summary(Y9$NewCases) #Y9
summary(Y10$NewCases) #Y10

#Prevalence
summary(Y1$PrisonHCV) #Y1
summary(Y2$PrisonHCV) #Y1
summary(Y3$PrisonHCV) #Y1
summary(Y4$PrisonHCV) #Y1
summary(Y5$PrisonHCV) #Y1
summary(Y6$PrisonHCV) #Y1
summary(Y7$PrisonHCV) #Y1
summary(Y8$PrisonHCV) #Y1
summary(Y9$PrisonHCV) #Y1
summary(Y10$PrisonHCV) #Y1

#Y1
mean(Y1$NewCases)
mean(Y1$TotalPrisonPop)
mean(Y1$TotalIDU)
(mean(Y1$NewCases)/mean(Y1$TotalIDU))*100
(mean(Y1$PrisonHCV)/mean(Y1$TotalIDU))*100
#totalPop
(mean(Y1$NewCases)/mean(Y1$TotalPrisonPop))*100
(mean(Y1$PrisonHCV)/mean(Y1$TotalPrisonPop))*100

#TotalIDU incidence and prevalence
HCV <- data.frame("Incidence"=c(((mean(Y1$NewCases)/mean(Y1$TotalIDU))*100), ((mean(Y2$NewCases)/mean(Y2$TotalIDU))*100), ((mean(Y3$NewCases)/mean(Y3$TotalIDU))*100), ((mean(Y4$NewCases)/mean(Y4$TotalIDU))*100), ((mean(Y5$NewCases)/mean(Y5$TotalIDU))*100), ((mean(Y6$NewCases)/mean(Y6$TotalIDU))*100), ((mean(Y7$NewCases)/mean(Y7$TotalIDU))*100), ((mean(Y8$NewCases)/mean(Y8$TotalIDU))*100), ((mean(Y9$NewCases)/mean(Y9$TotalIDU))*100)))
HCV$IncidenceFloor <- c(((mean(Y1$NewCases)/mean(Y1$TotalIDU))*100)-((min(Y1$NewCases)/min(Y1$TotalIDU))*100), ((mean(Y2$NewCases)/mean(Y2$TotalIDU))*100)-((min(Y2$NewCases)/min(Y2$TotalIDU))*100), ((mean(Y3$NewCases)/mean(Y3$TotalIDU))*100)-((min(Y3$NewCases)/min(Y3$TotalIDU))*100), ((mean(Y4$NewCases)/mean(Y4$TotalIDU))*100)-((min(Y4$NewCases)/min(Y4$TotalIDU))*100), ((mean(Y5$NewCases)/mean(Y5$TotalIDU))*100)-((min(Y5$NewCases)/min(Y5$TotalIDU))*100), ((mean(Y6$NewCases)/mean(Y6$TotalIDU))*100)-((min(Y6$NewCases)/min(Y6$TotalIDU))*100), ((mean(Y7$NewCases)/mean(Y7$TotalIDU))*100)-((min(Y7$NewCases)/min(Y7$TotalIDU))*100), ((mean(Y8$NewCases)/mean(Y8$TotalIDU))*100)-((min(Y8$NewCases)/min(Y8$TotalIDU))*100), ((mean(Y9$NewCases)/mean(Y9$TotalIDU))*100)-((min(Y9$NewCases)/min(Y9$TotalIDU))*100))  
HCV$IncidenceCeiling <- c(((max(Y1$NewCases)/max(Y1$TotalIDU))*100)-((mean(Y1$NewCases)/mean(Y1$TotalIDU))*100), ((max(Y2$NewCases)/max(Y2$TotalIDU))*100)-((mean(Y2$NewCases)/mean(Y2$TotalIDU))*100), ((max(Y3$NewCases)/max(Y3$TotalIDU))*100)-((mean(Y3$NewCases)/mean(Y3$TotalIDU))*100), ((max(Y4$NewCases)/max(Y4$TotalIDU))*100)-((mean(Y4$NewCases)/mean(Y4$TotalIDU))*100), ((max(Y5$NewCases)/max(Y5$TotalIDU))*100)-((mean(Y5$NewCases)/mean(Y5$TotalIDU))*100), ((max(Y6$NewCases)/max(Y6$TotalIDU))*100)-((mean(Y6$NewCases)/mean(Y6$TotalIDU))*100), ((max(Y7$NewCases)/max(Y7$TotalIDU))*100)-((mean(Y7$NewCases)/mean(Y7$TotalIDU))*100), ((max(Y8$NewCases)/max(Y8$TotalIDU))*100)-((mean(Y8$NewCases)/mean(Y8$TotalIDU))*100), ((max(Y9$NewCases)/max(Y9$TotalIDU))*100)-((mean(Y9$NewCases)/mean(Y9$TotalIDU))*100))
HCV$Prevalence <- c(((mean(Y1$PrisonHCV)/mean(Y1$TotalIDU))*100), ((mean(Y2$PrisonHCV)/mean(Y2$TotalIDU))*100), ((mean(Y3$PrisonHCV)/mean(Y3$TotalIDU))*100), ((mean(Y4$PrisonHCV)/mean(Y4$TotalIDU))*100), ((mean(Y5$PrisonHCV)/mean(Y5$TotalIDU))*100), ((mean(Y6$PrisonHCV)/mean(Y6$TotalIDU))*100), ((mean(Y7$PrisonHCV)/mean(Y7$TotalIDU))*100), ((mean(Y8$PrisonHCV)/mean(Y8$TotalIDU))*100), ((mean(Y9$PrisonHCV)/mean(Y9$TotalIDU))*100))
HCV$PrevalenceFloor <- c(((mean(Y1$PrisonHCV)/mean(Y1$TotalIDU))*100)-((min(Y1$PrisonHCV)/min(Y1$TotalIDU))*100), ((mean(Y2$PrisonHCV)/mean(Y2$TotalIDU))*100)-((min(Y2$PrisonHCV)/min(Y2$TotalIDU))*100), ((mean(Y3$PrisonHCV)/mean(Y3$TotalIDU))*100)-((min(Y3$PrisonHCV)/min(Y3$TotalIDU))*100), ((mean(Y4$PrisonHCV)/mean(Y4$TotalIDU))*100)-((min(Y4$PrisonHCV)/min(Y4$TotalIDU))*100), ((mean(Y5$PrisonHCV)/mean(Y5$TotalIDU))*100)-((min(Y5$PrisonHCV)/min(Y5$TotalIDU))*100), ((mean(Y6$PrisonHCV)/mean(Y6$TotalIDU))*100)-((min(Y6$PrisonHCV)/min(Y6$TotalIDU))*100), ((mean(Y7$PrisonHCV)/mean(Y7$TotalIDU))*100)-((min(Y7$PrisonHCV)/min(Y7$TotalIDU))*100), ((mean(Y8$PrisonHCV)/mean(Y8$TotalIDU))*100)-((min(Y8$PrisonHCV)/min(Y8$TotalIDU))*100), ((mean(Y9$PrisonHCV)/mean(Y9$TotalIDU))*100)-((min(Y9$PrisonHCV)/min(Y9$TotalIDU))*100))
HCV$PrevalenceCeiling <- c(((mean(Y1$PrisonHCV)/mean(Y1$TotalIDU))*100)-((min(Y1$PrisonHCV)/min(Y1$TotalIDU))*100), ((mean(Y2$PrisonHCV)/mean(Y2$TotalIDU))*100)-((min(Y2$PrisonHCV)/min(Y2$TotalIDU))*100), ((mean(Y3$PrisonHCV)/mean(Y3$TotalIDU))*100)-((min(Y3$PrisonHCV)/min(Y3$TotalIDU))*100), ((mean(Y4$PrisonHCV)/mean(Y4$TotalIDU))*100)-((min(Y4$PrisonHCV)/min(Y4$TotalIDU))*100), ((mean(Y5$PrisonHCV)/mean(Y5$TotalIDU))*100)-((min(Y5$PrisonHCV)/min(Y5$TotalIDU))*100), ((mean(Y6$PrisonHCV)/mean(Y6$TotalIDU))*100)-((min(Y6$PrisonHCV)/min(Y6$TotalIDU))*100), ((mean(Y7$PrisonHCV)/mean(Y7$TotalIDU))*100)-((min(Y7$PrisonHCV)/min(Y7$TotalIDU))*100), ((mean(Y8$PrisonHCV)/mean(Y8$TotalIDU))*100)-((min(Y8$PrisonHCV)/min(Y8$TotalIDU))*100), ((mean(Y9$PrisonHCV)/mean(Y9$TotalIDU))*100)-((min(Y9$PrisonHCV)/min(Y9$TotalIDU))*100))
HCV$Year <- c("Y1", "Y2", "Y3", "Y4", "Y5", "Y6", "Y7", "Y8", "Y9")

#Incidence
ggplot(data=HCV, aes(x=Year, y=Incidence, group=1)) + geom_errorbar(aes(ymin=Incidence-IncidenceFloor, ymax=Incidence+IncidenceFloor), colour="black", width=.1) + geom_line() + geom_point() + ylim(0, 0.5) + ggtitle("HCV incidence in NSW prison") + theme(legend.position="right")

#Prevalence 
ggplot(data=HCV, aes(x=Year, y=Prevalence, group=1)) + geom_errorbar(aes(ymin=Prevalence-PrevalenceFloor, ymax=Prevalence+PrevalenceFloor), colour="black", width=.1) +  geom_line() + geom_point() + ylim(0, 10) + ggtitle("HCV Prevalence in NSW prison") + theme(legend.position="right")


