library(ggplot2)
library(gridExtra)
library(grid)
library(lattice)

#Load 50 files
pMin <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pMed <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pMax <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pTotal <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pPointTotal <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pReinfected <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pNewCases <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pNewCasesSum <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pTotalIDU <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pPointIDU <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pPrisonHCV<- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pCommunityHCV<- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pOpd <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pEverIDU <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pEverIDUSum <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pClrD <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pTotalDAA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pTotalOST <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pTotalHCVRNAe <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pTotalHCVAbe <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pHCVantibody <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pHCVchronic <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pTotalHCV <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pPointHCV <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pTotalNewEntry <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pTotalOpdNotOST <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pTotalReleasedHCVAb <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pTotalReleasedHCVRNA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]
pTotalReleased <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA)[numeric(0), ]

for (var in 1:1)
{
#fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
#fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/Testing/results/outIE9_", var, ".xls", sep="")
#fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/DAA scenario/results/New infection Function/outDOs_", var, ".xls", sep="")
#  fileName <- paste("/Users/NeilBretana/Desktop/Scenarios/Testing/results/outTFixedNewCasesCounter_", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)

#colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
#colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCVAb", "ReleasedHCVRNA", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "OpdNotOST", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "HCVeRNA", "HCVeAb", "NewEntry", "HCVab", "HCVRNA", "AveStay")
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCVAb", "ReleasedHCVRNA", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "OpdNotOST", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "OSTremaining", "HCVeRNA", "HCVeAb", "NewEntry", "HCVab", "HCVRNA", "AveStay")
  
Y1 <- tempFile[1:365,]
Y2 <- tempFile[366:730,]
Y3 <- tempFile[731:1095,]
Y4 <- tempFile[1096:1460,]
Y5 <- tempFile[1461:1825,]
Y6 <- tempFile[1826:2190,]
Y7 <- tempFile[2191:2555,]
Y8 <- tempFile[2556:2920,]
Y9 <- tempFile[2921:3285,]
Y10 <- tempFile[3286:3650,]
Y11 <- tempFile[3651:4015,]
Y12 <- tempFile[4016:4380,]

#Create Total Columns for P1 P2 P3
pMinTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pMinTmp[1,] <- 0
pMinTmp$y06[1] <- mean(Y1$Pmin0+Y1$Pmin1+Y1$Pmin2+Y1$Pmin3+Y1$Pmin4+Y1$Pmin5+Y1$Pmin6+Y1$Pmin7+Y1$Pmin8+Y1$Pmin9+Y1$Pmin10+Y1$Pmin11)
pMinTmp$y07[1] <- mean(Y2$Pmin0+Y2$Pmin1+Y2$Pmin2+Y2$Pmin3+Y2$Pmin4+Y2$Pmin5+Y2$Pmin6+Y2$Pmin7+Y2$Pmin8+Y2$Pmin9+Y2$Pmin10+Y2$Pmin11)
pMinTmp$y08[1] <- mean(Y3$Pmin0+Y3$Pmin1+Y3$Pmin2+Y3$Pmin3+Y3$Pmin4+Y3$Pmin5+Y3$Pmin6+Y3$Pmin7+Y3$Pmin8+Y3$Pmin9+Y3$Pmin10+Y3$Pmin11)
pMinTmp$y09[1] <- mean(Y4$Pmin0+Y4$Pmin1+Y4$Pmin2+Y4$Pmin3+Y4$Pmin4+Y4$Pmin5+Y4$Pmin6+Y4$Pmin7+Y4$Pmin8+Y4$Pmin9+Y4$Pmin10+Y4$Pmin11)
pMinTmp$y10[1] <- mean(Y5$Pmin0+Y5$Pmin1+Y5$Pmin2+Y5$Pmin3+Y5$Pmin4+Y5$Pmin5+Y5$Pmin6+Y5$Pmin7+Y5$Pmin8+Y5$Pmin9+Y5$Pmin10+Y5$Pmin11)
pMinTmp$y11[1] <- mean(Y6$Pmin0+Y6$Pmin1+Y6$Pmin2+Y6$Pmin3+Y6$Pmin4+Y6$Pmin5+Y6$Pmin6+Y6$Pmin7+Y6$Pmin8+Y6$Pmin9+Y6$Pmin10+Y6$Pmin11)
pMinTmp$y12[1] <- mean(Y7$Pmin0+Y7$Pmin1+Y7$Pmin2+Y7$Pmin3+Y7$Pmin4+Y7$Pmin5+Y7$Pmin6+Y7$Pmin7+Y7$Pmin8+Y7$Pmin9+Y7$Pmin10+Y7$Pmin11)
pMinTmp$y13[1] <- mean(Y8$Pmin0+Y8$Pmin1+Y8$Pmin2+Y8$Pmin3+Y8$Pmin4+Y8$Pmin5+Y8$Pmin6+Y8$Pmin7+Y8$Pmin8+Y8$Pmin9+Y8$Pmin10+Y8$Pmin11)
pMinTmp$y14[1] <- mean(Y9$Pmin0+Y9$Pmin1+Y9$Pmin2+Y9$Pmin3+Y9$Pmin4+Y9$Pmin5+Y9$Pmin6+Y9$Pmin7+Y9$Pmin8+Y9$Pmin9+Y9$Pmin10+Y9$Pmin11)
pMinTmp$y15[1] <- mean(Y10$Pmin0+Y10$Pmin1+Y10$Pmin2+Y10$Pmin3+Y10$Pmin4+Y10$Pmin5+Y10$Pmin6+Y10$Pmin7+Y10$Pmin8+Y10$Pmin9+Y10$Pmin10+Y10$Pmin11)
pMinTmp$y16[1] <- mean(Y11$Pmin0+Y11$Pmin1+Y11$Pmin2+Y11$Pmin3+Y11$Pmin4+Y11$Pmin5+Y11$Pmin6+Y11$Pmin7+Y11$Pmin8+Y11$Pmin9+Y11$Pmin10+Y11$Pmin11)
pMin <- rbind(pMin, pMinTmp)

pMedTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pMedTmp[1,] <- 0
pMedTmp$y06[1] <- mean(Y1$Pmed0+Y1$Pmed1+Y1$Pmed2+Y1$Pmed3+Y1$Pmed4+Y1$Pmed5+Y1$Pmed6+Y1$Pmed7+Y1$Pmed8+Y1$Pmed9+Y1$Pmed10+Y1$Pmed11)
pMedTmp$y07[1] <- mean(Y2$Pmed0+Y2$Pmed1+Y2$Pmed2+Y2$Pmed3+Y2$Pmed4+Y2$Pmed5+Y2$Pmed6+Y2$Pmed7+Y2$Pmed8+Y2$Pmed9+Y2$Pmed10+Y2$Pmed11)
pMedTmp$y08[1] <- mean(Y3$Pmed0+Y3$Pmed1+Y3$Pmed2+Y3$Pmed3+Y3$Pmed4+Y3$Pmed5+Y3$Pmed6+Y3$Pmed7+Y3$Pmed8+Y3$Pmed9+Y3$Pmed10+Y3$Pmed11)
pMedTmp$y09[1] <- mean(Y4$Pmed0+Y4$Pmed1+Y4$Pmed2+Y4$Pmed3+Y4$Pmed4+Y4$Pmed5+Y4$Pmed6+Y4$Pmed7+Y4$Pmed8+Y4$Pmed9+Y4$Pmed10+Y4$Pmed11)
pMedTmp$y10[1] <- mean(Y5$Pmed0+Y5$Pmed1+Y5$Pmed2+Y5$Pmed3+Y5$Pmed4+Y5$Pmed5+Y5$Pmed6+Y5$Pmed7+Y5$Pmed8+Y5$Pmed9+Y5$Pmed10+Y5$Pmed11)
pMedTmp$y11[1] <- mean(Y6$Pmed0+Y6$Pmed1+Y6$Pmed2+Y6$Pmed3+Y6$Pmed4+Y6$Pmed5+Y6$Pmed6+Y6$Pmed7+Y6$Pmed8+Y6$Pmed9+Y6$Pmed10+Y6$Pmed11)
pMedTmp$y12[1] <- mean(Y7$Pmed0+Y7$Pmed1+Y7$Pmed2+Y7$Pmed3+Y7$Pmed4+Y7$Pmed5+Y7$Pmed6+Y7$Pmed7+Y7$Pmed8+Y7$Pmed9+Y7$Pmed10+Y7$Pmed11)
pMedTmp$y13[1] <- mean(Y8$Pmed0+Y8$Pmed1+Y8$Pmed2+Y8$Pmed3+Y8$Pmed4+Y8$Pmed5+Y8$Pmed6+Y8$Pmed7+Y8$Pmed8+Y8$Pmed9+Y8$Pmed10+Y8$Pmed11)
pMedTmp$y14[1] <- mean(Y9$Pmed0+Y9$Pmed1+Y9$Pmed2+Y9$Pmed3+Y9$Pmed4+Y9$Pmed5+Y9$Pmed6+Y9$Pmed7+Y9$Pmed8+Y9$Pmed9+Y9$Pmed10+Y9$Pmed11)
pMedTmp$y15[1] <- mean(Y10$Pmed0+Y10$Pmed1+Y10$Pmed2+Y10$Pmed3+Y10$Pmed4+Y10$Pmed5+Y10$Pmed6+Y10$Pmed7+Y10$Pmed8+Y10$Pmed9+Y10$Pmed10+Y10$Pmed11)
pMedTmp$y16[1] <- mean(Y11$Pmed0+Y11$Pmed1+Y11$Pmed2+Y11$Pmed3+Y11$Pmed4+Y11$Pmed5+Y11$Pmed6+Y11$Pmed7+Y11$Pmed8+Y11$Pmed9+Y11$Pmed10+Y11$Pmed11)
pMed <- rbind(pMed, pMedTmp)

pMaxTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pMaxTmp[1,] <- 0
pMaxTmp$y06[1] <- mean(Y1$Pmax0+Y1$Pmax1+Y1$Pmax2+Y1$Pmax3+Y1$Pmax4+Y1$Pmax5+Y1$Pmax6+Y1$Pmax7+Y1$Pmax8+Y1$Pmax9+Y1$Pmax10+Y1$Pmax11)
pMaxTmp$y07[1] <- mean(Y2$Pmax0+Y2$Pmax1+Y2$Pmax2+Y2$Pmax3+Y2$Pmax4+Y2$Pmax5+Y2$Pmax6+Y2$Pmax7+Y2$Pmax8+Y2$Pmax9+Y2$Pmax10+Y2$Pmax11)
pMaxTmp$y08[1] <- mean(Y3$Pmax0+Y3$Pmax1+Y3$Pmax2+Y3$Pmax3+Y3$Pmax4+Y3$Pmax5+Y3$Pmax6+Y3$Pmax7+Y3$Pmax8+Y3$Pmax9+Y3$Pmax10+Y3$Pmax11)
pMaxTmp$y09[1] <- mean(Y4$Pmax0+Y4$Pmax1+Y4$Pmax2+Y4$Pmax3+Y4$Pmax4+Y4$Pmax5+Y4$Pmax6+Y4$Pmax7+Y4$Pmax8+Y4$Pmax9+Y4$Pmax10+Y4$Pmax11)
pMaxTmp$y10[1] <- mean(Y5$Pmax0+Y5$Pmax1+Y5$Pmax2+Y5$Pmax3+Y5$Pmax4+Y5$Pmax5+Y5$Pmax6+Y5$Pmax7+Y5$Pmax8+Y5$Pmax9+Y5$Pmax10+Y5$Pmax11)
pMaxTmp$y11[1] <- mean(Y6$Pmax0+Y6$Pmax1+Y6$Pmax2+Y6$Pmax3+Y6$Pmax4+Y6$Pmax5+Y6$Pmax6+Y6$Pmax7+Y6$Pmax8+Y6$Pmax9+Y6$Pmax10+Y6$Pmax11)
pMaxTmp$y12[1] <- mean(Y7$Pmax0+Y7$Pmax1+Y7$Pmax2+Y7$Pmax3+Y7$Pmax4+Y7$Pmax5+Y7$Pmax6+Y7$Pmax7+Y7$Pmax8+Y7$Pmax9+Y7$Pmax10+Y7$Pmax11)
pMaxTmp$y13[1] <- mean(Y8$Pmax0+Y8$Pmax1+Y8$Pmax2+Y8$Pmax3+Y8$Pmax4+Y8$Pmax5+Y8$Pmax6+Y8$Pmax7+Y8$Pmax8+Y8$Pmax9+Y8$Pmax10+Y8$Pmax11)
pMaxTmp$y14[1] <- mean(Y9$Pmax0+Y9$Pmax1+Y9$Pmax2+Y9$Pmax3+Y9$Pmax4+Y9$Pmax5+Y9$Pmax6+Y9$Pmax7+Y9$Pmax8+Y9$Pmax9+Y9$Pmax10+Y9$Pmax11)
pMaxTmp$y15[1] <- mean(Y10$Pmax0+Y10$Pmax1+Y10$Pmax2+Y10$Pmax3+Y10$Pmax4+Y10$Pmax5+Y10$Pmax6+Y10$Pmax7+Y10$Pmax8+Y10$Pmax9+Y10$Pmax10+Y10$Pmax11)
pMaxTmp$y16[1] <- mean(Y11$Pmax0+Y11$Pmax1+Y11$Pmax2+Y11$Pmax3+Y11$Pmax4+Y11$Pmax5+Y11$Pmax6+Y11$Pmax7+Y11$Pmax8+Y11$Pmax9+Y11$Pmax10+Y11$Pmax11)
pMax <- rbind(pMax, pMaxTmp)

pTotalTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pTotalTmp[1,] <- 0
pTotalTmp$y06[1] <- mean(Y1$TotalPrisonPop)
pTotalTmp$y07[1] <- mean(Y2$TotalPrisonPop)
pTotalTmp$y08[1] <- mean(Y3$TotalPrisonPop)
pTotalTmp$y09[1] <- mean(Y4$TotalPrisonPop)
pTotalTmp$y10[1] <- mean(Y5$TotalPrisonPop)
pTotalTmp$y11[1] <- mean(Y6$TotalPrisonPop)
pTotalTmp$y12[1] <- mean(Y7$TotalPrisonPop)
pTotalTmp$y13[1] <- mean(Y8$TotalPrisonPop)
pTotalTmp$y14[1] <- mean(Y9$TotalPrisonPop)
pTotalTmp$y15[1] <- mean(Y10$TotalPrisonPop)
pTotalTmp$y16[1] <- mean(Y11$TotalPrisonPop)
pTotal <- rbind(pTotal, pTotalTmp)

pPointTotalTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pPointTotalTmp[1,] <- 0
pPointTotalTmp$y06[1] <- Y1$TotalPrisonPop[365]
pPointTotalTmp$y07[1] <- Y2$TotalPrisonPop[365]
pPointTotalTmp$y08[1] <- Y3$TotalPrisonPop[365]
pPointTotalTmp$y09[1] <- Y4$TotalPrisonPop[365]
pPointTotalTmp$y10[1] <- Y5$TotalPrisonPop[365]
pPointTotalTmp$y11[1] <- Y6$TotalPrisonPop[365]
pPointTotalTmp$y12[1] <- Y7$TotalPrisonPop[365]
pPointTotalTmp$y13[1] <- Y8$TotalPrisonPop[365]
pPointTotalTmp$y14[1] <- Y9$TotalPrisonPop[365]
pPointTotalTmp$y15[1] <- Y10$TotalPrisonPop[365]
pPointTotalTmp$y16[1] <- Y11$TotalPrisonPop[365]
pPointTotal <- rbind(pPointTotal, pPointTotalTmp)

pReTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pReTmp[1,] <- 0
pReTmp$y06[1] <- mean(Y1$reinfected)
pReTmp$y07[1] <- mean(Y2$reinfected)
pReTmp$y08[1] <- mean(Y3$reinfected)
pReTmp$y09[1] <- mean(Y4$reinfected)
pReTmp$y10[1] <- mean(Y5$reinfected)
pReTmp$y11[1] <- mean(Y6$reinfected)
pReTmp$y12[1] <- mean(Y7$reinfected)
pReTmp$y13[1] <- mean(Y8$reinfected)
pReTmp$y14[1] <- mean(Y9$reinfected)
pReTmp$y15[1] <- mean(Y10$reinfected)
pReTmp$y16[1] <- mean(Y11$reinfected)
pReinfected <- rbind(pReinfected, pReTmp)

pNcTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pNcTmp[1,] <- 0
pNcTmp$y06[1] <- mean(Y1$NewCases)
pNcTmp$y07[1] <- mean(Y2$NewCases)
pNcTmp$y08[1] <- mean(Y3$NewCases)
pNcTmp$y09[1] <- mean(Y4$NewCases)
pNcTmp$y10[1] <- mean(Y5$NewCases)
pNcTmp$y11[1] <- mean(Y6$NewCases)
pNcTmp$y12[1] <- mean(Y7$NewCases)
pNcTmp$y13[1] <- mean(Y8$NewCases)
pNcTmp$y14[1] <- mean(Y9$NewCases)
pNcTmp$y15[1] <- mean(Y10$NewCases)
pNcTmp$y16[1] <- mean(Y11$NewCases)
pNewCases <- rbind(pNewCases, pNcTmp)

pNcSumTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pNcSumTmp[1,] <- 0
pNcSumTmp$y06[1] <- sum(Y1$NewCases)
pNcSumTmp$y07[1] <- sum(Y2$NewCases)
pNcSumTmp$y08[1] <- sum(Y3$NewCases)
pNcSumTmp$y09[1] <- sum(Y4$NewCases)
pNcSumTmp$y10[1] <- sum(Y5$NewCases)
pNcSumTmp$y11[1] <- sum(Y6$NewCases)
pNcSumTmp$y12[1] <- sum(Y7$NewCases)
pNcSumTmp$y13[1] <- sum(Y8$NewCases)
pNcSumTmp$y14[1] <- sum(Y9$NewCases)
pNcSumTmp$y15[1] <- sum(Y10$NewCases)
pNcSumTmp$y16[1] <- sum(Y11$NewCases)
pNewCasesSum <- rbind(pNewCasesSum, pNcSumTmp)

pIDUTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pIDUTmp[1,] <- 0
pIDUTmp$y06[1] <- mean(Y1$Pmin0+Y1$Pmin1+Y1$Pmin2+Y1$Pmin3+Y1$Pmin4+Y1$Pmin5+Y1$Pmed0+Y1$Pmed1+Y1$Pmed2+Y1$Pmed3+Y1$Pmed4+Y1$Pmed5+Y1$Pmax0+Y1$Pmax1+Y1$Pmax2+Y1$Pmax3+Y1$Pmax4+Y1$Pmax5)
pIDUTmp$y07[1] <- mean(Y2$Pmin0+Y2$Pmin1+Y2$Pmin2+Y2$Pmin3+Y2$Pmin4+Y2$Pmin5+Y2$Pmed0+Y2$Pmed1+Y2$Pmed2+Y2$Pmed3+Y2$Pmed4+Y2$Pmed5+Y2$Pmax0+Y2$Pmax1+Y2$Pmax2+Y2$Pmax3+Y2$Pmax4+Y2$Pmax5)
pIDUTmp$y08[1] <- mean(Y3$Pmin0+Y3$Pmin1+Y3$Pmin2+Y3$Pmin3+Y3$Pmin4+Y3$Pmin5+Y3$Pmed0+Y3$Pmed1+Y3$Pmed2+Y3$Pmed3+Y3$Pmed4+Y3$Pmed5+Y3$Pmax0+Y3$Pmax1+Y3$Pmax2+Y3$Pmax3+Y3$Pmax4+Y3$Pmax5)
pIDUTmp$y09[1] <- mean(Y4$Pmin0+Y4$Pmin1+Y4$Pmin2+Y4$Pmin3+Y4$Pmin4+Y4$Pmin5+Y4$Pmed0+Y4$Pmed1+Y4$Pmed2+Y4$Pmed3+Y4$Pmed4+Y4$Pmed5+Y4$Pmax0+Y4$Pmax1+Y4$Pmax2+Y4$Pmax3+Y4$Pmax4+Y4$Pmax5)
pIDUTmp$y10[1] <- mean(Y5$Pmin0+Y5$Pmin1+Y5$Pmin2+Y5$Pmin3+Y5$Pmin4+Y5$Pmin5+Y5$Pmed0+Y5$Pmed1+Y5$Pmed2+Y5$Pmed3+Y5$Pmed4+Y5$Pmed5+Y5$Pmax0+Y5$Pmax1+Y5$Pmax2+Y5$Pmax3+Y5$Pmax4+Y5$Pmax5)
pIDUTmp$y11[1] <- mean(Y6$Pmin0+Y6$Pmin1+Y6$Pmin2+Y6$Pmin3+Y6$Pmin4+Y6$Pmin5+Y6$Pmed0+Y6$Pmed1+Y6$Pmed2+Y6$Pmed3+Y6$Pmed4+Y6$Pmed5+Y6$Pmax0+Y6$Pmax1+Y6$Pmax2+Y6$Pmax3+Y6$Pmax4+Y6$Pmax5)
pIDUTmp$y12[1] <- mean(Y7$Pmin0+Y7$Pmin1+Y7$Pmin2+Y7$Pmin3+Y7$Pmin4+Y7$Pmin5+Y7$Pmed0+Y7$Pmed1+Y7$Pmed2+Y7$Pmed3+Y7$Pmed4+Y7$Pmed5+Y7$Pmax0+Y7$Pmax1+Y7$Pmax2+Y7$Pmax3+Y7$Pmax4+Y7$Pmax5)
pIDUTmp$y13[1] <- mean(Y8$Pmin0+Y8$Pmin1+Y8$Pmin2+Y8$Pmin3+Y8$Pmin4+Y8$Pmin5+Y8$Pmed0+Y8$Pmed1+Y8$Pmed2+Y8$Pmed3+Y8$Pmed4+Y8$Pmed5+Y8$Pmax0+Y8$Pmax1+Y8$Pmax2+Y8$Pmax3+Y8$Pmax4+Y8$Pmax5)
pIDUTmp$y14[1] <- mean(Y9$Pmin0+Y9$Pmin1+Y9$Pmin2+Y9$Pmin3+Y9$Pmin4+Y9$Pmin5+Y9$Pmed0+Y9$Pmed1+Y9$Pmed2+Y9$Pmed3+Y9$Pmed4+Y9$Pmed5+Y9$Pmax0+Y9$Pmax1+Y9$Pmax2+Y9$Pmax3+Y9$Pmax4+Y9$Pmax5)
pIDUTmp$y15[1] <- mean(Y10$Pmin0+Y10$Pmin1+Y10$Pmin2+Y10$Pmin3+Y10$Pmin4+Y10$Pmin5+Y10$Pmed0+Y10$Pmed1+Y10$Pmed2+Y10$Pmed3+Y10$Pmed4+Y10$Pmed5+Y10$Pmax0+Y10$Pmax1+Y10$Pmax2+Y10$Pmax3+Y10$Pmax4+Y10$Pmax5)
pIDUTmp$y16[1] <- mean(Y11$Pmin0+Y11$Pmin1+Y11$Pmin2+Y11$Pmin3+Y11$Pmin4+Y11$Pmin5+Y11$Pmed0+Y11$Pmed1+Y11$Pmed2+Y11$Pmed3+Y11$Pmed4+Y11$Pmed5+Y11$Pmax0+Y11$Pmax1+Y11$Pmax2+Y11$Pmax3+Y11$Pmax4+Y11$Pmax5)
pTotalIDU <- rbind(pTotalIDU, pIDUTmp)

pPointIDUTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pPointIDUTmp[1,] <- 0
pPointIDUTmp$y06[1] <- Y1$Pmin0[365]+Y1$Pmin1[365]+Y1$Pmin2[365]+Y1$Pmin3[365]+Y1$Pmin4[365]+Y1$Pmin5[365]+Y1$Pmed0[365]+Y1$Pmed1[365]+Y1$Pmed2[365]+Y1$Pmed3[365]+Y1$Pmed4[365]+Y1$Pmed5[365]+Y1$Pmax0[365]+Y1$Pmax1[365]+Y1$Pmax2[365]+Y1$Pmax3[365]+Y1$Pmax4[365]+Y1$Pmax5[365]
pPointIDUTmp$y07[1] <- Y2$Pmin0[365]+Y2$Pmin1[365]+Y2$Pmin2[365]+Y2$Pmin3[365]+Y2$Pmin4[365]+Y2$Pmin5[365]+Y2$Pmed0[365]+Y2$Pmed1[365]+Y2$Pmed2[365]+Y2$Pmed3[365]+Y2$Pmed4[365]+Y2$Pmed5[365]+Y2$Pmax0[365]+Y2$Pmax1[365]+Y2$Pmax2[365]+Y2$Pmax3[365]+Y2$Pmax4[365]+Y2$Pmax5[365]
pPointIDUTmp$y08[1] <- Y3$Pmin0[365]+Y3$Pmin1[365]+Y3$Pmin2[365]+Y3$Pmin3[365]+Y3$Pmin4[365]+Y3$Pmin5[365]+Y3$Pmed0[365]+Y3$Pmed1[365]+Y3$Pmed2[365]+Y3$Pmed3[365]+Y3$Pmed4[365]+Y3$Pmed5[365]+Y3$Pmax0[365]+Y3$Pmax1[365]+Y3$Pmax2[365]+Y3$Pmax3[365]+Y3$Pmax4[365]+Y3$Pmax5[365]
pPointIDUTmp$y09[1] <- Y4$Pmin0[365]+Y4$Pmin1[365]+Y4$Pmin2[365]+Y4$Pmin3[365]+Y4$Pmin4[365]+Y4$Pmin5[365]+Y4$Pmed0[365]+Y4$Pmed1[365]+Y4$Pmed2[365]+Y4$Pmed3[365]+Y4$Pmed4[365]+Y4$Pmed5[365]+Y4$Pmax0[365]+Y4$Pmax1[365]+Y4$Pmax2[365]+Y4$Pmax3[365]+Y4$Pmax4[365]+Y4$Pmax5[365]
pPointIDUTmp$y10[1] <- Y5$Pmin0[365]+Y5$Pmin1[365]+Y5$Pmin2[365]+Y5$Pmin3[365]+Y5$Pmin4[365]+Y5$Pmin5[365]+Y5$Pmed0[365]+Y5$Pmed1[365]+Y5$Pmed2[365]+Y5$Pmed3[365]+Y5$Pmed4[365]+Y5$Pmed5[365]+Y5$Pmax0[365]+Y5$Pmax1[365]+Y5$Pmax2[365]+Y5$Pmax3[365]+Y5$Pmax4[365]+Y5$Pmax5[365]
pPointIDUTmp$y11[1] <- Y6$Pmin0[365]+Y6$Pmin1[365]+Y6$Pmin2[365]+Y6$Pmin3[365]+Y6$Pmin4[365]+Y6$Pmin5[365]+Y6$Pmed0[365]+Y6$Pmed1[365]+Y6$Pmed2[365]+Y6$Pmed3[365]+Y6$Pmed4[365]+Y6$Pmed5[365]+Y6$Pmax0[365]+Y6$Pmax1[365]+Y6$Pmax2[365]+Y6$Pmax3[365]+Y6$Pmax4[365]+Y6$Pmax5[365]
pPointIDUTmp$y12[1] <- Y7$Pmin0[365]+Y7$Pmin1[365]+Y7$Pmin2[365]+Y7$Pmin3[365]+Y7$Pmin4[365]+Y7$Pmin5[365]+Y7$Pmed0[365]+Y7$Pmed1[365]+Y7$Pmed2[365]+Y7$Pmed3[365]+Y7$Pmed4[365]+Y7$Pmed5[365]+Y7$Pmax0[365]+Y7$Pmax1[365]+Y7$Pmax2[365]+Y7$Pmax3[365]+Y7$Pmax4[365]+Y7$Pmax5[365]
pPointIDUTmp$y13[1] <- Y8$Pmin0[365]+Y8$Pmin1[365]+Y8$Pmin2[365]+Y8$Pmin3[365]+Y8$Pmin4[365]+Y8$Pmin5[365]+Y8$Pmed0[365]+Y8$Pmed1[365]+Y8$Pmed2[365]+Y8$Pmed3[365]+Y8$Pmed4[365]+Y8$Pmed5[365]+Y8$Pmax0[365]+Y8$Pmax1[365]+Y8$Pmax2[365]+Y8$Pmax3[365]+Y8$Pmax4[365]+Y8$Pmax5[365]
pPointIDUTmp$y14[1] <- Y9$Pmin0[365]+Y9$Pmin1[365]+Y9$Pmin2[365]+Y9$Pmin3[365]+Y9$Pmin4[365]+Y9$Pmin5[365]+Y9$Pmed0[365]+Y9$Pmed1[365]+Y9$Pmed2[365]+Y9$Pmed3[365]+Y9$Pmed4[365]+Y9$Pmed5[365]+Y9$Pmax0[365]+Y9$Pmax1[365]+Y9$Pmax2[365]+Y9$Pmax3[365]+Y9$Pmax4[365]+Y9$Pmax5[365]
pPointIDUTmp$y15[1] <- Y10$Pmin0[365]+Y10$Pmin1[365]+Y10$Pmin2[365]+Y10$Pmin3[365]+Y10$Pmin4[365]+Y10$Pmin5[365]+Y10$Pmed0[365]+Y10$Pmed1[365]+Y10$Pmed2[365]+Y10$Pmed3[365]+Y10$Pmed4[365]+Y10$Pmed5[365]+Y10$Pmax0[365]+Y10$Pmax1[365]+Y10$Pmax2[365]+Y10$Pmax3[365]+Y10$Pmax4[365]+Y10$Pmax5[365]
pPointIDUTmp$y16[1] <- Y11$Pmin0[365]+Y11$Pmin1[365]+Y11$Pmin2[365]+Y11$Pmin3[365]+Y11$Pmin4[365]+Y11$Pmin5[365]+Y11$Pmed0[365]+Y11$Pmed1[365]+Y11$Pmed2[365]+Y11$Pmed3[365]+Y11$Pmed4[365]+Y11$Pmed5[365]+Y11$Pmax0[365]+Y11$Pmax1[365]+Y11$Pmax2[365]+Y11$Pmax3[365]+Y11$Pmax4[365]+Y11$Pmax5[365]
pPointIDU <- rbind(pPointIDU, pPointIDUTmp)

pPrisonTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pPrisonTmp[1,] <- 0
pPrisonTmp$y06[1] <- mean(Y1$PrisonHCV)
pPrisonTmp$y07[1] <- mean(Y2$PrisonHCV)
pPrisonTmp$y08[1] <- mean(Y3$PrisonHCV)
pPrisonTmp$y09[1] <- mean(Y4$PrisonHCV)
pPrisonTmp$y10[1] <- mean(Y5$PrisonHCV)
pPrisonTmp$y11[1] <- mean(Y6$PrisonHCV)
pPrisonTmp$y12[1] <- mean(Y7$PrisonHCV)
pPrisonTmp$y13[1] <- mean(Y8$PrisonHCV)
pPrisonTmp$y14[1] <- mean(Y9$PrisonHCV)
pPrisonTmp$y15[1] <- mean(Y10$PrisonHCV)
pPrisonTmp$y16[1] <- mean(Y11$PrisonHCV)
pPrisonHCV <- rbind(pPrisonHCV, pPrisonTmp)

pCommunityTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pCommunityTmp[1,] <- 0
pCommunityTmp$y06[1] <- mean(Y1$COMMUNITYHCV)
pCommunityTmp$y07[1] <- mean(Y2$COMMUNITYHCV)
pCommunityTmp$y08[1] <- mean(Y3$COMMUNITYHCV)
pCommunityTmp$y09[1] <- mean(Y4$COMMUNITYHCV)
pCommunityTmp$y10[1] <- mean(Y5$COMMUNITYHCV)
pCommunityTmp$y11[1] <- mean(Y6$COMMUNITYHCV)
pCommunityTmp$y12[1] <- mean(Y7$COMMUNITYHCV)
pCommunityTmp$y13[1] <- mean(Y8$COMMUNITYHCV)
pCommunityTmp$y14[1] <- mean(Y9$COMMUNITYHCV)
pCommunityTmp$y15[1] <- mean(Y10$COMMUNITYHCV)
pCommunityTmp$y16[1] <- mean(Y11$COMMUNITYHCV)
pCommunityHCV <- rbind(pCommunityHCV, pCommunityTmp)

pOpdTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pOpdTmp[1,] <- 0
pOpdTmp$y06[1] <- mean(Y1$OPD)
pOpdTmp$y07[1] <- mean(Y2$OPD)
pOpdTmp$y08[1] <- mean(Y3$OPD)
pOpdTmp$y09[1] <- mean(Y4$OPD)
pOpdTmp$y10[1] <- mean(Y5$OPD)
pOpdTmp$y11[1] <- mean(Y6$OPD)
pOpdTmp$y12[1] <- mean(Y7$OPD)
pOpdTmp$y13[1] <- mean(Y8$OPD)
pOpdTmp$y14[1] <- mean(Y9$OPD)
pOpdTmp$y15[1] <- mean(Y10$OPD)
pOpdTmp$y16[1] <- mean(Y11$OPD)
pOpd<- rbind(pOpd, pOpdTmp)

pEverTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pEverTmp[1,] <- 0
pEverTmp$y06[1] <- mean(Y1$everIDU)
pEverTmp$y07[1] <- mean(Y2$everIDU)
pEverTmp$y08[1] <- mean(Y3$everIDU)
pEverTmp$y09[1] <- mean(Y4$everIDU)
pEverTmp$y10[1] <- mean(Y5$everIDU)
pEverTmp$y11[1] <- mean(Y6$everIDU)
pEverTmp$y12[1] <- mean(Y7$everIDU)
pEverTmp$y13[1] <- mean(Y8$everIDU)
pEverTmp$y14[1] <- mean(Y9$everIDU)
pEverTmp$y15[1] <- mean(Y10$everIDU)
pEverTmp$y16[1] <- mean(Y11$everIDU)
pEverIDU<- rbind(pEverIDU, pEverTmp)

pEverSumTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pEverSumTmp[1,] <- 0
pEverSumTmp$y06[1] <- sum(Y1$everIDU)
pEverSumTmp$y07[1] <- sum(Y2$everIDU)
pEverSumTmp$y08[1] <- sum(Y3$everIDU)
pEverSumTmp$y09[1] <- sum(Y4$everIDU)
pEverSumTmp$y10[1] <- sum(Y5$everIDU)
pEverSumTmp$y11[1] <- sum(Y6$everIDU)
pEverSumTmp$y12[1] <- sum(Y7$everIDU)
pEverSumTmp$y13[1] <- sum(Y8$everIDU)
pEverSumTmp$y14[1] <- sum(Y9$everIDU)
pEverSumTmp$y15[1] <- sum(Y10$everIDU)
pEverSumTmp$y16[1] <- sum(Y11$everIDU)
pEverIDUSum<- rbind(pEverIDUSum, pEverSumTmp)

pClrDTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pClrDTmp[1,] <- 0
pClrDTmp$y06[1] <- mean(Y1$totalClrDAA)
pClrDTmp$y07[1] <- mean(Y2$totalClrDAA)
pClrDTmp$y08[1] <- mean(Y3$totalClrDAA)
pClrDTmp$y09[1] <- mean(Y4$totalClrDAA)
pClrDTmp$y10[1] <- mean(Y5$totalClrDAA)
pClrDTmp$y11[1] <- mean(Y6$totalClrDAA)
pClrDTmp$y12[1] <- mean(Y7$totalClrDAA)
pClrDTmp$y13[1] <- mean(Y8$totalClrDAA)
pClrDTmp$y14[1] <- mean(Y9$totalClrDAA)
pClrDTmp$y15[1] <- mean(Y10$totalClrDAA)
pClrDTmp$y16[1] <- mean(Y11$totalClrDAA)
pClrD <- rbind(pClrD, pClrDTmp)

ptDAATmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
ptDAATmp[1,] <- 0
ptDAATmp$y06[1] <- mean(Y1$totalDAA)
ptDAATmp$y07[1] <- mean(Y2$totalDAA)
ptDAATmp$y08[1] <- mean(Y3$totalDAA)
ptDAATmp$y09[1] <- mean(Y4$totalDAA)
ptDAATmp$y10[1] <- mean(Y5$totalDAA)
ptDAATmp$y11[1] <- mean(Y6$totalDAA)
ptDAATmp$y12[1] <- mean(Y7$totalDAA)
ptDAATmp$y13[1] <- mean(Y8$totalDAA)
ptDAATmp$y14[1] <- mean(Y9$totalDAA)
ptDAATmp$y15[1] <- mean(Y10$totalDAA)
ptDAATmp$y16[1] <- mean(Y11$totalDAA)
pTotalDAA <- rbind(pTotalDAA, ptDAATmp)

ptOSTTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
ptOSTTmp[1,] <- 0
ptOSTTmp$y06[1] <- mean(Y1$totalOST)
ptOSTTmp$y07[1] <- mean(Y2$totalOST)
ptOSTTmp$y08[1] <- mean(Y3$totalOST)
ptOSTTmp$y09[1] <- mean(Y4$totalOST)
ptOSTTmp$y10[1] <- mean(Y5$totalOST)
ptOSTTmp$y11[1] <- mean(Y6$totalOST)
ptOSTTmp$y12[1] <- mean(Y7$totalOST)
ptOSTTmp$y13[1] <- mean(Y8$totalOST)
ptOSTTmp$y14[1] <- mean(Y9$totalOST)
ptOSTTmp$y15[1] <- mean(Y10$totalOST)
ptOSTTmp$y16[1] <- mean(Y11$totalOST)
pTotalOST <- rbind(pTotalOST, ptOSTTmp)

ptHCVRNAeTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
ptHCVRNAeTmp[1,] <- 0
ptHCVRNAeTmp$y06[1] <- sum(Y1$HCVeRNA)
ptHCVRNAeTmp$y07[1] <- sum(Y2$HCVeRNA)
ptHCVRNAeTmp$y08[1] <- sum(Y3$HCVeRNA)
ptHCVRNAeTmp$y09[1] <- sum(Y4$HCVeRNA)
ptHCVRNAeTmp$y10[1] <- sum(Y5$HCVeRNA)
ptHCVRNAeTmp$y11[1] <- sum(Y6$HCVeRNA)
ptHCVRNAeTmp$y12[1] <- sum(Y7$HCVeRNA)
ptHCVRNAeTmp$y13[1] <- sum(Y8$HCVeRNA)
ptHCVRNAeTmp$y14[1] <- sum(Y9$HCVeRNA)
ptHCVRNAeTmp$y15[1] <- sum(Y10$HCVeRNA)
ptHCVRNAeTmp$y16[1] <- sum(Y11$HCVeRNA)
pTotalHCVRNAe <- rbind(pTotalHCVRNAe, ptHCVRNAeTmp)

ptHCVAbeTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
ptHCVAbeTmp[1,] <- 0
ptHCVAbeTmp$y06[1] <- sum(Y1$HCVeAb)
ptHCVAbeTmp$y07[1] <- sum(Y2$HCVeAb)
ptHCVAbeTmp$y08[1] <- sum(Y3$HCVeAb)
ptHCVAbeTmp$y09[1] <- sum(Y4$HCVeAb)
ptHCVAbeTmp$y10[1] <- sum(Y5$HCVeAb)
ptHCVAbeTmp$y11[1] <- sum(Y6$HCVeAb)
ptHCVAbeTmp$y12[1] <- sum(Y7$HCVeAb)
ptHCVAbeTmp$y13[1] <- sum(Y8$HCVeAb)
ptHCVAbeTmp$y14[1] <- sum(Y9$HCVeAb)
ptHCVAbeTmp$y15[1] <- sum(Y10$HCVeAb)
ptHCVAbeTmp$y16[1] <- sum(Y11$HCVeAb)
pTotalHCVAbe <- rbind(pTotalHCVAbe, ptHCVAbeTmp)

ptNeTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
ptNeTmp[1,] <- 0
ptNeTmp$y06[1] <- sum(Y1$NewEntry)
ptNeTmp$y07[1] <- sum(Y2$NewEntry)
ptNeTmp$y08[1] <- sum(Y3$NewEntry)
ptNeTmp$y09[1] <- sum(Y4$NewEntry)
ptNeTmp$y10[1] <- sum(Y5$NewEntry)
ptNeTmp$y11[1] <- sum(Y6$NewEntry)
ptNeTmp$y12[1] <- sum(Y7$NewEntry)
ptNeTmp$y13[1] <- sum(Y8$NewEntry)
ptNeTmp$y14[1] <- sum(Y9$NewEntry)
ptNeTmp$y15[1] <- sum(Y10$NewEntry)
ptNeTmp$y16[1] <- sum(Y11$NewEntry)
pTotalNewEntry <- rbind(pTotalNewEntry, ptNeTmp)

##ptHCVaTmp$y06[1] <- mean(Y1$HCVAntibody)
ptHCVaTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
ptHCVaTmp[1,] <- 0
ptHCVaTmp$y06[1] <- mean(Y1$Pmin0+Y1$Pmin1+Y1$Pmin2+Y1$Pmin4+Y1$Pmin6+Y1$Pmin7+Y1$Pmin8+Y1$Pmin10+Y1$Pmed0+Y1$Pmed1+Y1$Pmed2+Y1$Pmed4+Y1$Pmed6+Y1$Pmed7+Y1$Pmed8+Y1$Pmed10+Y1$Pmax0+Y1$Pmax1+Y1$Pmax2+Y1$Pmax4+Y1$Pmax6+Y1$Pmax7+Y1$Pmax8+Y1$Pmax10)  
ptHCVaTmp$y07[1] <- mean(Y2$Pmin0+Y2$Pmin1+Y2$Pmin2+Y2$Pmin4+Y2$Pmin6+Y2$Pmin7+Y2$Pmin8+Y2$Pmin10+Y2$Pmed0+Y2$Pmed1+Y2$Pmed2+Y2$Pmed4+Y2$Pmed6+Y2$Pmed7+Y2$Pmed8+Y2$Pmed10+Y2$Pmax0+Y2$Pmax1+Y2$Pmax2+Y2$Pmax4+Y2$Pmax6+Y2$Pmax7+Y2$Pmax8+Y2$Pmax10)
ptHCVaTmp$y08[1] <- mean(Y3$Pmin0+Y3$Pmin1+Y3$Pmin2+Y3$Pmin4+Y3$Pmin6+Y3$Pmin7+Y3$Pmin8+Y3$Pmin10+Y3$Pmed0+Y3$Pmed1+Y3$Pmed2+Y3$Pmed4+Y3$Pmed6+Y3$Pmed7+Y3$Pmed8+Y3$Pmed10+Y3$Pmax0+Y3$Pmax1+Y3$Pmax2+Y3$Pmax4+Y3$Pmax6+Y3$Pmax7+Y3$Pmax8+Y3$Pmax10)
ptHCVaTmp$y09[1] <- mean(Y4$Pmin0+Y4$Pmin1+Y4$Pmin2+Y4$Pmin4+Y4$Pmin6+Y4$Pmin7+Y4$Pmin8+Y4$Pmin10+Y4$Pmed0+Y4$Pmed1+Y4$Pmed2+Y4$Pmed4+Y4$Pmed6+Y4$Pmed7+Y4$Pmed8+Y4$Pmed10+Y4$Pmax0+Y4$Pmax1+Y4$Pmax2+Y4$Pmax4+Y4$Pmax6+Y4$Pmax7+Y4$Pmax8+Y4$Pmax10)
ptHCVaTmp$y10[1] <- mean(Y5$Pmin0+Y5$Pmin1+Y5$Pmin2+Y5$Pmin4+Y5$Pmin6+Y5$Pmin7+Y5$Pmin8+Y5$Pmin10+Y5$Pmed0+Y5$Pmed1+Y5$Pmed2+Y5$Pmed4+Y5$Pmed6+Y5$Pmed7+Y5$Pmed8+Y5$Pmed10+Y5$Pmax0+Y5$Pmax1+Y5$Pmax2+Y5$Pmax4+Y5$Pmax6+Y5$Pmax7+Y5$Pmax8+Y5$Pmax10)
ptHCVaTmp$y11[1] <- mean(Y6$Pmin0+Y6$Pmin1+Y6$Pmin2+Y6$Pmin4+Y6$Pmin6+Y6$Pmin7+Y6$Pmin8+Y6$Pmin10+Y6$Pmed0+Y6$Pmed1+Y6$Pmed2+Y6$Pmed4+Y6$Pmed6+Y6$Pmed7+Y6$Pmed8+Y6$Pmed10+Y6$Pmax0+Y6$Pmax1+Y6$Pmax2+Y6$Pmax4+Y6$Pmax6+Y6$Pmax7+Y6$Pmax8+Y6$Pmax10)
ptHCVaTmp$y12[1] <- mean(Y7$Pmin0+Y7$Pmin1+Y7$Pmin2+Y7$Pmin4+Y7$Pmin6+Y7$Pmin7+Y7$Pmin8+Y7$Pmin10+Y7$Pmed0+Y7$Pmed1+Y7$Pmed2+Y7$Pmed4+Y7$Pmed6+Y7$Pmed7+Y7$Pmed8+Y7$Pmed10+Y7$Pmax0+Y7$Pmax1+Y7$Pmax2+Y7$Pmax4+Y7$Pmax6+Y7$Pmax7+Y7$Pmax8+Y7$Pmax10)
ptHCVaTmp$y13[1] <- mean(Y8$Pmin0+Y8$Pmin1+Y8$Pmin2+Y8$Pmin4+Y8$Pmin6+Y8$Pmin7+Y8$Pmin8+Y8$Pmin10+Y8$Pmed0+Y8$Pmed1+Y8$Pmed2+Y8$Pmed4+Y8$Pmed6+Y8$Pmed7+Y8$Pmed8+Y8$Pmed10+Y8$Pmax0+Y8$Pmax1+Y8$Pmax2+Y8$Pmax4+Y8$Pmax6+Y8$Pmax7+Y8$Pmax8+Y8$Pmax10)
ptHCVaTmp$y14[1] <- mean(Y9$Pmin0+Y9$Pmin1+Y9$Pmin2+Y9$Pmin4+Y9$Pmin6+Y9$Pmin7+Y9$Pmin8+Y9$Pmin10+Y9$Pmed0+Y9$Pmed1+Y9$Pmed2+Y9$Pmed4+Y9$Pmed6+Y9$Pmed7+Y9$Pmed8+Y9$Pmed10+Y9$Pmax0+Y9$Pmax1+Y9$Pmax2+Y9$Pmax4+Y9$Pmax6+Y9$Pmax7+Y9$Pmax8+Y9$Pmax10)
ptHCVaTmp$y15[1] <- mean(Y10$Pmin0+Y10$Pmin1+Y10$Pmin2+Y10$Pmin4+Y10$Pmin6+Y10$Pmin7+Y10$Pmin8+Y10$Pmin10+Y10$Pmed0+Y10$Pmed1+Y10$Pmed2+Y10$Pmed4+Y10$Pmed6+Y10$Pmed7+Y10$Pmed8+Y10$Pmed10+Y10$Pmax0+Y10$Pmax1+Y10$Pmax2+Y10$Pmax4+Y10$Pmax6+Y10$Pmax7+Y10$Pmax8+Y10$Pmax10)
ptHCVaTmp$y16[1] <- mean(Y11$Pmin0+Y11$Pmin1+Y11$Pmin2+Y11$Pmin4+Y11$Pmin6+Y11$Pmin7+Y11$Pmin8+Y11$Pmin10+Y11$Pmed0+Y11$Pmed1+Y11$Pmed2+Y11$Pmed4+Y11$Pmed6+Y11$Pmed7+Y11$Pmed8+Y11$Pmed10+Y11$Pmax0+Y11$Pmax1+Y11$Pmax2+Y11$Pmax4+Y11$Pmax6+Y11$Pmax7+Y11$Pmax8+Y11$Pmax10)
pHCVantibody <- rbind(pHCVantibody, ptHCVaTmp)

pHCVcTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pHCVcTmp[1,] <- 0
pHCVcTmp$y06[1] <- mean(Y1$Pmin0+Y1$Pmin1+Y1$Pmin6+Y1$Pmin7+Y1$Pmed0+Y1$Pmed1+Y1$Pmed6+Y1$Pmed7+Y1$Pmax0+Y1$Pmax1+Y1$Pmax6+Y1$Pmax7)
pHCVcTmp$y07[1] <- mean(Y2$Pmin0+Y2$Pmin1+Y2$Pmin6+Y2$Pmin7+Y2$Pmed0+Y2$Pmed1+Y2$Pmed6+Y2$Pmed7+Y2$Pmax0+Y2$Pmax1+Y2$Pmax6+Y2$Pmax7)
pHCVcTmp$y08[1] <- mean(Y3$Pmin0+Y3$Pmin1+Y3$Pmin6+Y3$Pmin7+Y3$Pmed0+Y3$Pmed1+Y3$Pmed6+Y3$Pmed7+Y3$Pmax0+Y3$Pmax1+Y3$Pmax6+Y3$Pmax7)
pHCVcTmp$y09[1] <- mean(Y4$Pmin0+Y4$Pmin1+Y4$Pmin6+Y4$Pmin7+Y4$Pmed0+Y4$Pmed1+Y4$Pmed6+Y4$Pmed7+Y4$Pmax0+Y4$Pmax1+Y4$Pmax6+Y4$Pmax7)
pHCVcTmp$y10[1] <- mean(Y5$Pmin0+Y5$Pmin1+Y5$Pmin6+Y5$Pmin7+Y5$Pmed0+Y5$Pmed1+Y5$Pmed6+Y5$Pmed7+Y5$Pmax0+Y5$Pmax1+Y5$Pmax6+Y5$Pmax7)
pHCVcTmp$y11[1] <- mean(Y6$Pmin0+Y6$Pmin1+Y6$Pmin6+Y6$Pmin7+Y6$Pmed0+Y6$Pmed1+Y6$Pmed6+Y6$Pmed7+Y6$Pmax0+Y6$Pmax1+Y6$Pmax6+Y6$Pmax7)
pHCVcTmp$y12[1] <- mean(Y7$Pmin0+Y7$Pmin1+Y7$Pmin6+Y7$Pmin7+Y7$Pmed0+Y7$Pmed1+Y7$Pmed6+Y7$Pmed7+Y7$Pmax0+Y7$Pmax1+Y7$Pmax6+Y7$Pmax7)
pHCVcTmp$y13[1] <- mean(Y8$Pmin0+Y8$Pmin1+Y8$Pmin6+Y8$Pmin7+Y8$Pmed0+Y8$Pmed1+Y8$Pmed6+Y8$Pmed7+Y8$Pmax0+Y8$Pmax1+Y8$Pmax6+Y8$Pmax7)
pHCVcTmp$y14[1] <- mean(Y9$Pmin0+Y9$Pmin1+Y9$Pmin6+Y9$Pmin7+Y9$Pmed0+Y9$Pmed1+Y9$Pmed6+Y9$Pmed7+Y9$Pmax0+Y9$Pmax1+Y9$Pmax6+Y9$Pmax7)
pHCVcTmp$y15[1] <- mean(Y10$Pmin0+Y10$Pmin1+Y10$Pmin6+Y10$Pmin7+Y10$Pmed0+Y10$Pmed1+Y10$Pmed6+Y10$Pmed7+Y10$Pmax0+Y10$Pmax1+Y10$Pmax6+Y10$Pmax7)
pHCVcTmp$y16[1] <- mean(Y11$Pmin0+Y11$Pmin1+Y11$Pmin6+Y11$Pmin7+Y11$Pmed0+Y11$Pmed1+Y11$Pmed6+Y11$Pmed7+Y11$Pmax0+Y11$Pmax1+Y11$Pmax6+Y11$Pmax7)
pHCVchronic <- rbind(pHCVchronic, pHCVcTmp)

ptHCVTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
ptHCVTmp[1,] <- 0
ptHCVTmp$y06[1] <- mean(Y1$Pmin0+Y1$Pmin1+Y1$Pmin2+Y1$Pmin4+Y1$Pmin6+Y1$Pmin7+Y1$Pmin8+Y1$Pmin10++Y1$Pmed0+Y1$Pmed1+Y1$Pmed2+Y1$Pmed4+Y1$Pmed6+Y1$Pmed7+Y1$Pmed8+Y1$Pmed10+Y1$Pmax0+Y1$Pmax1+Y1$Pmax2+Y1$Pmax4+Y1$Pmax6+Y1$Pmax7+Y1$Pmax8+Y1$Pmax10)
ptHCVTmp$y07[1] <- mean(Y2$Pmin0+Y2$Pmin1+Y2$Pmin2+Y2$Pmin4+Y2$Pmin6+Y2$Pmin7+Y2$Pmin8+Y2$Pmin10++Y2$Pmed0+Y2$Pmed1+Y2$Pmed2+Y2$Pmed4+Y2$Pmed6+Y2$Pmed7+Y2$Pmed8+Y2$Pmed10+Y2$Pmax0+Y2$Pmax1+Y2$Pmax2+Y2$Pmax4+Y2$Pmax6+Y2$Pmax7+Y2$Pmax8+Y2$Pmax10)
ptHCVTmp$y08[1] <- mean(Y3$Pmin0+Y3$Pmin1+Y3$Pmin2+Y3$Pmin4+Y3$Pmin6+Y3$Pmin7+Y3$Pmin8+Y3$Pmin10++Y3$Pmed0+Y3$Pmed1+Y3$Pmed2+Y3$Pmed4+Y3$Pmed6+Y3$Pmed7+Y3$Pmed8+Y3$Pmed10+Y3$Pmax0+Y3$Pmax1+Y3$Pmax2+Y3$Pmax4+Y3$Pmax6+Y3$Pmax7+Y3$Pmax8+Y3$Pmax10)
ptHCVTmp$y09[1] <- mean(Y4$Pmin0+Y4$Pmin1+Y4$Pmin2+Y4$Pmin4+Y4$Pmin6+Y4$Pmin7+Y4$Pmin8+Y4$Pmin10++Y4$Pmed0+Y4$Pmed1+Y4$Pmed2+Y4$Pmed4+Y4$Pmed6+Y4$Pmed7+Y4$Pmed8+Y4$Pmed10+Y4$Pmax0+Y4$Pmax1+Y4$Pmax2+Y4$Pmax4+Y4$Pmax6+Y4$Pmax7+Y4$Pmax8+Y4$Pmax10)
ptHCVTmp$y10[1] <- mean(Y5$Pmin0+Y5$Pmin1+Y5$Pmin2+Y5$Pmin4+Y5$Pmin6+Y5$Pmin7+Y5$Pmin8+Y5$Pmin10++Y5$Pmed0+Y5$Pmed1+Y5$Pmed2+Y5$Pmed4+Y5$Pmed6+Y5$Pmed7+Y5$Pmed8+Y5$Pmed10+Y5$Pmax0+Y5$Pmax1+Y5$Pmax2+Y5$Pmax4+Y5$Pmax6+Y5$Pmax7+Y5$Pmax8+Y5$Pmax10)
ptHCVTmp$y11[1] <- mean(Y6$Pmin0+Y6$Pmin1+Y6$Pmin2+Y6$Pmin4+Y6$Pmin6+Y6$Pmin7+Y6$Pmin8+Y6$Pmin10++Y6$Pmed0+Y6$Pmed1+Y6$Pmed2+Y6$Pmed4+Y6$Pmed6+Y6$Pmed7+Y6$Pmed8+Y6$Pmed10+Y6$Pmax0+Y6$Pmax1+Y6$Pmax2+Y6$Pmax4+Y6$Pmax6+Y6$Pmax7+Y6$Pmax8+Y6$Pmax10)
ptHCVTmp$y12[1] <- mean(Y7$Pmin0+Y7$Pmin1+Y7$Pmin2+Y7$Pmin4+Y7$Pmin6+Y7$Pmin7+Y7$Pmin8+Y7$Pmin10++Y7$Pmed0+Y7$Pmed1+Y7$Pmed2+Y7$Pmed4+Y7$Pmed6+Y7$Pmed7+Y7$Pmed8+Y7$Pmed10+Y7$Pmax0+Y7$Pmax1+Y7$Pmax2+Y7$Pmax4+Y7$Pmax6+Y7$Pmax7+Y7$Pmax8+Y7$Pmax10)
ptHCVTmp$y13[1] <- mean(Y8$Pmin0+Y8$Pmin1+Y8$Pmin2+Y8$Pmin4+Y8$Pmin6+Y8$Pmin7+Y8$Pmin8+Y8$Pmin10++Y8$Pmed0+Y8$Pmed1+Y8$Pmed2+Y8$Pmed4+Y8$Pmed6+Y8$Pmed7+Y8$Pmed8+Y8$Pmed10+Y8$Pmax0+Y8$Pmax1+Y8$Pmax2+Y8$Pmax4+Y8$Pmax6+Y8$Pmax7+Y8$Pmax8+Y8$Pmax10)
ptHCVTmp$y14[1] <- mean(Y9$Pmin0+Y9$Pmin1+Y9$Pmin2+Y9$Pmin4+Y9$Pmin6+Y9$Pmin7+Y9$Pmin8+Y9$Pmin10++Y9$Pmed0+Y9$Pmed1+Y9$Pmed2+Y9$Pmed4+Y9$Pmed6+Y9$Pmed7+Y9$Pmed8+Y9$Pmed10+Y9$Pmax0+Y9$Pmax1+Y9$Pmax2+Y9$Pmax4+Y9$Pmax6+Y9$Pmax7+Y9$Pmax8+Y9$Pmax10)
ptHCVTmp$y15[1] <- mean(Y10$Pmin0+Y10$Pmin1+Y10$Pmin2+Y10$Pmin4+Y10$Pmin6+Y10$Pmin7+Y10$Pmin8+Y10$Pmin10++Y10$Pmed0+Y10$Pmed1+Y10$Pmed2+Y10$Pmed4+Y10$Pmed6+Y10$Pmed7+Y10$Pmed8+Y10$Pmed10+Y10$Pmax0+Y10$Pmax1+Y10$Pmax2+Y10$Pmax4+Y10$Pmax6+Y10$Pmax7+Y10$Pmax8+Y10$Pmax10)
ptHCVTmp$y16[1] <- mean(Y11$Pmin0+Y11$Pmin1+Y11$Pmin2+Y11$Pmin4+Y11$Pmin6+Y11$Pmin7+Y11$Pmin8+Y11$Pmin10++Y11$Pmed0+Y11$Pmed1+Y11$Pmed2+Y11$Pmed4+Y11$Pmed6+Y11$Pmed7+Y11$Pmed8+Y11$Pmed10+Y11$Pmax0+Y11$Pmax1+Y11$Pmax2+Y11$Pmax4+Y11$Pmax6+Y11$Pmax7+Y11$Pmax8+Y11$Pmax10)
pTotalHCV <- rbind(pTotalHCV, ptHCVTmp)

pPointHCVTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pPointHCVTmp[1,] <- 0
pPointHCVTmp$y06[1] <- Y1$Pmin0[365]+Y1$Pmin1[365]+Y1$Pmin2[365]+Y1$Pmin4[365]+Y1$Pmin6[365]+Y1$Pmin7[365]+Y1$Pmin8[365]+Y1$Pmin10[365]+Y1$Pmed0[365]+Y1$Pmed1[365]+Y1$Pmed2[365]+Y1$Pmed4[365]+Y1$Pmed6[365]+Y1$Pmed7[365]+Y1$Pmed8[365]+Y1$Pmed10[365]+Y1$Pmax0[365]+Y1$Pmax1[365]+Y1$Pmax2[365]+Y1$Pmax4[365]+Y1$Pmax6[365]+Y1$Pmax7[365]+Y1$Pmax8[365]+Y1$Pmax10[365]
pPointHCVTmp$y07[1] <- Y2$Pmin0[365]+Y2$Pmin1[365]+Y2$Pmin2[365]+Y2$Pmin4[365]+Y2$Pmin6[365]+Y2$Pmin7[365]+Y2$Pmin8[365]+Y2$Pmin10[365]+Y2$Pmed0[365]+Y2$Pmed1[365]+Y2$Pmed2[365]+Y2$Pmed4[365]+Y2$Pmed6[365]+Y2$Pmed7[365]+Y2$Pmed8[365]+Y2$Pmed10[365]+Y2$Pmax0[365]+Y2$Pmax1[365]+Y2$Pmax2[365]+Y2$Pmax4[365]+Y2$Pmax6[365]+Y2$Pmax7[365]+Y2$Pmax8[365]+Y2$Pmax10[365]
pPointHCVTmp$y08[1] <- Y3$Pmin0[365]+Y3$Pmin1[365]+Y3$Pmin2[365]+Y3$Pmin4[365]+Y3$Pmin6[365]+Y3$Pmin7[365]+Y3$Pmin8[365]+Y3$Pmin10[365]+Y3$Pmed0[365]+Y3$Pmed1[365]+Y3$Pmed2[365]+Y3$Pmed4[365]+Y3$Pmed6[365]+Y3$Pmed7[365]+Y3$Pmed8[365]+Y3$Pmed10[365]+Y3$Pmax0[365]+Y3$Pmax1[365]+Y3$Pmax2[365]+Y3$Pmax4[365]+Y3$Pmax6[365]+Y3$Pmax7[365]+Y3$Pmax8[365]+Y3$Pmax10[365]
pPointHCVTmp$y09[1] <- Y4$Pmin0[365]+Y4$Pmin1[365]+Y4$Pmin2[365]+Y4$Pmin4[365]+Y4$Pmin6[365]+Y4$Pmin7[365]+Y4$Pmin8[365]+Y4$Pmin10[365]+Y4$Pmed0[365]+Y4$Pmed1[365]+Y4$Pmed2[365]+Y4$Pmed4[365]+Y4$Pmed6[365]+Y4$Pmed7[365]+Y4$Pmed8[365]+Y4$Pmed10[365]+Y4$Pmax0[365]+Y4$Pmax1[365]+Y4$Pmax2[365]+Y4$Pmax4[365]+Y4$Pmax6[365]+Y4$Pmax7[365]+Y4$Pmax8[365]+Y4$Pmax10[365]
pPointHCVTmp$y10[1] <- Y5$Pmin0[365]+Y5$Pmin1[365]+Y5$Pmin2[365]+Y5$Pmin4[365]+Y5$Pmin6[365]+Y5$Pmin7[365]+Y5$Pmin8[365]+Y5$Pmin10[365]+Y5$Pmed0[365]+Y5$Pmed1[365]+Y5$Pmed2[365]+Y5$Pmed4[365]+Y5$Pmed6[365]+Y5$Pmed7[365]+Y5$Pmed8[365]+Y5$Pmed10[365]+Y5$Pmax0[365]+Y5$Pmax1[365]+Y5$Pmax2[365]+Y5$Pmax4[365]+Y5$Pmax6[365]+Y5$Pmax7[365]+Y5$Pmax8[365]+Y5$Pmax10[365]
pPointHCVTmp$y11[1] <- Y6$Pmin0[365]+Y6$Pmin1[365]+Y6$Pmin2[365]+Y6$Pmin4[365]+Y6$Pmin6[365]+Y6$Pmin7[365]+Y6$Pmin8[365]+Y6$Pmin10[365]+Y6$Pmed0[365]+Y6$Pmed1[365]+Y6$Pmed2[365]+Y6$Pmed4[365]+Y6$Pmed6[365]+Y6$Pmed7[365]+Y6$Pmed8[365]+Y6$Pmed10[365]+Y6$Pmax0[365]+Y6$Pmax1[365]+Y6$Pmax2[365]+Y6$Pmax4[365]+Y6$Pmax6[365]+Y6$Pmax7[365]+Y6$Pmax8[365]+Y6$Pmax10[365]
pPointHCVTmp$y12[1] <- Y7$Pmin0[365]+Y7$Pmin1[365]+Y7$Pmin2[365]+Y7$Pmin4[365]+Y7$Pmin6[365]+Y7$Pmin7[365]+Y7$Pmin8[365]+Y7$Pmin10[365]+Y7$Pmed0[365]+Y7$Pmed1[365]+Y7$Pmed2[365]+Y7$Pmed4[365]+Y7$Pmed6[365]+Y7$Pmed7[365]+Y7$Pmed8[365]+Y7$Pmed10[365]+Y7$Pmax0[365]+Y7$Pmax1[365]+Y7$Pmax2[365]+Y7$Pmax4[365]+Y7$Pmax6[365]+Y7$Pmax7[365]+Y7$Pmax8[365]+Y7$Pmax10[365]
pPointHCVTmp$y13[1] <- Y8$Pmin0[365]+Y8$Pmin1[365]+Y8$Pmin2[365]+Y8$Pmin4[365]+Y8$Pmin6[365]+Y8$Pmin7[365]+Y8$Pmin8[365]+Y8$Pmin10[365]+Y8$Pmed0[365]+Y8$Pmed1[365]+Y8$Pmed2[365]+Y8$Pmed4[365]+Y8$Pmed6[365]+Y8$Pmed7[365]+Y8$Pmed8[365]+Y8$Pmed10[365]+Y8$Pmax0[365]+Y8$Pmax1[365]+Y8$Pmax2[365]+Y8$Pmax4[365]+Y8$Pmax6[365]+Y8$Pmax7[365]+Y8$Pmax8[365]+Y8$Pmax10[365]
pPointHCVTmp$y14[1] <- Y9$Pmin0[365]+Y9$Pmin1[365]+Y9$Pmin2[365]+Y9$Pmin4[365]+Y9$Pmin6[365]+Y9$Pmin7[365]+Y9$Pmin8[365]+Y9$Pmin10[365]+Y9$Pmed0[365]+Y9$Pmed1[365]+Y9$Pmed2[365]+Y9$Pmed4[365]+Y9$Pmed6[365]+Y9$Pmed7[365]+Y9$Pmed8[365]+Y9$Pmed10[365]+Y9$Pmax0[365]+Y9$Pmax1[365]+Y9$Pmax2[365]+Y9$Pmax4[365]+Y9$Pmax6[365]+Y9$Pmax7[365]+Y9$Pmax8[365]+Y9$Pmax10[365]
pPointHCVTmp$y15[1] <- Y10$Pmin0[365]+Y10$Pmin1[365]+Y10$Pmin2[365]+Y10$Pmin4[365]+Y10$Pmin6[365]+Y10$Pmin7[365]+Y10$Pmin8[365]+Y10$Pmin10[365]+Y10$Pmed0[365]+Y10$Pmed1[365]+Y10$Pmed2[365]+Y10$Pmed4[365]+Y10$Pmed6[365]+Y10$Pmed7[365]+Y10$Pmed8[365]+Y10$Pmed10[365]+Y10$Pmax0[365]+Y10$Pmax1[365]+Y10$Pmax2[365]+Y10$Pmax4[365]+Y10$Pmax6[365]+Y10$Pmax7[365]+Y10$Pmax8[365]+Y10$Pmax10[365]
pPointHCVTmp$y16[1] <- Y11$Pmin0[365]+Y11$Pmin1[365]+Y11$Pmin2[365]+Y11$Pmin4[365]+Y11$Pmin6[365]+Y11$Pmin7[365]+Y11$Pmin8[365]+Y11$Pmin10[365]+Y11$Pmed0[365]+Y11$Pmed1[365]+Y11$Pmed2[365]+Y11$Pmed4[365]+Y11$Pmed6[365]+Y11$Pmed7[365]+Y11$Pmed8[365]+Y11$Pmed10[365]+Y11$Pmax0[365]+Y11$Pmax1[365]+Y11$Pmax2[365]+Y11$Pmax4[365]+Y11$Pmax6[365]+Y11$Pmax7[365]+Y11$Pmax8[365]+Y11$Pmax10[365]
pPointHCV <- rbind(pPointHCV, pPointHCVTmp)

ptOpdNotOSTTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
ptOpdNotOSTTmp[1,] <- 0
ptOpdNotOSTTmp$y06[1] <- mean(Y1$OpdNotOST)
ptOpdNotOSTTmp$y07[1] <- mean(Y2$OpdNotOST)
ptOpdNotOSTTmp$y08[1] <- mean(Y3$OpdNotOST)
ptOpdNotOSTTmp$y09[1] <- mean(Y4$OpdNotOST)
ptOpdNotOSTTmp$y10[1] <- mean(Y5$OpdNotOST)
ptOpdNotOSTTmp$y11[1] <- mean(Y6$OpdNotOST)
ptOpdNotOSTTmp$y12[1] <- mean(Y7$OpdNotOST)
ptOpdNotOSTTmp$y13[1] <- mean(Y8$OpdNotOST)
ptOpdNotOSTTmp$y14[1] <- mean(Y9$OpdNotOST)
ptOpdNotOSTTmp$y15[1] <- mean(Y10$OpdNotOST)
ptOpdNotOSTTmp$y16[1] <- mean(Y11$OpdNotOST)
pTotalOpdNotOST <- rbind(pTotalOpdNotOST, ptOpdNotOSTTmp)

ptReleasedHCVAbTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
ptReleasedHCVAbTmp[1,] <- 0
ptReleasedHCVAbTmp$y06[1] <- sum(Y1$ReleasedHCVAb)
ptReleasedHCVAbTmp$y07[1] <- sum(Y2$ReleasedHCVAb)
ptReleasedHCVAbTmp$y08[1] <- sum(Y3$ReleasedHCVAb)
ptReleasedHCVAbTmp$y09[1] <- sum(Y4$ReleasedHCVAb)
ptReleasedHCVAbTmp$y10[1] <- sum(Y5$ReleasedHCVAb)
ptReleasedHCVAbTmp$y11[1] <- sum(Y6$ReleasedHCVAb)
ptReleasedHCVAbTmp$y12[1] <- sum(Y7$ReleasedHCVAb)
ptReleasedHCVAbTmp$y13[1] <- sum(Y8$ReleasedHCVAb)
ptReleasedHCVAbTmp$y14[1] <- sum(Y9$ReleasedHCVAb)
ptReleasedHCVAbTmp$y15[1] <- sum(Y10$ReleasedHCVAb)
ptReleasedHCVAbTmp$y16[1] <- sum(Y11$ReleasedHCVAb)
pTotalReleasedHCVAb <- rbind(pTotalReleasedHCVAb, ptReleasedHCVAbTmp)

ptReleasedHCVRNATmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
ptReleasedHCVRNATmp[1,] <- 0
ptReleasedHCVRNATmp$y06[1] <- sum(Y1$ReleasedHCVRNA)
ptReleasedHCVRNATmp$y07[1] <- sum(Y2$ReleasedHCVRNA)
ptReleasedHCVRNATmp$y08[1] <- sum(Y3$ReleasedHCVRNA)
ptReleasedHCVRNATmp$y09[1] <- sum(Y4$ReleasedHCVRNA)
ptReleasedHCVRNATmp$y10[1] <- sum(Y5$ReleasedHCVRNA)
ptReleasedHCVRNATmp$y11[1] <- sum(Y6$ReleasedHCVRNA)
ptReleasedHCVRNATmp$y12[1] <- sum(Y7$ReleasedHCVRNA)
ptReleasedHCVRNATmp$y13[1] <- sum(Y8$ReleasedHCVRNA)
ptReleasedHCVRNATmp$y14[1] <- sum(Y9$ReleasedHCVRNA)
ptReleasedHCVRNATmp$y15[1] <- sum(Y10$ReleasedHCVRNA)
ptReleasedHCVRNATmp$y16[1] <- sum(Y11$ReleasedHCVRNA)
pTotalReleasedHCVRNA <- rbind(pTotalReleasedHCVRNA, ptReleasedHCVRNATmp)

ptReleasedTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
ptReleasedTmp[1,] <- 0
ptReleasedTmp$y06[1] <- sum(Y1$RELEASED)
ptReleasedTmp$y07[1] <- sum(Y2$RELEASED)
ptReleasedTmp$y08[1] <- sum(Y3$RELEASED)
ptReleasedTmp$y09[1] <- sum(Y4$RELEASED)
ptReleasedTmp$y10[1] <- sum(Y5$RELEASED)
ptReleasedTmp$y11[1] <- sum(Y6$RELEASED)
ptReleasedTmp$y12[1] <- sum(Y7$RELEASED)
ptReleasedTmp$y13[1] <- sum(Y8$RELEASED)
ptReleasedTmp$y14[1] <- sum(Y9$RELEASED)
ptReleasedTmp$y15[1] <- sum(Y10$RELEASED)
ptReleasedTmp$y16[1] <- sum(Y11$RELEASED)
pTotalReleased <- rbind(pTotalReleased, ptReleasedTmp)
}

#Plots
#Population
# Define 2 vectors
DCSMin <- data.frame("Population"=c(3320, 3481, 3286, 3347, 3362, 3312, 3221, 3443, 3627, 3827, 4294))
DCSMin$floor <- c(3320, 3481, 3286, 3347, 3362, 3312, 3221, 3443, 3627, 3827, 4294)
DCSMin$ceiling <- c(3320, 3481, 3286, 3347, 3362, 3312, 3221, 3443, 3627, 3827, 4294) 
DCSMin$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016") 
DCSMin$Security <- c("DCS mininimum security")

Min <- data.frame("Population"=c(mean(pMin$y06), mean(pMin$y07), mean(pMin$y08), mean(pMin$y09), mean(pMin$y10), mean(pMin$y11), mean(pMin$y12), mean(pMin$y13), mean(pMin$y14), mean(pMin$y15), mean(pMin$y16)))
Min$floor <- c(min(pMin$y06), min(pMin$y07), min(pMin$y08), min(pMin$y09), min(pMin$y10), min(pMin$y11), min(pMin$y12), min(pMin$y13), min(pMin$y14), min(pMin$y15), min(pMin$y16))
Min$ceiling <- c(max(pMin$y06), max(pMin$y07), max(pMin$y08), max(pMin$y09), max(pMin$y10), max(pMin$y11), max(pMin$y12), max(pMin$y13), max(pMin$y14), max(pMin$y15), max(pMin$y16))
Min$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016") 
Min$Security <- c("Simulated minimum security")

DCSMed <- data.frame("Population"=c(2200, 2354, 2410, 2558, 2665, 2282, 1983, 1951, 2043, 1867, 1927))
DCSMed$floor <- c(2200, 2354, 2410, 2558, 2665, 2282, 1983, 1951, 2043, 1867, 1927)
DCSMed$ceiling <- c(2200, 2354, 2410, 2558, 2665, 2282, 1983, 1951, 2043, 1867, 1927) 
DCSMed$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
DCSMed$Security <- c("DCS medium security")

Med <- data.frame("Population"=c(mean(pMed$y06), mean(pMed$y07), mean(pMed$y08), mean(pMed$y09), mean(pMed$y10), mean(pMed$y11), mean(pMed$y12), mean(pMed$y13), mean(pMed$y14), mean(pMed$y15), mean(pMed$y16)))
Med$floor <- c(min(pMed$y06), min(pMed$y07), min(pMed$y08), min(pMed$y09), min(pMed$y10), min(pMed$y11), min(pMed$y12), min(pMed$y13), min(pMed$y14), min(pMed$y15), min(pMed$y16))
Med$ceiling <- c(max(pMed$y06), max(pMed$y07), max(pMed$y08), max(pMed$y09), max(pMed$y10), max(pMed$y11), max(pMed$y12), max(pMed$y13), max(pMed$y14), max(pMed$y15), max(pMed$y16))
Med$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
Med$Security <- c("Simulated medium security")

DCSMax <- data.frame("Population"=c(2880, 2974, 3313, 3627, 3480, 3634, 3627, 3793, 4179, 5132, 5322))
DCSMax$floor <- c(2880, 2974, 3313, 3627, 3480, 3634, 3627, 3793, 4179, 5132, 5322)
DCSMax$ceiling <- c(2880, 2974, 3313, 3627, 3480, 3634, 3627, 3793, 4179, 5132, 5322) 
DCSMax$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
DCSMax$Security <- c("DCS maximum security")

Max <- data.frame("Population"=c(mean(pMax$y06), mean(pMax$y07), mean(pMax$y08), mean(pMax$y09), mean(pMax$y10), mean(pMax$y11), mean(pMax$y12), mean(pMax$y13), mean(pMax$y14), mean(pMax$y15), mean(pMax$y16)))
Max$floor <- c(min(pMax$y06), min(pMax$y07), min(pMax$y08), min(pMax$y09), min(pMax$y10), min(pMax$y11), min(pMax$y12), min(pMax$y13), min(pMax$y14), min(pMax$y15), min(pMax$y16))
Max$ceiling <- c(max(pMax$y06), max(pMax$y07), max(pMax$y08), max(pMax$y09), max(pMax$y10), max(pMax$y11), max(pMax$y12), max(pMax$y13), max(pMax$y14), max(pMax$y15), max(pMax$y16))
Max$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
Max$Security <- c("Simulated maximum security")

pop <- rbind(DCSMin, Min)
pop <- rbind(pop, DCSMed)
pop <- rbind(pop, Med)
pop <- rbind(pop, DCSMax)
pop <- rbind(pop, Max)

#ggplot(data=pop, aes(x=Year, y=Population, group=Security, col=Security, linetype=Security)) + geom_errorbar(aes(ymin=Population-floor, ymax=Population+ceiling), colour="black", width=.1) + geom_line(aes(linetype=Security, color=Security)) + geom_point(aes(color=Security)) + scale_linetype_manual(values=c("solid","solid","solid","twodash","dotted", "twodash","dotted","twodash", "dotted")) + scale_color_manual(values=c("#660000", "#006633", "#003366", "#993333", "#C0392B", "#009933", "#239B56", "#3399CC", "#2874A6")) + ylim(0, 5000) + ggtitle("NSW prison population") + theme(legend.position="right")

PlotA <- ggplot(data=pop, aes(x=Year, y=Population, group=Security, col=Security, linetype=Security)) + geom_errorbar(aes(ymin=floor, ymax=ceiling), colour="black", width=.1) + geom_line(aes(linetype=Security, color=Security)) + geom_point(aes(color=Security), size=3.5) + scale_linetype_manual(values=c("solid","solid","solid","twodash","dotted", "twodash","dotted","twodash", "dotted")) + scale_color_manual(values=c("#660000", "#006633", "#003366", "#C0392B", "#239B56", "#3399CC", "#2874A6")) + ylim(0, 6000) + ggtitle("B") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.1, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))

totalPop <- Min
totalPop$Population <- Min$Population + Med$Population + Max$Population
totalPop$floor <- Min$floor + Med$floor + Max$floor
totalPop$ceiling <- Min$ceiling + Med$ceiling + Max$ceiling
totalPop$Legend <- "Simulated prison population"
totalPopDCS <- DCSMin
totalPopDCS$Population <- DCSMin$Population + DCSMed$Population + DCSMax$Population
totalPopDCS$floor <- DCSMin$Population + DCSMed$Population + DCSMax$Population
totalPopDCS$ceiling <- DCSMin$Population + DCSMed$Population + DCSMax$Population
totalPopDCS$Legend <- "Reported prison population"
pop2 <- rbind(totalPop, totalPopDCS)
PlotB <- ggplot(data=pop2, aes(x=Year, y=Population, group=Legend, col=Legend, linetype=Legend)) + geom_errorbar(aes(ymin=floor, ymax=ceiling), colour="black", width=.1) + geom_line(aes(linetype=Legend, color=Legend)) + geom_point(aes(shape=Legend), size=3.5) + scale_linetype_manual(values=c("solid","dashed")) + scale_color_manual(values=c("#000000", "#000000")) + ylim(7000, 12000) + ggtitle("A") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.1, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black")) 

grid.newpage()
grid.arrange(arrangeGrob(PlotB, PlotA))
popPlots <- rbind (ggplotGrob(PlotB), ggplotGrob(PlotA), size="first")
grid.draw(popPlots)

#Reinfection
Reinfection <- data.frame("Incidence"=c(((mean(pReinfected$y06)/mean( pTotal$y06))*100) , ((mean(pReinfected$y07)/mean( pTotal$y07))*100) , ((mean(pReinfected$y08)/mean( pTotal$y08))*100) , ((mean(pReinfected$y09)/mean( pTotal$y09))*100) , ((mean(pReinfected$y10)/mean( pTotal$y10))*100) , ((mean(pReinfected$y11)/mean( pTotal$y11))*100) , ((mean(pReinfected$y12)/mean( pTotal$y12))*100) , ((mean(pReinfected$y13)/mean( pTotal$y13))*100) , ((mean(pReinfected$y14)/mean( pTotal$y14))*100) , ((mean(pReinfected$y15)/mean( pTotal$y15))*100) , ((mean(pReinfected$y16)/mean( pTotal$y16))*100) ))
Reinfection$floor <- c(((min(pReinfected$y06)/mean( pTotal$y06))*100) , ((min(pReinfected$y07)/mean( pTotal$y07))*100) , ((min(pReinfected$y08)/mean( pTotal$y08))*100) , ((min(pReinfected$y09)/mean( pTotal$y09))*100) , ((min(pReinfected$y10)/mean( pTotal$y10))*100) , ((min(pReinfected$y11)/mean( pTotal$y11))*100) , ((min(pReinfected$y12)/mean( pTotal$y12))*100) , ((min(pReinfected$y13)/mean( pTotal$y13))*100) , ((min(pReinfected$y14)/mean( pTotal$y14))*100) , ((min(pReinfected$y15)/mean( pTotal$y15))*100) , ((min(pReinfected$y16)/mean( pTotal$y16))*100) )
Reinfection$ceiling <- c(((max(pReinfected$y06)/mean( pTotal$y06))*100) , ((max(pReinfected$y07)/mean( pTotal$y07))*100) , ((max(pReinfected$y08)/mean( pTotal$y08))*100) , ((max(pReinfected$y09)/mean( pTotal$y09))*100) , ((max(pReinfected$y10)/mean( pTotal$y10))*100) , ((max(pReinfected$y11)/mean( pTotal$y11))*100) , ((max(pReinfected$y12)/mean( pTotal$y12))*100) , ((max(pReinfected$y13)/mean( pTotal$y13))*100) , ((max(pReinfected$y14)/mean( pTotal$y14))*100) , ((max(pReinfected$y15)/mean( pTotal$y15))*100) , ((max(pReinfected$y16)/mean( pTotal$y16))*100) )
Reinfection$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
Reinfection$Description <- c("simulated reinfection")

ReinfectionC <- data.frame("Incidence"=c(5.6, 5.6, 5.6))
ReinfectionC$floor <- c(3.3, 3.3, 3.3)
ReinfectionC$ceiling <- c(9.7, 9.7, 9.7)
ReinfectionC$Year <- c("2014", "2015", "2016")
ReinfectionC$Description <- c("SToP-c reinfection")

ggplot(data=Reinfection, aes(x=Year, y=Incidence, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=floor, ymax=ceiling), colour="black", width=.1) + ylab("Reinfection rate") + ylim(0, 20)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(16, 1)) + scale_linetype_manual(values=c("solid", "dashed")) +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_point(data=ReinfectionC, mapping=aes(x=Year, y=Incidence, shape=Description), size=4) + geom_errorbar(data=ReinfectionC, mapping=aes(ymin=floor, ymax=ceiling), colour="black", width=.1) + ggtitle("HCV reinfection among PWID") + theme(legend.position="right")

#Subpopulation
Total <- data.frame("Population"=c(mean(pTotal$y06), mean(pTotal$y07), mean(pTotal$y08), mean(pTotal$y09), mean(pTotal$y10), mean(pTotal$y11), mean(pTotal$y12), mean(pTotal$y13), mean(pTotal$y14), mean(pTotal$y15), mean(pTotal$y16)))
Total$floor <- c(min(pTotal$y06), min(pTotal$y07), min(pTotal$y08), min(pTotal$y09), min(pTotal$y10), min(pTotal$y11), min(pTotal$y12), min(pTotal$y13), min(pTotal$y14), min(pTotal$y15), min(pTotal$y16))
Total$ceiling <- c(max(pTotal$y06), max(pTotal$y07), max(pTotal$y08), max(pTotal$y09), max(pTotal$y10), max(pTotal$y11), max(pTotal$y12), max(pTotal$y13), max(pTotal$y14), max(pTotal$y15), max(pTotal$y16))
Total$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
TotalIDU$Description <- c("total prison population")

TotalIDU <- data.frame("Population"=c(mean(pTotalIDU$y06), mean(pTotalIDU$y07), mean(pTotalIDU$y08), mean(pTotalIDU$y09), mean(pTotalIDU$y10), mean(pTotalIDU$y11), mean(pTotalIDU$y12), mean(pTotalIDU$y13), mean(pTotalIDU$y14), mean(pTotalIDU$y15), mean(pTotalIDU$y16)))
TotalIDU$floor <- c(min(pTotalIDU$y06), min(pTotalIDU$y07), min(pTotalIDU$y08), min(pTotalIDU$y09), min(pTotalIDU$y10), min(pTotalIDU$y11), min(pTotalIDU$y12), min(pTotalIDU$y13), min(pTotalIDU$y14), min(pTotalIDU$y15), min(pTotalIDU$y16))
TotalIDU$ceiling <- c(max(pTotalIDU$y06), max(pTotalIDU$y07), max(pTotalIDU$y08), max(pTotalIDU$y09), max(pTotalIDU$y10), max(pTotalIDU$y11), max(pTotalIDU$y12), max(pTotalIDU$y13), max(pTotalIDU$y14), max(pTotalIDU$y15), max(pTotalIDU$y16))
TotalIDU$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
TotalIDU$Description <- c("total IDU")

TotalIDUProp <- data.frame("Population"=c(((mean(pTotalIDU$y06)/mean(pTotal$y06))*100) , ((mean(pTotalIDU$y07)/mean(pTotal$y07))*100) , ((mean(pTotalIDU$y08)/mean(pTotal$y08))*100) , ((mean(pTotalIDU$y09)/mean(pTotal$y09))*100) , ((mean(pTotalIDU$y10)/mean(pTotal$y10))*100) , ((mean(pTotalIDU$y11)/mean(pTotal$y11))*100) , ((mean(pTotalIDU$y12)/mean(pTotal$y12))*100) , ((mean(pTotalIDU$y13)/mean(pTotal$y13))*100) , ((mean(pTotalIDU$y14)/mean(pTotal$y14))*100) , ((mean(pTotalIDU$y15)/mean(pTotal$y15))*100) , ((mean(pTotalIDU$y16)/mean(pTotal$y16))*100) ))
TotalIDUProp$floor <- c(((min(pTotalIDU$y06)/mean(pTotal$y06))*100) , ((min(pTotalIDU$y07)/mean(pTotal$y07))*100) , ((min(pTotalIDU$y08)/mean(pTotal$y08))*100) , ((min(pTotalIDU$y09)/mean(pTotal$y09))*100) , ((min(pTotalIDU$y10)/mean(pTotal$y10))*100) , ((min(pTotalIDU$y11)/mean(pTotal$y11))*100) , ((min(pTotalIDU$y12)/mean(pTotal$y12))*100) , ((min(pTotalIDU$y13)/mean(pTotal$y13))*100) , ((min(pTotalIDU$y14)/mean(pTotal$y14))*100) , ((min(pTotalIDU$y15)/mean(pTotal$y15))*100) , ((min(pTotalIDU$y16)/mean(pTotal$y16))*100) )
TotalIDUProp$ceiling <- c(((max(pTotalIDU$y06)/mean(pTotal$y06))*100) , ((max(pTotalIDU$y07)/mean(pTotal$y07))*100) , ((max(pTotalIDU$y08)/mean(pTotal$y08))*100) , ((max(pTotalIDU$y09)/mean(pTotal$y09))*100) , ((max(pTotalIDU$y10)/mean(pTotal$y10))*100) , ((max(pTotalIDU$y11)/mean(pTotal$y11))*100) , ((max(pTotalIDU$y12)/mean(pTotal$y12))*100) , ((max(pTotalIDU$y13)/mean(pTotal$y13))*100) , ((max(pTotalIDU$y14)/mean(pTotal$y14))*100) , ((max(pTotalIDU$y15)/mean(pTotal$y15))*100) , ((max(pTotalIDU$y16)/mean(pTotal$y16))*100) )
TotalIDUProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
TotalIDUProp$Description <- c("total IDU prop")

Opd <- data.frame("Population"=c(mean(pOpd$y06), mean(pOpd$y07), mean(pOpd$y08), mean(pOpd$y09), mean(pOpd$y10), mean(pOpd$y11), mean(pOpd$y12), mean(pOpd$y13), mean(pOpd$y14), mean(pOpd$y15), mean(pOpd$y16)))
Opd$floor <- c(min(pOpd$y06), min(pOpd$y07), min(pOpd$y08), min(pOpd$y09), min(pOpd$y10), min(pOpd$y11), min(pOpd$y12), min(pOpd$y13), min(pOpd$y14), min(pOpd$y15), min(pOpd$y16))
Opd$ceiling <- c(max(pOpd$y06), max(pOpd$y07), max(pOpd$y08), max(pOpd$y09), max(pOpd$y10), max(pOpd$y11), max(pOpd$y12), max(pOpd$y13), max(pOpd$y14), max(pOpd$y15), max(pOpd$y16))
Opd$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
Opd$Description <- c("opioid injecting")

OpdProp <- data.frame("Population"=c(((mean(pOpd$y06)/mean(pTotal$y06))*100) , ((mean(pOpd$y07)/mean(pTotal$y07))*100) , ((mean(pOpd$y08)/mean(pTotal$y08))*100) , ((mean(pOpd$y09)/mean(pTotal$y09))*100) , ((mean(pOpd$y10)/mean(pTotal$y10))*100) , ((mean(pOpd$y11)/mean(pTotal$y11))*100) , ((mean(pOpd$y12)/mean(pTotal$y12))*100) , ((mean(pOpd$y13)/mean(pTotal$y13))*100) , ((mean(pOpd$y14)/mean(pTotal$y14))*100) , ((mean(pOpd$y15)/mean(pTotal$y15))*100) , ((mean(pOpd$y16)/mean(pTotal$y16))*100) ))
OpdProp$floor <- c(((min(pOpd$y06)/mean(pTotal$y06))*100) , ((min(pOpd$y07)/mean(pTotal$y07))*100) , ((min(pOpd$y08)/mean(pTotal$y08))*100) , ((min(pOpd$y09)/mean(pTotal$y09))*100) , ((min(pOpd$y10)/mean(pTotal$y10))*100) , ((min(pOpd$y11)/mean(pTotal$y11))*100) , ((min(pOpd$y12)/mean(pTotal$y12))*100) , ((min(pOpd$y13)/mean(pTotal$y13))*100) , ((min(pOpd$y14)/mean(pTotal$y14))*100) , ((min(pOpd$y15)/mean(pTotal$y15))*100) , ((min(pOpd$y16)/mean(pTotal$y16))*100) )
OpdProp$ceiling <- c(((max(pOpd$y06)/mean(pTotal$y06))*100) , ((max(pOpd$y07)/mean(pTotal$y07))*100) , ((max(pOpd$y08)/mean(pTotal$y08))*100) , ((max(pOpd$y09)/mean(pTotal$y09))*100) , ((max(pOpd$y10)/mean(pTotal$y10))*100) , ((max(pOpd$y11)/mean(pTotal$y11))*100) , ((max(pOpd$y12)/mean(pTotal$y12))*100) , ((max(pOpd$y13)/mean(pTotal$y13))*100) , ((max(pOpd$y14)/mean(pTotal$y14))*100) , ((max(pOpd$y15)/mean(pTotal$y15))*100) , ((max(pOpd$y16)/mean(pTotal$y16))*100) )
OpdProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
OpdProp$Description <- c("opioid PWID")

NOpd <- data.frame("Population"= TotalIDU$Population-Opd$Population)
NOpd$floor <- TotalIDU$Population-Opd$ceiling
NOpd$ceiling <- TotalIDU$Population-Opd$floor
NOpd$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
NOpd$Description <- c("non-opioid injecting")

NOpdProp <- data.frame("Population"= (NOpd$Population/Total$Population)*100)
NOpdProp$floor <- ((NOpd$floor/Total$Population)*100)+OpdProp$floor
NOpdProp$ceiling <- ((NOpd$ceiling/Total$Population)*100)+OpdProp$ceiling
NOpdProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
NOpdProp$Description <- c("non-opioid PWID")

EverIDU <- data.frame("Population"=c(mean(pEverIDU$y06), mean(pEverIDU$y07), mean(pEverIDU$y08), mean(pEverIDU$y09), mean(pEverIDU$y10), mean(pEverIDU$y11), mean(pEverIDU$y12), mean(pEverIDU$y13), mean(pEverIDU$y14), mean(pEverIDU$y15), mean(pEverIDU$y16)))
EverIDU$floor <- c(min(pEverIDU$y06), min(pEverIDU$y07), min(pEverIDU$y08), min(pEverIDU$y09), min(pEverIDU$y10), min(pEverIDU$y11), min(pEverIDU$y12), min(pEverIDU$y13), min(pEverIDU$y14), min(pEverIDU$y15), min(pEverIDU$y16))
EverIDU$ceiling <- c(max(pEverIDU$y06), max(pEverIDU$y07), max(pEverIDU$y08), max(pEverIDU$y09), max(pEverIDU$y10), max(pEverIDU$y11), max(pEverIDU$y12), max(pEverIDU$y13), max(pEverIDU$y14), max(pEverIDU$y15), max(pEverIDU$y16))
EverIDU$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
EverIDU$Description <- c("total ever IDU")

EverIDUProp <- data.frame("Population"=c(((mean(pEverIDU$y06)/mean(pTotal$y06))*100) , ((mean(pEverIDU$y07)/mean(pTotal$y07))*100) , ((mean(pEverIDU$y08)/mean(pTotal$y08))*100) , ((mean(pEverIDU$y09)/mean(pTotal$y09))*100) , ((mean(pEverIDU$y10)/mean(pTotal$y10))*100) , ((mean(pEverIDU$y11)/mean(pTotal$y11))*100) , ((mean(pEverIDU$y12)/mean(pTotal$y12))*100) , ((mean(pEverIDU$y13)/mean(pTotal$y13))*100) , ((mean(pEverIDU$y14)/mean(pTotal$y14))*100) , ((mean(pEverIDU$y15)/mean(pTotal$y15))*100) , ((mean(pEverIDU$y16)/mean(pTotal$y16))*100) ))
EverIDUProp$floor <- c(((min(pEverIDU$y06)/mean(pTotal$y06))*100) , ((min(pEverIDU$y07)/mean(pTotal$y07))*100) , ((min(pEverIDU$y08)/mean(pTotal$y08))*100) , ((min(pEverIDU$y09)/mean(pTotal$y09))*100) , ((min(pEverIDU$y10)/mean(pTotal$y10))*100) , ((min(pEverIDU$y11)/mean(pTotal$y11))*100) , ((min(pEverIDU$y12)/mean(pTotal$y12))*100) , ((min(pEverIDU$y13)/mean(pTotal$y13))*100) , ((min(pEverIDU$y14)/mean(pTotal$y14))*100) , ((min(pEverIDU$y15)/mean(pTotal$y15))*100) , ((min(pEverIDU$y16)/mean(pTotal$y16))*100) )
EverIDUProp$ceiling <- c(((max(pEverIDU$y06)/mean(pTotal$y06))*100) , ((max(pEverIDU$y07)/mean(pTotal$y07))*100) , ((max(pEverIDU$y08)/mean(pTotal$y08))*100) , ((max(pEverIDU$y09)/mean(pTotal$y09))*100) , ((max(pEverIDU$y10)/mean(pTotal$y10))*100) , ((max(pEverIDU$y11)/mean(pTotal$y11))*100) , ((max(pEverIDU$y12)/mean(pTotal$y12))*100) , ((max(pEverIDU$y13)/mean(pTotal$y13))*100) , ((max(pEverIDU$y14)/mean(pTotal$y14))*100) , ((max(pEverIDU$y15)/mean(pTotal$y15))*100) , ((max(pEverIDU$y16)/mean(pTotal$y16))*100) )
EverIDUProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
EverIDUProp$Description <- c("total ever IDU prop")

Active <- data.frame("Population"= Opd$Population+NOpd$Population)
Active$floor <- Opd$Population+NOpd$Population
Active$ceiling <- Opd$Population+NOpd$Population
Active$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
Active$Description <- c("active injecting")

ActiveProp <- data.frame("Population"= (Active$Population/Total$Population)*100)
ActiveProp$floor <- ((Active$floor/Total$Population)*100)#+NOpdProp$floor
ActiveProp$ceiling <- ((Active$ceiling/Total$Population)*100) #+NOpdProp$ceiling
ActiveProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
ActiveProp$Description <- c("active PWID")

NActive <- data.frame("Population"= EverIDU$Population-TotalIDU$Population)
NActive$floor <- EverIDU$floor-TotalIDU$Population
NActive$ceiling <- EverIDU$ceiling-TotalIDU$Population
NActive$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
NActive$Description <- c("non-active injecting")

NActiveProp <- data.frame("Population"= (NActive$Population/Total$Population)*100)
NActiveProp$floor <- ((NActive$floor/Total$Population)*100)+NOpdProp$floor
NActiveProp$ceiling <- ((NActive$ceiling/Total$Population)*100)+NOpdProp$ceiling
NActiveProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
NActiveProp$Description <- c("non-active PWID")

NSWIHSaProp <- data.frame("Population"= c(59.3))
NSWIHSaProp$floor <- 53.6
NSWIHSaProp$ceiling <- 65
NSWIHSaProp$Year <- c("2009")
NSWIHSaProp$Description <- c("STOP-c ever IDU\n (reported)") #Stop-c and NSW inmate health survey 2015

#NSWIHSbProp <- data.frame("Population"= c(16.5))
#NSWIHSbProp$floor <- 0
#NSWIHSbProp$ceiling <- 0
#NSWIHSbProp$Year <- c("2015")
#NSWIHSbProp$Description <- c("NIHS - active PWID")

HITSProp <- data.frame("Population"= c(14.00)) #equivalent of 79% among active injectors
HITSProp$floor <- 0
HITSProp$ceiling <- 0
HITSProp$Year <- c("2015")
HITSProp$Description <- c("HITS-p opioid PWID") #HITS-p

Subpops <- NULL
Subpops <- rbind(NOpdProp, OpdProp, NActiveProp)

PlotC <- ggplot(data=Subpops, aes(x=Year)) + geom_bar(stat="identity", aes(y=Population, fill=Description)) + geom_errorbar(aes(ymin=floor, ymax=ceiling), colour="black", width=.1, position="identity") + scale_fill_manual(values=c("#DCDBDB", "#BBB9B9", "#6F6E6E", "#FFFFFF", "#FFFFFF")) + geom_point(data=HITSProp, mapping=aes(x=Year, y=Population, shape=Description), size=4) + geom_point(data=NSWIHSaProp, mapping=aes(x=Year, y=Population, shape=Description), size=3.5) + xlab("Year") + ylim(0, 100) + ylab("Proportion of\n incarcerated individuals") + theme_bw() + ggtitle("A") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.13, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 40, hjust = 1))
#ggplot(data=Subpops, aes(x=Year, y=Population, fill=Description)) + geom_bar(stat="identity") + geom_errorbar(aes(ymin=floor, ymax=ceiling), colour="black", width=.1, position="identity") + scale_fill_manual(values=c("#DCDBDB", "#BBB9B9", "#6F6E6E", "#FFFFFF", "#FFFFFF")) + geom_point(data=HITSProp, mapping=aes(x=Year, y=Population, shape=Description), size=4) + geom_point(data=NSWIHSaProp, mapping=aes(x=Year, y=Population, shape=Description), size=4) + xlab("Year") + ylim(0, 100) + ylab("Proportion") + theme_bw() + ggtitle("Subpopulations of incarcerated PWID") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_blank(), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
#plotA + geom_point(data=HITSProp, mapping=aes(x=Year, y=Population), size=4) + geom_point(data=NSWIHSaProp, mapping=aes(x=Year, y=Population), size=4)
#+ geom_line(data=HITSProp, aes(x=Year, y=Population, group= Description, linetype=Description)) 
#+ geom_point(data=NSWIHSbProp, mapping=aes(x=Year, y=Population, shape=Description), size=4)

#HCV antibody and HCV chronicity
HCVaProp <- data.frame("Population"=c(((mean(pHCVantibody$y06)/mean(pTotal$y06))*100), ((mean(pHCVantibody$y07)/mean(pTotal$y07))*100), ((mean(pHCVantibody$y08)/mean(pTotal$y08))*100), ((mean(pHCVantibody$y09)/mean(pTotal$y09))*100), ((mean(pHCVantibody$y10)/mean(pTotal$y10))*100), ((mean(pHCVantibody$y11)/mean(pTotal$y11))*100), ((mean(pHCVantibody$y12)/mean(pTotal$y12))*100), ((mean(pHCVantibody$y13)/mean(pTotal$y13))*100), ((mean(pHCVantibody$y14)/mean(pTotal$y14))*100), ((mean(pHCVantibody$y15)/mean(pTotal$y15))*100), ((mean(pHCVantibody$y16)/mean(pTotal$y16))*100)))
HCVaProp$floor <- c(((min(pHCVantibody$y06)/mean(pTotal$y06))*100), ((min(pHCVantibody$y07)/mean(pTotal$y07))*100), ((min(pHCVantibody$y08)/mean(pTotal$y08))*100), ((min(pHCVantibody$y09)/mean(pTotal$y09))*100), ((min(pHCVantibody$y10)/mean(pTotal$y10))*100), ((min(pHCVantibody$y11)/mean(pTotal$y11))*100), ((min(pHCVantibody$y12)/mean(pTotal$y12))*100), ((min(pHCVantibody$y13)/mean(pTotal$y13))*100), ((min(pHCVantibody$y14)/mean(pTotal$y14))*100), ((min(pHCVantibody$y15)/mean(pTotal$y15))*100), ((min(pHCVantibody$y16)/mean(pTotal$y16))*100))
HCVaProp$ceiling <- c(((max(pHCVantibody$y06)/mean(pTotal$y06))*100), ((max(pHCVantibody$y07)/mean(pTotal$y07))*100), ((max(pHCVantibody$y08)/mean(pTotal$y08))*100), ((max(pHCVantibody$y09)/mean(pTotal$y09))*100), ((max(pHCVantibody$y10)/mean(pTotal$y10))*100), ((max(pHCVantibody$y11)/mean(pTotal$y11))*100), ((max(pHCVantibody$y12)/mean(pTotal$y12))*100), ((max(pHCVantibody$y13)/mean(pTotal$y13))*100), ((max(pHCVantibody$y14)/mean(pTotal$y14))*100), ((max(pHCVantibody$y15)/mean(pTotal$y15))*100), ((max(pHCVantibody$y16)/mean(pTotal$y16))*100))
HCVaProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
HCVaProp$Description <- c("HCV Ab+ RNA-")

HCVcProp <- data.frame("Population"=c(((mean(pHCVchronic$y06)/mean(pTotal$y06))*100), ((mean(pHCVchronic$y07)/mean(pTotal$y07))*100), ((mean(pHCVchronic$y08)/mean(pTotal$y08))*100), ((mean(pHCVchronic$y09)/mean(pTotal$y09))*100), ((mean(pHCVchronic$y10)/mean(pTotal$y10))*100), ((mean(pHCVchronic$y11)/mean(pTotal$y11))*100), ((mean(pHCVchronic$y12)/mean(pTotal$y12))*100), ((mean(pHCVchronic$y13)/mean(pTotal$y13))*100), ((mean(pHCVchronic$y14)/mean(pTotal$y14))*100), ((mean(pHCVchronic$y15)/mean(pTotal$y15))*100), ((mean(pHCVchronic$y16)/mean(pTotal$y16))*100)))
HCVcProp$floor <- c(((min(pHCVchronic$y06)/mean(pTotal$y06))*100), ((min(pHCVchronic$y07)/mean(pTotal$y07))*100), ((min(pHCVchronic$y08)/mean(pTotal$y08))*100), ((min(pHCVchronic$y09)/mean(pTotal$y09))*100), ((min(pHCVchronic$y10)/mean(pTotal$y10))*100), ((min(pHCVchronic$y11)/mean(pTotal$y11))*100), ((min(pHCVchronic$y12)/mean(pTotal$y12))*100), ((min(pHCVchronic$y13)/mean(pTotal$y13))*100), ((min(pHCVchronic$y14)/mean(pTotal$y14))*100), ((min(pHCVchronic$y15)/mean(pTotal$y15))*100), ((min(pHCVchronic$y16)/mean(pTotal$y16))*100))
HCVcProp$ceiling <- c(((max(pHCVchronic$y06)/mean(pTotal$y06))*100), ((max(pHCVchronic$y07)/mean(pTotal$y07))*100), ((max(pHCVchronic$y08)/mean(pTotal$y08))*100), ((max(pHCVchronic$y09)/mean(pTotal$y09))*100), ((max(pHCVchronic$y10)/mean(pTotal$y10))*100), ((max(pHCVchronic$y11)/mean(pTotal$y11))*100), ((max(pHCVchronic$y12)/mean(pTotal$y12))*100), ((max(pHCVchronic$y13)/mean(pTotal$y13))*100), ((max(pHCVchronic$y14)/mean(pTotal$y14))*100), ((max(pHCVchronic$y15)/mean(pTotal$y15))*100), ((max(pHCVchronic$y16)/mean(pTotal$y16))*100))
HCVcProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
HCVcProp$Description <- c("HCV Ab+ RNA+")

HCVaProp$Population <- HCVaProp$Population-HCVcProp$Population
HCVaProp$floor <- (HCVaProp$floor-HCVcProp$floor)+HCVcProp$Population
HCVaProp$ceiling <- (HCVaProp$ceiling-HCVcProp$ceiling)+HCVcProp$Population

HCVc <- data.frame("Population"= c(26)) #HCV chronic 27% NSW IHS, 25% stop-c
HCVc$floor <- 25
HCVc$ceiling <- 27
HCVc$Year <- c("2015")
HCVc$Description <- c("NIHS HCV Ab+ RNA+") 

HCVa <- data.frame("Population"= c(41.85)) #HCV antibody 42.7% NSW IHS, 41% stop-c
HCVa $floor <- 41
HCVa $ceiling <- 42.7
HCVa $Year <- c("2015")
HCVa $Description <- c("NIHS HCV Ab+ RNA-") 

HCVpops <- NULL
HCVpops <- rbind(HCVaProp, HCVcProp)
PlotD <- ggplot(data=HCVpops[order(HCVpops$Description,decreasing=T),], aes(x=Year)) + geom_bar(stat="identity", aes(y=Population, fill=Description)) + geom_errorbar(aes(ymin=floor, ymax=ceiling), colour="black", width=.1, position="identity") + scale_fill_manual(values=c("#DCDBDB", "#BBB9B9")) + geom_point(data=HCVa, mapping=aes(x=Year, y=Population, shape=Description), size=3.5) + geom_point(data=HCVc, mapping=aes(x=Year, y=Population, shape=Description), size=4) + xlab("Year") + ylim(0, 100) + ylab("Proportion of\n incarcerated individuals") + theme_bw() + ggtitle("B") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title=element_text(hjust = -0.13, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 40, hjust = 1))

grid.newpage()
grid.arrange(arrangeGrob(PlotC, PlotD))
popPlots <- rbind (ggplotGrob(PlotC), ggplotGrob(PlotD), size="first")
grid.draw(popPlots)

#HCV upon entry
HCVentry <- data.frame("IncidenceIDU"=c(((mean(pCommunityHCV$y06)/mean(pTotalIDU$y06))*100)*365, ((mean(pCommunityHCV$y07)/mean(pTotalIDU$y07))*100)*365, ((mean(pCommunityHCV$y08)/mean(pTotalIDU$y08))*100)*365, ((mean(pCommunityHCV$y09)/mean(pTotalIDU$y09))*100)*365, ((mean(pCommunityHCV$y10)/mean(pTotalIDU$y10))*100)*365, ((mean(pCommunityHCV$y11)/mean(pTotalIDU$y11))*100)*365, ((mean(pCommunityHCV$y12)/mean(pTotalIDU$y12))*100)*365, ((mean(pCommunityHCV$y13)/mean(pTotalIDU$y13))*100)*365, ((mean(pCommunityHCV$y14)/mean(pTotalIDU$y14))*100)*365, ((mean(pCommunityHCV$y15)/mean(pTotalIDU$y15))*100)*365, ((mean(pCommunityHCV$y16)/mean(pTotalIDU$y16))*100)*365))
HCVentry$IncidenceFloor <- c(((min(pCommunityHCV$y06)/mean(pTotalIDU$y06))*100)*365, ((min(pCommunityHCV$y07)/mean(pTotalIDU$y07))*100)*365, ((min(pCommunityHCV$y08)/mean(pTotalIDU$y08))*100)*365, ((min(pCommunityHCV$y09)/mean(pTotalIDU$y09))*100)*365, ((min(pCommunityHCV$y10)/mean(pTotalIDU$y10))*100)*365, ((min(pCommunityHCV$y11)/mean(pTotalIDU$y11))*100)*365, ((min(pCommunityHCV$y12)/mean(pTotalIDU$y12))*100)*365, ((min(pCommunityHCV$y13)/mean(pTotalIDU$y13))*100)*365, ((min(pCommunityHCV$y14)/mean(pTotalIDU$y14))*100)*365, ((min(pCommunityHCV$y15)/mean(pTotalIDU$y15))*100)*365, ((min(pCommunityHCV$y16)/mean(pTotalIDU$y16))*100)*365)
HCVentry$IncidenceCeiling <- c(((max(pCommunityHCV$y06)/mean(pTotalIDU$y06))*100)*365, ((max(pCommunityHCV$y07)/mean(pTotalIDU$y07))*100)*365, ((max(pCommunityHCV$y08)/mean(pTotalIDU$y08))*100)*365, ((max(pCommunityHCV$y09)/mean(pTotalIDU$y09))*100)*365, ((max(pCommunityHCV$y10)/mean(pTotalIDU$y10))*100)*365, ((max(pCommunityHCV$y11)/mean(pTotalIDU$y11))*100)*365, ((max(pCommunityHCV$y12)/mean(pTotalIDU$y12))*100)*365, ((max(pCommunityHCV$y13)/mean(pTotalIDU$y13))*100)*365, ((max(pCommunityHCV$y14)/mean(pTotalIDU$y14))*100)*365, ((max(pCommunityHCV$y15)/mean(pTotalIDU$y15))*100)*365, ((max(pCommunityHCV$y16)/mean(pTotalIDU$y16))*100)*365)
HCVentry$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
HCVentry$Description <- c("simulated incidence")

ggplot(data=HCVentry, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0, 500)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid")) +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + ggtitle("HCV incidence upon entry") + theme(legend.position="right")

HCVentry <- data.frame("IncidenceIDU"=c(((mean(pTotalHCVe$y06)/mean(pTotalIDU$y06))*100)*365, ((mean(pTotalHCVe$y07)/mean(pTotalIDU$y07))*100)*365, ((mean(pTotalHCVe$y08)/mean(pTotalIDU$y08))*100)*365, ((mean(pTotalHCVe$y09)/mean(pTotalIDU$y09))*100)*365, ((mean(pTotalHCVe$y10)/mean(pTotalIDU$y10))*100)*365, ((mean(pTotalHCVe$y11)/mean(pTotalIDU$y11))*100)*365, ((mean(pTotalHCVe$y12)/mean(pTotalIDU$y12))*100)*365, ((mean(pTotalHCVe$y13)/mean(pTotalIDU$y13))*100)*365, ((mean(pTotalHCVe$y14)/mean(pTotalIDU$y14))*100)*365, ((mean(pTotalHCVe$y15)/mean(pTotalIDU$y15))*100)*365, ((mean(pTotalHCVe$y16)/mean(pTotalIDU$y16))*100)*365))
HCVentry$IncidenceFloor <- c(((min(pTotalHCVe$y06)/mean(pTotalIDU$y06))*100)*365, ((min(pTotalHCVe$y07)/mean(pTotalIDU$y07))*100)*365, ((min(pTotalHCVe$y08)/mean(pTotalIDU$y08))*100)*365, ((min(pTotalHCVe$y09)/mean(pTotalIDU$y09))*100)*365, ((min(pTotalHCVe$y10)/mean(pTotalIDU$y10))*100)*365, ((min(pTotalHCVe$y11)/mean(pTotalIDU$y11))*100)*365, ((min(pTotalHCVe$y12)/mean(pTotalIDU$y12))*100)*365, ((min(pTotalHCVe$y13)/mean(pTotalIDU$y13))*100)*365, ((min(pTotalHCVe$y14)/mean(pTotalIDU$y14))*100)*365, ((min(pTotalHCVe$y15)/mean(pTotalIDU$y15))*100)*365, ((min(pTotalHCVe$y16)/mean(pTotalIDU$y16))*100)*365)
HCVentry$IncidenceCeiling <- c(((max(pTotalHCVe$y06)/mean(pTotalIDU$y06))*100)*365, ((max(pTotalHCVe$y07)/mean(pTotalIDU$y07))*100)*365, ((max(pTotalHCVe$y08)/mean(pTotalIDU$y08))*100)*365, ((max(pTotalHCVe$y09)/mean(pTotalIDU$y09))*100)*365, ((max(pTotalHCVe$y10)/mean(pTotalIDU$y10))*100)*365, ((max(pTotalHCVe$y11)/mean(pTotalIDU$y11))*100)*365, ((max(pTotalHCVe$y12)/mean(pTotalIDU$y12))*100)*365, ((max(pTotalHCVe$y13)/mean(pTotalIDU$y13))*100)*365, ((max(pTotalHCVe$y14)/mean(pTotalIDU$y14))*100)*365, ((max(pTotalHCVe$y15)/mean(pTotalIDU$y15))*100)*365, ((max(pTotalHCVe$y16)/mean(pTotalIDU$y16))*100)*365)
HCVentry$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
HCVentry$Description <- c("simulated incidence")

HCVentry <- data.frame("IncidenceIDU"=c(((mean(pTotalHCVe$y06)/mean(pTotalIDU$y06))*100)*365, ((mean(pTotalHCVe$y07)/mean(pTotalIDU$y07))*100)*365, ((mean(pTotalHCVe$y08)/mean(pTotalIDU$y08))*100)*365, ((mean(pTotalHCVe$y09)/mean(pTotalIDU$y09))*100)*365, ((mean(pTotalHCVe$y10)/mean(pTotalIDU$y10))*100)*365, ((mean(pTotalHCVe$y11)/mean(pTotalIDU$y11))*100)*365, ((mean(pTotalHCVe$y12)/mean(pTotalIDU$y12))*100)*365, ((mean(pTotalHCVe$y13)/mean(pTotalIDU$y13))*100)*365, ((mean(pTotalHCVe$y14)/mean(pTotalIDU$y14))*100)*365, ((mean(pTotalHCVe$y15)/mean(pTotalIDU$y15))*100)*365, ((mean(pTotalHCVe$y16)/mean(pTotalIDU$y16))*100)*365))
HCVentry$IncidenceFloor <- c(((min(pTotalHCVe$y06)/mean(pTotalIDU$y06))*100)*365, ((min(pTotalHCVe$y07)/mean(pTotalIDU$y07))*100)*365, ((min(pTotalHCVe$y08)/mean(pTotalIDU$y08))*100)*365, ((min(pTotalHCVe$y09)/mean(pTotalIDU$y09))*100)*365, ((min(pTotalHCVe$y10)/mean(pTotalIDU$y10))*100)*365, ((min(pTotalHCVe$y11)/mean(pTotalIDU$y11))*100)*365, ((min(pTotalHCVe$y12)/mean(pTotalIDU$y12))*100)*365, ((min(pTotalHCVe$y13)/mean(pTotalIDU$y13))*100)*365, ((min(pTotalHCVe$y14)/mean(pTotalIDU$y14))*100)*365, ((min(pTotalHCVe$y15)/mean(pTotalIDU$y15))*100)*365, ((min(pTotalHCVe$y16)/mean(pTotalIDU$y16))*100)*365)
HCVentry$IncidenceCeiling <- c(((max(pTotalHCVe$y06)/mean(pTotalIDU$y06))*100)*365, ((max(pTotalHCVe$y07)/mean(pTotalIDU$y07))*100)*365, ((max(pTotalHCVe$y08)/mean(pTotalIDU$y08))*100)*365, ((max(pTotalHCVe$y09)/mean(pTotalIDU$y09))*100)*365, ((max(pTotalHCVe$y10)/mean(pTotalIDU$y10))*100)*365, ((max(pTotalHCVe$y11)/mean(pTotalIDU$y11))*100)*365, ((max(pTotalHCVe$y12)/mean(pTotalIDU$y12))*100)*365, ((max(pTotalHCVe$y13)/mean(pTotalIDU$y13))*100)*365, ((max(pTotalHCVe$y14)/mean(pTotalIDU$y14))*100)*365, ((max(pTotalHCVe$y15)/mean(pTotalIDU$y15))*100)*365, ((max(pTotalHCVe$y16)/mean(pTotalIDU$y16))*100)*365)
HCVentry$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
HCVentry$Description <- c("simulated incidence")

ggplot(data=HCVentry, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0, 100)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid")) +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + ggtitle("HCV incidence upon entry") + theme(legend.position="right")

HCVentryAll <- data.frame("IncidenceIDU"=c(((mean(pTotalHCVe$y06)/mean(pTotal$y06))*100) , ((mean(pTotalHCVe$y07)/mean(pTotal$y07))*100) , ((mean(pTotalHCVe$y08)/mean(pTotal$y08))*100) , ((mean(pTotalHCVe$y09)/mean(pTotal$y09))*100) , ((mean(pTotalHCVe$y10)/mean(pTotal$y10))*100) , ((mean(pTotalHCVe$y11)/mean(pTotal$y11))*100) , ((mean(pTotalHCVe$y12)/mean(pTotal$y12))*100) , ((mean(pTotalHCVe$y13)/mean(pTotal$y13))*100) , ((mean(pTotalHCVe$y14)/mean(pTotal$y14))*100) , ((mean(pTotalHCVe$y15)/mean(pTotal$y15))*100) , ((mean(pTotalHCVe$y16)/mean(pTotal$y16))*100) ))
HCVentryAll$IncidenceFloor <- c(((min(pTotalHCVe$y06)/mean(pTotal$y06))*100) , ((min(pTotalHCVe$y07)/mean(pTotal$y07))*100) , ((min(pTotalHCVe$y08)/mean(pTotal$y08))*100) , ((min(pTotalHCVe$y09)/mean(pTotal$y09))*100) , ((min(pTotalHCVe$y10)/mean(pTotal$y10))*100) , ((min(pTotalHCVe$y11)/mean(pTotal$y11))*100) , ((min(pTotalHCVe$y12)/mean(pTotal$y12))*100) , ((min(pTotalHCVe$y13)/mean(pTotal$y13))*100) , ((min(pTotalHCVe$y14)/mean(pTotal$y14))*100) , ((min(pTotalHCVe$y15)/mean(pTotal$y15))*100) , ((min(pTotalHCVe$y16)/mean(pTotal$y16))*100) )
HCVentryAll$IncidenceCeiling <- c(((max(pTotalHCVe$y06)/mean(pTotal$y06))*100) , ((max(pTotalHCVe$y07)/mean(pTotal$y07))*100) , ((max(pTotalHCVe$y08)/mean(pTotal$y08))*100) , ((max(pTotalHCVe$y09)/mean(pTotal$y09))*100) , ((max(pTotalHCVe$y10)/mean(pTotal$y10))*100) , ((max(pTotalHCVe$y11)/mean(pTotal$y11))*100) , ((max(pTotalHCVe$y12)/mean(pTotal$y12))*100) , ((max(pTotalHCVe$y13)/mean(pTotal$y13))*100) , ((max(pTotalHCVe$y14)/mean(pTotal$y14))*100) , ((max(pTotalHCVe$y15)/mean(pTotal$y15))*100) , ((max(pTotalHCVe$y16)/mean(pTotal$y16))*100) )
HCVentryAll$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
HCVentryAll$Description <- c("simulated incidence")

ggplot(data=HCVentryAll, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among total prison population") + ylim(0, 10)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid")) +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + ggtitle("HCV incidence upon entry") + theme(legend.position="right")

NewEntryAll <- data.frame("IncidenceIDU"=c(((mean(pTotalNewEntry$y06)/mean(pTotal$y06))*100) , ((mean(pTotalNewEntry$y07)/mean(pTotal$y07))*100) , ((mean(pTotalNewEntry$y08)/mean(pTotal$y08))*100) , ((mean(pTotalNewEntry$y09)/mean(pTotal$y09))*100) , ((mean(pTotalNewEntry$y10)/mean(pTotal$y10))*100) , ((mean(pTotalNewEntry$y11)/mean(pTotal$y11))*100) , ((mean(pTotalNewEntry$y12)/mean(pTotal$y12))*100) , ((mean(pTotalNewEntry$y13)/mean(pTotal$y13))*100) , ((mean(pTotalNewEntry$y14)/mean(pTotal$y14))*100) , ((mean(pTotalNewEntry$y15)/mean(pTotal$y15))*100) , ((mean(pTotalNewEntry$y16)/mean(pTotal$y16))*100) ))
NewEntryAll$IncidenceFloor <- c(((min(pTotalNewEntry$y06)/mean(pTotal$y06))*100) , ((min(pTotalNewEntry$y07)/mean(pTotal$y07))*100) , ((min(pTotalNewEntry$y08)/mean(pTotal$y08))*100) , ((min(pTotalNewEntry$y09)/mean(pTotal$y09))*100) , ((min(pTotalNewEntry$y10)/mean(pTotal$y10))*100) , ((min(pTotalNewEntry$y11)/mean(pTotal$y11))*100) , ((min(pTotalNewEntry$y12)/mean(pTotal$y12))*100) , ((min(pTotalNewEntry$y13)/mean(pTotal$y13))*100) , ((min(pTotalNewEntry$y14)/mean(pTotal$y14))*100) , ((min(pTotalNewEntry$y15)/mean(pTotal$y15))*100) , ((min(pTotalNewEntry$y16)/mean(pTotal$y16))*100) )
NewEntryAll$IncidenceCeiling <- c(((max(pTotalNewEntry$y06)/mean(pTotal$y06))*100) , ((max(pTotalNewEntry$y07)/mean(pTotal$y07))*100) , ((max(pTotalNewEntry$y08)/mean(pTotal$y08))*100) , ((max(pTotalNewEntry$y09)/mean(pTotal$y09))*100) , ((max(pTotalNewEntry$y10)/mean(pTotal$y10))*100) , ((max(pTotalNewEntry$y11)/mean(pTotal$y11))*100) , ((max(pTotalNewEntry$y12)/mean(pTotal$y12))*100) , ((max(pTotalNewEntry$y13)/mean(pTotal$y13))*100) , ((max(pTotalNewEntry$y14)/mean(pTotal$y14))*100) , ((max(pTotalNewEntry$y15)/mean(pTotal$y15))*100) , ((max(pTotalNewEntry$y16)/mean(pTotal$y16))*100) )
NewEntryAll$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
NewEntryAll$Description <- c("simulated incidence")

ggplot(data=NewEntryAll, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among total prison population") + ylim(0, 100)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid")) +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + ggtitle("HCV incidence upon entry") + theme(legend.position="right")

HCVentryProp <- data.frame("IncidenceIDU"=c(((mean(pTotalHCVe$y06)/mean(pTotalNewEntry$y06))*100) , ((mean(pTotalHCVe$y07)/mean(pTotalNewEntry$y07))*100) , ((mean(pTotalHCVe$y08)/mean(pTotalNewEntry$y08))*100) , ((mean(pTotalHCVe$y09)/mean(pTotalNewEntry$y09))*100) , ((mean(pTotalHCVe$y10)/mean(pTotalNewEntry$y10))*100) , ((mean(pTotalHCVe$y11)/mean(pTotalNewEntry$y11))*100) , ((mean(pTotalHCVe$y12)/mean(pTotalNewEntry$y12))*100) , ((mean(pTotalHCVe$y13)/mean(pTotalNewEntry$y13))*100) , ((mean(pTotalHCVe$y14)/mean(pTotalNewEntry$y14))*100) , ((mean(pTotalHCVe$y15)/mean(pTotalNewEntry$y15))*100) , ((mean(pTotalHCVe$y16)/mean(pTotalNewEntry$y16))*100) ))
HCVentryProp$IncidenceFloor <- c(((min(pTotalHCVe$y06)/mean(pTotalNewEntry$y06))*100) , ((min(pTotalHCVe$y07)/mean(pTotalNewEntry$y07))*100) , ((min(pTotalHCVe$y08)/mean(pTotalNewEntry$y08))*100) , ((min(pTotalHCVe$y09)/mean(pTotalNewEntry$y09))*100) , ((min(pTotalHCVe$y10)/mean(pTotalNewEntry$y10))*100) , ((min(pTotalHCVe$y11)/mean(pTotalNewEntry$y11))*100) , ((min(pTotalHCVe$y12)/mean(pTotalNewEntry$y12))*100) , ((min(pTotalHCVe$y13)/mean(pTotalNewEntry$y13))*100) , ((min(pTotalHCVe$y14)/mean(pTotalNewEntry$y14))*100) , ((min(pTotalHCVe$y15)/mean(pTotalNewEntry$y15))*100) , ((min(pTotalHCVe$y16)/mean(pTotalNewEntry$y16))*100) )
HCVentryProp$IncidenceCeiling <- c(((max(pTotalHCVe$y06)/mean(pTotalNewEntry$y06))*100) , ((max(pTotalHCVe$y07)/mean(pTotalNewEntry$y07))*100) , ((max(pTotalHCVe$y08)/mean(pTotalNewEntry$y08))*100) , ((max(pTotalHCVe$y09)/mean(pTotalNewEntry$y09))*100) , ((max(pTotalHCVe$y10)/mean(pTotalNewEntry$y10))*100) , ((max(pTotalHCVe$y11)/mean(pTotalNewEntry$y11))*100) , ((max(pTotalHCVe$y12)/mean(pTotalNewEntry$y12))*100) , ((max(pTotalHCVe$y13)/mean(pTotalNewEntry$y13))*100) , ((max(pTotalHCVe$y14)/mean(pTotalNewEntry$y14))*100) , ((max(pTotalHCVe$y15)/mean(pTotalNewEntry$y15))*100) , ((max(pTotalHCVe$y16)/mean(pTotalNewEntry$y16))*100) )
HCVentryProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
HCVentryProp$Description <- c("simulated incidence")

ggplot(data=HCVentryProp, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among total prison population") + ylim(0, 50)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid")) +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + ggtitle("HCV incidence") + theme(legend.position="right")

#Incidence
#ggplot(data=HCV, aes(x=Year, y=Incidence, group=1)) + geom_errorbar(aes(ymin=Incidence-IncidenceFloor, ymax=Incidence+IncidenceFloor), colour="black", width=.1) + geom_line() + geom_point() + ylim(0, 1) + ggtitle("HCV incidence in NSW prison") + theme(legend.position="right")

#HCV RNA+ upon entry
HCVAb <- data.frame("IncidenceIDU"=c(((mean(pTotalHCVAbe$y06)/mean(pTotalNewEntry$y06))*100), ((mean(pTotalHCVAbe$y07)/mean(pTotalNewEntry$y07))*100), ((mean(pTotalHCVAbe$y08)/mean(pTotalNewEntry$y08))*100), ((mean(pTotalHCVAbe$y09)/mean(pTotalNewEntry$y09))*100), ((mean(pTotalHCVAbe$y10)/mean(pTotalNewEntry$y10))*100), ((mean(pTotalHCVAbe$y11)/mean(pTotalNewEntry$y11))*100), ((mean(pTotalHCVAbe$y12)/mean(pTotalNewEntry$y12))*100), ((mean(pTotalHCVAbe$y13)/mean(pTotalNewEntry$y13))*100), ((mean(pTotalHCVAbe$y14)/mean(pTotalNewEntry$y14))*100), ((mean(pTotalHCVAbe$y15)/mean(pTotalNewEntry$y15))*100), ((mean(pTotalHCVAbe$y16)/mean(pTotalNewEntry$y16))*100)))
HCVAb$IncidenceFloor <- c(((min(pTotalHCVAbe$y06)/mean(pTotalNewEntry$y06))*100), ((min(pTotalHCVAbe$y07)/mean(pTotalNewEntry$y07))*100), ((min(pTotalHCVAbe$y08)/mean(pTotalNewEntry$y08))*100), ((min(pTotalHCVAbe$y09)/mean(pTotalNewEntry$y09))*100), ((min(pTotalHCVAbe$y10)/mean(pTotalNewEntry$y10))*100), ((min(pTotalHCVAbe$y11)/mean(pTotalNewEntry$y11))*100), ((min(pTotalHCVAbe$y12)/mean(pTotalNewEntry$y12))*100), ((min(pTotalHCVAbe$y13)/mean(pTotalNewEntry$y13))*100), ((min(pTotalHCVAbe$y14)/mean(pTotalNewEntry$y14))*100), ((min(pTotalHCVAbe$y15)/mean(pTotalNewEntry$y15))*100), ((min(pTotalHCVAbe$y16)/mean(pTotalNewEntry$y16))*100))
HCVAb$IncidenceCeiling <- c(((max(pTotalHCVAbe$y06)/mean(pTotalNewEntry$y06))*100), ((max(pTotalHCVAbe$y07)/mean(pTotalNewEntry$y07))*100), ((max(pTotalHCVAbe$y08)/mean(pTotalNewEntry$y08))*100), ((max(pTotalHCVAbe$y09)/mean(pTotalNewEntry$y09))*100), ((max(pTotalHCVAbe$y10)/mean(pTotalNewEntry$y10))*100), ((max(pTotalHCVAbe$y11)/mean(pTotalNewEntry$y11))*100), ((max(pTotalHCVAbe$y12)/mean(pTotalNewEntry$y12))*100), ((max(pTotalHCVAbe$y13)/mean(pTotalNewEntry$y13))*100), ((max(pTotalHCVAbe$y14)/mean(pTotalNewEntry$y14))*100), ((max(pTotalHCVAbe$y15)/mean(pTotalNewEntry$y15))*100), ((max(pTotalHCVAbe$y16)/mean(pTotalNewEntry$y16))*100))
HCVAb$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
HCVAb$Description <- c("HCV Ab+ RNA-")

HCVRNA <- data.frame("IncidenceIDU"=c(((mean(pTotalHCVRNAe$y06)/mean(pTotalNewEntry$y06))*100), ((mean(pTotalHCVRNAe$y07)/mean(pTotalNewEntry$y07))*100), ((mean(pTotalHCVRNAe$y08)/mean(pTotalNewEntry$y08))*100), ((mean(pTotalHCVRNAe$y09)/mean(pTotalNewEntry$y09))*100), ((mean(pTotalHCVRNAe$y10)/mean(pTotalNewEntry$y10))*100), ((mean(pTotalHCVRNAe$y11)/mean(pTotalNewEntry$y11))*100), ((mean(pTotalHCVRNAe$y12)/mean(pTotalNewEntry$y12))*100), ((mean(pTotalHCVRNAe$y13)/mean(pTotalNewEntry$y13))*100), ((mean(pTotalHCVRNAe$y14)/mean(pTotalNewEntry$y14))*100), ((mean(pTotalHCVRNAe$y15)/mean(pTotalNewEntry$y15))*100), ((mean(pTotalHCVRNAe$y16)/mean(pTotalNewEntry$y16))*100)))
HCVRNA$IncidenceFloor <- c(((min(pTotalHCVRNAe$y06)/mean(pTotalNewEntry$y06))*100), ((min(pTotalHCVRNAe$y07)/mean(pTotalNewEntry$y07))*100), ((min(pTotalHCVRNAe$y08)/mean(pTotalNewEntry$y08))*100), ((min(pTotalHCVRNAe$y09)/mean(pTotalNewEntry$y09))*100), ((min(pTotalHCVRNAe$y10)/mean(pTotalNewEntry$y10))*100), ((min(pTotalHCVRNAe$y11)/mean(pTotalNewEntry$y11))*100), ((min(pTotalHCVRNAe$y12)/mean(pTotalNewEntry$y12))*100), ((min(pTotalHCVRNAe$y13)/mean(pTotalNewEntry$y13))*100), ((min(pTotalHCVRNAe$y14)/mean(pTotalNewEntry$y14))*100), ((min(pTotalHCVRNAe$y15)/mean(pTotalNewEntry$y15))*100), ((min(pTotalHCVRNAe$y16)/mean(pTotalNewEntry$y16))*100))
HCVRNA$IncidenceCeiling <- c(((max(pTotalHCVRNAe$y06)/mean(pTotalNewEntry$y06))*100), ((max(pTotalHCVRNAe$y07)/mean(pTotalNewEntry$y07))*100), ((max(pTotalHCVRNAe$y08)/mean(pTotalNewEntry$y08))*100), ((max(pTotalHCVRNAe$y09)/mean(pTotalNewEntry$y09))*100), ((max(pTotalHCVRNAe$y10)/mean(pTotalNewEntry$y10))*100), ((max(pTotalHCVRNAe$y11)/mean(pTotalNewEntry$y11))*100), ((max(pTotalHCVRNAe$y12)/mean(pTotalNewEntry$y12))*100), ((max(pTotalHCVRNAe$y13)/mean(pTotalNewEntry$y13))*100), ((max(pTotalHCVRNAe$y14)/mean(pTotalNewEntry$y14))*100), ((max(pTotalHCVRNAe$y15)/mean(pTotalNewEntry$y15))*100), ((max(pTotalHCVRNAe$y16)/mean(pTotalNewEntry$y16))*100))
HCVRNA$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
HCVRNA$Description <- c("HCV Ab+ RNA+")

AbRNA <- rbind(HCVAb, HCVRNA)

ggplot(data=AbRNA, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(color=Description, shape=Description), size=4) + scale_linetype_manual(values=c("solid","dotted")) + scale_color_manual(values=c("black", "black")) + ylab("Proportion") + ylab("Proportion") + ylim(0, 50) + ggtitle("") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.1, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))

#Incidence and Prevalence
#TotalIDU incidence and prevalence
#HCV <- data.frame("IncidenceIDU"=c(((mean(pNewCases$y06)/mean(pTotalIDU$y06))*100)*365, ((mean(pNewCases$y07)/mean(pTotalIDU$y07))*100)*365, ((mean(pNewCases$y08)/mean(pTotalIDU$y08))*100)*365, ((mean(pNewCases$y09)/mean(pTotalIDU$y09))*100)*365, ((mean(pNewCases$y10)/mean(pTotalIDU$y10))*100)*365, ((mean(pNewCases$y11)/mean(pTotalIDU$y11))*100)*365, ((mean(pNewCases$y12)/mean(pTotalIDU$y12))*100)*365, ((mean(pNewCases$y13)/mean(pTotalIDU$y13))*100)*365, ((mean(pNewCases$y14)/mean(pTotalIDU$y14))*100)*365, ((mean(pNewCases$y15)/mean(pTotalIDU$y15))*100)*365, ((mean(pNewCases$y16)/mean(pTotalIDU$y16))*100)*365))
#HCV$IncidenceFloor <- c(((min(pNewCases$y06)/mean(pTotalIDU$y06))*100)*365, ((min(pNewCases$y07)/mean(pTotalIDU$y07))*100)*365, ((min(pNewCases$y08)/mean(pTotalIDU$y08))*100)*365, ((min(pNewCases$y09)/mean(pTotalIDU$y09))*100)*365, ((min(pNewCases$y10)/mean(pTotalIDU$y10))*100)*365, ((min(pNewCases$y11)/mean(pTotalIDU$y11))*100)*365, ((min(pNewCases$y12)/mean(pTotalIDU$y12))*100)*365, ((min(pNewCases$y13)/mean(pTotalIDU$y13))*100)*365, ((min(pNewCases$y14)/mean(pTotalIDU$y14))*100)*365, ((min(pNewCases$y15)/mean(pTotalIDU$y15))*100)*365, ((min(pNewCases$y16)/mean(pTotalIDU$y16))*100)*365)
#HCV$IncidenceCeiling <- c(((max(pNewCases$y06)/mean(pTotalIDU$y06))*100)*365, ((max(pNewCases$y07)/mean(pTotalIDU$y07))*100)*365, ((max(pNewCases$y08)/mean(pTotalIDU$y08))*100)*365, ((max(pNewCases$y09)/mean(pTotalIDU$y09))*100)*365, ((max(pNewCases$y10)/mean(pTotalIDU$y10))*100)*365, ((max(pNewCases$y11)/mean(pTotalIDU$y11))*100)*365, ((max(pNewCases$y12)/mean(pTotalIDU$y12))*100)*365, ((max(pNewCases$y13)/mean(pTotalIDU$y13))*100)*365, ((max(pNewCases$y14)/mean(pTotalIDU$y14))*100)*365, ((max(pNewCases$y15)/mean(pTotalIDU$y15))*100)*365, ((max(pNewCases$y16)/mean(pTotalIDU$y16))*100)*365)
#HCV$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
#HCV$Description <- c("simulated incidence")

#Using EVERIDU
#HCV <- data.frame("IncidenceIDU"=c(((mean(pNewCases$y06)/mean(pEverIDU$y06))*100)*365, ((mean(pNewCases$y07)/mean(pEverIDU$y07))*100)*365, ((mean(pNewCases$y08)/mean(pEverIDU$y08))*100)*365, ((mean(pNewCases$y09)/mean(pEverIDU$y09))*100)*365, ((mean(pNewCases$y10)/mean(pEverIDU$y10))*100)*365, ((mean(pNewCases$y11)/mean(pEverIDU$y11))*100)*365, ((mean(pNewCases$y12)/mean(pEverIDU$y12))*100)*365, ((mean(pNewCases$y13)/mean(pEverIDU$y13))*100)*365, ((mean(pNewCases$y14)/mean(pEverIDU$y14))*100)*365, ((mean(pNewCases$y15)/mean(pEverIDU$y15))*100)*365, ((mean(pNewCases$y16)/mean(pEverIDU$y16))*100)*365))
#HCV$IncidenceFloor <- c(((min(pNewCases$y06)/mean(pEverIDU$y06))*100)*365, ((min(pNewCases$y07)/mean(pEverIDU$y07))*100)*365, ((min(pNewCases$y08)/mean(pEverIDU$y08))*100)*365, ((min(pNewCases$y09)/mean(pEverIDU$y09))*100)*365, ((min(pNewCases$y10)/mean(pEverIDU$y10))*100)*365, ((min(pNewCases$y11)/mean(pEverIDU$y11))*100)*365, ((min(pNewCases$y12)/mean(pEverIDU$y12))*100)*365, ((min(pNewCases$y13)/mean(pEverIDU$y13))*100)*365, ((min(pNewCases$y14)/mean(pEverIDU$y14))*100)*365, ((min(pNewCases$y15)/mean(pEverIDU$y15))*100)*365, ((min(pNewCases$y16)/mean(pEverIDU$y16))*100)*365)
#HCV$IncidenceCeiling <- c(((max(pNewCases$y06)/mean(pEverIDU$y06))*100)*365, ((max(pNewCases$y07)/mean(pEverIDU$y07))*100)*365, ((max(pNewCases$y08)/mean(pEverIDU$y08))*100)*365, ((max(pNewCases$y09)/mean(pEverIDU$y09))*100)*365, ((max(pNewCases$y10)/mean(pEverIDU$y10))*100)*365, ((max(pNewCases$y11)/mean(pEverIDU$y11))*100)*365, ((max(pNewCases$y12)/mean(pEverIDU$y12))*100)*365, ((max(pNewCases$y13)/mean(pEverIDU$y13))*100)*365, ((max(pNewCases$y14)/mean(pEverIDU$y14))*100)*365, ((max(pNewCases$y15)/mean(pEverIDU$y15))*100)*365, ((max(pNewCases$y16)/mean(pEverIDU$y16))*100)*365)
#HCV$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
#HCV$Description <- c("simulated incidence")

#person years
HCV <- data.frame("IncidenceIDU"=c(((mean(pNewCasesSum$y06)/mean(pEverIDUSum$y06))*100)*365, ((mean(pNewCasesSum$y07)/mean(pEverIDUSum$y07))*100)*365, ((mean(pNewCasesSum$y08)/mean(pEverIDUSum$y08))*100)*365, ((mean(pNewCasesSum$y09)/mean(pEverIDUSum$y09))*100)*365, ((mean(pNewCasesSum$y10)/mean(pEverIDUSum$y10))*100)*365, ((mean(pNewCasesSum$y11)/mean(pEverIDUSum$y11))*100)*365, ((mean(pNewCasesSum$y12)/mean(pEverIDUSum$y12))*100)*365, ((mean(pNewCasesSum$y13)/mean(pEverIDUSum$y13))*100)*365, ((mean(pNewCasesSum$y14)/mean(pEverIDUSum$y14))*100)*365, ((mean(pNewCasesSum$y15)/mean(pEverIDUSum$y15))*100)*365, ((mean(pNewCasesSum$y16)/mean(pEverIDUSum$y16))*100)*365))
HCV$IncidenceFloor <- c(((min(pNewCasesSum$y06)/mean(pEverIDUSum$y06))*100)*365, ((min(pNewCasesSum$y07)/mean(pEverIDUSum$y07))*100)*365, ((min(pNewCasesSum$y08)/mean(pEverIDUSum$y08))*100)*365, ((min(pNewCasesSum$y09)/mean(pEverIDUSum$y09))*100)*365, ((min(pNewCasesSum$y10)/mean(pEverIDUSum$y10))*100)*365, ((min(pNewCasesSum$y11)/mean(pEverIDUSum$y11))*100)*365, ((min(pNewCasesSum$y12)/mean(pEverIDUSum$y12))*100)*365, ((min(pNewCasesSum$y13)/mean(pEverIDUSum$y13))*100)*365, ((min(pNewCasesSum$y14)/mean(pEverIDUSum$y14))*100)*365, ((min(pNewCasesSum$y15)/mean(pEverIDUSum$y15))*100)*365, ((min(pNewCasesSum$y16)/mean(pEverIDUSum$y16))*100)*365)
HCV$IncidenceCeiling <- c(((max(pNewCasesSum$y06)/mean(pEverIDUSum$y06))*100)*365, ((max(pNewCasesSum$y07)/mean(pEverIDUSum$y07))*100)*365, ((max(pNewCasesSum$y08)/mean(pEverIDUSum$y08))*100)*365, ((max(pNewCasesSum$y09)/mean(pEverIDUSum$y09))*100)*365, ((max(pNewCasesSum$y10)/mean(pEverIDUSum$y10))*100)*365, ((max(pNewCasesSum$y11)/mean(pEverIDUSum$y11))*100)*365, ((max(pNewCasesSum$y12)/mean(pEverIDUSum$y12))*100)*365, ((max(pNewCasesSum$y13)/mean(pEverIDUSum$y13))*100)*365, ((max(pNewCasesSum$y14)/mean(pEverIDUSum$y14))*100)*365, ((max(pNewCasesSum$y15)/mean(pEverIDUSum$y15))*100)*365, ((max(pNewCasesSum$y16)/mean(pEverIDUSum$y16))*100)*365)
HCV$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
HCV$Description <- c("simulated incidence")

#no times 365 (person days)
#HCV <- data.frame("IncidenceIDU"=c(((mean(pNewCasesSum$y06)/mean(pEverIDUSum$y06))*100), ((mean(pNewCasesSum$y07)/mean(pEverIDUSum$y07))*100), ((mean(pNewCasesSum$y08)/mean(pEverIDUSum$y08))*100), ((mean(pNewCasesSum$y09)/mean(pEverIDUSum$y09))*100), ((mean(pNewCasesSum$y10)/mean(pEverIDUSum$y10))*100), ((mean(pNewCasesSum$y11)/mean(pEverIDUSum$y11))*100), ((mean(pNewCasesSum$y12)/mean(pEverIDUSum$y12))*100), ((mean(pNewCasesSum$y13)/mean(pEverIDUSum$y13))*100), ((mean(pNewCasesSum$y14)/mean(pEverIDUSum$y14))*100), ((mean(pNewCasesSum$y15)/mean(pEverIDUSum$y15))*100), ((mean(pNewCasesSum$y16)/mean(pEverIDUSum$y16))*100)))
#HCV$IncidenceFloor <- c(((min(pNewCasesSum$y06)/mean(pEverIDUSum$y06))*100), ((min(pNewCasesSum$y07)/mean(pEverIDUSum$y07))*100), ((min(pNewCasesSum$y08)/mean(pEverIDUSum$y08))*100), ((min(pNewCasesSum$y09)/mean(pEverIDUSum$y09))*100), ((min(pNewCasesSum$y10)/mean(pEverIDUSum$y10))*100), ((min(pNewCasesSum$y11)/mean(pEverIDUSum$y11))*100), ((min(pNewCasesSum$y12)/mean(pEverIDUSum$y12))*100), ((min(pNewCasesSum$y13)/mean(pEverIDUSum$y13))*100), ((min(pNewCasesSum$y14)/mean(pEverIDUSum$y14))*100), ((min(pNewCasesSum$y15)/mean(pEverIDUSum$y15))*100), ((min(pNewCasesSum$y16)/mean(pEverIDUSum$y16))*100))
#HCV$IncidenceCeiling <- c(((max(pNewCasesSum$y06)/mean(pEverIDUSum$y06))*100), ((max(pNewCasesSum$y07)/mean(pEverIDUSum$y07))*100), ((max(pNewCasesSum$y08)/mean(pEverIDUSum$y08))*100), ((max(pNewCasesSum$y09)/mean(pEverIDUSum$y09))*100), ((max(pNewCasesSum$y10)/mean(pEverIDUSum$y10))*100), ((max(pNewCasesSum$y11)/mean(pEverIDUSum$y11))*100), ((max(pNewCasesSum$y12)/mean(pEverIDUSum$y12))*100), ((max(pNewCasesSum$y13)/mean(pEverIDUSum$y13))*100), ((max(pNewCasesSum$y14)/mean(pEverIDUSum$y14))*100), ((max(pNewCasesSum$y15)/mean(pEverIDUSum$y15))*100), ((max(pNewCasesSum$y16)/mean(pEverIDUSum$y16))*100))
#HCV$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
#HCV$Description <- c("simulated incidence")

HCVEvan <- data.frame("IncidenceIDU"=c(12.07, 9.74, 13.3))
HCVEvan$IncidenceIDUCI <- c(12.07-8.89, 9.74-6.81, 13.3-8.64)
HCVEvan$Year <- c("2007", "2009", "2012")
HCVEvan$Description <- c("HITS-p HCV incidence (reported)")

HCVStopc <- data.frame("IncidenceIDU"=c(17.8))
HCVStopc$IncidenceIDUCI <- c(17.8)
HCVStopc$Year <- c("2015")
HCVStopc$Description <- c("STOP-c HCV incidence (reported)")

PlotE <- ggplot(data=HCV, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("Incidence of HCV\n among incarcerated PWID") + ylim(0, 20)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16, 4)) + scale_linetype_manual(values=c("dashed", "solid", "dotdash")) + geom_point(data=HCVEvan, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4) + geom_errorbar(data=HCVEvan, mapping=aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI), colour="black", width=.1) + geom_point(data=HCVStopc, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4)+ ggtitle("A") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title=element_text(hjust = -0.10, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
ggplot(data=HCV, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence\n among incarcerated PWID") + ylim(0, 20)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16, 4)) + scale_linetype_manual(values=c("dashed", "solid", "dotdash")) + geom_point(data=HCVEvan, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4) + geom_errorbar(data=HCVEvan, mapping=aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI), colour="black", width=.1) + geom_point(data=HCVStopc, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4) + ggtitle("") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title=element_text(hjust = -0.12, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))

##Incidence among all
#HCV <- data.frame("IncidenceIDU"=c(((mean(pNewCases$y06)/mean(pTotal$y06))*100)*365, ((mean(pNewCases$y07)/mean(pTotal$y07))*100)*365, ((mean(pNewCases$y08)/mean(pTotal$y08))*100)*365, ((mean(pNewCases$y09)/mean(pTotal$y09))*100)*365, ((mean(pNewCases$y10)/mean(pTotal$y10))*100)*365, ((mean(pNewCases$y11)/mean(pTotal$y11))*100)*365, ((mean(pNewCases$y12)/mean(pTotal$y12))*100)*365, ((mean(pNewCases$y13)/mean(pTotal$y13))*100)*365, ((mean(pNewCases$y14)/mean(pTotal$y14))*100)*365, ((mean(pNewCases$y15)/mean(pTotal$y15))*100)*365, ((mean(pNewCases$y16)/mean(pTotal$y16))*100)*365))
#HCV$IncidenceFloor <- c(((min(pNewCases$y06)/mean(pTotal$y06))*100)*365, ((min(pNewCases$y07)/mean(pTotal$y07))*100)*365, ((min(pNewCases$y08)/mean(pTotal$y08))*100)*365, ((min(pNewCases$y09)/mean(pTotal$y09))*100)*365, ((min(pNewCases$y10)/mean(pTotal$y10))*100)*365, ((min(pNewCases$y11)/mean(pTotal$y11))*100)*365, ((min(pNewCases$y12)/mean(pTotal$y12))*100)*365, ((min(pNewCases$y13)/mean(pTotal$y13))*100)*365, ((min(pNewCases$y14)/mean(pTotal$y14))*100)*365, ((min(pNewCases$y15)/mean(pTotal$y15))*100)*365, ((min(pNewCases$y16)/mean(pTotal$y16))*100)*365)
#HCV$IncidenceCeiling <- c(((max(pNewCases$y06)/mean(pTotal$y06))*100)*365, ((max(pNewCases$y07)/mean(pTotal$y07))*100)*365, ((max(pNewCases$y08)/mean(pTotal$y08))*100)*365, ((max(pNewCases$y09)/mean(pTotal$y09))*100)*365, ((max(pNewCases$y10)/mean(pTotal$y10))*100)*365, ((max(pNewCases$y11)/mean(pTotal$y11))*100)*365, ((max(pNewCases$y12)/mean(pTotal$y12))*100)*365, ((max(pNewCases$y13)/mean(pTotal$y13))*100)*365, ((max(pNewCases$y14)/mean(pTotal$y14))*100)*365, ((max(pNewCases$y15)/mean(pTotal$y15))*100)*365, ((max(pNewCases$y16)/mean(pTotal$y16))*100)*365)
#HCV$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
#HCV$Description <- c("simulated incidence")

#Prevalence
#HCVP <- data.frame("Prevalence"=c(((mean(pTotalHCV$y06)/mean(pTotal$y06))*100) , ((mean(pTotalHCV$y07)/mean(pTotal$y07))*100) , ((mean(pTotalHCV$y08)/mean(pTotal$y08))*100) , ((mean(pTotalHCV$y09)/mean(pTotal$y09))*100) , ((mean(pTotalHCV$y10)/mean(pTotal$y10))*100) , ((mean(pTotalHCV$y11)/mean(pTotal$y11))*100) , ((mean(pTotalHCV$y12)/mean(pTotal$y12))*100) , ((mean(pTotalHCV$y13)/mean(pTotal$y13))*100) , ((mean(pTotalHCV$y14)/mean(pTotal$y14))*100) , ((mean(pTotalHCV$y15)/mean(pTotal$y15))*100) , ((mean(pTotalHCV$y16)/mean(pTotal$y16))*100) ))
#HCVP$PrevalenceFloor <- c(((min(pTotalHCV$y06)/mean(pTotal$y06))*100) , ((min(pTotalHCV$y07)/mean(pTotal$y07))*100) , ((min(pTotalHCV$y08)/mean(pTotal$y08))*100) , ((min(pTotalHCV$y09)/mean(pTotal$y09))*100) , ((min(pTotalHCV$y10)/mean(pTotal$y10))*100) , ((min(pTotalHCV$y11)/mean(pTotal$y11))*100) , ((min(pTotalHCV$y12)/mean(pTotal$y12))*100) , ((min(pTotalHCV$y13)/mean(pTotal$y13))*100) , ((min(pTotalHCV$y14)/mean(pTotal$y14))*100) , ((min(pTotalHCV$y15)/mean(pTotal$y15))*100) , ((min(pTotalHCV$y16)/mean(pTotal$y16))*100) )
#HCVP$PrevalenceCeiling <- c(((max(pTotalHCV$y06)/mean(pTotal$y06))*100) , ((max(pTotalHCV$y07)/mean(pTotal$y07))*100) , ((max(pTotalHCV$y08)/mean(pTotal$y08))*100) , ((max(pTotalHCV$y09)/mean(pTotal$y09))*100) , ((max(pTotalHCV$y10)/mean(pTotal$y10))*100) , ((max(pTotalHCV$y11)/mean(pTotal$y11))*100) , ((max(pTotalHCV$y12)/mean(pTotal$y12))*100) , ((max(pTotalHCV$y13)/mean(pTotal$y13))*100) , ((max(pTotalHCV$y14)/mean(pTotal$y14))*100) , ((max(pTotalHCV$y15)/mean(pTotal$y15))*100) , ((max(pTotalHCV$y16)/mean(pTotal$y16))*100) )
#HCVP$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
#HCVP$Description <- c("simulated prevalence")

HCVP <- data.frame("Prevalence"=c((pPointHCV$y06/pPointTotal$y06)*100, (pPointHCV$y07/pPointTotal$y07)*100, (pPointHCV$y08/pPointTotal$y08)*100, (pPointHCV$y09/pPointTotal$y09)*100, (pPointHCV$y10/pPointTotal$y10)*100, (pPointHCV$y11/pPointTotal$y11)*100, (pPointHCV$y12/pPointTotal$y12)*100, (pPointHCV$y13/pPointTotal$y13)*100, (pPointHCV$y14/pPointTotal$y14)*100, (pPointHCV$y15/pPointTotal$y15)*100, (pPointHCV$y16/pPointTotal$y16)*100))
HCVP$PrevalenceFloor <- c(((min(pPointHCV$y06)/mean(pPointTotal$y06))*100) , ((min(pPointHCV$y07)/mean(pPointTotal$y07))*100) , ((min(pPointHCV$y08)/mean(pPointTotal$y08))*100) , ((min(pPointHCV$y09)/mean(pPointTotal$y09))*100) , ((min(pPointHCV$y10)/mean(pPointTotal$y10))*100) , ((min(pPointHCV$y11)/mean(pPointTotal$y11))*100) , ((min(pPointHCV$y12)/mean(pPointTotal$y12))*100) , ((min(pPointHCV$y13)/mean(pPointTotal$y13))*100) , ((min(pPointHCV$y14)/mean(pPointTotal$y14))*100) , ((min(pPointHCV$y15)/mean(pPointTotal$y15))*100) , ((min(pPointHCV$y16)/mean(pPointTotal$y16))*100) )
HCVP$PrevalenceCeiling <- c(((max(pPointHCV$y06)/mean(pPointTotal$y06))*100) , ((max(pPointHCV$y07)/mean(pPointTotal$y07))*100) , ((max(pPointHCV$y08)/mean(pPointTotal$y08))*100) , ((max(pPointHCV$y09)/mean(pPointTotal$y09))*100) , ((max(pPointHCV$y10)/mean(pPointTotal$y10))*100) , ((max(pPointHCV$y11)/mean(pPointTotal$y11))*100) , ((max(pPointHCV$y12)/mean(pPointTotal$y12))*100) , ((max(pPointHCV$y13)/mean(pPointTotal$y13))*100) , ((max(pPointHCV$y14)/mean(pPointTotal$y14))*100) , ((max(pPointHCV$y15)/mean(pPointTotal$y15))*100) , ((max(pPointHCV$y16)/mean(pPointTotal$y16))*100) )
HCVP$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
HCVP$Description <- c("simulated prevalence")

#HCVP <- data.frame("Prevalence"=c(((mean(pPrisonHCV$y06)/mean( pTotal$y06))*100) , ((mean(pPrisonHCV$y07)/mean( pTotal$y07))*100) , ((mean(pPrisonHCV$y08)/mean( pTotal$y08))*100) , ((mean(pPrisonHCV$y09)/mean( pTotal$y09))*100) , ((mean(pPrisonHCV$y10)/mean( pTotal$y10))*100) , ((mean(pPrisonHCV$y11)/mean( pTotal$y11))*100) , ((mean(pPrisonHCV$y12)/mean( pTotal$y12))*100) , ((mean(pPrisonHCV$y13)/mean( pTotal$y13))*100) , ((mean(pPrisonHCV$y14)/mean( pTotal$y14))*100) , ((mean(pPrisonHCV$y15)/mean( pTotal$y15))*100) , ((mean(pPrisonHCV$y16)/mean( pTotal$y16))*100) ))
#HCVP$PrevalenceFloor <- c(((min(pPrisonHCV$y06)/mean( pTotal$y06))*100) , ((min(pPrisonHCV$y07)/mean( pTotal$y07))*100) , ((min(pPrisonHCV$y08)/mean( pTotal$y08))*100) , ((min(pPrisonHCV$y09)/mean( pTotal$y09))*100) , ((min(pPrisonHCV$y10)/mean( pTotal$y10))*100) , ((min(pPrisonHCV$y11)/mean( pTotal$y11))*100) , ((min(pPrisonHCV$y12)/mean( pTotal$y12))*100) , ((min(pPrisonHCV$y13)/mean( pTotal$y13))*100) , ((min(pPrisonHCV$y14)/mean( pTotal$y14))*100) , ((min(pPrisonHCV$y15)/mean( pTotal$y15))*100) , ((min(pPrisonHCV$y16)/mean( pTotal$y16))*100) )
#HCVP$PrevalenceCeiling <- c(((max(pPrisonHCV$y06)/mean( pTotal$y06))*100) , ((max(pPrisonHCV$y07)/mean( pTotal$y07))*100) , ((max(pPrisonHCV$y08)/mean( pTotal$y08))*100) , ((max(pPrisonHCV$y09)/mean( pTotal$y09))*100) , ((max(pPrisonHCV$y10)/mean( pTotal$y10))*100) , ((max(pPrisonHCV$y11)/mean( pTotal$y11))*100) , ((max(pPrisonHCV$y12)/mean( pTotal$y12))*100) , ((max(pPrisonHCV$y13)/mean( pTotal$y13))*100) , ((max(pPrisonHCV$y14)/mean( pTotal$y14))*100) , ((max(pPrisonHCV$y15)/mean( pTotal$y15))*100) , ((max(pPrisonHCV$y16)/mean( pTotal$y16))*100) )
#HCVP$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
#HCVP$Description <- c("simulated incidence")

HCVPrev <- data.frame("IncidenceIDU"=c(40.1))
HCVPrev$IncidenceIDUCI <- c(40.1)
HCVPrev$Year <- c("2015")
HCVPrev$Description <- c("HCV prevalence (reported)") #National entrants risk behaviour survey report 2004, 2007, 2010, 2016

#Prevalence 
PlotF <- ggplot(data=HCVP, aes(x=Year, y=Prevalence, group=1)) + geom_errorbar(aes(ymin=PrevalenceFloor, ymax=PrevalenceCeiling), colour="black", width=.1) + ylab("Prevalence of HCV antibody\n among prison population")  + geom_line() + geom_point(aes(shape=Description), size=4) + geom_point(data=HCVPrev, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4)  + scale_shape_manual(values=c(16, 1)) + ylim(0,100) + ggtitle("B") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title=element_text(hjust = -0.10, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
#PlotF <- ggplot(data=HCVP, aes(x=Year, y=Prevalence, group=1)) + geom_errorbar(aes(ymin=PrevalenceFloor, ymax=PrevalenceCeiling), colour="black", width=.1) + ylab("Prevalence of HCV antibody\n among prison population")  + geom_line() + geom_point()+ geom_point(data=HCVPrev, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4) + ylim(0,50) + ggtitle("B") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title=element_text(hjust = -0.12, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))

grid.newpage()
grid.arrange(arrangeGrob(PlotE, PlotF))
IPplots <- rbind (ggplotGrob(PlotE), ggplotGrob(PlotF), size="first")
grid.draw(IPplots)

##Plot OpdNotOST
OpdNotOST <- data.frame("Population"=c(mean(pTotalOpdNotOST$y06), mean(pTotalOpdNotOST$y07), mean(pTotalOpdNotOST$y08), mean(pTotalOpdNotOST$y09), mean(pTotalOpdNotOST$y10), mean(pTotalOpdNotOST$y11), mean(pTotalOpdNotOST$y12), mean(pTotalOpdNotOST$y13), mean(pTotalOpdNotOST$y14), mean(pTotalOpdNotOST$y15), mean(pTotalOpdNotOST$y16)))
OpdNotOST$floor <- c(min(pTotalOpdNotOST$y06), min(pTotalOpdNotOST$y07), min(pTotalOpdNotOST$y08), min(pTotalOpdNotOST$y09), min(pTotalOpdNotOST$y10), min(pTotalOpdNotOST$y11), min(pTotalOpdNotOST$y12), min(pTotalOpdNotOST$y13), min(pTotalOpdNotOST$y14), min(pTotalOpdNotOST$y15), min(pTotalOpdNotOST$y16))
OpdNotOST$ceiling <- c(max(pTotalOpdNotOST$y06), max(pTotalOpdNotOST$y07), max(pTotalOpdNotOST$y08), max(pTotalOpdNotOST$y09), max(pTotalOpdNotOST$y10), max(pTotalOpdNotOST$y11), max(pTotalOpdNotOST$y12), max(pTotalOpdNotOST$y13), max(pTotalOpdNotOST$y14), max(pTotalOpdNotOST$y15), max(pTotalOpdNotOST$y16))
OpdNotOST$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
OpdNotOST$Description <- c("opioid injectors not on OST")

##print Opd as well
ON <- rbind(OpdNotOST, Opd)
ggplot(data=ON, aes(x=Year, y=Population, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=floor, ymax=ceiling), colour="black", width=.1) + ylab("No. PWID injecting opioids\n not on OST") + ylim(0, 2000)  + geom_line(aes(linetype=Description)) + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid"))  + ggtitle("") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title=element_text(hjust = -0.12, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))

##Plot Enetring Ab+ RNA+ and Ab + RNA- pTotalHCVAbe
totalHCVAbe <- data.frame("Population"=c(mean(pTotalHCVAbe$y06), mean(pTotalHCVAbe$y07), mean(pTotalHCVAbe$y08), mean(pTotalHCVAbe$y09), mean(pTotalHCVAbe$y10), mean(pTotalHCVAbe$y11), mean(pTotalHCVAbe$y12), mean(pTotalHCVAbe$y13), mean(pTotalHCVAbe$y14), mean(pTotalHCVAbe$y15), mean(pTotalHCVAbe$y16)))
totalHCVAbe$floor <- c(min(pTotalHCVAbe$y06), min(pTotalHCVAbe$y07), min(pTotalHCVAbe$y08), min(pTotalHCVAbe$y09), min(pTotalHCVAbe$y10), min(pTotalHCVAbe$y11), min(pTotalHCVAbe$y12), min(pTotalHCVAbe$y13), min(pTotalHCVAbe$y14), min(pTotalHCVAbe$y15), min(pTotalHCVAbe$y16))
totalHCVAbe$ceiling <- c(max(pTotalHCVAbe$y06), max(pTotalHCVAbe$y07), max(pTotalHCVAbe$y08), max(pTotalHCVAbe$y09), max(pTotalHCVAbe$y10), max(pTotalHCVAbe$y11), max(pTotalHCVAbe$y12), max(pTotalHCVAbe$y13), max(pTotalHCVAbe$y14), max(pTotalHCVAbe$y15), max(pTotalHCVAbe$y16))
totalHCVAbe$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
totalHCVAbe$Description <- c("Prisoners entering with HCV Ab+ RNA-")

##Plot Entering Ab+ RNA+ and Ab + RNA+ pTotalHCVRNAe
#totalHCVRNAe <- data.frame("Population"=c(mean(pTotalHCVRNAe$y06), mean(pTotalHCVRNAe$y07), mean(pTotalHCVRNAe$y08), mean(pTotalHCVRNAe$y09), mean(pTotalHCVRNAe$y10), mean(pTotalHCVRNAe$y11), mean(pTotalHCVRNAe$y12), mean(pTotalHCVRNAe$y13), mean(pTotalHCVRNAe$y14), mean(pTotalHCVRNAe$y15), mean(pTotalHCVRNAe$y16)))
#totalHCVRNAe$floor <- c(min(pTotalHCVRNAe$y06), min(pTotalHCVRNAe$y07), min(pTotalHCVRNAe$y08), min(pTotalHCVRNAe$y09), min(pTotalHCVRNAe$y10), min(pTotalHCVRNAe$y11), min(pTotalHCVRNAe$y12), min(pTotalHCVRNAe$y13), min(pTotalHCVRNAe$y14), min(pTotalHCVRNAe$y15), min(pTotalHCVRNAe$y16))
#totalHCVRNAe$ceiling <- c(max(pTotalHCVRNAe$y06), max(pTotalHCVRNAe$y07), max(pTotalHCVRNAe$y08), max(pTotalHCVRNAe$y09), max(pTotalHCVRNAe$y10), max(pTotalHCVRNAe$y11), max(pTotalHCVRNAe$y12), max(pTotalHCVRNAe$y13), max(pTotalHCVRNAe$y14), max(pTotalHCVRNAe$y15), max(pTotalHCVRNAe$y16))
#totalHCVRNAe$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
#totalHCVRNAe$Description <- c("Prisoners entering with HCV Ab+ RNA+")

totalNewEntry <- data.frame("Population"=c(mean(pTotalNewEntry$y06), mean(pTotalNewEntry$y07), mean(pTotalNewEntry$y08), mean(pTotalNewEntry$y09), mean(pTotalNewEntry$y10), mean(pTotalNewEntry$y11), mean(pTotalNewEntry$y12), mean(pTotalNewEntry$y13), mean(pTotalNewEntry$y14), mean(pTotalNewEntry$y15), mean(pTotalNewEntry$y16)))
totalNewEntry$floor <- c(min(pTotalNewEntry$y06), min(pTotalNewEntry$y07), min(pTotalNewEntry$y08), min(pTotalNewEntry$y09), min(pTotalNewEntry$y10), min(pTotalNewEntry$y11), min(pTotalNewEntry$y12), min(pTotalNewEntry$y13), min(pTotalNewEntry$y14), min(pTotalNewEntry$y15), min(pTotalNewEntry$y16))
totalNewEntry$ceiling <- c(max(pTotalNewEntry$y06), max(pTotalNewEntry$y07), max(pTotalNewEntry$y08), max(pTotalNewEntry$y09), max(pTotalNewEntry$y10), max(pTotalNewEntry$y11), max(pTotalNewEntry$y12), max(pTotalNewEntry$y13), max(pTotalNewEntry$y14), max(pTotalNewEntry$y15), max(pTotalNewEntry$y16))
totalNewEntry$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
totalNewEntry$Description <- c("New entrants")

totalRepEntry <- data.frame("Population"=c(14697, 14960, 14698, 14890, 14246, 14707, 14857, 15615, 15400))
totalRepEntry$floor <- c(14697, 14960, 14698, 14890, 14246, 14707, 14857, 15615, 15400)
totalRepEntry$ceiling <- c(14697, 14960, 14698, 14890, 14246, 14707, 14857, 15615, 15400)
totalRepEntry$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
totalRepEntry$Description <- c("New entrants (reported)")

#totalHCVRA <- rbind(totalHCVAbe, totalHCVRNAe, totalNewEntry, totalRepEntry)
totalHCVRA <- rbind(totalNewEntry, totalRepEntry)
PlotG <-ggplot(data=totalHCVRA, aes(x=Year, y=Population, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=floor, ymax=ceiling), colour="black", width=.1) + ylab("Number of people") + ylim(10000, 20000)  + geom_line(aes(linetype=Description)) + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16, 4, 7)) + scale_linetype_manual(values=c("dashed", "solid", "dotted", "dotdash")) + ggtitle("A") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title=element_text(hjust = -0.12, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))

##Plot Exit Ab+ RNA+ and Ab + RNA-
totalReleasedHCVAb <- data.frame("Population"=c(mean(pTotalReleasedHCVAb$y06), mean(pTotalReleasedHCVAb$y07), mean(pTotalReleasedHCVAb$y08), mean(pTotalReleasedHCVAb$y09), mean(pTotalReleasedHCVAb$y10), mean(pTotalReleasedHCVAb$y11), mean(pTotalReleasedHCVAb$y12), mean(pTotalReleasedHCVAb$y13), mean(pTotalReleasedHCVAb$y14), mean(pTotalReleasedHCVAb$y15), mean(pTotalReleasedHCVAb$y16)))
totalReleasedHCVAb$floor <- c(min(pTotalReleasedHCVAb$y06), min(pTotalReleasedHCVAb$y07), min(pTotalReleasedHCVAb$y08), min(pTotalReleasedHCVAb$y09), min(pTotalReleasedHCVAb$y10), min(pTotalReleasedHCVAb$y11), min(pTotalReleasedHCVAb$y12), min(pTotalReleasedHCVAb$y13), min(pTotalReleasedHCVAb$y14), min(pTotalReleasedHCVAb$y15), min(pTotalReleasedHCVAb$y16))
totalReleasedHCVAb$ceiling <- c(max(pTotalReleasedHCVAb$y06), max(pTotalReleasedHCVAb$y07), max(pTotalReleasedHCVAb$y08), max(pTotalReleasedHCVAb$y09), max(pTotalReleasedHCVAb$y10), max(pTotalReleasedHCVAb$y11), max(pTotalReleasedHCVAb$y12), max(pTotalReleasedHCVAb$y13), max(pTotalReleasedHCVAb$y14), max(pTotalReleasedHCVAb$y15), max(pTotalReleasedHCVAb$y16))
totalReleasedHCVAb$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
totalReleasedHCVAb$Description <- c("Prisoners released HCV Ab+ RNA-")

##Plot Exit Ab+ RNA+
#totalReleasedHCVRNA <- data.frame("Population"=c(mean(pTotalReleasedHCVRNA$y06), mean(pTotalReleasedHCVRNA$y07), mean(pTotalReleasedHCVRNA$y08), mean(pTotalReleasedHCVRNA$y09), mean(pTotalReleasedHCVRNA$y10), mean(pTotalReleasedHCVRNA$y11), mean(pTotalReleasedHCVRNA$y12), mean(pTotalReleasedHCVRNA$y13), mean(pTotalReleasedHCVRNA$y14), mean(pTotalReleasedHCVRNA$y15), mean(pTotalReleasedHCVRNA$y16)))
#totalReleasedHCVRNA$floor <- c(min(pTotalReleasedHCVRNA$y06), min(pTotalReleasedHCVRNA$y07), min(pTotalReleasedHCVRNA$y08), min(pTotalReleasedHCVRNA$y09), min(pTotalReleasedHCVRNA$y10), min(pTotalReleasedHCVRNA$y11), min(pTotalReleasedHCVRNA$y12), min(pTotalReleasedHCVRNA$y13), min(pTotalReleasedHCVRNA$y14), min(pTotalReleasedHCVRNA$y15), min(pTotalReleasedHCVRNA$y16))
#totalReleasedHCVRNA$ceiling <- c(max(pTotalReleasedHCVRNA$y06), max(pTotalReleasedHCVRNA$y07), max(pTotalReleasedHCVRNA$y08), max(pTotalReleasedHCVRNA$y09), max(pTotalReleasedHCVRNA$y10), max(pTotalReleasedHCVRNA$y11), max(pTotalReleasedHCVRNA$y12), max(pTotalReleasedHCVRNA$y13), max(pTotalReleasedHCVRNA$y14), max(pTotalReleasedHCVRNA$y15), max(pTotalReleasedHCVRNA$y16))
#totalReleasedHCVRNA$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
#totalReleasedHCVRNA$Description <- c("Prisoners released HCV Ab+ RNA+")

totalReleased <- data.frame("Population"=c(mean(pTotalReleased$y06), mean(pTotalReleased$y07), mean(pTotalReleased$y08), mean(pTotalReleased$y09), mean(pTotalReleased$y10), mean(pTotalReleased$y11), mean(pTotalReleased$y12), mean(pTotalReleased$y13), mean(pTotalReleased$y14), mean(pTotalReleased$y15), mean(pTotalReleased$y16)))
totalReleased$floor <- c(min(pTotalReleased$y06), min(pTotalReleased$y07), min(pTotalReleased$y08), min(pTotalReleased$y09), min(pTotalReleased$y10), min(pTotalReleased$y11), min(pTotalReleased$y12), min(pTotalReleased$y13), min(pTotalReleased$y14), min(pTotalReleased$y15), min(pTotalReleased$y16))
totalReleased$ceiling <- c(max(pTotalReleased$y06), max(pTotalReleased$y07), max(pTotalReleased$y08), max(pTotalReleased$y09), max(pTotalReleased$y10), max(pTotalReleased$y11), max(pTotalReleased$y12), max(pTotalReleased$y13), max(pTotalReleased$y14), max(pTotalReleased$y15), max(pTotalReleased$y16))
totalReleased$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
totalReleased$Description <- c("Prisoners released")

totalRepReleased <- data.frame("Population"=c(13999, 14565, 14303, 14655, 14495, 15115, 14781, 15036, 15040))
totalRepReleased$floor <- c(13999, 14565, 14303, 14655, 14495, 15115, 14781, 15036, 15040)
totalRepReleased$ceiling <- c(13999, 14565, 14303, 14655, 14495, 15115, 14781, 15036, 15040)
totalRepReleased$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
totalRepReleased$Description <- c("Prisoners released (reported)")

totalHCVReleased <- rbind(totalReleased, totalRepReleased)
PlotH <- ggplot(data=totalHCVReleased, aes(x=Year, y=Population, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=floor, ymax=ceiling), colour="black", width=.1) + ylab("Number of people") + ylim(10000, 20000)  + geom_line(aes(linetype=Description)) + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16, 4, 7)) + scale_linetype_manual(values=c("dashed", "solid", "dotted", "dotdash"))  + ggtitle("B") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title=element_text(hjust = -0.12, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))

grid.newpage()
grid.arrange(arrangeGrob(PlotG, PlotH))
IPplots <- rbind (ggplotGrob(PlotG), ggplotGrob(PlotH), size="first")
grid.draw(IPplots)