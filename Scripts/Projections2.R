library(ggplot2)
library(gridExtra)
library(grid)
library(lattice)
library(cowplot)

#Load 50 files
pMinA <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMedA <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMaxA <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalA <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pReinfectedA <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesA <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalIDUA <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPrisonHCVA <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pOpdA <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUA <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pClrDA <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalDAAA <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOSTA <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeA <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVA <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]

pMinB <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMedB <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMaxB <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalB <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pReinfectedB <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesB <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalIDUB <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPrisonHCVB <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pOpdB <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUB <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pClrDB <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalDAAB <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOSTB <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeB <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVB <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]

pMinC <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMedC <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMaxC <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalC <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pReinfectedC <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesC <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalIDUC <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPrisonHCVC <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pOpdC <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUC <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pClrDC <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalDAAC <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOSTC <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeC <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVC <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]

for (var in 1:2)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/DAA scenario/results/outDOs_", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "HCVe", "NewEntry", "HCVab", "AveStay")
  
  Y13 <- tempFile[2556:2920,]
  Y14 <- tempFile[2921:3285,]
  Y15 <- tempFile[3286:3650,]
  Y16 <- tempFile[3651:4015,]
  Y17 <- tempFile[4016:4380,]
  Y18 <- tempFile[4381:4745,]
  Y19 <- tempFile[4756:5110,]
  Y20 <- tempFile[5111:5475,]
  Y21 <- tempFile[5476:5840,]
  Y22 <- tempFile[5841:6205,]
  Y23 <- tempFile[6206:6570,]
  Y24 <- tempFile[6571:6935,]
  Y25 <- tempFile[6936:7300,]
  Y26 <- tempFile[7301:7665,]
  Y27 <- tempFile[7666:8030,]
  Y28 <- tempFile[8031:8395,]
  Y29 <- tempFile[8396:8760,]
  Y30 <- tempFile[8761:9125,]
  
  #Create Total Columns for P1 P2 P3
  pMinTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pMinTmp[1,] <- 0
  pMinTmp$y13[1] <- mean(Y13$Pmin0+Y13$Pmin1+Y13$Pmin2+Y13$Pmin3+Y13$Pmin4+Y13$Pmin5+Y13$Pmin6+Y13$Pmin7+Y13$Pmin8+Y13$Pmin9+Y13$Pmin10+Y13$Pmin11)
  pMinTmp$y14[1] <- mean(Y14$Pmin0+Y14$Pmin1+Y14$Pmin2+Y14$Pmin3+Y14$Pmin4+Y14$Pmin5+Y14$Pmin6+Y14$Pmin7+Y14$Pmin8+Y14$Pmin9+Y14$Pmin10+Y14$Pmin11)
  pMinTmp$y15[1] <- mean(Y15$Pmin0+Y15$Pmin1+Y15$Pmin2+Y15$Pmin3+Y15$Pmin4+Y15$Pmin5+Y15$Pmin6+Y15$Pmin7+Y15$Pmin8+Y15$Pmin9+Y15$Pmin10+Y15$Pmin11)
  pMinTmp$y16[1] <- mean(Y16$Pmin0+Y16$Pmin1+Y16$Pmin2+Y16$Pmin3+Y16$Pmin4+Y16$Pmin5+Y16$Pmin6+Y16$Pmin7+Y16$Pmin8+Y16$Pmin9+Y16$Pmin10+Y16$Pmin11)
  pMinTmp$y17[1] <- mean(Y17$Pmin0+Y17$Pmin1+Y17$Pmin2+Y17$Pmin3+Y17$Pmin4+Y17$Pmin5+Y17$Pmin6+Y17$Pmin7+Y17$Pmin8+Y17$Pmin9+Y17$Pmin10+Y17$Pmin11)
  pMinTmp$y18[1] <- mean(Y18$Pmin0+Y18$Pmin1+Y18$Pmin2+Y18$Pmin3+Y18$Pmin4+Y18$Pmin5+Y18$Pmin6+Y18$Pmin7+Y18$Pmin8+Y18$Pmin9+Y18$Pmin10+Y18$Pmin11)
  pMinTmp$y19[1] <- mean(Y19$Pmin0+Y19$Pmin1+Y19$Pmin2+Y19$Pmin3+Y19$Pmin4+Y19$Pmin5+Y19$Pmin6+Y19$Pmin7+Y19$Pmin8+Y19$Pmin9+Y19$Pmin10+Y19$Pmin11)
  pMinTmp$y20[1] <- mean(Y20$Pmin0+Y20$Pmin1+Y20$Pmin2+Y20$Pmin3+Y20$Pmin4+Y20$Pmin5+Y20$Pmin6+Y20$Pmin7+Y20$Pmin8+Y20$Pmin9+Y20$Pmin10+Y20$Pmin11)
  pMinTmp$y21[1] <- mean(Y21$Pmin0+Y21$Pmin1+Y21$Pmin2+Y21$Pmin3+Y21$Pmin4+Y21$Pmin5+Y21$Pmin6+Y21$Pmin7+Y21$Pmin8+Y21$Pmin9+Y21$Pmin10+Y21$Pmin11)
  pMinTmp$y22[1] <- mean(Y22$Pmin0+Y22$Pmin1+Y22$Pmin2+Y22$Pmin3+Y22$Pmin4+Y22$Pmin5+Y22$Pmin6+Y22$Pmin7+Y22$Pmin8+Y22$Pmin9+Y22$Pmin10+Y22$Pmin11)
  pMinTmp$y23[1] <- mean(Y23$Pmin0+Y23$Pmin1+Y23$Pmin2+Y23$Pmin3+Y23$Pmin4+Y23$Pmin5+Y23$Pmin6+Y23$Pmin7+Y23$Pmin8+Y23$Pmin9+Y23$Pmin10+Y23$Pmin11)
  pMinTmp$y24[1] <- mean(Y24$Pmin0+Y24$Pmin1+Y24$Pmin2+Y24$Pmin3+Y24$Pmin4+Y24$Pmin5+Y24$Pmin6+Y24$Pmin7+Y24$Pmin8+Y24$Pmin9+Y24$Pmin10+Y24$Pmin11)
  pMinTmp$y25[1] <- mean(Y25$Pmin0+Y25$Pmin1+Y25$Pmin2+Y25$Pmin3+Y25$Pmin4+Y25$Pmin5+Y25$Pmin6+Y25$Pmin7+Y25$Pmin8+Y25$Pmin9+Y25$Pmin10+Y25$Pmin11)
  pMinTmp$y26[1] <- mean(Y26$Pmin0+Y26$Pmin1+Y26$Pmin2+Y26$Pmin3+Y26$Pmin4+Y26$Pmin5+Y26$Pmin6+Y26$Pmin7+Y26$Pmin8+Y26$Pmin9+Y26$Pmin10+Y26$Pmin11)
  pMinTmp$y27[1] <- mean(Y27$Pmin0+Y27$Pmin1+Y27$Pmin2+Y27$Pmin3+Y27$Pmin4+Y27$Pmin5+Y27$Pmin6+Y27$Pmin7+Y27$Pmin8+Y27$Pmin9+Y27$Pmin10+Y27$Pmin11)
  pMinTmp$y28[1] <- mean(Y28$Pmin0+Y28$Pmin1+Y28$Pmin2+Y28$Pmin3+Y28$Pmin4+Y28$Pmin5+Y28$Pmin6+Y28$Pmin7+Y28$Pmin8+Y28$Pmin9+Y28$Pmin10+Y28$Pmin11)
  pMinTmp$y29[1] <- mean(Y29$Pmin0+Y29$Pmin1+Y29$Pmin2+Y29$Pmin3+Y29$Pmin4+Y29$Pmin5+Y29$Pmin6+Y29$Pmin7+Y29$Pmin8+Y29$Pmin9+Y29$Pmin10+Y29$Pmin11)
  pMinTmp$y30[1] <- mean(Y30$Pmin0+Y30$Pmin1+Y30$Pmin2+Y30$Pmin3+Y30$Pmin4+Y30$Pmin5+Y30$Pmin6+Y30$Pmin7+Y30$Pmin8+Y30$Pmin9+Y30$Pmin10+Y30$Pmin11)
  pMinA <- rbind(pMinA, pMinTmp)
  
  pMedTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pMedTmp[1,] <- 0
  pMedTmp$y13[1] <- mean(Y13$pMed0+Y13$pMed1+Y13$pMed2+Y13$pMed3+Y13$pMed4+Y13$pMed5+Y13$pMed6+Y13$pMed7+Y13$pMed8+Y13$pMed9+Y13$pMed10+Y13$pMed11)
  pMedTmp$y14[1] <- mean(Y14$pMed0+Y14$pMed1+Y14$pMed2+Y14$pMed3+Y14$pMed4+Y14$pMed5+Y14$pMed6+Y14$pMed7+Y14$pMed8+Y14$pMed9+Y14$pMed10+Y14$pMed11)
  pMedTmp$y15[1] <- mean(Y15$pMed0+Y15$pMed1+Y15$pMed2+Y15$pMed3+Y15$pMed4+Y15$pMed5+Y15$pMed6+Y15$pMed7+Y15$pMed8+Y15$pMed9+Y15$pMed10+Y15$pMed11)
  pMedTmp$y16[1] <- mean(Y16$pMed0+Y16$pMed1+Y16$pMed2+Y16$pMed3+Y16$pMed4+Y16$pMed5+Y16$pMed6+Y16$pMed7+Y16$pMed8+Y16$pMed9+Y16$pMed10+Y16$pMed11)
  pMedTmp$y17[1] <- mean(Y17$pMed0+Y17$pMed1+Y17$pMed2+Y17$pMed3+Y17$pMed4+Y17$pMed5+Y17$pMed6+Y17$pMed7+Y17$pMed8+Y17$pMed9+Y17$pMed10+Y17$pMed11)
  pMedTmp$y18[1] <- mean(Y18$pMed0+Y18$pMed1+Y18$pMed2+Y18$pMed3+Y18$pMed4+Y18$pMed5+Y18$pMed6+Y18$pMed7+Y18$pMed8+Y18$pMed9+Y18$pMed10+Y18$pMed11)
  pMedTmp$y19[1] <- mean(Y19$pMed0+Y19$pMed1+Y19$pMed2+Y19$pMed3+Y19$pMed4+Y19$pMed5+Y19$pMed6+Y19$pMed7+Y19$pMed8+Y19$pMed9+Y19$pMed10+Y19$pMed11)
  pMedTmp$y20[1] <- mean(Y20$pMed0+Y20$pMed1+Y20$pMed2+Y20$pMed3+Y20$pMed4+Y20$pMed5+Y20$pMed6+Y20$pMed7+Y20$pMed8+Y20$pMed9+Y20$pMed10+Y20$pMed11)
  pMedTmp$y21[1] <- mean(Y21$pMed0+Y21$pMed1+Y21$pMed2+Y21$pMed3+Y21$pMed4+Y21$pMed5+Y21$pMed6+Y21$pMed7+Y21$pMed8+Y21$pMed9+Y21$pMed10+Y21$pMed11)
  pMedTmp$y22[1] <- mean(Y22$pMed0+Y22$pMed1+Y22$pMed2+Y22$pMed3+Y22$pMed4+Y22$pMed5+Y22$pMed6+Y22$pMed7+Y22$pMed8+Y22$pMed9+Y22$pMed10+Y22$pMed11)
  pMedTmp$y23[1] <- mean(Y23$pMed0+Y23$pMed1+Y23$pMed2+Y23$pMed3+Y23$pMed4+Y23$pMed5+Y23$pMed6+Y23$pMed7+Y23$pMed8+Y23$pMed9+Y23$pMed10+Y23$pMed11)
  pMedTmp$y24[1] <- mean(Y24$pMed0+Y24$pMed1+Y24$pMed2+Y24$pMed3+Y24$pMed4+Y24$pMed5+Y24$pMed6+Y24$pMed7+Y24$pMed8+Y24$pMed9+Y24$pMed10+Y24$pMed11)
  pMedTmp$y25[1] <- mean(Y25$pMed0+Y25$pMed1+Y25$pMed2+Y25$pMed3+Y25$pMed4+Y25$pMed5+Y25$pMed6+Y25$pMed7+Y25$pMed8+Y25$pMed9+Y25$pMed10+Y25$pMed11)
  pMedTmp$y26[1] <- mean(Y26$pMed0+Y26$pMed1+Y26$pMed2+Y26$pMed3+Y26$pMed4+Y26$pMed5+Y26$pMed6+Y26$pMed7+Y26$pMed8+Y26$pMed9+Y26$pMed10+Y26$pMed11)
  pMedTmp$y27[1] <- mean(Y27$pMed0+Y27$pMed1+Y27$pMed2+Y27$pMed3+Y27$pMed4+Y27$pMed5+Y27$pMed6+Y27$pMed7+Y27$pMed8+Y27$pMed9+Y27$pMed10+Y27$pMed11)
  pMedTmp$y28[1] <- mean(Y28$pMed0+Y28$pMed1+Y28$pMed2+Y28$pMed3+Y28$pMed4+Y28$pMed5+Y28$pMed6+Y28$pMed7+Y28$pMed8+Y28$pMed9+Y28$pMed10+Y28$pMed11)
  pMedTmp$y29[1] <- mean(Y29$pMed0+Y29$pMed1+Y29$pMed2+Y29$pMed3+Y29$pMed4+Y29$pMed5+Y29$pMed6+Y29$pMed7+Y29$pMed8+Y29$pMed9+Y29$pMed10+Y29$pMed11)
  pMedTmp$y30[1] <- mean(Y30$pMed0+Y30$pMed1+Y30$pMed2+Y30$pMed3+Y30$pMed4+Y30$pMed5+Y30$pMed6+Y30$pMed7+Y30$pMed8+Y30$pMed9+Y30$pMed10+Y30$pMed11)
  pMedA <- rbind(pMedA, pMedTmp)
  
  pMaxTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pMaxTmp[1,] <- 0
  pMaxTmp$y13[1] <- mean(Y13$pMax0+Y13$pMax1+Y13$pMax2+Y13$pMax3+Y13$pMax4+Y13$pMax5+Y13$pMax6+Y13$pMax7+Y13$pMax8+Y13$pMax9+Y13$pMax10+Y13$pMax11)
  pMaxTmp$y14[1] <- mean(Y14$pMax0+Y14$pMax1+Y14$pMax2+Y14$pMax3+Y14$pMax4+Y14$pMax5+Y14$pMax6+Y14$pMax7+Y14$pMax8+Y14$pMax9+Y14$pMax10+Y14$pMax11)
  pMaxTmp$y15[1] <- mean(Y15$pMax0+Y15$pMax1+Y15$pMax2+Y15$pMax3+Y15$pMax4+Y15$pMax5+Y15$pMax6+Y15$pMax7+Y15$pMax8+Y15$pMax9+Y15$pMax10+Y15$pMax11)
  pMaxTmp$y16[1] <- mean(Y16$pMax0+Y16$pMax1+Y16$pMax2+Y16$pMax3+Y16$pMax4+Y16$pMax5+Y16$pMax6+Y16$pMax7+Y16$pMax8+Y16$pMax9+Y16$pMax10+Y16$pMax11)
  pMaxTmp$y17[1] <- mean(Y17$pMax0+Y17$pMax1+Y17$pMax2+Y17$pMax3+Y17$pMax4+Y17$pMax5+Y17$pMax6+Y17$pMax7+Y17$pMax8+Y17$pMax9+Y17$pMax10+Y17$pMax11)
  pMaxTmp$y18[1] <- mean(Y18$pMax0+Y18$pMax1+Y18$pMax2+Y18$pMax3+Y18$pMax4+Y18$pMax5+Y18$pMax6+Y18$pMax7+Y18$pMax8+Y18$pMax9+Y18$pMax10+Y18$pMax11)
  pMaxTmp$y19[1] <- mean(Y19$pMax0+Y19$pMax1+Y19$pMax2+Y19$pMax3+Y19$pMax4+Y19$pMax5+Y19$pMax6+Y19$pMax7+Y19$pMax8+Y19$pMax9+Y19$pMax10+Y19$pMax11)
  pMaxTmp$y20[1] <- mean(Y20$pMax0+Y20$pMax1+Y20$pMax2+Y20$pMax3+Y20$pMax4+Y20$pMax5+Y20$pMax6+Y20$pMax7+Y20$pMax8+Y20$pMax9+Y20$pMax10+Y20$pMax11)
  pMaxTmp$y21[1] <- mean(Y21$pMax0+Y21$pMax1+Y21$pMax2+Y21$pMax3+Y21$pMax4+Y21$pMax5+Y21$pMax6+Y21$pMax7+Y21$pMax8+Y21$pMax9+Y21$pMax10+Y21$pMax11)
  pMaxTmp$y22[1] <- mean(Y22$pMax0+Y22$pMax1+Y22$pMax2+Y22$pMax3+Y22$pMax4+Y22$pMax5+Y22$pMax6+Y22$pMax7+Y22$pMax8+Y22$pMax9+Y22$pMax10+Y22$pMax11)
  pMaxTmp$y23[1] <- mean(Y23$pMax0+Y23$pMax1+Y23$pMax2+Y23$pMax3+Y23$pMax4+Y23$pMax5+Y23$pMax6+Y23$pMax7+Y23$pMax8+Y23$pMax9+Y23$pMax10+Y23$pMax11)
  pMaxTmp$y24[1] <- mean(Y24$pMax0+Y24$pMax1+Y24$pMax2+Y24$pMax3+Y24$pMax4+Y24$pMax5+Y24$pMax6+Y24$pMax7+Y24$pMax8+Y24$pMax9+Y24$pMax10+Y24$pMax11)
  pMaxTmp$y25[1] <- mean(Y25$pMax0+Y25$pMax1+Y25$pMax2+Y25$pMax3+Y25$pMax4+Y25$pMax5+Y25$pMax6+Y25$pMax7+Y25$pMax8+Y25$pMax9+Y25$pMax10+Y25$pMax11)
  pMaxTmp$y26[1] <- mean(Y26$pMax0+Y26$pMax1+Y26$pMax2+Y26$pMax3+Y26$pMax4+Y26$pMax5+Y26$pMax6+Y26$pMax7+Y26$pMax8+Y26$pMax9+Y26$pMax10+Y26$pMax11)
  pMaxTmp$y27[1] <- mean(Y27$pMax0+Y27$pMax1+Y27$pMax2+Y27$pMax3+Y27$pMax4+Y27$pMax5+Y27$pMax6+Y27$pMax7+Y27$pMax8+Y27$pMax9+Y27$pMax10+Y27$pMax11)
  pMaxTmp$y28[1] <- mean(Y28$pMax0+Y28$pMax1+Y28$pMax2+Y28$pMax3+Y28$pMax4+Y28$pMax5+Y28$pMax6+Y28$pMax7+Y28$pMax8+Y28$pMax9+Y28$pMax10+Y28$pMax11)
  pMaxTmp$y29[1] <- mean(Y29$pMax0+Y29$pMax1+Y29$pMax2+Y29$pMax3+Y29$pMax4+Y29$pMax5+Y29$pMax6+Y29$pMax7+Y29$pMax8+Y29$pMax9+Y29$pMax10+Y29$pMax11)
  pMaxTmp$y30[1] <- mean(Y30$pMax0+Y30$pMax1+Y30$pMax2+Y30$pMax3+Y30$pMax4+Y30$pMax5+Y30$pMax6+Y30$pMax7+Y30$pMax8+Y30$pMax9+Y30$pMax10+Y30$pMax11)
  pMaxA <- rbind(pMaxA, pMaxTmp)
  
  pTotalTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pTotalTmp[1,] <- 0
  pTotalTmp$y13[1] <- mean(Y13$TotalPrisonPop)
  pTotalTmp$y14[1] <- mean(Y14$TotalPrisonPop)
  pTotalTmp$y15[1] <- mean(Y15$TotalPrisonPop)
  pTotalTmp$y16[1] <- mean(Y16$TotalPrisonPop)
  pTotalTmp$y17[1] <- mean(Y17$TotalPrisonPop)
  pTotalTmp$y18[1] <- mean(Y18$TotalPrisonPop)
  pTotalTmp$y19[1] <- mean(Y19$TotalPrisonPop)
  pTotalTmp$y20[1] <- mean(Y20$TotalPrisonPop)
  pTotalTmp$y21[1] <- mean(Y21$TotalPrisonPop)
  pTotalTmp$y22[1] <- mean(Y22$TotalPrisonPop)
  pTotalTmp$y23[1] <- mean(Y23$TotalPrisonPop)
  pTotalTmp$y24[1] <- mean(Y24$TotalPrisonPop)
  pTotalTmp$y25[1] <- mean(Y25$TotalPrisonPop)
  pTotalTmp$y26[1] <- mean(Y26$TotalPrisonPop)
  pTotalTmp$y27[1] <- mean(Y27$TotalPrisonPop)
  pTotalTmp$y28[1] <- mean(Y28$TotalPrisonPop)
  pTotalTmp$y29[1] <- mean(Y29$TotalPrisonPop)
  pTotalTmp$y30[1] <- mean(Y30$TotalPrisonPop)
  pTotalA <- rbind(pTotalA, pTotalTmp)
  
  pReTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pReTmp[1,] <- 0
  pReTmp$y13[1] <- mean(Y13$reinfected)
  pReTmp$y14[1] <- mean(Y14$reinfected)
  pReTmp$y15[1] <- mean(Y15$reinfected)
  pReTmp$y16[1] <- mean(Y16$reinfected)
  pReTmp$y17[1] <- mean(Y17$reinfected)
  pReTmp$y18[1] <- mean(Y18$reinfected)
  pReTmp$y19[1] <- mean(Y19$reinfected)
  pReTmp$y20[1] <- mean(Y20$reinfected)
  pReTmp$y21[1] <- mean(Y21$reinfected)
  pReTmp$y22[1] <- mean(Y22$reinfected)
  pReTmp$y23[1] <- mean(Y23$reinfected)
  pReTmp$y24[1] <- mean(Y24$reinfected)
  pReTmp$y25[1] <- mean(Y25$reinfected)
  pReTmp$y26[1] <- mean(Y26$reinfected)
  pReTmp$y27[1] <- mean(Y27$reinfected)
  pReTmp$y28[1] <- mean(Y28$reinfected)
  pReTmp$y29[1] <- mean(Y29$reinfected)
  pReTmp$y30[1] <- mean(Y30$reinfected)
  pReinfectedA <- rbind(pReinfectedA, pReTmp)
  
  pNcTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pNcTmp[1,] <- 0
  pNcTmp$y13[1] <- mean(Y13$NewCases)
  pNcTmp$y14[1] <- mean(Y14$NewCases)
  pNcTmp$y15[1] <- mean(Y15$NewCases)
  pNcTmp$y16[1] <- mean(Y16$NewCases)
  pNcTmp$y17[1] <- mean(Y17$NewCases)
  pNcTmp$y18[1] <- mean(Y18$NewCases)
  pNcTmp$y19[1] <- mean(Y19$NewCases)
  pNcTmp$y20[1] <- mean(Y20$NewCases)
  pNcTmp$y21[1] <- mean(Y21$NewCases)
  pNcTmp$y22[1] <- mean(Y22$NewCases)
  pNcTmp$y23[1] <- mean(Y23$NewCases)
  pNcTmp$y24[1] <- mean(Y24$NewCases)
  pNcTmp$y25[1] <- mean(Y25$NewCases)
  pNcTmp$y26[1] <- mean(Y26$NewCases)
  pNcTmp$y27[1] <- mean(Y27$NewCases)
  pNcTmp$y28[1] <- mean(Y28$NewCases)
  pNcTmp$y29[1] <- mean(Y29$NewCases)
  pNcTmp$y30[1] <- mean(Y30$NewCases)
  pNewCasesA <- rbind(pNewCasesA, pNcTmp)
  
  pIDUTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pIDUTmp[1,] <- 0
  pIDUTmp$y13[1] <- mean(Y13$Pmin0+Y13$Pmin1+Y13$Pmin2+Y13$Pmin3+Y13$Pmin4+Y13$Pmin5+Y13$Pmed0+Y13$Pmed1+Y13$Pmed2+Y13$Pmed3+Y13$Pmed4+Y13$Pmed5+Y13$Pmax0+Y13$Pmax1+Y13$Pmax2+Y13$Pmax3+Y13$Pmax4+Y13$Pmax5)
  pIDUTmp$y14[1] <- mean(Y14$Pmin0+Y14$Pmin1+Y14$Pmin2+Y14$Pmin3+Y14$Pmin4+Y14$Pmin5+Y14$Pmed0+Y14$Pmed1+Y14$Pmed2+Y14$Pmed3+Y14$Pmed4+Y14$Pmed5+Y14$Pmax0+Y14$Pmax1+Y14$Pmax2+Y14$Pmax3+Y14$Pmax4+Y14$Pmax5)
  pIDUTmp$y15[1] <- mean(Y15$Pmin0+Y15$Pmin1+Y15$Pmin2+Y15$Pmin3+Y15$Pmin4+Y15$Pmin5+Y15$Pmed0+Y15$Pmed1+Y15$Pmed2+Y15$Pmed3+Y15$Pmed4+Y15$Pmed5+Y15$Pmax0+Y15$Pmax1+Y15$Pmax2+Y15$Pmax3+Y15$Pmax4+Y15$Pmax5)
  pIDUTmp$y16[1] <- mean(Y16$Pmin0+Y16$Pmin1+Y16$Pmin2+Y16$Pmin3+Y16$Pmin4+Y16$Pmin5+Y16$Pmed0+Y16$Pmed1+Y16$Pmed2+Y16$Pmed3+Y16$Pmed4+Y16$Pmed5+Y16$Pmax0+Y16$Pmax1+Y16$Pmax2+Y16$Pmax3+Y16$Pmax4+Y16$Pmax5)
  pIDUTmp$y17[1] <- mean(Y17$Pmin0+Y17$Pmin1+Y17$Pmin2+Y17$Pmin3+Y17$Pmin4+Y17$Pmin5+Y17$Pmed0+Y17$Pmed1+Y17$Pmed2+Y17$Pmed3+Y17$Pmed4+Y17$Pmed5+Y17$Pmax0+Y17$Pmax1+Y17$Pmax2+Y17$Pmax3+Y17$Pmax4+Y17$Pmax5)
  pIDUTmp$y18[1] <- mean(Y18$Pmin0+Y18$Pmin1+Y18$Pmin2+Y18$Pmin3+Y18$Pmin4+Y18$Pmin5+Y18$Pmed0+Y18$Pmed1+Y18$Pmed2+Y18$Pmed3+Y18$Pmed4+Y18$Pmed5+Y18$Pmax0+Y18$Pmax1+Y18$Pmax2+Y18$Pmax3+Y18$Pmax4+Y18$Pmax5)
  pIDUTmp$y19[1] <- mean(Y19$Pmin0+Y19$Pmin1+Y19$Pmin2+Y19$Pmin3+Y19$Pmin4+Y19$Pmin5+Y19$Pmed0+Y19$Pmed1+Y19$Pmed2+Y19$Pmed3+Y19$Pmed4+Y19$Pmed5+Y19$Pmax0+Y19$Pmax1+Y19$Pmax2+Y19$Pmax3+Y19$Pmax4+Y19$Pmax5)
  pIDUTmp$y20[1] <- mean(Y20$Pmin0+Y20$Pmin1+Y20$Pmin2+Y20$Pmin3+Y20$Pmin4+Y20$Pmin5+Y20$Pmed0+Y20$Pmed1+Y20$Pmed2+Y20$Pmed3+Y20$Pmed4+Y20$Pmed5+Y20$Pmax0+Y20$Pmax1+Y20$Pmax2+Y20$Pmax3+Y20$Pmax4+Y20$Pmax5)
  pIDUTmp$y21[1] <- mean(Y21$Pmin0+Y21$Pmin1+Y21$Pmin2+Y21$Pmin3+Y21$Pmin4+Y21$Pmin5+Y21$Pmed0+Y21$Pmed1+Y21$Pmed2+Y21$Pmed3+Y21$Pmed4+Y21$Pmed5+Y21$Pmax0+Y21$Pmax1+Y21$Pmax2+Y21$Pmax3+Y21$Pmax4+Y21$Pmax5)
  pIDUTmp$y22[1] <- mean(Y22$Pmin0+Y22$Pmin1+Y22$Pmin2+Y22$Pmin3+Y22$Pmin4+Y22$Pmin5+Y22$Pmed0+Y22$Pmed1+Y22$Pmed2+Y22$Pmed3+Y22$Pmed4+Y22$Pmed5+Y22$Pmax0+Y22$Pmax1+Y22$Pmax2+Y22$Pmax3+Y22$Pmax4+Y22$Pmax5)
  pIDUTmp$y23[1] <- mean(Y23$Pmin0+Y23$Pmin1+Y23$Pmin2+Y23$Pmin3+Y23$Pmin4+Y23$Pmin5+Y23$Pmed0+Y23$Pmed1+Y23$Pmed2+Y23$Pmed3+Y23$Pmed4+Y23$Pmed5+Y23$Pmax0+Y23$Pmax1+Y23$Pmax2+Y23$Pmax3+Y23$Pmax4+Y23$Pmax5)
  pIDUTmp$y24[1] <- mean(Y24$Pmin0+Y24$Pmin1+Y24$Pmin2+Y24$Pmin3+Y24$Pmin4+Y24$Pmin5+Y24$Pmed0+Y24$Pmed1+Y24$Pmed2+Y24$Pmed3+Y24$Pmed4+Y24$Pmed5+Y24$Pmax0+Y24$Pmax1+Y24$Pmax2+Y24$Pmax3+Y24$Pmax4+Y24$Pmax5)
  pIDUTmp$y25[1] <- mean(Y25$Pmin0+Y25$Pmin1+Y25$Pmin2+Y25$Pmin3+Y25$Pmin4+Y25$Pmin5+Y25$Pmed0+Y25$Pmed1+Y25$Pmed2+Y25$Pmed3+Y25$Pmed4+Y25$Pmed5+Y25$Pmax0+Y25$Pmax1+Y25$Pmax2+Y25$Pmax3+Y25$Pmax4+Y25$Pmax5)
  pIDUTmp$y26[1] <- mean(Y26$Pmin0+Y26$Pmin1+Y26$Pmin2+Y26$Pmin3+Y26$Pmin4+Y26$Pmin5+Y26$Pmed0+Y26$Pmed1+Y26$Pmed2+Y26$Pmed3+Y26$Pmed4+Y26$Pmed5+Y26$Pmax0+Y26$Pmax1+Y26$Pmax2+Y26$Pmax3+Y26$Pmax4+Y26$Pmax5)
  pIDUTmp$y27[1] <- mean(Y27$Pmin0+Y27$Pmin1+Y27$Pmin2+Y27$Pmin3+Y27$Pmin4+Y27$Pmin5+Y27$Pmed0+Y27$Pmed1+Y27$Pmed2+Y27$Pmed3+Y27$Pmed4+Y27$Pmed5+Y27$Pmax0+Y27$Pmax1+Y27$Pmax2+Y27$Pmax3+Y27$Pmax4+Y27$Pmax5)
  pIDUTmp$y28[1] <- mean(Y28$Pmin0+Y28$Pmin1+Y28$Pmin2+Y28$Pmin3+Y28$Pmin4+Y28$Pmin5+Y28$Pmed0+Y28$Pmed1+Y28$Pmed2+Y28$Pmed3+Y28$Pmed4+Y28$Pmed5+Y28$Pmax0+Y28$Pmax1+Y28$Pmax2+Y28$Pmax3+Y28$Pmax4+Y28$Pmax5)
  pIDUTmp$y29[1] <- mean(Y29$Pmin0+Y29$Pmin1+Y29$Pmin2+Y29$Pmin3+Y29$Pmin4+Y29$Pmin5+Y29$Pmed0+Y29$Pmed1+Y29$Pmed2+Y29$Pmed3+Y29$Pmed4+Y29$Pmed5+Y29$Pmax0+Y29$Pmax1+Y29$Pmax2+Y29$Pmax3+Y29$Pmax4+Y29$Pmax5)
  pIDUTmp$y30[1] <- mean(Y30$Pmin0+Y30$Pmin1+Y30$Pmin2+Y30$Pmin3+Y30$Pmin4+Y30$Pmin5+Y30$Pmed0+Y30$Pmed1+Y30$Pmed2+Y30$Pmed3+Y30$Pmed4+Y30$Pmed5+Y30$Pmax0+Y30$Pmax1+Y30$Pmax2+Y30$Pmax3+Y30$Pmax4+Y30$Pmax5)
  pTotalIDUA <- rbind(pTotalIDUA, pIDUTmp)
  
  pPrisonTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pPrisonTmp[1,] <- 0
  pPrisonTmp$y13[1] <- mean(Y13$PrisonHCV)
  pPrisonTmp$y14[1] <- mean(Y14$PrisonHCV)
  pPrisonTmp$y15[1] <- mean(Y15$PrisonHCV)
  pPrisonTmp$y16[1] <- mean(Y16$PrisonHCV)
  pPrisonTmp$y17[1] <- mean(Y17$PrisonHCV)
  pPrisonTmp$y18[1] <- mean(Y18$PrisonHCV)
  pPrisonTmp$y19[1] <- mean(Y19$PrisonHCV)
  pPrisonTmp$y20[1] <- mean(Y20$PrisonHCV)
  pPrisonTmp$y21[1] <- mean(Y21$PrisonHCV)
  pPrisonTmp$y22[1] <- mean(Y22$PrisonHCV)
  pPrisonTmp$y23[1] <- mean(Y23$PrisonHCV)
  pPrisonTmp$y24[1] <- mean(Y24$PrisonHCV)
  pPrisonTmp$y25[1] <- mean(Y25$PrisonHCV)
  pPrisonTmp$y26[1] <- mean(Y26$PrisonHCV)
  pPrisonTmp$y27[1] <- mean(Y27$PrisonHCV)
  pPrisonTmp$y28[1] <- mean(Y28$PrisonHCV)
  pPrisonTmp$y29[1] <- mean(Y29$PrisonHCV)
  pPrisonTmp$y30[1] <- mean(Y30$PrisonHCV)
  pPrisonHCVA <- rbind(pPrisonHCVA, pPrisonTmp)
  
  pOpdTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pOpdTmp[1,] <- 0
  pOpdTmp$y13[1] <- mean(Y13$OPD)
  pOpdTmp$y14[1] <- mean(Y14$OPD)
  pOpdTmp$y15[1] <- mean(Y15$OPD)
  pOpdTmp$y16[1] <- mean(Y16$OPD)
  pOpdTmp$y17[1] <- mean(Y17$OPD)
  pOpdTmp$y18[1] <- mean(Y18$OPD)
  pOpdTmp$y19[1] <- mean(Y19$OPD)
  pOpdTmp$y20[1] <- mean(Y20$OPD)
  pOpdTmp$y21[1] <- mean(Y21$OPD)
  pOpdTmp$y22[1] <- mean(Y22$OPD)
  pOpdTmp$y23[1] <- mean(Y23$OPD)
  pOpdTmp$y24[1] <- mean(Y24$OPD)
  pOpdTmp$y25[1] <- mean(Y25$OPD)
  pOpdTmp$y26[1] <- mean(Y26$OPD)
  pOpdTmp$y27[1] <- mean(Y27$OPD)
  pOpdTmp$y28[1] <- mean(Y28$OPD)
  pOpdTmp$y29[1] <- mean(Y29$OPD)
  pOpdTmp$y30[1] <- mean(Y30$OPD)
  pOpdA <- rbind(pOpdA, pOpdTmp)
  
  pEverTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pEverTmp[1,] <- 0
  pEverTmp$y13[1] <- mean(Y13$everIDU)
  pEverTmp$y14[1] <- mean(Y14$everIDU)
  pEverTmp$y15[1] <- mean(Y15$everIDU)
  pEverTmp$y16[1] <- mean(Y16$everIDU)
  pEverTmp$y17[1] <- mean(Y17$everIDU)
  pEverTmp$y18[1] <- mean(Y18$everIDU)
  pEverTmp$y19[1] <- mean(Y19$everIDU)
  pEverTmp$y20[1] <- mean(Y20$everIDU)
  pEverTmp$y21[1] <- mean(Y21$everIDU)
  pEverTmp$y22[1] <- mean(Y22$everIDU)
  pEverTmp$y23[1] <- mean(Y23$everIDU)
  pEverTmp$y24[1] <- mean(Y24$everIDU)
  pEverTmp$y25[1] <- mean(Y25$everIDU)
  pEverTmp$y26[1] <- mean(Y26$everIDU)
  pEverTmp$y27[1] <- mean(Y27$everIDU)
  pEverTmp$y28[1] <- mean(Y28$everIDU)
  pEverTmp$y29[1] <- mean(Y29$everIDU)
  pEverTmp$y30[1] <- mean(Y30$everIDU)
  pEverIDUA <- rbind(pEverIDUA, pEverTmp)
  
  pClrTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pClrTmp[1,] <- 0
  pClrTmp$y13[1] <- mean(Y13$totalClrDAA)
  pClrTmp$y14[1] <- mean(Y14$totalClrDAA)
  pClrTmp$y15[1] <- mean(Y15$totalClrDAA)
  pClrTmp$y16[1] <- mean(Y16$totalClrDAA)
  pClrTmp$y17[1] <- mean(Y17$totalClrDAA)
  pClrTmp$y18[1] <- mean(Y18$totalClrDAA)
  pClrTmp$y19[1] <- mean(Y19$totalClrDAA)
  pClrTmp$y20[1] <- mean(Y20$totalClrDAA)
  pClrTmp$y21[1] <- mean(Y21$totalClrDAA)
  pClrTmp$y22[1] <- mean(Y22$totalClrDAA)
  pClrTmp$y23[1] <- mean(Y23$totalClrDAA)
  pClrTmp$y24[1] <- mean(Y24$totalClrDAA)
  pClrTmp$y25[1] <- mean(Y25$totalClrDAA)
  pClrTmp$y26[1] <- mean(Y26$totalClrDAA)
  pClrTmp$y27[1] <- mean(Y27$totalClrDAA)
  pClrTmp$y28[1] <- mean(Y28$totalClrDAA)
  pClrTmp$y29[1] <- mean(Y29$totalClrDAA)
  pClrTmp$y30[1] <- mean(Y30$totalClrDAA)
  pClrDA <- rbind(pClrDA, pClrTmp)
  
  ptDAATmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptDAATmp[1,] <- 0
  ptDAATmp$y13[1] <- mean(Y13$totalDAA)
  ptDAATmp$y14[1] <- mean(Y14$totalDAA)
  ptDAATmp$y15[1] <- mean(Y15$totalDAA)
  ptDAATmp$y16[1] <- mean(Y16$totalDAA)
  ptDAATmp$y17[1] <- mean(Y17$totalDAA)
  ptDAATmp$y18[1] <- mean(Y18$totalDAA)
  ptDAATmp$y19[1] <- mean(Y19$totalDAA)
  ptDAATmp$y20[1] <- mean(Y20$totalDAA)
  ptDAATmp$y21[1] <- mean(Y21$totalDAA)
  ptDAATmp$y22[1] <- mean(Y22$totalDAA)
  ptDAATmp$y23[1] <- mean(Y23$totalDAA)
  ptDAATmp$y24[1] <- mean(Y24$totalDAA)
  ptDAATmp$y25[1] <- mean(Y25$totalDAA)
  ptDAATmp$y26[1] <- mean(Y26$totalDAA)
  ptDAATmp$y27[1] <- mean(Y27$totalDAA)
  ptDAATmp$y28[1] <- mean(Y28$totalDAA)
  ptDAATmp$y29[1] <- mean(Y29$totalDAA)
  ptDAATmp$y30[1] <- mean(Y30$totalDAA)
  pTotalDAAA <- rbind(pTotalDAAA, ptDAATmp)
  
  ptOSTTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptOSTTmp[1,] <- 0
  ptOSTTmp$y13[1] <- mean(Y13$totalOST)
  ptOSTTmp$y14[1] <- mean(Y14$totalOST)
  ptOSTTmp$y15[1] <- mean(Y15$totalOST)
  ptOSTTmp$y16[1] <- mean(Y16$totalOST)
  ptOSTTmp$y17[1] <- mean(Y17$totalOST)
  ptOSTTmp$y18[1] <- mean(Y18$totalOST)
  ptOSTTmp$y19[1] <- mean(Y19$totalOST)
  ptOSTTmp$y20[1] <- mean(Y20$totalOST)
  ptOSTTmp$y21[1] <- mean(Y21$totalOST)
  ptOSTTmp$y22[1] <- mean(Y22$totalOST)
  ptOSTTmp$y23[1] <- mean(Y23$totalOST)
  ptOSTTmp$y24[1] <- mean(Y24$totalOST)
  ptOSTTmp$y25[1] <- mean(Y25$totalOST)
  ptOSTTmp$y26[1] <- mean(Y26$totalOST)
  ptOSTTmp$y27[1] <- mean(Y27$totalOST)
  ptOSTTmp$y28[1] <- mean(Y28$totalOST)
  ptOSTTmp$y29[1] <- mean(Y29$totalOST)
  ptOSTTmp$y30[1] <- mean(Y30$totalOST)
  pTotalOSTA <- rbind(pTotalOSTA, ptOSTTmp)
  
  ptHCVeTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptHCVeTmp[1,] <- 0
  ptHCVeTmp$y13[1] <- mean(Y13$HCVe)
  ptHCVeTmp$y14[1] <- mean(Y14$HCVe)
  ptHCVeTmp$y15[1] <- mean(Y15$HCVe)
  ptHCVeTmp$y16[1] <- mean(Y16$HCVe)
  ptHCVeTmp$y17[1] <- mean(Y17$HCVe)
  ptHCVeTmp$y18[1] <- mean(Y18$HCVe)
  ptHCVeTmp$y19[1] <- mean(Y19$HCVe)
  ptHCVeTmp$y20[1] <- mean(Y20$HCVe)
  ptHCVeTmp$y21[1] <- mean(Y21$HCVe)
  ptHCVeTmp$y22[1] <- mean(Y22$HCVe)
  ptHCVeTmp$y23[1] <- mean(Y23$HCVe)
  ptHCVeTmp$y24[1] <- mean(Y24$HCVe)
  ptHCVeTmp$y25[1] <- mean(Y25$HCVe)
  ptHCVeTmp$y26[1] <- mean(Y26$HCVe)
  ptHCVeTmp$y27[1] <- mean(Y27$HCVe)
  ptHCVeTmp$y28[1] <- mean(Y28$HCVe)
  ptHCVeTmp$y29[1] <- mean(Y29$HCVe)
  ptHCVeTmp$y30[1] <- mean(Y30$HCVe)
  pTotalHCVeA <- rbind(pTotalHCVeA, ptHCVeTmp)
  
  ptHCVTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptHCVTmp[1,] <- 0
  ptHCVTmp$y13[1] <- mean(Y13$Pmin0+Y13$Pmin1+Y13$Pmin6+Y13$Pmin7+Y13$Pmed0+Y13$Pmed1+Y13$Pmed6+Y13$Pmed7+Y13$Pmax0+Y13$Pmax1+Y13$Pmax6+Y13$Pmax7)
  ptHCVTmp$y14[1] <- mean(Y14$Pmin0+Y14$Pmin1+Y14$Pmin6+Y14$Pmin7+Y14$Pmed0+Y14$Pmed1+Y14$Pmed6+Y14$Pmed7+Y14$Pmax0+Y14$Pmax1+Y14$Pmax6+Y14$Pmax7)
  ptHCVTmp$y15[1] <- mean(Y15$Pmin0+Y15$Pmin1+Y15$Pmin6+Y15$Pmin7+Y15$Pmed0+Y15$Pmed1+Y15$Pmed6+Y15$Pmed7+Y15$Pmax0+Y15$Pmax1+Y15$Pmax6+Y15$Pmax7)
  ptHCVTmp$y16[1] <- mean(Y16$Pmin0+Y16$Pmin1+Y16$Pmin6+Y16$Pmin7+Y16$Pmed0+Y16$Pmed1+Y16$Pmed6+Y16$Pmed7+Y16$Pmax0+Y16$Pmax1+Y16$Pmax6+Y16$Pmax7)
  ptHCVTmp$y17[1] <- mean(Y17$Pmin0+Y17$Pmin1+Y17$Pmin6+Y17$Pmin7+Y17$Pmed0+Y17$Pmed1+Y17$Pmed6+Y17$Pmed7+Y17$Pmax0+Y17$Pmax1+Y17$Pmax6+Y17$Pmax7)
  ptHCVTmp$y18[1] <- mean(Y18$Pmin0+Y18$Pmin1+Y18$Pmin6+Y18$Pmin7+Y18$Pmed0+Y18$Pmed1+Y18$Pmed6+Y18$Pmed7+Y18$Pmax0+Y18$Pmax1+Y18$Pmax6+Y18$Pmax7)
  ptHCVTmp$y19[1] <- mean(Y19$Pmin0+Y19$Pmin1+Y19$Pmin6+Y19$Pmin7+Y19$Pmed0+Y19$Pmed1+Y19$Pmed6+Y19$Pmed7+Y19$Pmax0+Y19$Pmax1+Y19$Pmax6+Y19$Pmax7)
  ptHCVTmp$y20[1] <- mean(Y20$Pmin0+Y20$Pmin1+Y20$Pmin6+Y20$Pmin7+Y20$Pmed0+Y20$Pmed1+Y20$Pmed6+Y20$Pmed7+Y20$Pmax0+Y20$Pmax1+Y20$Pmax6+Y20$Pmax7)
  ptHCVTmp$y21[1] <- mean(Y21$Pmin0+Y21$Pmin1+Y21$Pmin6+Y21$Pmin7+Y21$Pmed0+Y21$Pmed1+Y21$Pmed6+Y21$Pmed7+Y21$Pmax0+Y21$Pmax1+Y21$Pmax6+Y21$Pmax7)
  ptHCVTmp$y22[1] <- mean(Y22$Pmin0+Y22$Pmin1+Y22$Pmin6+Y22$Pmin7+Y22$Pmed0+Y22$Pmed1+Y22$Pmed6+Y22$Pmed7+Y22$Pmax0+Y22$Pmax1+Y22$Pmax6+Y22$Pmax7)
  ptHCVTmp$y23[1] <- mean(Y23$Pmin0+Y23$Pmin1+Y23$Pmin6+Y23$Pmin7+Y23$Pmed0+Y23$Pmed1+Y23$Pmed6+Y23$Pmed7+Y23$Pmax0+Y23$Pmax1+Y23$Pmax6+Y23$Pmax7)
  ptHCVTmp$y24[1] <- mean(Y24$Pmin0+Y24$Pmin1+Y24$Pmin6+Y24$Pmin7+Y24$Pmed0+Y24$Pmed1+Y24$Pmed6+Y24$Pmed7+Y24$Pmax0+Y24$Pmax1+Y24$Pmax6+Y24$Pmax7)
  ptHCVTmp$y25[1] <- mean(Y25$Pmin0+Y25$Pmin1+Y25$Pmin6+Y25$Pmin7+Y25$Pmed0+Y25$Pmed1+Y25$Pmed6+Y25$Pmed7+Y25$Pmax0+Y25$Pmax1+Y25$Pmax6+Y25$Pmax7)
  ptHCVTmp$y26[1] <- mean(Y26$Pmin0+Y26$Pmin1+Y26$Pmin6+Y26$Pmin7+Y26$Pmed0+Y26$Pmed1+Y26$Pmed6+Y26$Pmed7+Y26$Pmax0+Y26$Pmax1+Y26$Pmax6+Y26$Pmax7)
  ptHCVTmp$y27[1] <- mean(Y27$Pmin0+Y27$Pmin1+Y27$Pmin6+Y27$Pmin7+Y27$Pmed0+Y27$Pmed1+Y27$Pmed6+Y27$Pmed7+Y27$Pmax0+Y27$Pmax1+Y27$Pmax6+Y27$Pmax7)
  ptHCVTmp$y28[1] <- mean(Y28$Pmin0+Y28$Pmin1+Y28$Pmin6+Y28$Pmin7+Y28$Pmed0+Y28$Pmed1+Y28$Pmed6+Y28$Pmed7+Y28$Pmax0+Y28$Pmax1+Y28$Pmax6+Y28$Pmax7)
  ptHCVTmp$y29[1] <- mean(Y29$Pmin0+Y29$Pmin1+Y29$Pmin6+Y29$Pmin7+Y29$Pmed0+Y29$Pmed1+Y29$Pmed6+Y29$Pmed7+Y29$Pmax0+Y29$Pmax1+Y29$Pmax6+Y29$Pmax7)
  ptHCVTmp$y30[1] <- mean(Y30$Pmin0+Y30$Pmin1+Y30$Pmin6+Y30$Pmin7+Y30$Pmed0+Y30$Pmed1+Y30$Pmed6+Y30$Pmed7+Y30$Pmax0+Y30$Pmax1+Y30$Pmax6+Y30$Pmax7)
  pTotalHCVA <- rbind(pTotalHCVA, ptHCVTmp)
}

for (var in 1:2)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/DAA scenario/results/outDOi_", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "HCVe")
  
  Y13 <- tempFile[2556:2920,]
  Y14 <- tempFile[2921:3285,]
  Y15 <- tempFile[3286:3650,]
  Y16 <- tempFile[3651:4015,]
  Y17 <- tempFile[4016:4380,]
  Y18 <- tempFile[4381:4745,]
  Y19 <- tempFile[4756:5110,]
  Y20 <- tempFile[5111:5475,]
  Y21 <- tempFile[5476:5840,]
  Y22 <- tempFile[5841:6205,]
  Y23 <- tempFile[6206:6570,]
  Y24 <- tempFile[6571:6935,]
  Y25 <- tempFile[6936:7300,]
  Y26 <- tempFile[7301:7665,]
  Y27 <- tempFile[7666:8030,]
  Y28 <- tempFile[8031:8395,]
  Y29 <- tempFile[8396:8760,]
  Y30 <- tempFile[8761:9125,]
  
  #Create Total Columns for P1 P2 P3
  pMinTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pMinTmp[1,] <- 0
  pMinTmp$y13[1] <- mean(Y13$Pmin0+Y13$Pmin1+Y13$Pmin2+Y13$Pmin3+Y13$Pmin4+Y13$Pmin5+Y13$Pmin6+Y13$Pmin7+Y13$Pmin8+Y13$Pmin9+Y13$Pmin10+Y13$Pmin11)
  pMinTmp$y14[1] <- mean(Y14$Pmin0+Y14$Pmin1+Y14$Pmin2+Y14$Pmin3+Y14$Pmin4+Y14$Pmin5+Y14$Pmin6+Y14$Pmin7+Y14$Pmin8+Y14$Pmin9+Y14$Pmin10+Y14$Pmin11)
  pMinTmp$y15[1] <- mean(Y15$Pmin0+Y15$Pmin1+Y15$Pmin2+Y15$Pmin3+Y15$Pmin4+Y15$Pmin5+Y15$Pmin6+Y15$Pmin7+Y15$Pmin8+Y15$Pmin9+Y15$Pmin10+Y15$Pmin11)
  pMinTmp$y16[1] <- mean(Y16$Pmin0+Y16$Pmin1+Y16$Pmin2+Y16$Pmin3+Y16$Pmin4+Y16$Pmin5+Y16$Pmin6+Y16$Pmin7+Y16$Pmin8+Y16$Pmin9+Y16$Pmin10+Y16$Pmin11)
  pMinTmp$y17[1] <- mean(Y17$Pmin0+Y17$Pmin1+Y17$Pmin2+Y17$Pmin3+Y17$Pmin4+Y17$Pmin5+Y17$Pmin6+Y17$Pmin7+Y17$Pmin8+Y17$Pmin9+Y17$Pmin10+Y17$Pmin11)
  pMinTmp$y18[1] <- mean(Y18$Pmin0+Y18$Pmin1+Y18$Pmin2+Y18$Pmin3+Y18$Pmin4+Y18$Pmin5+Y18$Pmin6+Y18$Pmin7+Y18$Pmin8+Y18$Pmin9+Y18$Pmin10+Y18$Pmin11)
  pMinTmp$y19[1] <- mean(Y19$Pmin0+Y19$Pmin1+Y19$Pmin2+Y19$Pmin3+Y19$Pmin4+Y19$Pmin5+Y19$Pmin6+Y19$Pmin7+Y19$Pmin8+Y19$Pmin9+Y19$Pmin10+Y19$Pmin11)
  pMinTmp$y20[1] <- mean(Y20$Pmin0+Y20$Pmin1+Y20$Pmin2+Y20$Pmin3+Y20$Pmin4+Y20$Pmin5+Y20$Pmin6+Y20$Pmin7+Y20$Pmin8+Y20$Pmin9+Y20$Pmin10+Y20$Pmin11)
  pMinTmp$y21[1] <- mean(Y21$Pmin0+Y21$Pmin1+Y21$Pmin2+Y21$Pmin3+Y21$Pmin4+Y21$Pmin5+Y21$Pmin6+Y21$Pmin7+Y21$Pmin8+Y21$Pmin9+Y21$Pmin10+Y21$Pmin11)
  pMinTmp$y22[1] <- mean(Y22$Pmin0+Y22$Pmin1+Y22$Pmin2+Y22$Pmin3+Y22$Pmin4+Y22$Pmin5+Y22$Pmin6+Y22$Pmin7+Y22$Pmin8+Y22$Pmin9+Y22$Pmin10+Y22$Pmin11)
  pMinTmp$y23[1] <- mean(Y23$Pmin0+Y23$Pmin1+Y23$Pmin2+Y23$Pmin3+Y23$Pmin4+Y23$Pmin5+Y23$Pmin6+Y23$Pmin7+Y23$Pmin8+Y23$Pmin9+Y23$Pmin10+Y23$Pmin11)
  pMinTmp$y24[1] <- mean(Y24$Pmin0+Y24$Pmin1+Y24$Pmin2+Y24$Pmin3+Y24$Pmin4+Y24$Pmin5+Y24$Pmin6+Y24$Pmin7+Y24$Pmin8+Y24$Pmin9+Y24$Pmin10+Y24$Pmin11)
  pMinTmp$y25[1] <- mean(Y25$Pmin0+Y25$Pmin1+Y25$Pmin2+Y25$Pmin3+Y25$Pmin4+Y25$Pmin5+Y25$Pmin6+Y25$Pmin7+Y25$Pmin8+Y25$Pmin9+Y25$Pmin10+Y25$Pmin11)
  pMinTmp$y26[1] <- mean(Y26$Pmin0+Y26$Pmin1+Y26$Pmin2+Y26$Pmin3+Y26$Pmin4+Y26$Pmin5+Y26$Pmin6+Y26$Pmin7+Y26$Pmin8+Y26$Pmin9+Y26$Pmin10+Y26$Pmin11)
  pMinTmp$y27[1] <- mean(Y27$Pmin0+Y27$Pmin1+Y27$Pmin2+Y27$Pmin3+Y27$Pmin4+Y27$Pmin5+Y27$Pmin6+Y27$Pmin7+Y27$Pmin8+Y27$Pmin9+Y27$Pmin10+Y27$Pmin11)
  pMinTmp$y28[1] <- mean(Y28$Pmin0+Y28$Pmin1+Y28$Pmin2+Y28$Pmin3+Y28$Pmin4+Y28$Pmin5+Y28$Pmin6+Y28$Pmin7+Y28$Pmin8+Y28$Pmin9+Y28$Pmin10+Y28$Pmin11)
  pMinTmp$y29[1] <- mean(Y29$Pmin0+Y29$Pmin1+Y29$Pmin2+Y29$Pmin3+Y29$Pmin4+Y29$Pmin5+Y29$Pmin6+Y29$Pmin7+Y29$Pmin8+Y29$Pmin9+Y29$Pmin10+Y29$Pmin11)
  pMinTmp$y30[1] <- mean(Y30$Pmin0+Y30$Pmin1+Y30$Pmin2+Y30$Pmin3+Y30$Pmin4+Y30$Pmin5+Y30$Pmin6+Y30$Pmin7+Y30$Pmin8+Y30$Pmin9+Y30$Pmin10+Y30$Pmin11)
  pMinB <- rbind(pMinB, pMinTmp)
  
  pMedTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pMedTmp[1,] <- 0
  pMedTmp$y13[1] <- mean(Y13$pMed0+Y13$pMed1+Y13$pMed2+Y13$pMed3+Y13$pMed4+Y13$pMed5+Y13$pMed6+Y13$pMed7+Y13$pMed8+Y13$pMed9+Y13$pMed10+Y13$pMed11)
  pMedTmp$y14[1] <- mean(Y14$pMed0+Y14$pMed1+Y14$pMed2+Y14$pMed3+Y14$pMed4+Y14$pMed5+Y14$pMed6+Y14$pMed7+Y14$pMed8+Y14$pMed9+Y14$pMed10+Y14$pMed11)
  pMedTmp$y15[1] <- mean(Y15$pMed0+Y15$pMed1+Y15$pMed2+Y15$pMed3+Y15$pMed4+Y15$pMed5+Y15$pMed6+Y15$pMed7+Y15$pMed8+Y15$pMed9+Y15$pMed10+Y15$pMed11)
  pMedTmp$y16[1] <- mean(Y16$pMed0+Y16$pMed1+Y16$pMed2+Y16$pMed3+Y16$pMed4+Y16$pMed5+Y16$pMed6+Y16$pMed7+Y16$pMed8+Y16$pMed9+Y16$pMed10+Y16$pMed11)
  pMedTmp$y17[1] <- mean(Y17$pMed0+Y17$pMed1+Y17$pMed2+Y17$pMed3+Y17$pMed4+Y17$pMed5+Y17$pMed6+Y17$pMed7+Y17$pMed8+Y17$pMed9+Y17$pMed10+Y17$pMed11)
  pMedTmp$y18[1] <- mean(Y18$pMed0+Y18$pMed1+Y18$pMed2+Y18$pMed3+Y18$pMed4+Y18$pMed5+Y18$pMed6+Y18$pMed7+Y18$pMed8+Y18$pMed9+Y18$pMed10+Y18$pMed11)
  pMedTmp$y19[1] <- mean(Y19$pMed0+Y19$pMed1+Y19$pMed2+Y19$pMed3+Y19$pMed4+Y19$pMed5+Y19$pMed6+Y19$pMed7+Y19$pMed8+Y19$pMed9+Y19$pMed10+Y19$pMed11)
  pMedTmp$y20[1] <- mean(Y20$pMed0+Y20$pMed1+Y20$pMed2+Y20$pMed3+Y20$pMed4+Y20$pMed5+Y20$pMed6+Y20$pMed7+Y20$pMed8+Y20$pMed9+Y20$pMed10+Y20$pMed11)
  pMedTmp$y21[1] <- mean(Y21$pMed0+Y21$pMed1+Y21$pMed2+Y21$pMed3+Y21$pMed4+Y21$pMed5+Y21$pMed6+Y21$pMed7+Y21$pMed8+Y21$pMed9+Y21$pMed10+Y21$pMed11)
  pMedTmp$y22[1] <- mean(Y22$pMed0+Y22$pMed1+Y22$pMed2+Y22$pMed3+Y22$pMed4+Y22$pMed5+Y22$pMed6+Y22$pMed7+Y22$pMed8+Y22$pMed9+Y22$pMed10+Y22$pMed11)
  pMedTmp$y23[1] <- mean(Y23$pMed0+Y23$pMed1+Y23$pMed2+Y23$pMed3+Y23$pMed4+Y23$pMed5+Y23$pMed6+Y23$pMed7+Y23$pMed8+Y23$pMed9+Y23$pMed10+Y23$pMed11)
  pMedTmp$y24[1] <- mean(Y24$pMed0+Y24$pMed1+Y24$pMed2+Y24$pMed3+Y24$pMed4+Y24$pMed5+Y24$pMed6+Y24$pMed7+Y24$pMed8+Y24$pMed9+Y24$pMed10+Y24$pMed11)
  pMedTmp$y25[1] <- mean(Y25$pMed0+Y25$pMed1+Y25$pMed2+Y25$pMed3+Y25$pMed4+Y25$pMed5+Y25$pMed6+Y25$pMed7+Y25$pMed8+Y25$pMed9+Y25$pMed10+Y25$pMed11)
  pMedTmp$y26[1] <- mean(Y26$pMed0+Y26$pMed1+Y26$pMed2+Y26$pMed3+Y26$pMed4+Y26$pMed5+Y26$pMed6+Y26$pMed7+Y26$pMed8+Y26$pMed9+Y26$pMed10+Y26$pMed11)
  pMedTmp$y27[1] <- mean(Y27$pMed0+Y27$pMed1+Y27$pMed2+Y27$pMed3+Y27$pMed4+Y27$pMed5+Y27$pMed6+Y27$pMed7+Y27$pMed8+Y27$pMed9+Y27$pMed10+Y27$pMed11)
  pMedTmp$y28[1] <- mean(Y28$pMed0+Y28$pMed1+Y28$pMed2+Y28$pMed3+Y28$pMed4+Y28$pMed5+Y28$pMed6+Y28$pMed7+Y28$pMed8+Y28$pMed9+Y28$pMed10+Y28$pMed11)
  pMedTmp$y29[1] <- mean(Y29$pMed0+Y29$pMed1+Y29$pMed2+Y29$pMed3+Y29$pMed4+Y29$pMed5+Y29$pMed6+Y29$pMed7+Y29$pMed8+Y29$pMed9+Y29$pMed10+Y29$pMed11)
  pMedTmp$y30[1] <- mean(Y30$pMed0+Y30$pMed1+Y30$pMed2+Y30$pMed3+Y30$pMed4+Y30$pMed5+Y30$pMed6+Y30$pMed7+Y30$pMed8+Y30$pMed9+Y30$pMed10+Y30$pMed11)
  pMedB <- rbind(pMedB, pMedTmp)
  
  pMaxTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pMaxTmp[1,] <- 0
  pMaxTmp$y13[1] <- mean(Y13$pMax0+Y13$pMax1+Y13$pMax2+Y13$pMax3+Y13$pMax4+Y13$pMax5+Y13$pMax6+Y13$pMax7+Y13$pMax8+Y13$pMax9+Y13$pMax10+Y13$pMax11)
  pMaxTmp$y14[1] <- mean(Y14$pMax0+Y14$pMax1+Y14$pMax2+Y14$pMax3+Y14$pMax4+Y14$pMax5+Y14$pMax6+Y14$pMax7+Y14$pMax8+Y14$pMax9+Y14$pMax10+Y14$pMax11)
  pMaxTmp$y15[1] <- mean(Y15$pMax0+Y15$pMax1+Y15$pMax2+Y15$pMax3+Y15$pMax4+Y15$pMax5+Y15$pMax6+Y15$pMax7+Y15$pMax8+Y15$pMax9+Y15$pMax10+Y15$pMax11)
  pMaxTmp$y16[1] <- mean(Y16$pMax0+Y16$pMax1+Y16$pMax2+Y16$pMax3+Y16$pMax4+Y16$pMax5+Y16$pMax6+Y16$pMax7+Y16$pMax8+Y16$pMax9+Y16$pMax10+Y16$pMax11)
  pMaxTmp$y17[1] <- mean(Y17$pMax0+Y17$pMax1+Y17$pMax2+Y17$pMax3+Y17$pMax4+Y17$pMax5+Y17$pMax6+Y17$pMax7+Y17$pMax8+Y17$pMax9+Y17$pMax10+Y17$pMax11)
  pMaxTmp$y18[1] <- mean(Y18$pMax0+Y18$pMax1+Y18$pMax2+Y18$pMax3+Y18$pMax4+Y18$pMax5+Y18$pMax6+Y18$pMax7+Y18$pMax8+Y18$pMax9+Y18$pMax10+Y18$pMax11)
  pMaxTmp$y19[1] <- mean(Y19$pMax0+Y19$pMax1+Y19$pMax2+Y19$pMax3+Y19$pMax4+Y19$pMax5+Y19$pMax6+Y19$pMax7+Y19$pMax8+Y19$pMax9+Y19$pMax10+Y19$pMax11)
  pMaxTmp$y20[1] <- mean(Y20$pMax0+Y20$pMax1+Y20$pMax2+Y20$pMax3+Y20$pMax4+Y20$pMax5+Y20$pMax6+Y20$pMax7+Y20$pMax8+Y20$pMax9+Y20$pMax10+Y20$pMax11)
  pMaxTmp$y21[1] <- mean(Y21$pMax0+Y21$pMax1+Y21$pMax2+Y21$pMax3+Y21$pMax4+Y21$pMax5+Y21$pMax6+Y21$pMax7+Y21$pMax8+Y21$pMax9+Y21$pMax10+Y21$pMax11)
  pMaxTmp$y22[1] <- mean(Y22$pMax0+Y22$pMax1+Y22$pMax2+Y22$pMax3+Y22$pMax4+Y22$pMax5+Y22$pMax6+Y22$pMax7+Y22$pMax8+Y22$pMax9+Y22$pMax10+Y22$pMax11)
  pMaxTmp$y23[1] <- mean(Y23$pMax0+Y23$pMax1+Y23$pMax2+Y23$pMax3+Y23$pMax4+Y23$pMax5+Y23$pMax6+Y23$pMax7+Y23$pMax8+Y23$pMax9+Y23$pMax10+Y23$pMax11)
  pMaxTmp$y24[1] <- mean(Y24$pMax0+Y24$pMax1+Y24$pMax2+Y24$pMax3+Y24$pMax4+Y24$pMax5+Y24$pMax6+Y24$pMax7+Y24$pMax8+Y24$pMax9+Y24$pMax10+Y24$pMax11)
  pMaxTmp$y25[1] <- mean(Y25$pMax0+Y25$pMax1+Y25$pMax2+Y25$pMax3+Y25$pMax4+Y25$pMax5+Y25$pMax6+Y25$pMax7+Y25$pMax8+Y25$pMax9+Y25$pMax10+Y25$pMax11)
  pMaxTmp$y26[1] <- mean(Y26$pMax0+Y26$pMax1+Y26$pMax2+Y26$pMax3+Y26$pMax4+Y26$pMax5+Y26$pMax6+Y26$pMax7+Y26$pMax8+Y26$pMax9+Y26$pMax10+Y26$pMax11)
  pMaxTmp$y27[1] <- mean(Y27$pMax0+Y27$pMax1+Y27$pMax2+Y27$pMax3+Y27$pMax4+Y27$pMax5+Y27$pMax6+Y27$pMax7+Y27$pMax8+Y27$pMax9+Y27$pMax10+Y27$pMax11)
  pMaxTmp$y28[1] <- mean(Y28$pMax0+Y28$pMax1+Y28$pMax2+Y28$pMax3+Y28$pMax4+Y28$pMax5+Y28$pMax6+Y28$pMax7+Y28$pMax8+Y28$pMax9+Y28$pMax10+Y28$pMax11)
  pMaxTmp$y29[1] <- mean(Y29$pMax0+Y29$pMax1+Y29$pMax2+Y29$pMax3+Y29$pMax4+Y29$pMax5+Y29$pMax6+Y29$pMax7+Y29$pMax8+Y29$pMax9+Y29$pMax10+Y29$pMax11)
  pMaxTmp$y30[1] <- mean(Y30$pMax0+Y30$pMax1+Y30$pMax2+Y30$pMax3+Y30$pMax4+Y30$pMax5+Y30$pMax6+Y30$pMax7+Y30$pMax8+Y30$pMax9+Y30$pMax10+Y30$pMax11)
  pMaxB <- rbind(pMaxB, pMaxTmp)
  
  pTotalTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pTotalTmp[1,] <- 0
  pTotalTmp$y13[1] <- mean(Y13$TotalPrisonPop)
  pTotalTmp$y14[1] <- mean(Y14$TotalPrisonPop)
  pTotalTmp$y15[1] <- mean(Y15$TotalPrisonPop)
  pTotalTmp$y16[1] <- mean(Y16$TotalPrisonPop)
  pTotalTmp$y17[1] <- mean(Y17$TotalPrisonPop)
  pTotalTmp$y18[1] <- mean(Y18$TotalPrisonPop)
  pTotalTmp$y19[1] <- mean(Y19$TotalPrisonPop)
  pTotalTmp$y20[1] <- mean(Y20$TotalPrisonPop)
  pTotalTmp$y21[1] <- mean(Y21$TotalPrisonPop)
  pTotalTmp$y22[1] <- mean(Y22$TotalPrisonPop)
  pTotalTmp$y23[1] <- mean(Y23$TotalPrisonPop)
  pTotalTmp$y24[1] <- mean(Y24$TotalPrisonPop)
  pTotalTmp$y25[1] <- mean(Y25$TotalPrisonPop)
  pTotalTmp$y26[1] <- mean(Y26$TotalPrisonPop)
  pTotalTmp$y27[1] <- mean(Y27$TotalPrisonPop)
  pTotalTmp$y28[1] <- mean(Y28$TotalPrisonPop)
  pTotalTmp$y29[1] <- mean(Y29$TotalPrisonPop)
  pTotalTmp$y30[1] <- mean(Y30$TotalPrisonPop)
  pTotalB <- rbind(pTotalB, pTotalTmp)
  
  pReTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pReTmp[1,] <- 0
  pReTmp$y13[1] <- mean(Y13$reinfected)
  pReTmp$y14[1] <- mean(Y14$reinfected)
  pReTmp$y15[1] <- mean(Y15$reinfected)
  pReTmp$y16[1] <- mean(Y16$reinfected)
  pReTmp$y17[1] <- mean(Y17$reinfected)
  pReTmp$y18[1] <- mean(Y18$reinfected)
  pReTmp$y19[1] <- mean(Y19$reinfected)
  pReTmp$y20[1] <- mean(Y20$reinfected)
  pReTmp$y21[1] <- mean(Y21$reinfected)
  pReTmp$y22[1] <- mean(Y22$reinfected)
  pReTmp$y23[1] <- mean(Y23$reinfected)
  pReTmp$y24[1] <- mean(Y24$reinfected)
  pReTmp$y25[1] <- mean(Y25$reinfected)
  pReTmp$y26[1] <- mean(Y26$reinfected)
  pReTmp$y27[1] <- mean(Y27$reinfected)
  pReTmp$y28[1] <- mean(Y28$reinfected)
  pReTmp$y29[1] <- mean(Y29$reinfected)
  pReTmp$y30[1] <- mean(Y30$reinfected)
  pReinfectedB <- rbind(pReinfectedB, pReTmp)
  
  pNcTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pNcTmp[1,] <- 0
  pNcTmp$y13[1] <- mean(Y13$NewCases)
  pNcTmp$y14[1] <- mean(Y14$NewCases)
  pNcTmp$y15[1] <- mean(Y15$NewCases)
  pNcTmp$y16[1] <- mean(Y16$NewCases)
  pNcTmp$y17[1] <- mean(Y17$NewCases)
  pNcTmp$y18[1] <- mean(Y18$NewCases)
  pNcTmp$y19[1] <- mean(Y19$NewCases)
  pNcTmp$y20[1] <- mean(Y20$NewCases)
  pNcTmp$y21[1] <- mean(Y21$NewCases)
  pNcTmp$y22[1] <- mean(Y22$NewCases)
  pNcTmp$y23[1] <- mean(Y23$NewCases)
  pNcTmp$y24[1] <- mean(Y24$NewCases)
  pNcTmp$y25[1] <- mean(Y25$NewCases)
  pNcTmp$y26[1] <- mean(Y26$NewCases)
  pNcTmp$y27[1] <- mean(Y27$NewCases)
  pNcTmp$y28[1] <- mean(Y28$NewCases)
  pNcTmp$y29[1] <- mean(Y29$NewCases)
  pNcTmp$y30[1] <- mean(Y30$NewCases)
  pNewCasesB <- rbind(pNewCasesB, pNcTmp)
  
  pIDUTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pIDUTmp[1,] <- 0
  pIDUTmp$y13[1] <- mean(Y13$Pmin0+Y13$Pmin1+Y13$Pmin2+Y13$Pmin3+Y13$Pmin4+Y13$Pmin5+Y13$Pmed0+Y13$Pmed1+Y13$Pmed2+Y13$Pmed3+Y13$Pmed4+Y13$Pmed5+Y13$Pmax0+Y13$Pmax1+Y13$Pmax2+Y13$Pmax3+Y13$Pmax4+Y13$Pmax5)
  pIDUTmp$y14[1] <- mean(Y14$Pmin0+Y14$Pmin1+Y14$Pmin2+Y14$Pmin3+Y14$Pmin4+Y14$Pmin5+Y14$Pmed0+Y14$Pmed1+Y14$Pmed2+Y14$Pmed3+Y14$Pmed4+Y14$Pmed5+Y14$Pmax0+Y14$Pmax1+Y14$Pmax2+Y14$Pmax3+Y14$Pmax4+Y14$Pmax5)
  pIDUTmp$y15[1] <- mean(Y15$Pmin0+Y15$Pmin1+Y15$Pmin2+Y15$Pmin3+Y15$Pmin4+Y15$Pmin5+Y15$Pmed0+Y15$Pmed1+Y15$Pmed2+Y15$Pmed3+Y15$Pmed4+Y15$Pmed5+Y15$Pmax0+Y15$Pmax1+Y15$Pmax2+Y15$Pmax3+Y15$Pmax4+Y15$Pmax5)
  pIDUTmp$y16[1] <- mean(Y16$Pmin0+Y16$Pmin1+Y16$Pmin2+Y16$Pmin3+Y16$Pmin4+Y16$Pmin5+Y16$Pmed0+Y16$Pmed1+Y16$Pmed2+Y16$Pmed3+Y16$Pmed4+Y16$Pmed5+Y16$Pmax0+Y16$Pmax1+Y16$Pmax2+Y16$Pmax3+Y16$Pmax4+Y16$Pmax5)
  pIDUTmp$y17[1] <- mean(Y17$Pmin0+Y17$Pmin1+Y17$Pmin2+Y17$Pmin3+Y17$Pmin4+Y17$Pmin5+Y17$Pmed0+Y17$Pmed1+Y17$Pmed2+Y17$Pmed3+Y17$Pmed4+Y17$Pmed5+Y17$Pmax0+Y17$Pmax1+Y17$Pmax2+Y17$Pmax3+Y17$Pmax4+Y17$Pmax5)
  pIDUTmp$y18[1] <- mean(Y18$Pmin0+Y18$Pmin1+Y18$Pmin2+Y18$Pmin3+Y18$Pmin4+Y18$Pmin5+Y18$Pmed0+Y18$Pmed1+Y18$Pmed2+Y18$Pmed3+Y18$Pmed4+Y18$Pmed5+Y18$Pmax0+Y18$Pmax1+Y18$Pmax2+Y18$Pmax3+Y18$Pmax4+Y18$Pmax5)
  pIDUTmp$y19[1] <- mean(Y19$Pmin0+Y19$Pmin1+Y19$Pmin2+Y19$Pmin3+Y19$Pmin4+Y19$Pmin5+Y19$Pmed0+Y19$Pmed1+Y19$Pmed2+Y19$Pmed3+Y19$Pmed4+Y19$Pmed5+Y19$Pmax0+Y19$Pmax1+Y19$Pmax2+Y19$Pmax3+Y19$Pmax4+Y19$Pmax5)
  pIDUTmp$y20[1] <- mean(Y20$Pmin0+Y20$Pmin1+Y20$Pmin2+Y20$Pmin3+Y20$Pmin4+Y20$Pmin5+Y20$Pmed0+Y20$Pmed1+Y20$Pmed2+Y20$Pmed3+Y20$Pmed4+Y20$Pmed5+Y20$Pmax0+Y20$Pmax1+Y20$Pmax2+Y20$Pmax3+Y20$Pmax4+Y20$Pmax5)
  pIDUTmp$y21[1] <- mean(Y21$Pmin0+Y21$Pmin1+Y21$Pmin2+Y21$Pmin3+Y21$Pmin4+Y21$Pmin5+Y21$Pmed0+Y21$Pmed1+Y21$Pmed2+Y21$Pmed3+Y21$Pmed4+Y21$Pmed5+Y21$Pmax0+Y21$Pmax1+Y21$Pmax2+Y21$Pmax3+Y21$Pmax4+Y21$Pmax5)
  pIDUTmp$y22[1] <- mean(Y22$Pmin0+Y22$Pmin1+Y22$Pmin2+Y22$Pmin3+Y22$Pmin4+Y22$Pmin5+Y22$Pmed0+Y22$Pmed1+Y22$Pmed2+Y22$Pmed3+Y22$Pmed4+Y22$Pmed5+Y22$Pmax0+Y22$Pmax1+Y22$Pmax2+Y22$Pmax3+Y22$Pmax4+Y22$Pmax5)
  pIDUTmp$y23[1] <- mean(Y23$Pmin0+Y23$Pmin1+Y23$Pmin2+Y23$Pmin3+Y23$Pmin4+Y23$Pmin5+Y23$Pmed0+Y23$Pmed1+Y23$Pmed2+Y23$Pmed3+Y23$Pmed4+Y23$Pmed5+Y23$Pmax0+Y23$Pmax1+Y23$Pmax2+Y23$Pmax3+Y23$Pmax4+Y23$Pmax5)
  pIDUTmp$y24[1] <- mean(Y24$Pmin0+Y24$Pmin1+Y24$Pmin2+Y24$Pmin3+Y24$Pmin4+Y24$Pmin5+Y24$Pmed0+Y24$Pmed1+Y24$Pmed2+Y24$Pmed3+Y24$Pmed4+Y24$Pmed5+Y24$Pmax0+Y24$Pmax1+Y24$Pmax2+Y24$Pmax3+Y24$Pmax4+Y24$Pmax5)
  pIDUTmp$y25[1] <- mean(Y25$Pmin0+Y25$Pmin1+Y25$Pmin2+Y25$Pmin3+Y25$Pmin4+Y25$Pmin5+Y25$Pmed0+Y25$Pmed1+Y25$Pmed2+Y25$Pmed3+Y25$Pmed4+Y25$Pmed5+Y25$Pmax0+Y25$Pmax1+Y25$Pmax2+Y25$Pmax3+Y25$Pmax4+Y25$Pmax5)
  pIDUTmp$y26[1] <- mean(Y26$Pmin0+Y26$Pmin1+Y26$Pmin2+Y26$Pmin3+Y26$Pmin4+Y26$Pmin5+Y26$Pmed0+Y26$Pmed1+Y26$Pmed2+Y26$Pmed3+Y26$Pmed4+Y26$Pmed5+Y26$Pmax0+Y26$Pmax1+Y26$Pmax2+Y26$Pmax3+Y26$Pmax4+Y26$Pmax5)
  pIDUTmp$y27[1] <- mean(Y27$Pmin0+Y27$Pmin1+Y27$Pmin2+Y27$Pmin3+Y27$Pmin4+Y27$Pmin5+Y27$Pmed0+Y27$Pmed1+Y27$Pmed2+Y27$Pmed3+Y27$Pmed4+Y27$Pmed5+Y27$Pmax0+Y27$Pmax1+Y27$Pmax2+Y27$Pmax3+Y27$Pmax4+Y27$Pmax5)
  pIDUTmp$y28[1] <- mean(Y28$Pmin0+Y28$Pmin1+Y28$Pmin2+Y28$Pmin3+Y28$Pmin4+Y28$Pmin5+Y28$Pmed0+Y28$Pmed1+Y28$Pmed2+Y28$Pmed3+Y28$Pmed4+Y28$Pmed5+Y28$Pmax0+Y28$Pmax1+Y28$Pmax2+Y28$Pmax3+Y28$Pmax4+Y28$Pmax5)
  pIDUTmp$y29[1] <- mean(Y29$Pmin0+Y29$Pmin1+Y29$Pmin2+Y29$Pmin3+Y29$Pmin4+Y29$Pmin5+Y29$Pmed0+Y29$Pmed1+Y29$Pmed2+Y29$Pmed3+Y29$Pmed4+Y29$Pmed5+Y29$Pmax0+Y29$Pmax1+Y29$Pmax2+Y29$Pmax3+Y29$Pmax4+Y29$Pmax5)
  pIDUTmp$y30[1] <- mean(Y30$Pmin0+Y30$Pmin1+Y30$Pmin2+Y30$Pmin3+Y30$Pmin4+Y30$Pmin5+Y30$Pmed0+Y30$Pmed1+Y30$Pmed2+Y30$Pmed3+Y30$Pmed4+Y30$Pmed5+Y30$Pmax0+Y30$Pmax1+Y30$Pmax2+Y30$Pmax3+Y30$Pmax4+Y30$Pmax5)
  pTotalIDUB <- rbind(pTotalIDUB, pIDUTmp)
  
  pPrisonTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pPrisonTmp[1,] <- 0
  pPrisonTmp$y13[1] <- mean(Y13$PrisonHCV)
  pPrisonTmp$y14[1] <- mean(Y14$PrisonHCV)
  pPrisonTmp$y15[1] <- mean(Y15$PrisonHCV)
  pPrisonTmp$y16[1] <- mean(Y16$PrisonHCV)
  pPrisonTmp$y17[1] <- mean(Y17$PrisonHCV)
  pPrisonTmp$y18[1] <- mean(Y18$PrisonHCV)
  pPrisonTmp$y19[1] <- mean(Y19$PrisonHCV)
  pPrisonTmp$y20[1] <- mean(Y20$PrisonHCV)
  pPrisonTmp$y21[1] <- mean(Y21$PrisonHCV)
  pPrisonTmp$y22[1] <- mean(Y22$PrisonHCV)
  pPrisonTmp$y23[1] <- mean(Y23$PrisonHCV)
  pPrisonTmp$y24[1] <- mean(Y24$PrisonHCV)
  pPrisonTmp$y25[1] <- mean(Y25$PrisonHCV)
  pPrisonTmp$y26[1] <- mean(Y26$PrisonHCV)
  pPrisonTmp$y27[1] <- mean(Y27$PrisonHCV)
  pPrisonTmp$y28[1] <- mean(Y28$PrisonHCV)
  pPrisonTmp$y29[1] <- mean(Y29$PrisonHCV)
  pPrisonTmp$y30[1] <- mean(Y30$PrisonHCV)
  pPrisonHCVB <- rbind(pPrisonHCVB, pPrisonTmp)
  
  pOpdTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pOpdTmp[1,] <- 0
  pOpdTmp$y13[1] <- mean(Y13$OPD)
  pOpdTmp$y14[1] <- mean(Y14$OPD)
  pOpdTmp$y15[1] <- mean(Y15$OPD)
  pOpdTmp$y16[1] <- mean(Y16$OPD)
  pOpdTmp$y17[1] <- mean(Y17$OPD)
  pOpdTmp$y18[1] <- mean(Y18$OPD)
  pOpdTmp$y19[1] <- mean(Y19$OPD)
  pOpdTmp$y20[1] <- mean(Y20$OPD)
  pOpdTmp$y21[1] <- mean(Y21$OPD)
  pOpdTmp$y22[1] <- mean(Y22$OPD)
  pOpdTmp$y23[1] <- mean(Y23$OPD)
  pOpdTmp$y24[1] <- mean(Y24$OPD)
  pOpdTmp$y25[1] <- mean(Y25$OPD)
  pOpdTmp$y26[1] <- mean(Y26$OPD)
  pOpdTmp$y27[1] <- mean(Y27$OPD)
  pOpdTmp$y28[1] <- mean(Y28$OPD)
  pOpdTmp$y29[1] <- mean(Y29$OPD)
  pOpdTmp$y30[1] <- mean(Y30$OPD)
  pOpdB <- rbind(pOpdB, pOpdTmp)
  
  pEverTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pEverTmp[1,] <- 0
  pEverTmp$y13[1] <- mean(Y13$everIDU)
  pEverTmp$y14[1] <- mean(Y14$everIDU)
  pEverTmp$y15[1] <- mean(Y15$everIDU)
  pEverTmp$y16[1] <- mean(Y16$everIDU)
  pEverTmp$y17[1] <- mean(Y17$everIDU)
  pEverTmp$y18[1] <- mean(Y18$everIDU)
  pEverTmp$y19[1] <- mean(Y19$everIDU)
  pEverTmp$y20[1] <- mean(Y20$everIDU)
  pEverTmp$y21[1] <- mean(Y21$everIDU)
  pEverTmp$y22[1] <- mean(Y22$everIDU)
  pEverTmp$y23[1] <- mean(Y23$everIDU)
  pEverTmp$y24[1] <- mean(Y24$everIDU)
  pEverTmp$y25[1] <- mean(Y25$everIDU)
  pEverTmp$y26[1] <- mean(Y26$everIDU)
  pEverTmp$y27[1] <- mean(Y27$everIDU)
  pEverTmp$y28[1] <- mean(Y28$everIDU)
  pEverTmp$y29[1] <- mean(Y29$everIDU)
  pEverTmp$y30[1] <- mean(Y30$everIDU)
  pEverIDUB <- rbind(pEverIDUB, pEverTmp)
  
  pClrTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pClrTmp[1,] <- 0
  pClrTmp$y13[1] <- mean(Y13$totalClrDAA)
  pClrTmp$y14[1] <- mean(Y14$totalClrDAA)
  pClrTmp$y15[1] <- mean(Y15$totalClrDAA)
  pClrTmp$y16[1] <- mean(Y16$totalClrDAA)
  pClrTmp$y17[1] <- mean(Y17$totalClrDAA)
  pClrTmp$y18[1] <- mean(Y18$totalClrDAA)
  pClrTmp$y19[1] <- mean(Y19$totalClrDAA)
  pClrTmp$y20[1] <- mean(Y20$totalClrDAA)
  pClrTmp$y21[1] <- mean(Y21$totalClrDAA)
  pClrTmp$y22[1] <- mean(Y22$totalClrDAA)
  pClrTmp$y23[1] <- mean(Y23$totalClrDAA)
  pClrTmp$y24[1] <- mean(Y24$totalClrDAA)
  pClrTmp$y25[1] <- mean(Y25$totalClrDAA)
  pClrTmp$y26[1] <- mean(Y26$totalClrDAA)
  pClrTmp$y27[1] <- mean(Y27$totalClrDAA)
  pClrTmp$y28[1] <- mean(Y28$totalClrDAA)
  pClrTmp$y29[1] <- mean(Y29$totalClrDAA)
  pClrTmp$y30[1] <- mean(Y30$totalClrDAA)
  pClrDB <- rbind(pClrDB, pClrTmp)
  
  ptDAATmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptDAATmp[1,] <- 0
  ptDAATmp$y13[1] <- mean(Y13$totalDAA)
  ptDAATmp$y14[1] <- mean(Y14$totalDAA)
  ptDAATmp$y15[1] <- mean(Y15$totalDAA)
  ptDAATmp$y16[1] <- mean(Y16$totalDAA)
  ptDAATmp$y17[1] <- mean(Y17$totalDAA)
  ptDAATmp$y18[1] <- mean(Y18$totalDAA)
  ptDAATmp$y19[1] <- mean(Y19$totalDAA)
  ptDAATmp$y20[1] <- mean(Y20$totalDAA)
  ptDAATmp$y21[1] <- mean(Y21$totalDAA)
  ptDAATmp$y22[1] <- mean(Y22$totalDAA)
  ptDAATmp$y23[1] <- mean(Y23$totalDAA)
  ptDAATmp$y24[1] <- mean(Y24$totalDAA)
  ptDAATmp$y25[1] <- mean(Y25$totalDAA)
  ptDAATmp$y26[1] <- mean(Y26$totalDAA)
  ptDAATmp$y27[1] <- mean(Y27$totalDAA)
  ptDAATmp$y28[1] <- mean(Y28$totalDAA)
  ptDAATmp$y29[1] <- mean(Y29$totalDAA)
  ptDAATmp$y30[1] <- mean(Y30$totalDAA)
  pTotalDAAB <- rbind(pTotalDAAB, ptDAATmp)
  
  ptOSTTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptOSTTmp[1,] <- 0
  ptOSTTmp$y13[1] <- mean(Y13$totalOST)
  ptOSTTmp$y14[1] <- mean(Y14$totalOST)
  ptOSTTmp$y15[1] <- mean(Y15$totalOST)
  ptOSTTmp$y16[1] <- mean(Y16$totalOST)
  ptOSTTmp$y17[1] <- mean(Y17$totalOST)
  ptOSTTmp$y18[1] <- mean(Y18$totalOST)
  ptOSTTmp$y19[1] <- mean(Y19$totalOST)
  ptOSTTmp$y20[1] <- mean(Y20$totalOST)
  ptOSTTmp$y21[1] <- mean(Y21$totalOST)
  ptOSTTmp$y22[1] <- mean(Y22$totalOST)
  ptOSTTmp$y23[1] <- mean(Y23$totalOST)
  ptOSTTmp$y24[1] <- mean(Y24$totalOST)
  ptOSTTmp$y25[1] <- mean(Y25$totalOST)
  ptOSTTmp$y26[1] <- mean(Y26$totalOST)
  ptOSTTmp$y27[1] <- mean(Y27$totalOST)
  ptOSTTmp$y28[1] <- mean(Y28$totalOST)
  ptOSTTmp$y29[1] <- mean(Y29$totalOST)
  ptOSTTmp$y30[1] <- mean(Y30$totalOST)
  pTotalOSTB <- rbind(pTotalOSTB, ptOSTTmp)
  
  ptHCVeTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptHCVeTmp[1,] <- 0
  ptHCVeTmp$y13[1] <- mean(Y13$HCVe)
  ptHCVeTmp$y14[1] <- mean(Y14$HCVe)
  ptHCVeTmp$y15[1] <- mean(Y15$HCVe)
  ptHCVeTmp$y16[1] <- mean(Y16$HCVe)
  ptHCVeTmp$y17[1] <- mean(Y17$HCVe)
  ptHCVeTmp$y18[1] <- mean(Y18$HCVe)
  ptHCVeTmp$y19[1] <- mean(Y19$HCVe)
  ptHCVeTmp$y20[1] <- mean(Y20$HCVe)
  ptHCVeTmp$y21[1] <- mean(Y21$HCVe)
  ptHCVeTmp$y22[1] <- mean(Y22$HCVe)
  ptHCVeTmp$y23[1] <- mean(Y23$HCVe)
  ptHCVeTmp$y24[1] <- mean(Y24$HCVe)
  ptHCVeTmp$y25[1] <- mean(Y25$HCVe)
  ptHCVeTmp$y26[1] <- mean(Y26$HCVe)
  ptHCVeTmp$y27[1] <- mean(Y27$HCVe)
  ptHCVeTmp$y28[1] <- mean(Y28$HCVe)
  ptHCVeTmp$y29[1] <- mean(Y29$HCVe)
  ptHCVeTmp$y30[1] <- mean(Y30$HCVe)
  pTotalHCVeB <- rbind(pTotalHCVeB, ptHCVeTmp)
  
  ptHCVTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptHCVTmp[1,] <- 0
  ptHCVTmp$y13[1] <- mean(Y13$Pmin0+Y13$Pmin1+Y13$Pmin6+Y13$Pmin7+Y13$Pmed0+Y13$Pmed1+Y13$Pmed6+Y13$Pmed7+Y13$Pmax0+Y13$Pmax1+Y13$Pmax6+Y13$Pmax7)
  ptHCVTmp$y14[1] <- mean(Y14$Pmin0+Y14$Pmin1+Y14$Pmin6+Y14$Pmin7+Y14$Pmed0+Y14$Pmed1+Y14$Pmed6+Y14$Pmed7+Y14$Pmax0+Y14$Pmax1+Y14$Pmax6+Y14$Pmax7)
  ptHCVTmp$y15[1] <- mean(Y15$Pmin0+Y15$Pmin1+Y15$Pmin6+Y15$Pmin7+Y15$Pmed0+Y15$Pmed1+Y15$Pmed6+Y15$Pmed7+Y15$Pmax0+Y15$Pmax1+Y15$Pmax6+Y15$Pmax7)
  ptHCVTmp$y16[1] <- mean(Y16$Pmin0+Y16$Pmin1+Y16$Pmin6+Y16$Pmin7+Y16$Pmed0+Y16$Pmed1+Y16$Pmed6+Y16$Pmed7+Y16$Pmax0+Y16$Pmax1+Y16$Pmax6+Y16$Pmax7)
  ptHCVTmp$y17[1] <- mean(Y17$Pmin0+Y17$Pmin1+Y17$Pmin6+Y17$Pmin7+Y17$Pmed0+Y17$Pmed1+Y17$Pmed6+Y17$Pmed7+Y17$Pmax0+Y17$Pmax1+Y17$Pmax6+Y17$Pmax7)
  ptHCVTmp$y18[1] <- mean(Y18$Pmin0+Y18$Pmin1+Y18$Pmin6+Y18$Pmin7+Y18$Pmed0+Y18$Pmed1+Y18$Pmed6+Y18$Pmed7+Y18$Pmax0+Y18$Pmax1+Y18$Pmax6+Y18$Pmax7)
  ptHCVTmp$y19[1] <- mean(Y19$Pmin0+Y19$Pmin1+Y19$Pmin6+Y19$Pmin7+Y19$Pmed0+Y19$Pmed1+Y19$Pmed6+Y19$Pmed7+Y19$Pmax0+Y19$Pmax1+Y19$Pmax6+Y19$Pmax7)
  ptHCVTmp$y20[1] <- mean(Y20$Pmin0+Y20$Pmin1+Y20$Pmin6+Y20$Pmin7+Y20$Pmed0+Y20$Pmed1+Y20$Pmed6+Y20$Pmed7+Y20$Pmax0+Y20$Pmax1+Y20$Pmax6+Y20$Pmax7)
  ptHCVTmp$y21[1] <- mean(Y21$Pmin0+Y21$Pmin1+Y21$Pmin6+Y21$Pmin7+Y21$Pmed0+Y21$Pmed1+Y21$Pmed6+Y21$Pmed7+Y21$Pmax0+Y21$Pmax1+Y21$Pmax6+Y21$Pmax7)
  ptHCVTmp$y22[1] <- mean(Y22$Pmin0+Y22$Pmin1+Y22$Pmin6+Y22$Pmin7+Y22$Pmed0+Y22$Pmed1+Y22$Pmed6+Y22$Pmed7+Y22$Pmax0+Y22$Pmax1+Y22$Pmax6+Y22$Pmax7)
  ptHCVTmp$y23[1] <- mean(Y23$Pmin0+Y23$Pmin1+Y23$Pmin6+Y23$Pmin7+Y23$Pmed0+Y23$Pmed1+Y23$Pmed6+Y23$Pmed7+Y23$Pmax0+Y23$Pmax1+Y23$Pmax6+Y23$Pmax7)
  ptHCVTmp$y24[1] <- mean(Y24$Pmin0+Y24$Pmin1+Y24$Pmin6+Y24$Pmin7+Y24$Pmed0+Y24$Pmed1+Y24$Pmed6+Y24$Pmed7+Y24$Pmax0+Y24$Pmax1+Y24$Pmax6+Y24$Pmax7)
  ptHCVTmp$y25[1] <- mean(Y25$Pmin0+Y25$Pmin1+Y25$Pmin6+Y25$Pmin7+Y25$Pmed0+Y25$Pmed1+Y25$Pmed6+Y25$Pmed7+Y25$Pmax0+Y25$Pmax1+Y25$Pmax6+Y25$Pmax7)
  ptHCVTmp$y26[1] <- mean(Y26$Pmin0+Y26$Pmin1+Y26$Pmin6+Y26$Pmin7+Y26$Pmed0+Y26$Pmed1+Y26$Pmed6+Y26$Pmed7+Y26$Pmax0+Y26$Pmax1+Y26$Pmax6+Y26$Pmax7)
  ptHCVTmp$y27[1] <- mean(Y27$Pmin0+Y27$Pmin1+Y27$Pmin6+Y27$Pmin7+Y27$Pmed0+Y27$Pmed1+Y27$Pmed6+Y27$Pmed7+Y27$Pmax0+Y27$Pmax1+Y27$Pmax6+Y27$Pmax7)
  ptHCVTmp$y28[1] <- mean(Y28$Pmin0+Y28$Pmin1+Y28$Pmin6+Y28$Pmin7+Y28$Pmed0+Y28$Pmed1+Y28$Pmed6+Y28$Pmed7+Y28$Pmax0+Y28$Pmax1+Y28$Pmax6+Y28$Pmax7)
  ptHCVTmp$y29[1] <- mean(Y29$Pmin0+Y29$Pmin1+Y29$Pmin6+Y29$Pmin7+Y29$Pmed0+Y29$Pmed1+Y29$Pmed6+Y29$Pmed7+Y29$Pmax0+Y29$Pmax1+Y29$Pmax6+Y29$Pmax7)
  ptHCVTmp$y30[1] <- mean(Y30$Pmin0+Y30$Pmin1+Y30$Pmin6+Y30$Pmin7+Y30$Pmed0+Y30$Pmed1+Y30$Pmed6+Y30$Pmed7+Y30$Pmax0+Y30$Pmax1+Y30$Pmax6+Y30$Pmax7)
  pTotalHCVB <- rbind(pTotalHCVB, ptHCVTmp)
}

for (var in 1:2)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/DAA scenario/results/outDOd_", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "HCVe")
  
  Y13 <- tempFile[2556:2920,]
  Y14 <- tempFile[2921:3285,]
  Y15 <- tempFile[3286:3650,]
  Y16 <- tempFile[3651:4015,]
  Y17 <- tempFile[4016:4380,]
  Y18 <- tempFile[4381:4745,]
  Y19 <- tempFile[4756:5110,]
  Y20 <- tempFile[5111:5475,]
  Y21 <- tempFile[5476:5840,]
  Y22 <- tempFile[5841:6205,]
  Y23 <- tempFile[6206:6570,]
  Y24 <- tempFile[6571:6935,]
  Y25 <- tempFile[6936:7300,]
  Y26 <- tempFile[7301:7665,]
  Y27 <- tempFile[7666:8030,]
  Y28 <- tempFile[8031:8395,]
  Y29 <- tempFile[8396:8760,]
  Y30 <- tempFile[8761:9125,]
  
  #Create Total Columns for P1 P2 P3
  pMinTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, Y26=NA)[numeric(0), ]
  pMinTmp[1,] <- 0
  pMinTmp$y13[1] <- mean(Y13$Pmin0+Y13$Pmin1+Y13$Pmin2+Y13$Pmin3+Y13$Pmin4+Y13$Pmin5+Y13$Pmin6+Y13$Pmin7+Y13$Pmin8+Y13$Pmin9+Y13$Pmin10+Y13$Pmin11)
  pMinTmp$y14[1] <- mean(Y14$Pmin0+Y14$Pmin1+Y14$Pmin2+Y14$Pmin3+Y14$Pmin4+Y14$Pmin5+Y14$Pmin6+Y14$Pmin7+Y14$Pmin8+Y14$Pmin9+Y14$Pmin10+Y14$Pmin11)
  pMinTmp$y15[1] <- mean(Y15$Pmin0+Y15$Pmin1+Y15$Pmin2+Y15$Pmin3+Y15$Pmin4+Y15$Pmin5+Y15$Pmin6+Y15$Pmin7+Y15$Pmin8+Y15$Pmin9+Y15$Pmin10+Y15$Pmin11)
  pMinTmp$y16[1] <- mean(Y16$Pmin0+Y16$Pmin1+Y16$Pmin2+Y16$Pmin3+Y16$Pmin4+Y16$Pmin5+Y16$Pmin6+Y16$Pmin7+Y16$Pmin8+Y16$Pmin9+Y16$Pmin10+Y16$Pmin11)
  pMinTmp$y17[1] <- mean(Y17$Pmin0+Y17$Pmin1+Y17$Pmin2+Y17$Pmin3+Y17$Pmin4+Y17$Pmin5+Y17$Pmin6+Y17$Pmin7+Y17$Pmin8+Y17$Pmin9+Y17$Pmin10+Y17$Pmin11)
  pMinTmp$y18[1] <- mean(Y18$Pmin0+Y18$Pmin1+Y18$Pmin2+Y18$Pmin3+Y18$Pmin4+Y18$Pmin5+Y18$Pmin6+Y18$Pmin7+Y18$Pmin8+Y18$Pmin9+Y18$Pmin10+Y18$Pmin11)
  pMinTmp$y19[1] <- mean(Y19$Pmin0+Y19$Pmin1+Y19$Pmin2+Y19$Pmin3+Y19$Pmin4+Y19$Pmin5+Y19$Pmin6+Y19$Pmin7+Y19$Pmin8+Y19$Pmin9+Y19$Pmin10+Y19$Pmin11)
  pMinTmp$y20[1] <- mean(Y20$Pmin0+Y20$Pmin1+Y20$Pmin2+Y20$Pmin3+Y20$Pmin4+Y20$Pmin5+Y20$Pmin6+Y20$Pmin7+Y20$Pmin8+Y20$Pmin9+Y20$Pmin10+Y20$Pmin11)
  pMinTmp$y21[1] <- mean(Y21$Pmin0+Y21$Pmin1+Y21$Pmin2+Y21$Pmin3+Y21$Pmin4+Y21$Pmin5+Y21$Pmin6+Y21$Pmin7+Y21$Pmin8+Y21$Pmin9+Y21$Pmin10+Y21$Pmin11)
  pMinTmp$y22[1] <- mean(Y22$Pmin0+Y22$Pmin1+Y22$Pmin2+Y22$Pmin3+Y22$Pmin4+Y22$Pmin5+Y22$Pmin6+Y22$Pmin7+Y22$Pmin8+Y22$Pmin9+Y22$Pmin10+Y22$Pmin11)
  pMinTmp$y23[1] <- mean(Y23$Pmin0+Y23$Pmin1+Y23$Pmin2+Y23$Pmin3+Y23$Pmin4+Y23$Pmin5+Y23$Pmin6+Y23$Pmin7+Y23$Pmin8+Y23$Pmin9+Y23$Pmin10+Y23$Pmin11)
  pMinTmp$y24[1] <- mean(Y24$Pmin0+Y24$Pmin1+Y24$Pmin2+Y24$Pmin3+Y24$Pmin4+Y24$Pmin5+Y24$Pmin6+Y24$Pmin7+Y24$Pmin8+Y24$Pmin9+Y24$Pmin10+Y24$Pmin11)
  pMinTmp$y25[1] <- mean(Y25$Pmin0+Y25$Pmin1+Y25$Pmin2+Y25$Pmin3+Y25$Pmin4+Y25$Pmin5+Y25$Pmin6+Y25$Pmin7+Y25$Pmin8+Y25$Pmin9+Y25$Pmin10+Y25$Pmin11)
  pMinTmp$Y26[1] <- mean(Y26$Pmin0+Y26$Pmin1+Y26$Pmin2+Y26$Pmin3+Y26$Pmin4+Y26$Pmin5+Y26$Pmin6+Y26$Pmin7+Y26$Pmin8+Y26$Pmin9+Y26$Pmin10+Y26$Pmin11)
  pMinTmp$y27[1] <- mean(Y27$Pmin0+Y27$Pmin1+Y27$Pmin2+Y27$Pmin3+Y27$Pmin4+Y27$Pmin5+Y27$Pmin6+Y27$Pmin7+Y27$Pmin8+Y27$Pmin9+Y27$Pmin10+Y27$Pmin11)
  pMinTmp$y28[1] <- mean(Y28$Pmin0+Y28$Pmin1+Y28$Pmin2+Y28$Pmin3+Y28$Pmin4+Y28$Pmin5+Y28$Pmin6+Y28$Pmin7+Y28$Pmin8+Y28$Pmin9+Y28$Pmin10+Y28$Pmin11)
  pMinTmp$y29[1] <- mean(Y29$Pmin0+Y29$Pmin1+Y29$Pmin2+Y29$Pmin3+Y29$Pmin4+Y29$Pmin5+Y29$Pmin6+Y29$Pmin7+Y29$Pmin8+Y29$Pmin9+Y29$Pmin10+Y29$Pmin11)
  pMinTmp$y30[1] <- mean(Y30$Pmin0+Y30$Pmin1+Y30$Pmin2+Y30$Pmin3+Y30$Pmin4+Y30$Pmin5+Y30$Pmin6+Y30$Pmin7+Y30$Pmin8+Y30$Pmin9+Y30$Pmin10+Y30$Pmin11)
  pMinC <- rbind(pMinC, pMinTmp)
  
  pMedTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, Y26=NA)[numeric(0), ]
  pMedTmp[1,] <- 0
  pMedTmp$y13[1] <- mean(Y13$pMed0+Y13$pMed1+Y13$pMed2+Y13$pMed3+Y13$pMed4+Y13$pMed5+Y13$pMed6+Y13$pMed7+Y13$pMed8+Y13$pMed9+Y13$pMed10+Y13$pMed11)
  pMedTmp$y14[1] <- mean(Y14$pMed0+Y14$pMed1+Y14$pMed2+Y14$pMed3+Y14$pMed4+Y14$pMed5+Y14$pMed6+Y14$pMed7+Y14$pMed8+Y14$pMed9+Y14$pMed10+Y14$pMed11)
  pMedTmp$y15[1] <- mean(Y15$pMed0+Y15$pMed1+Y15$pMed2+Y15$pMed3+Y15$pMed4+Y15$pMed5+Y15$pMed6+Y15$pMed7+Y15$pMed8+Y15$pMed9+Y15$pMed10+Y15$pMed11)
  pMedTmp$y16[1] <- mean(Y16$pMed0+Y16$pMed1+Y16$pMed2+Y16$pMed3+Y16$pMed4+Y16$pMed5+Y16$pMed6+Y16$pMed7+Y16$pMed8+Y16$pMed9+Y16$pMed10+Y16$pMed11)
  pMedTmp$y17[1] <- mean(Y17$pMed0+Y17$pMed1+Y17$pMed2+Y17$pMed3+Y17$pMed4+Y17$pMed5+Y17$pMed6+Y17$pMed7+Y17$pMed8+Y17$pMed9+Y17$pMed10+Y17$pMed11)
  pMedTmp$y18[1] <- mean(Y18$pMed0+Y18$pMed1+Y18$pMed2+Y18$pMed3+Y18$pMed4+Y18$pMed5+Y18$pMed6+Y18$pMed7+Y18$pMed8+Y18$pMed9+Y18$pMed10+Y18$pMed11)
  pMedTmp$y19[1] <- mean(Y19$pMed0+Y19$pMed1+Y19$pMed2+Y19$pMed3+Y19$pMed4+Y19$pMed5+Y19$pMed6+Y19$pMed7+Y19$pMed8+Y19$pMed9+Y19$pMed10+Y19$pMed11)
  pMedTmp$y20[1] <- mean(Y20$pMed0+Y20$pMed1+Y20$pMed2+Y20$pMed3+Y20$pMed4+Y20$pMed5+Y20$pMed6+Y20$pMed7+Y20$pMed8+Y20$pMed9+Y20$pMed10+Y20$pMed11)
  pMedTmp$y21[1] <- mean(Y21$pMed0+Y21$pMed1+Y21$pMed2+Y21$pMed3+Y21$pMed4+Y21$pMed5+Y21$pMed6+Y21$pMed7+Y21$pMed8+Y21$pMed9+Y21$pMed10+Y21$pMed11)
  pMedTmp$y22[1] <- mean(Y22$pMed0+Y22$pMed1+Y22$pMed2+Y22$pMed3+Y22$pMed4+Y22$pMed5+Y22$pMed6+Y22$pMed7+Y22$pMed8+Y22$pMed9+Y22$pMed10+Y22$pMed11)
  pMedTmp$y23[1] <- mean(Y23$pMed0+Y23$pMed1+Y23$pMed2+Y23$pMed3+Y23$pMed4+Y23$pMed5+Y23$pMed6+Y23$pMed7+Y23$pMed8+Y23$pMed9+Y23$pMed10+Y23$pMed11)
  pMedTmp$y24[1] <- mean(Y24$pMed0+Y24$pMed1+Y24$pMed2+Y24$pMed3+Y24$pMed4+Y24$pMed5+Y24$pMed6+Y24$pMed7+Y24$pMed8+Y24$pMed9+Y24$pMed10+Y24$pMed11)
  pMedTmp$y25[1] <- mean(Y25$pMed0+Y25$pMed1+Y25$pMed2+Y25$pMed3+Y25$pMed4+Y25$pMed5+Y25$pMed6+Y25$pMed7+Y25$pMed8+Y25$pMed9+Y25$pMed10+Y25$pMed11)
  pMedTmp$Y26[1] <- mean(Y26$pMed0+Y26$pMed1+Y26$pMed2+Y26$pMed3+Y26$pMed4+Y26$pMed5+Y26$pMed6+Y26$pMed7+Y26$pMed8+Y26$pMed9+Y26$pMed10+Y26$pMed11)
  pMedTmp$y27[1] <- mean(Y27$pMed0+Y27$pMed1+Y27$pMed2+Y27$pMed3+Y27$pMed4+Y27$pMed5+Y27$pMed6+Y27$pMed7+Y27$pMed8+Y27$pMed9+Y27$pMed10+Y27$pMed11)
  pMedTmp$y28[1] <- mean(Y28$pMed0+Y28$pMed1+Y28$pMed2+Y28$pMed3+Y28$pMed4+Y28$pMed5+Y28$pMed6+Y28$pMed7+Y28$pMed8+Y28$pMed9+Y28$pMed10+Y28$pMed11)
  pMedTmp$y29[1] <- mean(Y29$pMed0+Y29$pMed1+Y29$pMed2+Y29$pMed3+Y29$pMed4+Y29$pMed5+Y29$pMed6+Y29$pMed7+Y29$pMed8+Y29$pMed9+Y29$pMed10+Y29$pMed11)
  pMedTmp$y30[1] <- mean(Y30$pMed0+Y30$pMed1+Y30$pMed2+Y30$pMed3+Y30$pMed4+Y30$pMed5+Y30$pMed6+Y30$pMed7+Y30$pMed8+Y30$pMed9+Y30$pMed10+Y30$pMed11)
  pMedC <- rbind(pMedC, pMedTmp)
  
  pMaxTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, Y26=NA)[numeric(0), ]
  pMaxTmp[1,] <- 0
  pMaxTmp$y13[1] <- mean(Y13$pMax0+Y13$pMax1+Y13$pMax2+Y13$pMax3+Y13$pMax4+Y13$pMax5+Y13$pMax6+Y13$pMax7+Y13$pMax8+Y13$pMax9+Y13$pMax10+Y13$pMax11)
  pMaxTmp$y14[1] <- mean(Y14$pMax0+Y14$pMax1+Y14$pMax2+Y14$pMax3+Y14$pMax4+Y14$pMax5+Y14$pMax6+Y14$pMax7+Y14$pMax8+Y14$pMax9+Y14$pMax10+Y14$pMax11)
  pMaxTmp$y15[1] <- mean(Y15$pMax0+Y15$pMax1+Y15$pMax2+Y15$pMax3+Y15$pMax4+Y15$pMax5+Y15$pMax6+Y15$pMax7+Y15$pMax8+Y15$pMax9+Y15$pMax10+Y15$pMax11)
  pMaxTmp$y16[1] <- mean(Y16$pMax0+Y16$pMax1+Y16$pMax2+Y16$pMax3+Y16$pMax4+Y16$pMax5+Y16$pMax6+Y16$pMax7+Y16$pMax8+Y16$pMax9+Y16$pMax10+Y16$pMax11)
  pMaxTmp$y17[1] <- mean(Y17$pMax0+Y17$pMax1+Y17$pMax2+Y17$pMax3+Y17$pMax4+Y17$pMax5+Y17$pMax6+Y17$pMax7+Y17$pMax8+Y17$pMax9+Y17$pMax10+Y17$pMax11)
  pMaxTmp$y18[1] <- mean(Y18$pMax0+Y18$pMax1+Y18$pMax2+Y18$pMax3+Y18$pMax4+Y18$pMax5+Y18$pMax6+Y18$pMax7+Y18$pMax8+Y18$pMax9+Y18$pMax10+Y18$pMax11)
  pMaxTmp$y19[1] <- mean(Y19$pMax0+Y19$pMax1+Y19$pMax2+Y19$pMax3+Y19$pMax4+Y19$pMax5+Y19$pMax6+Y19$pMax7+Y19$pMax8+Y19$pMax9+Y19$pMax10+Y19$pMax11)
  pMaxTmp$y20[1] <- mean(Y20$pMax0+Y20$pMax1+Y20$pMax2+Y20$pMax3+Y20$pMax4+Y20$pMax5+Y20$pMax6+Y20$pMax7+Y20$pMax8+Y20$pMax9+Y20$pMax10+Y20$pMax11)
  pMaxTmp$y21[1] <- mean(Y21$pMax0+Y21$pMax1+Y21$pMax2+Y21$pMax3+Y21$pMax4+Y21$pMax5+Y21$pMax6+Y21$pMax7+Y21$pMax8+Y21$pMax9+Y21$pMax10+Y21$pMax11)
  pMaxTmp$y22[1] <- mean(Y22$pMax0+Y22$pMax1+Y22$pMax2+Y22$pMax3+Y22$pMax4+Y22$pMax5+Y22$pMax6+Y22$pMax7+Y22$pMax8+Y22$pMax9+Y22$pMax10+Y22$pMax11)
  pMaxTmp$y23[1] <- mean(Y23$pMax0+Y23$pMax1+Y23$pMax2+Y23$pMax3+Y23$pMax4+Y23$pMax5+Y23$pMax6+Y23$pMax7+Y23$pMax8+Y23$pMax9+Y23$pMax10+Y23$pMax11)
  pMaxTmp$y24[1] <- mean(Y24$pMax0+Y24$pMax1+Y24$pMax2+Y24$pMax3+Y24$pMax4+Y24$pMax5+Y24$pMax6+Y24$pMax7+Y24$pMax8+Y24$pMax9+Y24$pMax10+Y24$pMax11)
  pMaxTmp$y25[1] <- mean(Y25$pMax0+Y25$pMax1+Y25$pMax2+Y25$pMax3+Y25$pMax4+Y25$pMax5+Y25$pMax6+Y25$pMax7+Y25$pMax8+Y25$pMax9+Y25$pMax10+Y25$pMax11)
  pMaxTmp$Y26[1] <- mean(Y26$pMax0+Y26$pMax1+Y26$pMax2+Y26$pMax3+Y26$pMax4+Y26$pMax5+Y26$pMax6+Y26$pMax7+Y26$pMax8+Y26$pMax9+Y26$pMax10+Y26$pMax11)
  pMaxTmp$y27[1] <- mean(Y27$pMax0+Y27$pMax1+Y27$pMax2+Y27$pMax3+Y27$pMax4+Y27$pMax5+Y27$pMax6+Y27$pMax7+Y27$pMax8+Y27$pMax9+Y27$pMax10+Y27$pMax11)
  pMaxTmp$y28[1] <- mean(Y28$pMax0+Y28$pMax1+Y28$pMax2+Y28$pMax3+Y28$pMax4+Y28$pMax5+Y28$pMax6+Y28$pMax7+Y28$pMax8+Y28$pMax9+Y28$pMax10+Y28$pMax11)
  pMaxTmp$y29[1] <- mean(Y29$pMax0+Y29$pMax1+Y29$pMax2+Y29$pMax3+Y29$pMax4+Y29$pMax5+Y29$pMax6+Y29$pMax7+Y29$pMax8+Y29$pMax9+Y29$pMax10+Y29$pMax11)
  pMaxTmp$y30[1] <- mean(Y30$pMax0+Y30$pMax1+Y30$pMax2+Y30$pMax3+Y30$pMax4+Y30$pMax5+Y30$pMax6+Y30$pMax7+Y30$pMax8+Y30$pMax9+Y30$pMax10+Y30$pMax11)
  pMaxC <- rbind(pMaxC, pMaxTmp)
  
  pTotalTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, Y26=NA)[numeric(0), ]
  pTotalTmp[1,] <- 0
  pTotalTmp$y13[1] <- mean(Y13$TotalPrisonPop)
  pTotalTmp$y14[1] <- mean(Y14$TotalPrisonPop)
  pTotalTmp$y15[1] <- mean(Y15$TotalPrisonPop)
  pTotalTmp$y16[1] <- mean(Y16$TotalPrisonPop)
  pTotalTmp$y17[1] <- mean(Y17$TotalPrisonPop)
  pTotalTmp$y18[1] <- mean(Y18$TotalPrisonPop)
  pTotalTmp$y19[1] <- mean(Y19$TotalPrisonPop)
  pTotalTmp$y20[1] <- mean(Y20$TotalPrisonPop)
  pTotalTmp$y21[1] <- mean(Y21$TotalPrisonPop)
  pTotalTmp$y22[1] <- mean(Y22$TotalPrisonPop)
  pTotalTmp$y23[1] <- mean(Y23$TotalPrisonPop)
  pTotalTmp$y24[1] <- mean(Y24$TotalPrisonPop)
  pTotalTmp$y25[1] <- mean(Y25$TotalPrisonPop)
  pTotalTmp$y26[1] <- mean(Y26$TotalPrisonPop)
  pTotalTmp$y27[1] <- mean(Y27$TotalPrisonPop)
  pTotalTmp$y28[1] <- mean(Y28$TotalPrisonPop)
  pTotalTmp$y29[1] <- mean(Y29$TotalPrisonPop)
  pTotalTmp$y30[1] <- mean(Y30$TotalPrisonPop)
  pTotalC <- rbind(pTotalC, pTotalTmp)
  
  pReTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, Y26=NA)[numeric(0), ]
  pReTmp[1,] <- 0
  pReTmp$y13[1] <- mean(Y13$reinfected)
  pReTmp$y14[1] <- mean(Y14$reinfected)
  pReTmp$y15[1] <- mean(Y15$reinfected)
  pReTmp$y16[1] <- mean(Y16$reinfected)
  pReTmp$y17[1] <- mean(Y17$reinfected)
  pReTmp$y18[1] <- mean(Y18$reinfected)
  pReTmp$y19[1] <- mean(Y19$reinfected)
  pReTmp$y20[1] <- mean(Y20$reinfected)
  pReTmp$y21[1] <- mean(Y21$reinfected)
  pReTmp$y22[1] <- mean(Y22$reinfected)
  pReTmp$y23[1] <- mean(Y23$reinfected)
  pReTmp$y24[1] <- mean(Y24$reinfected)
  pReTmp$y25[1] <- mean(Y25$reinfected)
  pReTmp$y26[1] <- mean(Y26$reinfected)
  pReTmp$y27[1] <- mean(Y27$reinfected)
  pReTmp$y28[1] <- mean(Y28$reinfected)
  pReTmp$y29[1] <- mean(Y29$reinfected)
  pReTmp$y30[1] <- mean(Y30$reinfected)
  pReinfectedC <- rbind(pReinfectedC, pReTmp)
  
  pNcTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, Y26=NA)[numeric(0), ]
  pNcTmp[1,] <- 0
  pNcTmp$y13[1] <- mean(Y13$NewCases)
  pNcTmp$y14[1] <- mean(Y14$NewCases)
  pNcTmp$y15[1] <- mean(Y15$NewCases)
  pNcTmp$y16[1] <- mean(Y16$NewCases)
  pNcTmp$y17[1] <- mean(Y17$NewCases)
  pNcTmp$y18[1] <- mean(Y18$NewCases)
  pNcTmp$y19[1] <- mean(Y19$NewCases)
  pNcTmp$y20[1] <- mean(Y20$NewCases)
  pNcTmp$y21[1] <- mean(Y21$NewCases)
  pNcTmp$y22[1] <- mean(Y22$NewCases)
  pNcTmp$y23[1] <- mean(Y23$NewCases)
  pNcTmp$y24[1] <- mean(Y24$NewCases)
  pNcTmp$y25[1] <- mean(Y25$NewCases)
  pNcTmp$y26[1] <- mean(Y26$NewCases)
  pNcTmp$y27[1] <- mean(Y27$NewCases)
  pNcTmp$y28[1] <- mean(Y28$NewCases)
  pNcTmp$y29[1] <- mean(Y29$NewCases)
  pNcTmp$y30[1] <- mean(Y30$NewCases)
  pNewCasesC <- rbind(pNewCasesC, pNcTmp)
  
  pIDUTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, Y26=NA)[numeric(0), ]
  pIDUTmp[1,] <- 0
  pIDUTmp$y13[1] <- mean(Y13$Pmin0+Y13$Pmin1+Y13$Pmin2+Y13$Pmin3+Y13$Pmin4+Y13$Pmin5+Y13$Pmed0+Y13$Pmed1+Y13$Pmed2+Y13$Pmed3+Y13$Pmed4+Y13$Pmed5+Y13$Pmax0+Y13$Pmax1+Y13$Pmax2+Y13$Pmax3+Y13$Pmax4+Y13$Pmax5)
  pIDUTmp$y14[1] <- mean(Y14$Pmin0+Y14$Pmin1+Y14$Pmin2+Y14$Pmin3+Y14$Pmin4+Y14$Pmin5+Y14$Pmed0+Y14$Pmed1+Y14$Pmed2+Y14$Pmed3+Y14$Pmed4+Y14$Pmed5+Y14$Pmax0+Y14$Pmax1+Y14$Pmax2+Y14$Pmax3+Y14$Pmax4+Y14$Pmax5)
  pIDUTmp$y15[1] <- mean(Y15$Pmin0+Y15$Pmin1+Y15$Pmin2+Y15$Pmin3+Y15$Pmin4+Y15$Pmin5+Y15$Pmed0+Y15$Pmed1+Y15$Pmed2+Y15$Pmed3+Y15$Pmed4+Y15$Pmed5+Y15$Pmax0+Y15$Pmax1+Y15$Pmax2+Y15$Pmax3+Y15$Pmax4+Y15$Pmax5)
  pIDUTmp$y16[1] <- mean(Y16$Pmin0+Y16$Pmin1+Y16$Pmin2+Y16$Pmin3+Y16$Pmin4+Y16$Pmin5+Y16$Pmed0+Y16$Pmed1+Y16$Pmed2+Y16$Pmed3+Y16$Pmed4+Y16$Pmed5+Y16$Pmax0+Y16$Pmax1+Y16$Pmax2+Y16$Pmax3+Y16$Pmax4+Y16$Pmax5)
  pIDUTmp$y17[1] <- mean(Y17$Pmin0+Y17$Pmin1+Y17$Pmin2+Y17$Pmin3+Y17$Pmin4+Y17$Pmin5+Y17$Pmed0+Y17$Pmed1+Y17$Pmed2+Y17$Pmed3+Y17$Pmed4+Y17$Pmed5+Y17$Pmax0+Y17$Pmax1+Y17$Pmax2+Y17$Pmax3+Y17$Pmax4+Y17$Pmax5)
  pIDUTmp$y18[1] <- mean(Y18$Pmin0+Y18$Pmin1+Y18$Pmin2+Y18$Pmin3+Y18$Pmin4+Y18$Pmin5+Y18$Pmed0+Y18$Pmed1+Y18$Pmed2+Y18$Pmed3+Y18$Pmed4+Y18$Pmed5+Y18$Pmax0+Y18$Pmax1+Y18$Pmax2+Y18$Pmax3+Y18$Pmax4+Y18$Pmax5)
  pIDUTmp$y19[1] <- mean(Y19$Pmin0+Y19$Pmin1+Y19$Pmin2+Y19$Pmin3+Y19$Pmin4+Y19$Pmin5+Y19$Pmed0+Y19$Pmed1+Y19$Pmed2+Y19$Pmed3+Y19$Pmed4+Y19$Pmed5+Y19$Pmax0+Y19$Pmax1+Y19$Pmax2+Y19$Pmax3+Y19$Pmax4+Y19$Pmax5)
  pIDUTmp$y20[1] <- mean(Y20$Pmin0+Y20$Pmin1+Y20$Pmin2+Y20$Pmin3+Y20$Pmin4+Y20$Pmin5+Y20$Pmed0+Y20$Pmed1+Y20$Pmed2+Y20$Pmed3+Y20$Pmed4+Y20$Pmed5+Y20$Pmax0+Y20$Pmax1+Y20$Pmax2+Y20$Pmax3+Y20$Pmax4+Y20$Pmax5)
  pIDUTmp$y21[1] <- mean(Y21$Pmin0+Y21$Pmin1+Y21$Pmin2+Y21$Pmin3+Y21$Pmin4+Y21$Pmin5+Y21$Pmed0+Y21$Pmed1+Y21$Pmed2+Y21$Pmed3+Y21$Pmed4+Y21$Pmed5+Y21$Pmax0+Y21$Pmax1+Y21$Pmax2+Y21$Pmax3+Y21$Pmax4+Y21$Pmax5)
  pIDUTmp$y22[1] <- mean(Y22$Pmin0+Y22$Pmin1+Y22$Pmin2+Y22$Pmin3+Y22$Pmin4+Y22$Pmin5+Y22$Pmed0+Y22$Pmed1+Y22$Pmed2+Y22$Pmed3+Y22$Pmed4+Y22$Pmed5+Y22$Pmax0+Y22$Pmax1+Y22$Pmax2+Y22$Pmax3+Y22$Pmax4+Y22$Pmax5)
  pIDUTmp$y23[1] <- mean(Y23$Pmin0+Y23$Pmin1+Y23$Pmin2+Y23$Pmin3+Y23$Pmin4+Y23$Pmin5+Y23$Pmed0+Y23$Pmed1+Y23$Pmed2+Y23$Pmed3+Y23$Pmed4+Y23$Pmed5+Y23$Pmax0+Y23$Pmax1+Y23$Pmax2+Y23$Pmax3+Y23$Pmax4+Y23$Pmax5)
  pIDUTmp$y24[1] <- mean(Y24$Pmin0+Y24$Pmin1+Y24$Pmin2+Y24$Pmin3+Y24$Pmin4+Y24$Pmin5+Y24$Pmed0+Y24$Pmed1+Y24$Pmed2+Y24$Pmed3+Y24$Pmed4+Y24$Pmed5+Y24$Pmax0+Y24$Pmax1+Y24$Pmax2+Y24$Pmax3+Y24$Pmax4+Y24$Pmax5)
  pIDUTmp$y25[1] <- mean(Y25$Pmin0+Y25$Pmin1+Y25$Pmin2+Y25$Pmin3+Y25$Pmin4+Y25$Pmin5+Y25$Pmed0+Y25$Pmed1+Y25$Pmed2+Y25$Pmed3+Y25$Pmed4+Y25$Pmed5+Y25$Pmax0+Y25$Pmax1+Y25$Pmax2+Y25$Pmax3+Y25$Pmax4+Y25$Pmax5)
  pIDUTmp$y26[1] <- mean(Y26$Pmin0+Y26$Pmin1+Y26$Pmin2+Y26$Pmin3+Y26$Pmin4+Y26$Pmin5+Y26$Pmed0+Y26$Pmed1+Y26$Pmed2+Y26$Pmed3+Y26$Pmed4+Y26$Pmed5+Y26$Pmax0+Y26$Pmax1+Y26$Pmax2+Y26$Pmax3+Y26$Pmax4+Y26$Pmax5)
  pIDUTmp$y27[1] <- mean(Y27$Pmin0+Y27$Pmin1+Y27$Pmin2+Y27$Pmin3+Y27$Pmin4+Y27$Pmin5+Y27$Pmed0+Y27$Pmed1+Y27$Pmed2+Y27$Pmed3+Y27$Pmed4+Y27$Pmed5+Y27$Pmax0+Y27$Pmax1+Y27$Pmax2+Y27$Pmax3+Y27$Pmax4+Y27$Pmax5)
  pIDUTmp$y28[1] <- mean(Y28$Pmin0+Y28$Pmin1+Y28$Pmin2+Y28$Pmin3+Y28$Pmin4+Y28$Pmin5+Y28$Pmed0+Y28$Pmed1+Y28$Pmed2+Y28$Pmed3+Y28$Pmed4+Y28$Pmed5+Y28$Pmax0+Y28$Pmax1+Y28$Pmax2+Y28$Pmax3+Y28$Pmax4+Y28$Pmax5)
  pIDUTmp$y29[1] <- mean(Y29$Pmin0+Y29$Pmin1+Y29$Pmin2+Y29$Pmin3+Y29$Pmin4+Y29$Pmin5+Y29$Pmed0+Y29$Pmed1+Y29$Pmed2+Y29$Pmed3+Y29$Pmed4+Y29$Pmed5+Y29$Pmax0+Y29$Pmax1+Y29$Pmax2+Y29$Pmax3+Y29$Pmax4+Y29$Pmax5)
  pIDUTmp$y30[1] <- mean(Y30$Pmin0+Y30$Pmin1+Y30$Pmin2+Y30$Pmin3+Y30$Pmin4+Y30$Pmin5+Y30$Pmed0+Y30$Pmed1+Y30$Pmed2+Y30$Pmed3+Y30$Pmed4+Y30$Pmed5+Y30$Pmax0+Y30$Pmax1+Y30$Pmax2+Y30$Pmax3+Y30$Pmax4+Y30$Pmax5)
  pTotalIDUC <- rbind(pTotalIDUC, pIDUTmp)
  
  pPrisonTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, Y26=NA)[numeric(0), ]
  pPrisonTmp[1,] <- 0
  pPrisonTmp$y13[1] <- mean(Y13$PrisonHCV)
  pPrisonTmp$y14[1] <- mean(Y14$PrisonHCV)
  pPrisonTmp$y15[1] <- mean(Y15$PrisonHCV)
  pPrisonTmp$y16[1] <- mean(Y16$PrisonHCV)
  pPrisonTmp$y17[1] <- mean(Y17$PrisonHCV)
  pPrisonTmp$y18[1] <- mean(Y18$PrisonHCV)
  pPrisonTmp$y19[1] <- mean(Y19$PrisonHCV)
  pPrisonTmp$y20[1] <- mean(Y20$PrisonHCV)
  pPrisonTmp$y21[1] <- mean(Y21$PrisonHCV)
  pPrisonTmp$y22[1] <- mean(Y22$PrisonHCV)
  pPrisonTmp$y23[1] <- mean(Y23$PrisonHCV)
  pPrisonTmp$y24[1] <- mean(Y24$PrisonHCV)
  pPrisonTmp$y25[1] <- mean(Y25$PrisonHCV)
  pPrisonTmp$y26[1] <- mean(Y26$PrisonHCV)
  pPrisonTmp$y27[1] <- mean(Y27$PrisonHCV)
  pPrisonTmp$y28[1] <- mean(Y28$PrisonHCV)
  pPrisonTmp$y29[1] <- mean(Y29$PrisonHCV)
  pPrisonTmp$y30[1] <- mean(Y30$PrisonHCV)
  pPrisonHCVC <- rbind(pPrisonHCVC, pPrisonTmp)
  
  pOpdTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, Y26=NA)[numeric(0), ]
  pOpdTmp[1,] <- 0
  pOpdTmp$y13[1] <- mean(Y13$OPD)
  pOpdTmp$y14[1] <- mean(Y14$OPD)
  pOpdTmp$y15[1] <- mean(Y15$OPD)
  pOpdTmp$y16[1] <- mean(Y16$OPD)
  pOpdTmp$y17[1] <- mean(Y17$OPD)
  pOpdTmp$y18[1] <- mean(Y18$OPD)
  pOpdTmp$y19[1] <- mean(Y19$OPD)
  pOpdTmp$y20[1] <- mean(Y20$OPD)
  pOpdTmp$y21[1] <- mean(Y21$OPD)
  pOpdTmp$y22[1] <- mean(Y22$OPD)
  pOpdTmp$y23[1] <- mean(Y23$OPD)
  pOpdTmp$y24[1] <- mean(Y24$OPD)
  pOpdTmp$y25[1] <- mean(Y25$OPD)
  pOpdTmp$y26[1] <- mean(Y26$OPD)
  pOpdTmp$y27[1] <- mean(Y27$OPD)
  pOpdTmp$y28[1] <- mean(Y28$OPD)
  pOpdTmp$y29[1] <- mean(Y29$OPD)
  pOpdTmp$y30[1] <- mean(Y30$OPD)
  pOpdC <- rbind(pOpdC, pOpdTmp)
  
  pEverTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, Y26=NA)[numeric(0), ]
  pEverTmp[1,] <- 0
  pEverTmp$y13[1] <- mean(Y13$everIDU)
  pEverTmp$y14[1] <- mean(Y14$everIDU)
  pEverTmp$y15[1] <- mean(Y15$everIDU)
  pEverTmp$y16[1] <- mean(Y16$everIDU)
  pEverTmp$y17[1] <- mean(Y17$everIDU)
  pEverTmp$y18[1] <- mean(Y18$everIDU)
  pEverTmp$y19[1] <- mean(Y19$everIDU)
  pEverTmp$y20[1] <- mean(Y20$everIDU)
  pEverTmp$y21[1] <- mean(Y21$everIDU)
  pEverTmp$y22[1] <- mean(Y22$everIDU)
  pEverTmp$y23[1] <- mean(Y23$everIDU)
  pEverTmp$y24[1] <- mean(Y24$everIDU)
  pEverTmp$y25[1] <- mean(Y25$everIDU)
  pEverTmp$y26[1] <- mean(Y26$everIDU)
  pEverTmp$y27[1] <- mean(Y27$everIDU)
  pEverTmp$y28[1] <- mean(Y28$everIDU)
  pEverTmp$y29[1] <- mean(Y29$everIDU)
  pEverTmp$y30[1] <- mean(Y30$everIDU)
  pEverIDUC <- rbind(pEverIDUC, pEverTmp)
  
  pClrTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, Y26=NA)[numeric(0), ]
  pClrTmp[1,] <- 0
  pClrTmp$y13[1] <- mean(Y13$totalClrDAA)
  pClrTmp$y14[1] <- mean(Y14$totalClrDAA)
  pClrTmp$y15[1] <- mean(Y15$totalClrDAA)
  pClrTmp$y16[1] <- mean(Y16$totalClrDAA)
  pClrTmp$y17[1] <- mean(Y17$totalClrDAA)
  pClrTmp$y18[1] <- mean(Y18$totalClrDAA)
  pClrTmp$y19[1] <- mean(Y19$totalClrDAA)
  pClrTmp$y20[1] <- mean(Y20$totalClrDAA)
  pClrTmp$y21[1] <- mean(Y21$totalClrDAA)
  pClrTmp$y22[1] <- mean(Y22$totalClrDAA)
  pClrTmp$y23[1] <- mean(Y23$totalClrDAA)
  pClrTmp$y24[1] <- mean(Y24$totalClrDAA)
  pClrTmp$y25[1] <- mean(Y25$totalClrDAA)
  pClrTmp$y26[1] <- mean(Y26$totalClrDAA)
  pClrTmp$y27[1] <- mean(Y27$totalClrDAA)
  pClrTmp$y28[1] <- mean(Y28$totalClrDAA)
  pClrTmp$y29[1] <- mean(Y29$totalClrDAA)
  pClrTmp$y30[1] <- mean(Y30$totalClrDAA)
  pClrDC <- rbind(pClrDC, pClrTmp)
  
  ptDAATmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, Y26=NA)[numeric(0), ]
  ptDAATmp[1,] <- 0
  ptDAATmp$y13[1] <- mean(Y13$totalDAA)
  ptDAATmp$y14[1] <- mean(Y14$totalDAA)
  ptDAATmp$y15[1] <- mean(Y15$totalDAA)
  ptDAATmp$y16[1] <- mean(Y16$totalDAA)
  ptDAATmp$y17[1] <- mean(Y17$totalDAA)
  ptDAATmp$y18[1] <- mean(Y18$totalDAA)
  ptDAATmp$y19[1] <- mean(Y19$totalDAA)
  ptDAATmp$y20[1] <- mean(Y20$totalDAA)
  ptDAATmp$y21[1] <- mean(Y21$totalDAA)
  ptDAATmp$y22[1] <- mean(Y22$totalDAA)
  ptDAATmp$y23[1] <- mean(Y23$totalDAA)
  ptDAATmp$y24[1] <- mean(Y24$totalDAA)
  ptDAATmp$y25[1] <- mean(Y25$totalDAA)
  ptDAATmp$y26[1] <- mean(Y26$totalDAA)
  ptDAATmp$y27[1] <- mean(Y27$totalDAA)
  ptDAATmp$y28[1] <- mean(Y28$totalDAA)
  ptDAATmp$y29[1] <- mean(Y29$totalDAA)
  ptDAATmp$y30[1] <- mean(Y30$totalDAA)
  pTotalDAAC <- rbind(pTotalDAAC, ptDAATmp)
  
  ptOSTTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, Y26=NA)[numeric(0), ]
  ptOSTTmp[1,] <- 0
  ptOSTTmp$y13[1] <- mean(Y13$totalOST)
  ptOSTTmp$y14[1] <- mean(Y14$totalOST)
  ptOSTTmp$y15[1] <- mean(Y15$totalOST)
  ptOSTTmp$y16[1] <- mean(Y16$totalOST)
  ptOSTTmp$y17[1] <- mean(Y17$totalOST)
  ptOSTTmp$y18[1] <- mean(Y18$totalOST)
  ptOSTTmp$y19[1] <- mean(Y19$totalOST)
  ptOSTTmp$y20[1] <- mean(Y20$totalOST)
  ptOSTTmp$y21[1] <- mean(Y21$totalOST)
  ptOSTTmp$y22[1] <- mean(Y22$totalOST)
  ptOSTTmp$y23[1] <- mean(Y23$totalOST)
  ptOSTTmp$y24[1] <- mean(Y24$totalOST)
  ptOSTTmp$y25[1] <- mean(Y25$totalOST)
  ptOSTTmp$y26[1] <- mean(Y26$totalOST)
  ptOSTTmp$y27[1] <- mean(Y27$totalOST)
  ptOSTTmp$y28[1] <- mean(Y28$totalOST)
  ptOSTTmp$y29[1] <- mean(Y29$totalOST)
  ptOSTTmp$y30[1] <- mean(Y30$totalOST)
  pTotalOSTC <- rbind(pTotalOSTC, ptOSTTmp)
  
  ptHCVeTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, Y26=NA)[numeric(0), ]
  ptHCVeTmp[1,] <- 0
  ptHCVeTmp$y13[1] <- mean(Y13$HCVe)
  ptHCVeTmp$y14[1] <- mean(Y14$HCVe)
  ptHCVeTmp$y15[1] <- mean(Y15$HCVe)
  ptHCVeTmp$y16[1] <- mean(Y16$HCVe)
  ptHCVeTmp$y17[1] <- mean(Y17$HCVe)
  ptHCVeTmp$y18[1] <- mean(Y18$HCVe)
  ptHCVeTmp$y19[1] <- mean(Y19$HCVe)
  ptHCVeTmp$y20[1] <- mean(Y20$HCVe)
  ptHCVeTmp$y21[1] <- mean(Y21$HCVe)
  ptHCVeTmp$y22[1] <- mean(Y22$HCVe)
  ptHCVeTmp$y23[1] <- mean(Y23$HCVe)
  ptHCVeTmp$y24[1] <- mean(Y24$HCVe)
  ptHCVeTmp$y25[1] <- mean(Y25$HCVe)
  ptHCVeTmp$y26[1] <- mean(Y26$HCVe)
  ptHCVeTmp$y27[1] <- mean(Y27$HCVe)
  ptHCVeTmp$y28[1] <- mean(Y28$HCVe)
  ptHCVeTmp$y29[1] <- mean(Y29$HCVe)
  ptHCVeTmp$y30[1] <- mean(Y30$HCVe)
  pTotalHCVeC <- rbind(pTotalHCVeC, ptHCVeTmp)
  
  ptHCVTmp <- data.frame(y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptHCVTmp[1,] <- 0
  ptHCVTmp$y13[1] <- mean(Y13$Pmin0+Y13$Pmin1+Y13$Pmin6+Y13$Pmin7+Y13$Pmed0+Y13$Pmed1+Y13$Pmed6+Y13$Pmed7+Y13$Pmax0+Y13$Pmax1+Y13$Pmax6+Y13$Pmax7)
  ptHCVTmp$y14[1] <- mean(Y14$Pmin0+Y14$Pmin1+Y14$Pmin6+Y14$Pmin7+Y14$Pmed0+Y14$Pmed1+Y14$Pmed6+Y14$Pmed7+Y14$Pmax0+Y14$Pmax1+Y14$Pmax6+Y14$Pmax7)
  ptHCVTmp$y15[1] <- mean(Y15$Pmin0+Y15$Pmin1+Y15$Pmin6+Y15$Pmin7+Y15$Pmed0+Y15$Pmed1+Y15$Pmed6+Y15$Pmed7+Y15$Pmax0+Y15$Pmax1+Y15$Pmax6+Y15$Pmax7)
  ptHCVTmp$y16[1] <- mean(Y16$Pmin0+Y16$Pmin1+Y16$Pmin6+Y16$Pmin7+Y16$Pmed0+Y16$Pmed1+Y16$Pmed6+Y16$Pmed7+Y16$Pmax0+Y16$Pmax1+Y16$Pmax6+Y16$Pmax7)
  ptHCVTmp$y17[1] <- mean(Y17$Pmin0+Y17$Pmin1+Y17$Pmin6+Y17$Pmin7+Y17$Pmed0+Y17$Pmed1+Y17$Pmed6+Y17$Pmed7+Y17$Pmax0+Y17$Pmax1+Y17$Pmax6+Y17$Pmax7)
  ptHCVTmp$y18[1] <- mean(Y18$Pmin0+Y18$Pmin1+Y18$Pmin6+Y18$Pmin7+Y18$Pmed0+Y18$Pmed1+Y18$Pmed6+Y18$Pmed7+Y18$Pmax0+Y18$Pmax1+Y18$Pmax6+Y18$Pmax7)
  ptHCVTmp$y19[1] <- mean(Y19$Pmin0+Y19$Pmin1+Y19$Pmin6+Y19$Pmin7+Y19$Pmed0+Y19$Pmed1+Y19$Pmed6+Y19$Pmed7+Y19$Pmax0+Y19$Pmax1+Y19$Pmax6+Y19$Pmax7)
  ptHCVTmp$y20[1] <- mean(Y20$Pmin0+Y20$Pmin1+Y20$Pmin6+Y20$Pmin7+Y20$Pmed0+Y20$Pmed1+Y20$Pmed6+Y20$Pmed7+Y20$Pmax0+Y20$Pmax1+Y20$Pmax6+Y20$Pmax7)
  ptHCVTmp$y21[1] <- mean(Y21$Pmin0+Y21$Pmin1+Y21$Pmin6+Y21$Pmin7+Y21$Pmed0+Y21$Pmed1+Y21$Pmed6+Y21$Pmed7+Y21$Pmax0+Y21$Pmax1+Y21$Pmax6+Y21$Pmax7)
  ptHCVTmp$y22[1] <- mean(Y22$Pmin0+Y22$Pmin1+Y22$Pmin6+Y22$Pmin7+Y22$Pmed0+Y22$Pmed1+Y22$Pmed6+Y22$Pmed7+Y22$Pmax0+Y22$Pmax1+Y22$Pmax6+Y22$Pmax7)
  ptHCVTmp$y23[1] <- mean(Y23$Pmin0+Y23$Pmin1+Y23$Pmin6+Y23$Pmin7+Y23$Pmed0+Y23$Pmed1+Y23$Pmed6+Y23$Pmed7+Y23$Pmax0+Y23$Pmax1+Y23$Pmax6+Y23$Pmax7)
  ptHCVTmp$y24[1] <- mean(Y24$Pmin0+Y24$Pmin1+Y24$Pmin6+Y24$Pmin7+Y24$Pmed0+Y24$Pmed1+Y24$Pmed6+Y24$Pmed7+Y24$Pmax0+Y24$Pmax1+Y24$Pmax6+Y24$Pmax7)
  ptHCVTmp$y25[1] <- mean(Y25$Pmin0+Y25$Pmin1+Y25$Pmin6+Y25$Pmin7+Y25$Pmed0+Y25$Pmed1+Y25$Pmed6+Y25$Pmed7+Y25$Pmax0+Y25$Pmax1+Y25$Pmax6+Y25$Pmax7)
  ptHCVTmp$y26[1] <- mean(Y26$Pmin0+Y26$Pmin1+Y26$Pmin6+Y26$Pmin7+Y26$Pmed0+Y26$Pmed1+Y26$Pmed6+Y26$Pmed7+Y26$Pmax0+Y26$Pmax1+Y26$Pmax6+Y26$Pmax7)
  ptHCVTmp$y27[1] <- mean(Y27$Pmin0+Y27$Pmin1+Y27$Pmin6+Y27$Pmin7+Y27$Pmed0+Y27$Pmed1+Y27$Pmed6+Y27$Pmed7+Y27$Pmax0+Y27$Pmax1+Y27$Pmax6+Y27$Pmax7)
  ptHCVTmp$y28[1] <- mean(Y28$Pmin0+Y28$Pmin1+Y28$Pmin6+Y28$Pmin7+Y28$Pmed0+Y28$Pmed1+Y28$Pmed6+Y28$Pmed7+Y28$Pmax0+Y28$Pmax1+Y28$Pmax6+Y28$Pmax7)
  ptHCVTmp$y29[1] <- mean(Y29$Pmin0+Y29$Pmin1+Y29$Pmin6+Y29$Pmin7+Y29$Pmed0+Y29$Pmed1+Y29$Pmed6+Y29$Pmed7+Y29$Pmax0+Y29$Pmax1+Y29$Pmax6+Y29$Pmax7)
  ptHCVTmp$y30[1] <- mean(Y30$Pmin0+Y30$Pmin1+Y30$Pmin6+Y30$Pmin7+Y30$Pmed0+Y30$Pmed1+Y30$Pmed6+Y30$Pmed7+Y30$Pmax0+Y30$Pmax1+Y30$Pmax6+Y30$Pmax7)
  pTotalHCVC <- rbind(pTotalHCVC, ptHCVTmp)
}

#Treatments
#DAAA <- data.frame("IncidenceIDU"=c(((mean(pNewCasesA$y13)/mean(pTotalIDUA$y13))*100)*365, ((mean(pNewCasesA$y14)/mean(pTotalIDUA$y14))*100)*365, ((mean(pNewCasesA$y15)/mean(pTotalIDUA$y15))*100)*365, ((mean(pNewCasesA$y16)/mean(pTotalIDUA$y16))*100)*365, ((mean(pNewCasesA$y17)/mean(pTotalIDUA$y17))*100)*365, ((mean(pNewCasesA$y18)/mean(pTotalIDUA$y18))*100)*365, ((mean(pNewCasesA$y19)/mean(pTotalIDUA$y19))*100)*365, ((mean(pNewCasesA$y20)/mean(pTotalIDUA$y20))*100)*365, ((mean(pNewCasesA$y21)/mean(pTotalIDUA$y21))*100)*365, ((mean(pNewCasesA$y22)/mean(pTotalIDUA$y22))*100)*365, ((mean(pNewCasesA$y23)/mean(pTotalIDUA$y23))*100)*365, ((mean(pNewCasesA$y24)/mean(pTotalIDUA$y24))*100)*365, ((mean(pNewCasesA$y25)/mean(pTotalIDUA$y25))*100)*365, ((mean(pNewCasesA$y26)/mean(pTotalIDUA$y26))*100)*365))
#DAAA$IncidenceFloor <- c(((min(pNewCasesA$y13)/mean(pTotalIDUA$y13))*100)*365, ((min(pNewCasesA$y14)/mean(pTotalIDUA$y14))*100)*365, ((min(pNewCasesA$y15)/mean(pTotalIDUA$y15))*100)*365, ((min(pNewCasesA$y16)/mean(pTotalIDUA$y16))*100)*365, ((min(pNewCasesA$y17)/mean(pTotalIDUA$y17))*100)*365, ((min(pNewCasesA$y18)/mean(pTotalIDUA$y18))*100)*365, ((min(pNewCasesA$y19)/mean(pTotalIDUA$y19))*100)*365, ((min(pNewCasesA$y20)/mean(pTotalIDUA$y20))*100)*365, ((min(pNewCasesA$y21)/mean(pTotalIDUA$y21))*100)*365, ((min(pNewCasesA$y22)/mean(pTotalIDUA$y22))*100)*365, ((min(pNewCasesA$y23)/mean(pTotalIDUA$y23))*100)*365, ((min(pNewCasesA$y24)/mean(pTotalIDUA$y24))*100)*365, ((min(pNewCasesA$y25)/mean(pTotalIDUA$y25))*100)*365, ((min(pNewCasesA$y26)/mean(pTotalIDUA$y26))*100)*365)
#DAAA$IncidenceCeiling <- c(((max(pNewCasesA$y13)/mean(pTotalIDUA$y13))*100)*365, ((max(pNewCasesA$y14)/mean(pTotalIDUA$y14))*100)*365, ((max(pNewCasesA$y15)/mean(pTotalIDUA$y15))*100)*365, ((max(pNewCasesA$y16)/mean(pTotalIDUA$y16))*100)*365, ((max(pNewCasesA$y17)/mean(pTotalIDUA$y17))*100)*365, ((max(pNewCasesA$y18)/mean(pTotalIDUA$y18))*100)*365, ((max(pNewCasesA$y19)/mean(pTotalIDUA$y19))*100)*365, ((max(pNewCasesA$y20)/mean(pTotalIDUA$y20))*100)*365, ((max(pNewCasesA$y21)/mean(pTotalIDUA$y21))*100)*365, ((max(pNewCasesA$y22)/mean(pTotalIDUA$y22))*100)*365, ((max(pNewCasesA$y23)/mean(pTotalIDUA$y23))*100)*365, ((max(pNewCasesA$y24)/mean(pTotalIDUA$y24))*100)*365, ((max(pNewCasesA$y25)/mean(pTotalIDUA$y25))*100)*365, ((max(pNewCasesA$y26)/mean(pTotalIDUA$y26))*100)*365)
#DAAA$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026")
#DAAA$Description <- c("maintained number of DAA treatments")

#DAAB <- data.frame("IncidenceIDU"=c(((mean(pNewCasesB$y13)/mean(pTotalIDUB$y13))*100)*365, ((mean(pNewCasesB$y14)/mean(pTotalIDUB$y14))*100)*365, ((mean(pNewCasesB$y15)/mean(pTotalIDUB$y15))*100)*365, ((mean(pNewCasesB$y16)/mean(pTotalIDUB$y16))*100)*365, ((mean(pNewCasesB$y17)/mean(pTotalIDUB$y17))*100)*365, ((mean(pNewCasesB$y18)/mean(pTotalIDUB$y18))*100)*365, ((mean(pNewCasesB$y19)/mean(pTotalIDUB$y19))*100)*365, ((mean(pNewCasesB$y20)/mean(pTotalIDUB$y20))*100)*365, ((mean(pNewCasesB$y21)/mean(pTotalIDUB$y21))*100)*365, ((mean(pNewCasesB$y22)/mean(pTotalIDUB$y22))*100)*365, ((mean(pNewCasesB$y23)/mean(pTotalIDUB$y23))*100)*365, ((mean(pNewCasesB$y24)/mean(pTotalIDUB$y24))*100)*365, ((mean(pNewCasesB$y25)/mean(pTotalIDUB$y25))*100)*365, ((mean(pNewCasesB$y26)/mean(pTotalIDUB$y26))*100)*365))
#DAAB$IncidenceFloor <- c(((min(pNewCasesB$y13)/mean(pTotalIDUB$y13))*100)*365, ((min(pNewCasesB$y14)/mean(pTotalIDUB$y14))*100)*365, ((min(pNewCasesB$y15)/mean(pTotalIDUB$y15))*100)*365, ((min(pNewCasesB$y16)/mean(pTotalIDUB$y16))*100)*365, ((min(pNewCasesB$y17)/mean(pTotalIDUB$y17))*100)*365, ((min(pNewCasesB$y18)/mean(pTotalIDUB$y18))*100)*365, ((min(pNewCasesB$y19)/mean(pTotalIDUB$y19))*100)*365, ((min(pNewCasesB$y20)/mean(pTotalIDUB$y20))*100)*365, ((min(pNewCasesB$y21)/mean(pTotalIDUB$y21))*100)*365, ((min(pNewCasesB$y22)/mean(pTotalIDUB$y22))*100)*365, ((min(pNewCasesB$y23)/mean(pTotalIDUB$y23))*100)*365, ((min(pNewCasesB$y24)/mean(pTotalIDUB$y24))*100)*365, ((min(pNewCasesB$y25)/mean(pTotalIDUB$y25))*100)*365, ((min(pNewCasesB$y26)/mean(pTotalIDUB$y26))*100)*365)
#DAAB$IncidenceCeiling <- c(((max(pNewCasesB$y13)/mean(pTotalIDUB$y13))*100)*365, ((max(pNewCasesB$y14)/mean(pTotalIDUB$y14))*100)*365, ((max(pNewCasesB$y15)/mean(pTotalIDUB$y15))*100)*365, ((max(pNewCasesB$y16)/mean(pTotalIDUB$y16))*100)*365, ((max(pNewCasesB$y17)/mean(pTotalIDUB$y17))*100)*365, ((max(pNewCasesB$y18)/mean(pTotalIDUB$y18))*100)*365, ((max(pNewCasesB$y19)/mean(pTotalIDUB$y19))*100)*365, ((max(pNewCasesB$y20)/mean(pTotalIDUB$y20))*100)*365, ((max(pNewCasesB$y21)/mean(pTotalIDUB$y21))*100)*365, ((max(pNewCasesB$y22)/mean(pTotalIDUB$y22))*100)*365, ((max(pNewCasesB$y23)/mean(pTotalIDUB$y23))*100)*365, ((max(pNewCasesB$y24)/mean(pTotalIDUB$y24))*100)*365, ((max(pNewCasesB$y25)/mean(pTotalIDUB$y25))*100)*365, ((max(pNewCasesB$y26)/mean(pTotalIDUB$y26))*100)*365)
#DAAB$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026")
#DAAB$Description <- c("DAA treatments increased by 80%")

#DAAC <- data.frame("IncidenceIDU"=c(((mean(pNewCasesC$y13)/mean(pTotalIDUC$y13))*100)*365, ((mean(pNewCasesC$y14)/mean(pTotalIDUC$y14))*100)*365, ((mean(pNewCasesC$y15)/mean(pTotalIDUC$y15))*100)*365, ((mean(pNewCasesC$y16)/mean(pTotalIDUC$y16))*100)*365, ((mean(pNewCasesC$y17)/mean(pTotalIDUC$y17))*100)*365, ((mean(pNewCasesC$y18)/mean(pTotalIDUC$y18))*100)*365, ((mean(pNewCasesC$y19)/mean(pTotalIDUC$y19))*100)*365, ((mean(pNewCasesC$y20)/mean(pTotalIDUC$y20))*100)*365, ((mean(pNewCasesC$y21)/mean(pTotalIDUC$y21))*100)*365, ((mean(pNewCasesC$y22)/mean(pTotalIDUC$y22))*100)*365, ((mean(pNewCasesC$y23)/mean(pTotalIDUC$y23))*100)*365, ((mean(pNewCasesC$y24)/mean(pTotalIDUC$y24))*100)*365, ((mean(pNewCasesC$y25)/mean(pTotalIDUC$y25))*100)*365, ((mean(pNewCasesC$y26)/mean(pTotalIDUC$y26))*100)*365))
#DAAC$IncidenceFloor <- c(((min(pNewCasesC$y13)/mean(pTotalIDUC$y13))*100)*365, ((min(pNewCasesC$y14)/mean(pTotalIDUC$y14))*100)*365, ((min(pNewCasesC$y15)/mean(pTotalIDUC$y15))*100)*365, ((min(pNewCasesC$y16)/mean(pTotalIDUC$y16))*100)*365, ((min(pNewCasesC$y17)/mean(pTotalIDUC$y17))*100)*365, ((min(pNewCasesC$y18)/mean(pTotalIDUC$y18))*100)*365, ((min(pNewCasesC$y19)/mean(pTotalIDUC$y19))*100)*365, ((min(pNewCasesC$y20)/mean(pTotalIDUC$y20))*100)*365, ((min(pNewCasesC$y21)/mean(pTotalIDUC$y21))*100)*365, ((min(pNewCasesC$y22)/mean(pTotalIDUC$y22))*100)*365, ((min(pNewCasesC$y23)/mean(pTotalIDUC$y23))*100)*365, ((min(pNewCasesC$y24)/mean(pTotalIDUC$y24))*100)*365, ((min(pNewCasesC$y25)/mean(pTotalIDUC$y25))*100)*365, ((min(pNewCasesC$y26)/mean(pTotalIDUC$y26))*100)*365)
#DAAC$IncidenceCeiling <- c(((max(pNewCasesC$y13)/mean(pTotalIDUC$y13))*100)*365, ((max(pNewCasesC$y14)/mean(pTotalIDUC$y14))*100)*365, ((max(pNewCasesC$y15)/mean(pTotalIDUC$y15))*100)*365, ((max(pNewCasesC$y16)/mean(pTotalIDUC$y16))*100)*365, ((max(pNewCasesC$y17)/mean(pTotalIDUC$y17))*100)*365, ((max(pNewCasesC$y18)/mean(pTotalIDUC$y18))*100)*365, ((max(pNewCasesC$y19)/mean(pTotalIDUC$y19))*100)*365, ((max(pNewCasesC$y20)/mean(pTotalIDUC$y20))*100)*365, ((max(pNewCasesC$y21)/mean(pTotalIDUC$y21))*100)*365, ((max(pNewCasesC$y22)/mean(pTotalIDUC$y22))*100)*365, ((max(pNewCasesC$y23)/mean(pTotalIDUC$y23))*100)*365, ((max(pNewCasesC$y24)/mean(pTotalIDUC$y24))*100)*365, ((max(pNewCasesC$y25)/mean(pTotalIDUC$y25))*100)*365, ((max(pNewCasesC$y26)/mean(pTotalIDUC$y26))*100)*365)
#DAAC$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026")
#DAAC$Description <- c("DAA treatments reduced by 80%")


#Incidence and Prevalence
#TotalIDU incidence and prevalence
HCVA <- data.frame("IncidenceIDU"=c(((mean(pNewCasesA$y13)/mean(pTotalIDUA$y13))*100)*365, ((mean(pNewCasesA$y14)/mean(pTotalIDUA$y14))*100)*365, ((mean(pNewCasesA$y15)/mean(pTotalIDUA$y15))*100)*365, ((mean(pNewCasesA$y16)/mean(pTotalIDUA$y16))*100)*365, ((mean(pNewCasesA$y17)/mean(pTotalIDUA$y17))*100)*365, ((mean(pNewCasesA$y18)/mean(pTotalIDUA$y18))*100)*365, ((mean(pNewCasesA$y19)/mean(pTotalIDUA$y19))*100)*365, ((mean(pNewCasesA$y20)/mean(pTotalIDUA$y20))*100)*365, ((mean(pNewCasesA$y21)/mean(pTotalIDUA$y21))*100)*365, ((mean(pNewCasesA$y22)/mean(pTotalIDUA$y22))*100)*365, ((mean(pNewCasesA$y23)/mean(pTotalIDUA$y23))*100)*365, ((mean(pNewCasesA$y24)/mean(pTotalIDUA$y24))*100)*365, ((mean(pNewCasesA$y25)/mean(pTotalIDUA$y25))*100)*365, ((mean(pNewCasesA$y26)/mean(pTotalIDUA$y26))*100)*365, ((mean(pNewCasesA$y27)/mean(pTotalIDUA$y27))*100)*365, ((mean(pNewCasesA$y28)/mean(pTotalIDUA$y28))*100)*365, ((mean(pNewCasesA$y29)/mean(pTotalIDUA$y29))*100)*365, ((mean(pNewCasesA$y30)/mean(pTotalIDUA$y30))*100)*365))
HCVA$IncidenceFloor <- c(((min(pNewCasesA$y13)/mean(pTotalIDUA$y13))*100)*365, ((min(pNewCasesA$y14)/mean(pTotalIDUA$y14))*100)*365, ((min(pNewCasesA$y15)/mean(pTotalIDUA$y15))*100)*365, ((min(pNewCasesA$y16)/mean(pTotalIDUA$y16))*100)*365, ((min(pNewCasesA$y17)/mean(pTotalIDUA$y17))*100)*365, ((min(pNewCasesA$y18)/mean(pTotalIDUA$y18))*100)*365, ((min(pNewCasesA$y19)/mean(pTotalIDUA$y19))*100)*365, ((min(pNewCasesA$y20)/mean(pTotalIDUA$y20))*100)*365, ((min(pNewCasesA$y21)/mean(pTotalIDUA$y21))*100)*365, ((min(pNewCasesA$y22)/mean(pTotalIDUA$y22))*100)*365, ((min(pNewCasesA$y23)/mean(pTotalIDUA$y23))*100)*365, ((min(pNewCasesA$y24)/mean(pTotalIDUA$y24))*100)*365, ((min(pNewCasesA$y25)/mean(pTotalIDUA$y25))*100)*365, ((min(pNewCasesA$y26)/mean(pTotalIDUA$y26))*100)*365, ((min(pNewCasesA$y27)/mean(pTotalIDUA$y27))*100)*365, ((min(pNewCasesA$y28)/mean(pTotalIDUA$y28))*100)*365, ((min(pNewCasesA$y29)/mean(pTotalIDUA$y29))*100)*365, ((min(pNewCasesA$y30)/mean(pTotalIDUA$y30))*100)*365)
HCVA$IncidenceCeiling <- c(((max(pNewCasesA$y13)/mean(pTotalIDUA$y13))*100)*365, ((max(pNewCasesA$y14)/mean(pTotalIDUA$y14))*100)*365, ((max(pNewCasesA$y15)/mean(pTotalIDUA$y15))*100)*365, ((max(pNewCasesA$y16)/mean(pTotalIDUA$y16))*100)*365, ((max(pNewCasesA$y17)/mean(pTotalIDUA$y17))*100)*365, ((max(pNewCasesA$y18)/mean(pTotalIDUA$y18))*100)*365, ((max(pNewCasesA$y19)/mean(pTotalIDUA$y19))*100)*365, ((max(pNewCasesA$y20)/mean(pTotalIDUA$y20))*100)*365, ((max(pNewCasesA$y21)/mean(pTotalIDUA$y21))*100)*365, ((max(pNewCasesA$y22)/mean(pTotalIDUA$y22))*100)*365, ((max(pNewCasesA$y23)/mean(pTotalIDUA$y23))*100)*365, ((max(pNewCasesA$y24)/mean(pTotalIDUA$y24))*100)*365, ((max(pNewCasesA$y25)/mean(pTotalIDUA$y25))*100)*365, ((max(pNewCasesA$y26)/mean(pTotalIDUA$y26))*100)*365, ((max(pNewCasesA$y27)/mean(pTotalIDUA$y27))*100)*365, ((max(pNewCasesA$y28)/mean(pTotalIDUA$y28))*100)*365, ((max(pNewCasesA$y29)/mean(pTotalIDUA$y29))*100)*365, ((max(pNewCasesA$y30)/mean(pTotalIDUA$y30))*100)*365)
HCVA$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVA$Description <- c("retained number of DAA treatments")

HCVB <- data.frame("IncidenceIDU"=c(((mean(pNewCasesB$y13)/mean(pTotalIDUB$y13))*100)*365, ((mean(pNewCasesB$y14)/mean(pTotalIDUB$y14))*100)*365, ((mean(pNewCasesB$y15)/mean(pTotalIDUB$y15))*100)*365, ((mean(pNewCasesB$y16)/mean(pTotalIDUB$y16))*100)*365, ((mean(pNewCasesB$y17)/mean(pTotalIDUB$y17))*100)*365, ((mean(pNewCasesB$y18)/mean(pTotalIDUB$y18))*100)*365, ((mean(pNewCasesB$y19)/mean(pTotalIDUB$y19))*100)*365, ((mean(pNewCasesB$y20)/mean(pTotalIDUB$y20))*100)*365, ((mean(pNewCasesB$y21)/mean(pTotalIDUB$y21))*100)*365, ((mean(pNewCasesB$y22)/mean(pTotalIDUB$y22))*100)*365, ((mean(pNewCasesB$y23)/mean(pTotalIDUB$y23))*100)*365, ((mean(pNewCasesB$y24)/mean(pTotalIDUB$y24))*100)*365, ((mean(pNewCasesB$y25)/mean(pTotalIDUB$y25))*100)*365, ((mean(pNewCasesB$y26)/mean(pTotalIDUB$y26))*100)*365, ((mean(pNewCasesB$y27)/mean(pTotalIDUB$y27))*100)*365, ((mean(pNewCasesB$y28)/mean(pTotalIDUB$y28))*100)*365, ((mean(pNewCasesB$y29)/mean(pTotalIDUB$y29))*100)*365, ((mean(pNewCasesB$y30)/mean(pTotalIDUB$y30))*100)*365))
HCVB$IncidenceFloor <- c(((min(pNewCasesB$y13)/mean(pTotalIDUB$y13))*100)*365, ((min(pNewCasesB$y14)/mean(pTotalIDUB$y14))*100)*365, ((min(pNewCasesB$y15)/mean(pTotalIDUB$y15))*100)*365, ((min(pNewCasesB$y16)/mean(pTotalIDUB$y16))*100)*365, ((min(pNewCasesB$y17)/mean(pTotalIDUB$y17))*100)*365, ((min(pNewCasesB$y18)/mean(pTotalIDUB$y18))*100)*365, ((min(pNewCasesB$y19)/mean(pTotalIDUB$y19))*100)*365, ((min(pNewCasesB$y20)/mean(pTotalIDUB$y20))*100)*365, ((min(pNewCasesB$y21)/mean(pTotalIDUB$y21))*100)*365, ((min(pNewCasesB$y22)/mean(pTotalIDUB$y22))*100)*365, ((min(pNewCasesB$y23)/mean(pTotalIDUB$y23))*100)*365, ((min(pNewCasesB$y24)/mean(pTotalIDUB$y24))*100)*365, ((min(pNewCasesB$y25)/mean(pTotalIDUB$y25))*100)*365, ((min(pNewCasesB$y26)/mean(pTotalIDUB$y26))*100)*365, ((min(pNewCasesB$y27)/mean(pTotalIDUB$y27))*100)*365, ((min(pNewCasesB$y28)/mean(pTotalIDUB$y28))*100)*365, ((min(pNewCasesB$y29)/mean(pTotalIDUB$y29))*100)*365, ((min(pNewCasesB$y30)/mean(pTotalIDUB$y30))*100)*365)
HCVB$IncidenceCeiling <- c(((max(pNewCasesB$y13)/mean(pTotalIDUB$y13))*100)*365, ((max(pNewCasesB$y14)/mean(pTotalIDUB$y14))*100)*365, ((max(pNewCasesB$y15)/mean(pTotalIDUB$y15))*100)*365, ((max(pNewCasesB$y16)/mean(pTotalIDUB$y16))*100)*365, ((max(pNewCasesB$y17)/mean(pTotalIDUB$y17))*100)*365, ((max(pNewCasesB$y18)/mean(pTotalIDUB$y18))*100)*365, ((max(pNewCasesB$y19)/mean(pTotalIDUB$y19))*100)*365, ((max(pNewCasesB$y20)/mean(pTotalIDUB$y20))*100)*365, ((max(pNewCasesB$y21)/mean(pTotalIDUB$y21))*100)*365, ((max(pNewCasesB$y22)/mean(pTotalIDUB$y22))*100)*365, ((max(pNewCasesB$y23)/mean(pTotalIDUB$y23))*100)*365, ((max(pNewCasesB$y24)/mean(pTotalIDUB$y24))*100)*365, ((max(pNewCasesB$y25)/mean(pTotalIDUB$y25))*100)*365, ((max(pNewCasesB$y26)/mean(pTotalIDUB$y26))*100)*365, ((max(pNewCasesB$y27)/mean(pTotalIDUB$y27))*100)*365, ((max(pNewCasesB$y28)/mean(pTotalIDUB$y28))*100)*365, ((max(pNewCasesB$y29)/mean(pTotalIDUB$y29))*100)*365, ((max(pNewCasesB$y30)/mean(pTotalIDUB$y30))*100)*365)
HCVB$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVB$Description <- c("DAA treatments increased by 80%")

HCVC <- data.frame("IncidenceIDU"=c(((mean(pNewCasesC$y13)/mean(pTotalIDUC$y13))*100)*365, ((mean(pNewCasesC$y14)/mean(pTotalIDUC$y14))*100)*365, ((mean(pNewCasesC$y15)/mean(pTotalIDUC$y15))*100)*365, ((mean(pNewCasesC$y16)/mean(pTotalIDUC$y16))*100)*365, ((mean(pNewCasesC$y17)/mean(pTotalIDUC$y17))*100)*365, ((mean(pNewCasesC$y18)/mean(pTotalIDUC$y18))*100)*365, ((mean(pNewCasesC$y19)/mean(pTotalIDUC$y19))*100)*365, ((mean(pNewCasesC$y20)/mean(pTotalIDUC$y20))*100)*365, ((mean(pNewCasesC$y21)/mean(pTotalIDUC$y21))*100)*365, ((mean(pNewCasesC$y22)/mean(pTotalIDUC$y22))*100)*365, ((mean(pNewCasesC$y23)/mean(pTotalIDUC$y23))*100)*365, ((mean(pNewCasesC$y24)/mean(pTotalIDUC$y24))*100)*365, ((mean(pNewCasesC$y25)/mean(pTotalIDUC$y25))*100)*365, ((mean(pNewCasesC$y26)/mean(pTotalIDUC$y26))*100)*365, ((mean(pNewCasesC$y27)/mean(pTotalIDUC$y27))*100)*365, ((mean(pNewCasesC$y28)/mean(pTotalIDUC$y28))*100)*365, ((mean(pNewCasesC$y29)/mean(pTotalIDUC$y29))*100)*365, ((mean(pNewCasesC$y30)/mean(pTotalIDUC$y30))*100)*365))
HCVC$IncidenceFloor <- c(((min(pNewCasesC$y13)/mean(pTotalIDUC$y13))*100)*365, ((min(pNewCasesC$y14)/mean(pTotalIDUC$y14))*100)*365, ((min(pNewCasesC$y15)/mean(pTotalIDUC$y15))*100)*365, ((min(pNewCasesC$y16)/mean(pTotalIDUC$y16))*100)*365, ((min(pNewCasesC$y17)/mean(pTotalIDUC$y17))*100)*365, ((min(pNewCasesC$y18)/mean(pTotalIDUC$y18))*100)*365, ((min(pNewCasesC$y19)/mean(pTotalIDUC$y19))*100)*365, ((min(pNewCasesC$y20)/mean(pTotalIDUC$y20))*100)*365, ((min(pNewCasesC$y21)/mean(pTotalIDUC$y21))*100)*365, ((min(pNewCasesC$y22)/mean(pTotalIDUC$y22))*100)*365, ((min(pNewCasesC$y23)/mean(pTotalIDUC$y23))*100)*365, ((min(pNewCasesC$y24)/mean(pTotalIDUC$y24))*100)*365, ((min(pNewCasesC$y25)/mean(pTotalIDUC$y25))*100)*365, ((min(pNewCasesC$y26)/mean(pTotalIDUC$y26))*100)*365, ((min(pNewCasesC$y27)/mean(pTotalIDUC$y27))*100)*365, ((min(pNewCasesC$y28)/mean(pTotalIDUC$y28))*100)*365, ((min(pNewCasesC$y29)/mean(pTotalIDUC$y29))*100)*365, ((min(pNewCasesC$y30)/mean(pTotalIDUC$y30))*100)*365)
HCVC$IncidenceCeiling <- c(((max(pNewCasesC$y13)/mean(pTotalIDUC$y13))*100)*365, ((max(pNewCasesC$y14)/mean(pTotalIDUC$y14))*100)*365, ((max(pNewCasesC$y15)/mean(pTotalIDUC$y15))*100)*365, ((max(pNewCasesC$y16)/mean(pTotalIDUC$y16))*100)*365, ((max(pNewCasesC$y17)/mean(pTotalIDUC$y17))*100)*365, ((max(pNewCasesC$y18)/mean(pTotalIDUC$y18))*100)*365, ((max(pNewCasesC$y19)/mean(pTotalIDUC$y19))*100)*365, ((max(pNewCasesC$y20)/mean(pTotalIDUC$y20))*100)*365, ((max(pNewCasesC$y21)/mean(pTotalIDUC$y21))*100)*365, ((max(pNewCasesC$y22)/mean(pTotalIDUC$y22))*100)*365, ((max(pNewCasesC$y23)/mean(pTotalIDUC$y23))*100)*365, ((max(pNewCasesC$y24)/mean(pTotalIDUC$y24))*100)*365, ((max(pNewCasesC$y25)/mean(pTotalIDUC$y25))*100)*365, ((max(pNewCasesC$y26)/mean(pTotalIDUC$y26))*100)*365, ((max(pNewCasesC$y27)/mean(pTotalIDUC$y27))*100)*365, ((max(pNewCasesC$y28)/mean(pTotalIDUC$y28))*100)*365, ((max(pNewCasesC$y29)/mean(pTotalIDUC$y29))*100)*365, ((max(pNewCasesC$y30)/mean(pTotalIDUC$y30))*100)*365)
HCVC$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVC$Description <- c("DAA treatments reduced by 80%")

ggplot(data=HCVA, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0, 20)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid", "dotted")) + geom_vline(xintercept=c(2, 6), linetype="dotted") +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_line(data=HCVB, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVB, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(data=HCVC, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVC, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ggtitle("Projected HCV incidence with DAA treatment") + theme(legend.position="right")
ggplot(data=HCVB, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0, 15)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid", "dotted")) +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_line(data=HCVC, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVB, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_point(data=HCVC, aes(shape=Description), size=4) + ggtitle("Projected HCV incidence with OST treatment") + theme(legend.position="right")

#incidence prevalence til 2026
#TotalIDU incidence and prevalence
HCVA <- data.frame("IncidenceIDU"=c(((mean(pNewCasesA$y13)/mean(pTotalIDUA$y13))*100)*365, ((mean(pNewCasesA$y14)/mean(pTotalIDUA$y14))*100)*365, ((mean(pNewCasesA$y15)/mean(pTotalIDUA$y15))*100)*365, ((mean(pNewCasesA$y16)/mean(pTotalIDUA$y16))*100)*365, ((mean(pNewCasesA$y17)/mean(pTotalIDUA$y17))*100)*365, ((mean(pNewCasesA$y18)/mean(pTotalIDUA$y18))*100)*365, ((mean(pNewCasesA$y19)/mean(pTotalIDUA$y19))*100)*365, ((mean(pNewCasesA$y20)/mean(pTotalIDUA$y20))*100)*365, ((mean(pNewCasesA$y21)/mean(pTotalIDUA$y21))*100)*365, ((mean(pNewCasesA$y22)/mean(pTotalIDUA$y22))*100)*365, ((mean(pNewCasesA$y23)/mean(pTotalIDUA$y23))*100)*365, ((mean(pNewCasesA$y24)/mean(pTotalIDUA$y24))*100)*365, ((mean(pNewCasesA$y25)/mean(pTotalIDUA$y25))*100)*365, ((mean(pNewCasesA$y26)/mean(pTotalIDUA$y26))*100)*365))
HCVA$IncidenceFloor <- c(((min(pNewCasesA$y13)/mean(pTotalIDUA$y13))*100)*365, ((min(pNewCasesA$y14)/mean(pTotalIDUA$y14))*100)*365, ((min(pNewCasesA$y15)/mean(pTotalIDUA$y15))*100)*365, ((min(pNewCasesA$y16)/mean(pTotalIDUA$y16))*100)*365, ((min(pNewCasesA$y17)/mean(pTotalIDUA$y17))*100)*365, ((min(pNewCasesA$y18)/mean(pTotalIDUA$y18))*100)*365, ((min(pNewCasesA$y19)/mean(pTotalIDUA$y19))*100)*365, ((min(pNewCasesA$y20)/mean(pTotalIDUA$y20))*100)*365, ((min(pNewCasesA$y21)/mean(pTotalIDUA$y21))*100)*365, ((min(pNewCasesA$y22)/mean(pTotalIDUA$y22))*100)*365, ((min(pNewCasesA$y23)/mean(pTotalIDUA$y23))*100)*365, ((min(pNewCasesA$y24)/mean(pTotalIDUA$y24))*100)*365, ((min(pNewCasesA$y25)/mean(pTotalIDUA$y25))*100)*365, ((min(pNewCasesA$y26)/mean(pTotalIDUA$y26))*100)*365)
HCVA$IncidenceCeiling <- c(((max(pNewCasesA$y13)/mean(pTotalIDUA$y13))*100)*365, ((max(pNewCasesA$y14)/mean(pTotalIDUA$y14))*100)*365, ((max(pNewCasesA$y15)/mean(pTotalIDUA$y15))*100)*365, ((max(pNewCasesA$y16)/mean(pTotalIDUA$y16))*100)*365, ((max(pNewCasesA$y17)/mean(pTotalIDUA$y17))*100)*365, ((max(pNewCasesA$y18)/mean(pTotalIDUA$y18))*100)*365, ((max(pNewCasesA$y19)/mean(pTotalIDUA$y19))*100)*365, ((max(pNewCasesA$y20)/mean(pTotalIDUA$y20))*100)*365, ((max(pNewCasesA$y21)/mean(pTotalIDUA$y21))*100)*365, ((max(pNewCasesA$y22)/mean(pTotalIDUA$y22))*100)*365, ((max(pNewCasesA$y23)/mean(pTotalIDUA$y23))*100)*365, ((max(pNewCasesA$y24)/mean(pTotalIDUA$y24))*100)*365, ((max(pNewCasesA$y25)/mean(pTotalIDUA$y25))*100)*365, ((max(pNewCasesA$y26)/mean(pTotalIDUA$y26))*100)*365)
HCVA$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026")
HCVA$Description <- c("maintained number of DAA treatments")

HCVB <- data.frame("IncidenceIDU"=c(((mean(pNewCasesB$y13)/mean(pTotalIDUB$y13))*100)*365, ((mean(pNewCasesB$y14)/mean(pTotalIDUB$y14))*100)*365, ((mean(pNewCasesB$y15)/mean(pTotalIDUB$y15))*100)*365, ((mean(pNewCasesB$y16)/mean(pTotalIDUB$y16))*100)*365, ((mean(pNewCasesB$y17)/mean(pTotalIDUB$y17))*100)*365, ((mean(pNewCasesB$y18)/mean(pTotalIDUB$y18))*100)*365, ((mean(pNewCasesB$y19)/mean(pTotalIDUB$y19))*100)*365, ((mean(pNewCasesB$y20)/mean(pTotalIDUB$y20))*100)*365, ((mean(pNewCasesB$y21)/mean(pTotalIDUB$y21))*100)*365, ((mean(pNewCasesB$y22)/mean(pTotalIDUB$y22))*100)*365, ((mean(pNewCasesB$y23)/mean(pTotalIDUB$y23))*100)*365, ((mean(pNewCasesB$y24)/mean(pTotalIDUB$y24))*100)*365, ((mean(pNewCasesB$y25)/mean(pTotalIDUB$y25))*100)*365, ((mean(pNewCasesB$y26)/mean(pTotalIDUB$y26))*100)*365))
HCVB$IncidenceFloor <- c(((min(pNewCasesB$y13)/mean(pTotalIDUB$y13))*100)*365, ((min(pNewCasesB$y14)/mean(pTotalIDUB$y14))*100)*365, ((min(pNewCasesB$y15)/mean(pTotalIDUB$y15))*100)*365, ((min(pNewCasesB$y16)/mean(pTotalIDUB$y16))*100)*365, ((min(pNewCasesB$y17)/mean(pTotalIDUB$y17))*100)*365, ((min(pNewCasesB$y18)/mean(pTotalIDUB$y18))*100)*365, ((min(pNewCasesB$y19)/mean(pTotalIDUB$y19))*100)*365, ((min(pNewCasesB$y20)/mean(pTotalIDUB$y20))*100)*365, ((min(pNewCasesB$y21)/mean(pTotalIDUB$y21))*100)*365, ((min(pNewCasesB$y22)/mean(pTotalIDUB$y22))*100)*365, ((min(pNewCasesB$y23)/mean(pTotalIDUB$y23))*100)*365, ((min(pNewCasesB$y24)/mean(pTotalIDUB$y24))*100)*365, ((min(pNewCasesB$y25)/mean(pTotalIDUB$y25))*100)*365, ((min(pNewCasesB$y26)/mean(pTotalIDUB$y26))*100)*365)
HCVB$IncidenceCeiling <- c(((max(pNewCasesB$y13)/mean(pTotalIDUB$y13))*100)*365, ((max(pNewCasesB$y14)/mean(pTotalIDUB$y14))*100)*365, ((max(pNewCasesB$y15)/mean(pTotalIDUB$y15))*100)*365, ((max(pNewCasesB$y16)/mean(pTotalIDUB$y16))*100)*365, ((max(pNewCasesB$y17)/mean(pTotalIDUB$y17))*100)*365, ((max(pNewCasesB$y18)/mean(pTotalIDUB$y18))*100)*365, ((max(pNewCasesB$y19)/mean(pTotalIDUB$y19))*100)*365, ((max(pNewCasesB$y20)/mean(pTotalIDUB$y20))*100)*365, ((max(pNewCasesB$y21)/mean(pTotalIDUB$y21))*100)*365, ((max(pNewCasesB$y22)/mean(pTotalIDUB$y22))*100)*365, ((max(pNewCasesB$y23)/mean(pTotalIDUB$y23))*100)*365, ((max(pNewCasesB$y24)/mean(pTotalIDUB$y24))*100)*365, ((max(pNewCasesB$y25)/mean(pTotalIDUB$y25))*100)*365, ((max(pNewCasesB$y26)/mean(pTotalIDUB$y26))*100)*365)
HCVB$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026")
HCVB$Description <- c("DAA treatments increased by 80%")

HCVC <- data.frame("IncidenceIDU"=c(((mean(pNewCasesC$y13)/mean(pTotalIDUC$y13))*100)*365, ((mean(pNewCasesC$y14)/mean(pTotalIDUC$y14))*100)*365, ((mean(pNewCasesC$y15)/mean(pTotalIDUC$y15))*100)*365, ((mean(pNewCasesC$y16)/mean(pTotalIDUC$y16))*100)*365, ((mean(pNewCasesC$y17)/mean(pTotalIDUC$y17))*100)*365, ((mean(pNewCasesC$y18)/mean(pTotalIDUC$y18))*100)*365, ((mean(pNewCasesC$y19)/mean(pTotalIDUC$y19))*100)*365, ((mean(pNewCasesC$y20)/mean(pTotalIDUC$y20))*100)*365, ((mean(pNewCasesC$y21)/mean(pTotalIDUC$y21))*100)*365, ((mean(pNewCasesC$y22)/mean(pTotalIDUC$y22))*100)*365, ((mean(pNewCasesC$y23)/mean(pTotalIDUC$y23))*100)*365, ((mean(pNewCasesC$y24)/mean(pTotalIDUC$y24))*100)*365, ((mean(pNewCasesC$y25)/mean(pTotalIDUC$y25))*100)*365, ((mean(pNewCasesC$y26)/mean(pTotalIDUC$y26))*100)*365))
HCVC$IncidenceFloor <- c(((min(pNewCasesC$y13)/mean(pTotalIDUC$y13))*100)*365, ((min(pNewCasesC$y14)/mean(pTotalIDUC$y14))*100)*365, ((min(pNewCasesC$y15)/mean(pTotalIDUC$y15))*100)*365, ((min(pNewCasesC$y16)/mean(pTotalIDUC$y16))*100)*365, ((min(pNewCasesC$y17)/mean(pTotalIDUC$y17))*100)*365, ((min(pNewCasesC$y18)/mean(pTotalIDUC$y18))*100)*365, ((min(pNewCasesC$y19)/mean(pTotalIDUC$y19))*100)*365, ((min(pNewCasesC$y20)/mean(pTotalIDUC$y20))*100)*365, ((min(pNewCasesC$y21)/mean(pTotalIDUC$y21))*100)*365, ((min(pNewCasesC$y22)/mean(pTotalIDUC$y22))*100)*365, ((min(pNewCasesC$y23)/mean(pTotalIDUC$y23))*100)*365, ((min(pNewCasesC$y24)/mean(pTotalIDUC$y24))*100)*365, ((min(pNewCasesC$y25)/mean(pTotalIDUC$y25))*100)*365, ((min(pNewCasesC$y26)/mean(pTotalIDUC$y26))*100)*365)
HCVC$IncidenceCeiling <- c(((max(pNewCasesC$y13)/mean(pTotalIDUC$y13))*100)*365, ((max(pNewCasesC$y14)/mean(pTotalIDUC$y14))*100)*365, ((max(pNewCasesC$y15)/mean(pTotalIDUC$y15))*100)*365, ((max(pNewCasesC$y16)/mean(pTotalIDUC$y16))*100)*365, ((max(pNewCasesC$y17)/mean(pTotalIDUC$y17))*100)*365, ((max(pNewCasesC$y18)/mean(pTotalIDUC$y18))*100)*365, ((max(pNewCasesC$y19)/mean(pTotalIDUC$y19))*100)*365, ((max(pNewCasesC$y20)/mean(pTotalIDUC$y20))*100)*365, ((max(pNewCasesC$y21)/mean(pTotalIDUC$y21))*100)*365, ((max(pNewCasesC$y22)/mean(pTotalIDUC$y22))*100)*365, ((max(pNewCasesC$y23)/mean(pTotalIDUC$y23))*100)*365, ((max(pNewCasesC$y24)/mean(pTotalIDUC$y24))*100)*365, ((max(pNewCasesC$y25)/mean(pTotalIDUC$y25))*100)*365, ((max(pNewCasesC$y26)/mean(pTotalIDUC$y26))*100)*365)
HCVC$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026")
HCVC$Description <- c("DAA treatments reduced by 80%")

incHCVIDU <- rbind(HCVA, HCVB, HCVC)
PlotA <- ggplot(data=incHCVIDU, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=2.5) + scale_linetype_manual(values=c("solid","twodash","dotted")) + ylab("HCV incidence\n among PWID") + scale_color_manual(values=c("#000000", "#000000", "#000000")) + ylim(0, 20) + ggtitle("A") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.08, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))

HCVA <- data.frame("IncidenceIDU"=c(((mean(pNewCasesA$y13)/mean(pTotalA$y13))*100)*365, ((mean(pNewCasesA$y14)/mean(pTotalA$y14))*100)*365, ((mean(pNewCasesA$y15)/mean(pTotalA$y15))*100)*365, ((mean(pNewCasesA$y16)/mean(pTotalA$y16))*100)*365, ((mean(pNewCasesA$y17)/mean(pTotalA$y17))*100)*365, ((mean(pNewCasesA$y18)/mean(pTotalA$y18))*100)*365, ((mean(pNewCasesA$y19)/mean(pTotalA$y19))*100)*365, ((mean(pNewCasesA$y20)/mean(pTotalA$y20))*100)*365, ((mean(pNewCasesA$y21)/mean(pTotalA$y21))*100)*365, ((mean(pNewCasesA$y22)/mean(pTotalA$y22))*100)*365, ((mean(pNewCasesA$y23)/mean(pTotalA$y23))*100)*365, ((mean(pNewCasesA$y24)/mean(pTotalA$y24))*100)*365, ((mean(pNewCasesA$y25)/mean(pTotalA$y25))*100)*365, ((mean(pNewCasesA$y26)/mean(pTotalA$y26))*100)*365))
HCVA$IncidenceFloor <- c(((min(pNewCasesA$y13)/mean(pTotalA$y13))*100)*365, ((min(pNewCasesA$y14)/mean(pTotalA$y14))*100)*365, ((min(pNewCasesA$y15)/mean(pTotalA$y15))*100)*365, ((min(pNewCasesA$y16)/mean(pTotalA$y16))*100)*365, ((min(pNewCasesA$y17)/mean(pTotalA$y17))*100)*365, ((min(pNewCasesA$y18)/mean(pTotalA$y18))*100)*365, ((min(pNewCasesA$y19)/mean(pTotalA$y19))*100)*365, ((min(pNewCasesA$y20)/mean(pTotalA$y20))*100)*365, ((min(pNewCasesA$y21)/mean(pTotalA$y21))*100)*365, ((min(pNewCasesA$y22)/mean(pTotalA$y22))*100)*365, ((min(pNewCasesA$y23)/mean(pTotalA$y23))*100)*365, ((min(pNewCasesA$y24)/mean(pTotalA$y24))*100)*365, ((min(pNewCasesA$y25)/mean(pTotalA$y25))*100)*365, ((min(pNewCasesA$y26)/mean(pTotalA$y26))*100)*365)
HCVA$IncidenceCeiling <- c(((max(pNewCasesA$y13)/mean(pTotalA$y13))*100)*365, ((max(pNewCasesA$y14)/mean(pTotalA$y14))*100)*365, ((max(pNewCasesA$y15)/mean(pTotalA$y15))*100)*365, ((max(pNewCasesA$y16)/mean(pTotalA$y16))*100)*365, ((max(pNewCasesA$y17)/mean(pTotalA$y17))*100)*365, ((max(pNewCasesA$y18)/mean(pTotalA$y18))*100)*365, ((max(pNewCasesA$y19)/mean(pTotalA$y19))*100)*365, ((max(pNewCasesA$y20)/mean(pTotalA$y20))*100)*365, ((max(pNewCasesA$y21)/mean(pTotalA$y21))*100)*365, ((max(pNewCasesA$y22)/mean(pTotalA$y22))*100)*365, ((max(pNewCasesA$y23)/mean(pTotalA$y23))*100)*365, ((max(pNewCasesA$y24)/mean(pTotalA$y24))*100)*365, ((max(pNewCasesA$y25)/mean(pTotalA$y25))*100)*365, ((max(pNewCasesA$y26)/mean(pTotalA$y26))*100)*365)
HCVA$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026")
HCVA$Description <- c("retained number of DAA treatments")

HCVB <- data.frame("IncidenceIDU"=c(((mean(pNewCasesB$y13)/mean(pTotalB$y13))*100)*365, ((mean(pNewCasesB$y14)/mean(pTotalB$y14))*100)*365, ((mean(pNewCasesB$y15)/mean(pTotalB$y15))*100)*365, ((mean(pNewCasesB$y16)/mean(pTotalB$y16))*100)*365, ((mean(pNewCasesB$y17)/mean(pTotalB$y17))*100)*365, ((mean(pNewCasesB$y18)/mean(pTotalB$y18))*100)*365, ((mean(pNewCasesB$y19)/mean(pTotalB$y19))*100)*365, ((mean(pNewCasesB$y20)/mean(pTotalB$y20))*100)*365, ((mean(pNewCasesB$y21)/mean(pTotalB$y21))*100)*365, ((mean(pNewCasesB$y22)/mean(pTotalB$y22))*100)*365, ((mean(pNewCasesB$y23)/mean(pTotalB$y23))*100)*365, ((mean(pNewCasesB$y24)/mean(pTotalB$y24))*100)*365, ((mean(pNewCasesB$y25)/mean(pTotalB$y25))*100)*365, ((mean(pNewCasesB$y26)/mean(pTotalB$y26))*100)*365))
HCVB$IncidenceFloor <- c(((min(pNewCasesB$y13)/mean(pTotalB$y13))*100)*365, ((min(pNewCasesB$y14)/mean(pTotalB$y14))*100)*365, ((min(pNewCasesB$y15)/mean(pTotalB$y15))*100)*365, ((min(pNewCasesB$y16)/mean(pTotalB$y16))*100)*365, ((min(pNewCasesB$y17)/mean(pTotalB$y17))*100)*365, ((min(pNewCasesB$y18)/mean(pTotalB$y18))*100)*365, ((min(pNewCasesB$y19)/mean(pTotalB$y19))*100)*365, ((min(pNewCasesB$y20)/mean(pTotalB$y20))*100)*365, ((min(pNewCasesB$y21)/mean(pTotalB$y21))*100)*365, ((min(pNewCasesB$y22)/mean(pTotalB$y22))*100)*365, ((min(pNewCasesB$y23)/mean(pTotalB$y23))*100)*365, ((min(pNewCasesB$y24)/mean(pTotalB$y24))*100)*365, ((min(pNewCasesB$y25)/mean(pTotalB$y25))*100)*365, ((min(pNewCasesB$y26)/mean(pTotalB$y26))*100)*365)
HCVB$IncidenceCeiling <- c(((max(pNewCasesB$y13)/mean(pTotalB$y13))*100)*365, ((max(pNewCasesB$y14)/mean(pTotalB$y14))*100)*365, ((max(pNewCasesB$y15)/mean(pTotalB$y15))*100)*365, ((max(pNewCasesB$y16)/mean(pTotalB$y16))*100)*365, ((max(pNewCasesB$y17)/mean(pTotalB$y17))*100)*365, ((max(pNewCasesB$y18)/mean(pTotalB$y18))*100)*365, ((max(pNewCasesB$y19)/mean(pTotalB$y19))*100)*365, ((max(pNewCasesB$y20)/mean(pTotalB$y20))*100)*365, ((max(pNewCasesB$y21)/mean(pTotalB$y21))*100)*365, ((max(pNewCasesB$y22)/mean(pTotalB$y22))*100)*365, ((max(pNewCasesB$y23)/mean(pTotalB$y23))*100)*365, ((max(pNewCasesB$y24)/mean(pTotalB$y24))*100)*365, ((max(pNewCasesB$y25)/mean(pTotalB$y25))*100)*365, ((max(pNewCasesB$y26)/mean(pTotalB$y26))*100)*365)
HCVB$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026")
HCVB$Description <- c("DAA treatments increased by 80%")

HCVC <- data.frame("IncidenceIDU"=c(((mean(pNewCasesC$y13)/mean(pTotalC$y13))*100)*365, ((mean(pNewCasesC$y14)/mean(pTotalC$y14))*100)*365, ((mean(pNewCasesC$y15)/mean(pTotalC$y15))*100)*365, ((mean(pNewCasesC$y16)/mean(pTotalC$y16))*100)*365, ((mean(pNewCasesC$y17)/mean(pTotalC$y17))*100)*365, ((mean(pNewCasesC$y18)/mean(pTotalC$y18))*100)*365, ((mean(pNewCasesC$y19)/mean(pTotalC$y19))*100)*365, ((mean(pNewCasesC$y20)/mean(pTotalC$y20))*100)*365, ((mean(pNewCasesC$y21)/mean(pTotalC$y21))*100)*365, ((mean(pNewCasesC$y22)/mean(pTotalC$y22))*100)*365, ((mean(pNewCasesC$y23)/mean(pTotalC$y23))*100)*365, ((mean(pNewCasesC$y24)/mean(pTotalC$y24))*100)*365, ((mean(pNewCasesC$y25)/mean(pTotalC$y25))*100)*365, ((mean(pNewCasesC$y26)/mean(pTotalC$y26))*100)*365))
HCVC$IncidenceFloor <- c(((min(pNewCasesC$y13)/mean(pTotalC$y13))*100)*365, ((min(pNewCasesC$y14)/mean(pTotalC$y14))*100)*365, ((min(pNewCasesC$y15)/mean(pTotalC$y15))*100)*365, ((min(pNewCasesC$y16)/mean(pTotalC$y16))*100)*365, ((min(pNewCasesC$y17)/mean(pTotalC$y17))*100)*365, ((min(pNewCasesC$y18)/mean(pTotalC$y18))*100)*365, ((min(pNewCasesC$y19)/mean(pTotalC$y19))*100)*365, ((min(pNewCasesC$y20)/mean(pTotalC$y20))*100)*365, ((min(pNewCasesC$y21)/mean(pTotalC$y21))*100)*365, ((min(pNewCasesC$y22)/mean(pTotalC$y22))*100)*365, ((min(pNewCasesC$y23)/mean(pTotalC$y23))*100)*365, ((min(pNewCasesC$y24)/mean(pTotalC$y24))*100)*365, ((min(pNewCasesC$y25)/mean(pTotalC$y25))*100)*365, ((min(pNewCasesC$y26)/mean(pTotalC$y26))*100)*365)
HCVC$IncidenceCeiling <- c(((max(pNewCasesC$y13)/mean(pTotalC$y13))*100)*365, ((max(pNewCasesC$y14)/mean(pTotalC$y14))*100)*365, ((max(pNewCasesC$y15)/mean(pTotalC$y15))*100)*365, ((max(pNewCasesC$y16)/mean(pTotalC$y16))*100)*365, ((max(pNewCasesC$y17)/mean(pTotalC$y17))*100)*365, ((max(pNewCasesC$y18)/mean(pTotalC$y18))*100)*365, ((max(pNewCasesC$y19)/mean(pTotalC$y19))*100)*365, ((max(pNewCasesC$y20)/mean(pTotalC$y20))*100)*365, ((max(pNewCasesC$y21)/mean(pTotalC$y21))*100)*365, ((max(pNewCasesC$y22)/mean(pTotalC$y22))*100)*365, ((max(pNewCasesC$y23)/mean(pTotalC$y23))*100)*365, ((max(pNewCasesC$y24)/mean(pTotalC$y24))*100)*365, ((max(pNewCasesC$y25)/mean(pTotalC$y25))*100)*365, ((max(pNewCasesC$y26)/mean(pTotalC$y26))*100)*365)
HCVC$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026")
HCVC$Description <- c("DAA treatments reduced by 80%")

incHCVAll <- rbind(HCVA, HCVB, HCVC)
ggplot(data=incHCVAll, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description)) + scale_linetype_manual(values=c("solid","twodash","dotted")) + ylab("HCV incidence\n among PWID") + scale_color_manual(values=c("#000000", "#000000", "#000000")) + ylim(0, 20) + geom_vline(xintercept=c(2, 6), linetype="dotted") + ggtitle("A") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.08, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))

#ggplot(data=HCVA, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0, 15)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid", "dotted")) + geom_vline(xintercept=c(2, 6), linetype="dotted") +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_line(data=HCVB, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVB, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(data=HCVC, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVC, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ggtitle("Projected HCV incidence with DAA treatment") + theme(legend.position="right")
#ggplot(data=HCVB, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0, 15)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid", "dotted")) +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_line(data=HCVC, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVB, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_point(data=HCVC, aes(shape=Description), size=4) + ggtitle("Projected HCV incidence with OST treatment") + theme(legend.position="right")

#prevalence
HCVA <- data.frame("IncidenceIDU"=c(((mean(pTotalHCVA$y13)/mean(pTotalIDUA$y13))*100) , ((mean(pTotalHCVA$y14)/mean(pTotalIDUA$y14))*100) , ((mean(pTotalHCVA$y15)/mean(pTotalIDUA$y15))*100) , ((mean(pTotalHCVA$y16)/mean(pTotalIDUA$y16))*100) , ((mean(pTotalHCVA$y17)/mean(pTotalIDUA$y17))*100) , ((mean(pTotalHCVA$y18)/mean(pTotalIDUA$y18))*100) , ((mean(pTotalHCVA$y19)/mean(pTotalIDUA$y19))*100) , ((mean(pTotalHCVA$y20)/mean(pTotalIDUA$y20))*100) , ((mean(pTotalHCVA$y21)/mean(pTotalIDUA$y21))*100) , ((mean(pTotalHCVA$y22)/mean(pTotalIDUA$y22))*100) , ((mean(pTotalHCVA$y23)/mean(pTotalIDUA$y23))*100) , ((mean(pTotalHCVA$y24)/mean(pTotalIDUA$y24))*100) , ((mean(pTotalHCVA$y25)/mean(pTotalIDUA$y25))*100) , ((mean(pTotalHCVA$y26)/mean(pTotalIDUA$y26))*100) ))
HCVA$IncidenceFloor <- c(((min(pTotalHCVA$y13)/mean(pTotalIDUA$y13))*100) , ((min(pTotalHCVA$y14)/mean(pTotalIDUA$y14))*100) , ((min(pTotalHCVA$y15)/mean(pTotalIDUA$y15))*100) , ((min(pTotalHCVA$y16)/mean(pTotalIDUA$y16))*100) , ((min(pTotalHCVA$y17)/mean(pTotalIDUA$y17))*100) , ((min(pTotalHCVA$y18)/mean(pTotalIDUA$y18))*100) , ((min(pTotalHCVA$y19)/mean(pTotalIDUA$y19))*100) , ((min(pTotalHCVA$y20)/mean(pTotalIDUA$y20))*100) , ((min(pTotalHCVA$y21)/mean(pTotalIDUA$y21))*100) , ((min(pTotalHCVA$y22)/mean(pTotalIDUA$y22))*100) , ((min(pTotalHCVA$y23)/mean(pTotalIDUA$y23))*100) , ((min(pTotalHCVA$y24)/mean(pTotalIDUA$y24))*100) , ((min(pTotalHCVA$y25)/mean(pTotalIDUA$y25))*100) , ((min(pTotalHCVA$y26)/mean(pTotalIDUA$y26))*100) )
HCVA$IncidenceCeiling <- c(((max(pTotalHCVA$y13)/mean(pTotalIDUA$y13))*100) , ((max(pTotalHCVA$y14)/mean(pTotalIDUA$y14))*100) , ((max(pTotalHCVA$y15)/mean(pTotalIDUA$y15))*100) , ((max(pTotalHCVA$y16)/mean(pTotalIDUA$y16))*100) , ((max(pTotalHCVA$y17)/mean(pTotalIDUA$y17))*100) , ((max(pTotalHCVA$y18)/mean(pTotalIDUA$y18))*100) , ((max(pTotalHCVA$y19)/mean(pTotalIDUA$y19))*100) , ((max(pTotalHCVA$y20)/mean(pTotalIDUA$y20))*100) , ((max(pTotalHCVA$y21)/mean(pTotalIDUA$y21))*100) , ((max(pTotalHCVA$y22)/mean(pTotalIDUA$y22))*100) , ((max(pTotalHCVA$y23)/mean(pTotalIDUA$y23))*100) , ((max(pTotalHCVA$y24)/mean(pTotalIDUA$y24))*100) , ((max(pTotalHCVA$y25)/mean(pTotalIDUA$y25))*100) , ((max(pTotalHCVA$y26)/mean(pTotalIDUA$y26))*100) )
HCVA$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026")
HCVA$Description <- c("retained number of DAA treatments")

HCVB <- data.frame("IncidenceIDU"=c(((mean(pTotalHCVB$y13)/mean(pTotalIDUB$y13))*100) , ((mean(pTotalHCVB$y14)/mean(pTotalIDUB$y14))*100) , ((mean(pTotalHCVB$y15)/mean(pTotalIDUB$y15))*100) , ((mean(pTotalHCVB$y16)/mean(pTotalIDUB$y16))*100) , ((mean(pTotalHCVB$y17)/mean(pTotalIDUB$y17))*100) , ((mean(pTotalHCVB$y18)/mean(pTotalIDUB$y18))*100) , ((mean(pTotalHCVB$y19)/mean(pTotalIDUB$y19))*100) , ((mean(pTotalHCVB$y20)/mean(pTotalIDUB$y20))*100) , ((mean(pTotalHCVB$y21)/mean(pTotalIDUB$y21))*100) , ((mean(pTotalHCVB$y22)/mean(pTotalIDUB$y22))*100) , ((mean(pTotalHCVB$y23)/mean(pTotalIDUB$y23))*100) , ((mean(pTotalHCVB$y24)/mean(pTotalIDUB$y24))*100) , ((mean(pTotalHCVB$y25)/mean(pTotalIDUB$y25))*100) , ((mean(pTotalHCVB$y26)/mean(pTotalIDUB$y26))*100) ))
HCVB$IncidenceFloor <- c(((min(pTotalHCVB$y13)/mean(pTotalIDUB$y13))*100) , ((min(pTotalHCVB$y14)/mean(pTotalIDUB$y14))*100) , ((min(pTotalHCVB$y15)/mean(pTotalIDUB$y15))*100) , ((min(pTotalHCVB$y16)/mean(pTotalIDUB$y16))*100) , ((min(pTotalHCVB$y17)/mean(pTotalIDUB$y17))*100) , ((min(pTotalHCVB$y18)/mean(pTotalIDUB$y18))*100) , ((min(pTotalHCVB$y19)/mean(pTotalIDUB$y19))*100) , ((min(pTotalHCVB$y20)/mean(pTotalIDUB$y20))*100) , ((min(pTotalHCVB$y21)/mean(pTotalIDUB$y21))*100) , ((min(pTotalHCVB$y22)/mean(pTotalIDUB$y22))*100) , ((min(pTotalHCVB$y23)/mean(pTotalIDUB$y23))*100) , ((min(pTotalHCVB$y24)/mean(pTotalIDUB$y24))*100) , ((min(pTotalHCVB$y25)/mean(pTotalIDUB$y25))*100) , ((min(pTotalHCVB$y26)/mean(pTotalIDUB$y26))*100) )
HCVB$IncidenceCeiling <- c(((max(pTotalHCVB$y13)/mean(pTotalIDUB$y13))*100) , ((max(pTotalHCVB$y14)/mean(pTotalIDUB$y14))*100) , ((max(pTotalHCVB$y15)/mean(pTotalIDUB$y15))*100) , ((max(pTotalHCVB$y16)/mean(pTotalIDUB$y16))*100) , ((max(pTotalHCVB$y17)/mean(pTotalIDUB$y17))*100) , ((max(pTotalHCVB$y18)/mean(pTotalIDUB$y18))*100) , ((max(pTotalHCVB$y19)/mean(pTotalIDUB$y19))*100) , ((max(pTotalHCVB$y20)/mean(pTotalIDUB$y20))*100) , ((max(pTotalHCVB$y21)/mean(pTotalIDUB$y21))*100) , ((max(pTotalHCVB$y22)/mean(pTotalIDUB$y22))*100) , ((max(pTotalHCVB$y23)/mean(pTotalIDUB$y23))*100) , ((max(pTotalHCVB$y24)/mean(pTotalIDUB$y24))*100) , ((max(pTotalHCVB$y25)/mean(pTotalIDUB$y25))*100) , ((max(pTotalHCVB$y26)/mean(pTotalIDUB$y26))*100) )
HCVB$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026")
HCVB$Description <- c("DAA treatments increased by 80%")

HCVC <- data.frame("IncidenceIDU"=c(((mean(pTotalHCVC$y13)/mean(pTotalIDUC$y13))*100) , ((mean(pTotalHCVC$y14)/mean(pTotalIDUC$y14))*100) , ((mean(pTotalHCVC$y15)/mean(pTotalIDUC$y15))*100) , ((mean(pTotalHCVC$y16)/mean(pTotalIDUC$y16))*100) , ((mean(pTotalHCVC$y17)/mean(pTotalIDUC$y17))*100) , ((mean(pTotalHCVC$y18)/mean(pTotalIDUC$y18))*100) , ((mean(pTotalHCVC$y19)/mean(pTotalIDUC$y19))*100) , ((mean(pTotalHCVC$y20)/mean(pTotalIDUC$y20))*100) , ((mean(pTotalHCVC$y21)/mean(pTotalIDUC$y21))*100) , ((mean(pTotalHCVC$y22)/mean(pTotalIDUC$y22))*100) , ((mean(pTotalHCVC$y23)/mean(pTotalIDUC$y23))*100) , ((mean(pTotalHCVC$y24)/mean(pTotalIDUC$y24))*100) , ((mean(pTotalHCVC$y25)/mean(pTotalIDUC$y25))*100) , ((mean(pTotalHCVC$y26)/mean(pTotalIDUC$y26))*100) ))
HCVC$IncidenceFloor <- c(((min(pTotalHCVC$y13)/mean(pTotalIDUC$y13))*100) , ((min(pTotalHCVC$y14)/mean(pTotalIDUC$y14))*100) , ((min(pTotalHCVC$y15)/mean(pTotalIDUC$y15))*100) , ((min(pTotalHCVC$y16)/mean(pTotalIDUC$y16))*100) , ((min(pTotalHCVC$y17)/mean(pTotalIDUC$y17))*100) , ((min(pTotalHCVC$y18)/mean(pTotalIDUC$y18))*100) , ((min(pTotalHCVC$y19)/mean(pTotalIDUC$y19))*100) , ((min(pTotalHCVC$y20)/mean(pTotalIDUC$y20))*100) , ((min(pTotalHCVC$y21)/mean(pTotalIDUC$y21))*100) , ((min(pTotalHCVC$y22)/mean(pTotalIDUC$y22))*100) , ((min(pTotalHCVC$y23)/mean(pTotalIDUC$y23))*100) , ((min(pTotalHCVC$y24)/mean(pTotalIDUC$y24))*100) , ((min(pTotalHCVC$y25)/mean(pTotalIDUC$y25))*100) , ((min(pTotalHCVC$y26)/mean(pTotalIDUC$y26))*100) )
HCVC$IncidenceCeiling <- c(((max(pTotalHCVC$y13)/mean(pTotalIDUC$y13))*100) , ((max(pTotalHCVC$y14)/mean(pTotalIDUC$y14))*100) , ((max(pTotalHCVC$y15)/mean(pTotalIDUC$y15))*100) , ((max(pTotalHCVC$y16)/mean(pTotalIDUC$y16))*100) , ((max(pTotalHCVC$y17)/mean(pTotalIDUC$y17))*100) , ((max(pTotalHCVC$y18)/mean(pTotalIDUC$y18))*100) , ((max(pTotalHCVC$y19)/mean(pTotalIDUC$y19))*100) , ((max(pTotalHCVC$y20)/mean(pTotalIDUC$y20))*100) , ((max(pTotalHCVC$y21)/mean(pTotalIDUC$y21))*100) , ((max(pTotalHCVC$y22)/mean(pTotalIDUC$y22))*100) , ((max(pTotalHCVC$y23)/mean(pTotalIDUC$y23))*100) , ((max(pTotalHCVC$y24)/mean(pTotalIDUC$y24))*100) , ((max(pTotalHCVC$y25)/mean(pTotalIDUC$y25))*100) , ((max(pTotalHCVC$y26)/mean(pTotalIDUC$y26))*100) )
HCVC$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026")
HCVC$Description <- c("DAA treatments reduced by 80%")

prevHCVIDU <- NULL
prevHCVIDU <- rbind(HCVA, HCVB, HCVC)
ggplot(data=prevHCVIDU, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(color=Description), size=2.5) + scale_linetype_manual(values=c("solid","twodash","dotted")) + scale_color_manual(values=c("#660000", "#006633", "#003366")) + ylim(0, 200) + geom_vline(xintercept=c(2, 6), linetype="dotted") + ggtitle("Prison HCV") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.1, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))

HCVAp <- data.frame("IncidenceIDU"=c(((mean(pTotalHCVA$y13)/mean(pTotalA$y13))*100) , ((mean(pTotalHCVA$y14)/mean(pTotalA$y14))*100) , ((mean(pTotalHCVA$y15)/mean(pTotalA$y15))*100) , ((mean(pTotalHCVA$y16)/mean(pTotalA$y16))*100) , ((mean(pTotalHCVA$y17)/mean(pTotalA$y17))*100) , ((mean(pTotalHCVA$y18)/mean(pTotalA$y18))*100) , ((mean(pTotalHCVA$y19)/mean(pTotalA$y19))*100) , ((mean(pTotalHCVA$y20)/mean(pTotalA$y20))*100) , ((mean(pTotalHCVA$y21)/mean(pTotalA$y21))*100) , ((mean(pTotalHCVA$y22)/mean(pTotalA$y22))*100) , ((mean(pTotalHCVA$y23)/mean(pTotalA$y23))*100) , ((mean(pTotalHCVA$y24)/mean(pTotalA$y24))*100) , ((mean(pTotalHCVA$y25)/mean(pTotalA$y25))*100) , ((mean(pTotalHCVA$y26)/mean(pTotalA$y26))*100) ))
HCVAp$IncidenceFloor <- c(((min(pTotalHCVA$y13)/mean(pTotalA$y13))*100) , ((min(pTotalHCVA$y14)/mean(pTotalA$y14))*100) , ((min(pTotalHCVA$y15)/mean(pTotalA$y15))*100) , ((min(pTotalHCVA$y16)/mean(pTotalA$y16))*100) , ((min(pTotalHCVA$y17)/mean(pTotalA$y17))*100) , ((min(pTotalHCVA$y18)/mean(pTotalA$y18))*100) , ((min(pTotalHCVA$y19)/mean(pTotalA$y19))*100) , ((min(pTotalHCVA$y20)/mean(pTotalA$y20))*100) , ((min(pTotalHCVA$y21)/mean(pTotalA$y21))*100) , ((min(pTotalHCVA$y22)/mean(pTotalA$y22))*100) , ((min(pTotalHCVA$y23)/mean(pTotalA$y23))*100) , ((min(pTotalHCVA$y24)/mean(pTotalA$y24))*100) , ((min(pTotalHCVA$y25)/mean(pTotalA$y25))*100) , ((min(pTotalHCVA$y26)/mean(pTotalA$y26))*100) )
HCVAp$IncidenceCeiling <- c(((max(pTotalHCVA$y13)/mean(pTotalA$y13))*100) , ((max(pTotalHCVA$y14)/mean(pTotalA$y14))*100) , ((max(pTotalHCVA$y15)/mean(pTotalA$y15))*100) , ((max(pTotalHCVA$y16)/mean(pTotalA$y16))*100) , ((max(pTotalHCVA$y17)/mean(pTotalA$y17))*100) , ((max(pTotalHCVA$y18)/mean(pTotalA$y18))*100) , ((max(pTotalHCVA$y19)/mean(pTotalA$y19))*100) , ((max(pTotalHCVA$y20)/mean(pTotalA$y20))*100) , ((max(pTotalHCVA$y21)/mean(pTotalA$y21))*100) , ((max(pTotalHCVA$y22)/mean(pTotalA$y22))*100) , ((max(pTotalHCVA$y23)/mean(pTotalA$y23))*100) , ((max(pTotalHCVA$y24)/mean(pTotalA$y24))*100) , ((max(pTotalHCVA$y25)/mean(pTotalA$y25))*100) , ((max(pTotalHCVA$y26)/mean(pTotalA$y26))*100) )
HCVAp$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026")
HCVAp$Description <- c("maintained number of DAA treatments")

HCVBp <- data.frame("IncidenceIDU"=c(((mean(pTotalHCVB$y13)/mean(pTotalB$y13))*100) , ((mean(pTotalHCVB$y14)/mean(pTotalB$y14))*100) , ((mean(pTotalHCVB$y15)/mean(pTotalB$y15))*100) , ((mean(pTotalHCVB$y16)/mean(pTotalB$y16))*100) , ((mean(pTotalHCVB$y17)/mean(pTotalB$y17))*100) , ((mean(pTotalHCVB$y18)/mean(pTotalB$y18))*100) , ((mean(pTotalHCVB$y19)/mean(pTotalB$y19))*100) , ((mean(pTotalHCVB$y20)/mean(pTotalB$y20))*100) , ((mean(pTotalHCVB$y21)/mean(pTotalB$y21))*100) , ((mean(pTotalHCVB$y22)/mean(pTotalB$y22))*100) , ((mean(pTotalHCVB$y23)/mean(pTotalB$y23))*100) , ((mean(pTotalHCVB$y24)/mean(pTotalB$y24))*100) , ((mean(pTotalHCVB$y25)/mean(pTotalB$y25))*100) , ((mean(pTotalHCVB$y26)/mean(pTotalB$y26))*100) ))
HCVBp$IncidenceFloor <- c(((min(pTotalHCVB$y13)/mean(pTotalB$y13))*100) , ((min(pTotalHCVB$y14)/mean(pTotalB$y14))*100) , ((min(pTotalHCVB$y15)/mean(pTotalB$y15))*100) , ((min(pTotalHCVB$y16)/mean(pTotalB$y16))*100) , ((min(pTotalHCVB$y17)/mean(pTotalB$y17))*100) , ((min(pTotalHCVB$y18)/mean(pTotalB$y18))*100) , ((min(pTotalHCVB$y19)/mean(pTotalB$y19))*100) , ((min(pTotalHCVB$y20)/mean(pTotalB$y20))*100) , ((min(pTotalHCVB$y21)/mean(pTotalB$y21))*100) , ((min(pTotalHCVB$y22)/mean(pTotalB$y22))*100) , ((min(pTotalHCVB$y23)/mean(pTotalB$y23))*100) , ((min(pTotalHCVB$y24)/mean(pTotalB$y24))*100) , ((min(pTotalHCVB$y25)/mean(pTotalB$y25))*100) , ((min(pTotalHCVB$y26)/mean(pTotalB$y26))*100) )
HCVBp$IncidenceCeiling <- c(((max(pTotalHCVB$y13)/mean(pTotalB$y13))*100) , ((max(pTotalHCVB$y14)/mean(pTotalB$y14))*100) , ((max(pTotalHCVB$y15)/mean(pTotalB$y15))*100) , ((max(pTotalHCVB$y16)/mean(pTotalB$y16))*100) , ((max(pTotalHCVB$y17)/mean(pTotalB$y17))*100) , ((max(pTotalHCVB$y18)/mean(pTotalB$y18))*100) , ((max(pTotalHCVB$y19)/mean(pTotalB$y19))*100) , ((max(pTotalHCVB$y20)/mean(pTotalB$y20))*100) , ((max(pTotalHCVB$y21)/mean(pTotalB$y21))*100) , ((max(pTotalHCVB$y22)/mean(pTotalB$y22))*100) , ((max(pTotalHCVB$y23)/mean(pTotalB$y23))*100) , ((max(pTotalHCVB$y24)/mean(pTotalB$y24))*100) , ((max(pTotalHCVB$y25)/mean(pTotalB$y25))*100) , ((max(pTotalHCVB$y26)/mean(pTotalB$y26))*100) )
HCVBp$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026")
HCVBp$Description <- c("DAA treatments increased by 80%")

HCVCp <- data.frame("IncidenceIDU"=c(((mean(pTotalHCVC$y13)/mean(pTotalC$y13))*100) , ((mean(pTotalHCVC$y14)/mean(pTotalC$y14))*100) , ((mean(pTotalHCVC$y15)/mean(pTotalC$y15))*100) , ((mean(pTotalHCVC$y16)/mean(pTotalC$y16))*100) , ((mean(pTotalHCVC$y17)/mean(pTotalC$y17))*100) , ((mean(pTotalHCVC$y18)/mean(pTotalC$y18))*100) , ((mean(pTotalHCVC$y19)/mean(pTotalC$y19))*100) , ((mean(pTotalHCVC$y20)/mean(pTotalC$y20))*100) , ((mean(pTotalHCVC$y21)/mean(pTotalC$y21))*100) , ((mean(pTotalHCVC$y22)/mean(pTotalC$y22))*100) , ((mean(pTotalHCVC$y23)/mean(pTotalC$y23))*100) , ((mean(pTotalHCVC$y24)/mean(pTotalC$y24))*100) , ((mean(pTotalHCVC$y25)/mean(pTotalC$y25))*100) , ((mean(pTotalHCVC$y26)/mean(pTotalC$y26))*100) ))
HCVCp$IncidenceFloor <- c(((min(pTotalHCVC$y13)/mean(pTotalC$y13))*100) , ((min(pTotalHCVC$y14)/mean(pTotalC$y14))*100) , ((min(pTotalHCVC$y15)/mean(pTotalC$y15))*100) , ((min(pTotalHCVC$y16)/mean(pTotalC$y16))*100) , ((min(pTotalHCVC$y17)/mean(pTotalC$y17))*100) , ((min(pTotalHCVC$y18)/mean(pTotalC$y18))*100) , ((min(pTotalHCVC$y19)/mean(pTotalC$y19))*100) , ((min(pTotalHCVC$y20)/mean(pTotalC$y20))*100) , ((min(pTotalHCVC$y21)/mean(pTotalC$y21))*100) , ((min(pTotalHCVC$y22)/mean(pTotalC$y22))*100) , ((min(pTotalHCVC$y23)/mean(pTotalC$y23))*100) , ((min(pTotalHCVC$y24)/mean(pTotalC$y24))*100) , ((min(pTotalHCVC$y25)/mean(pTotalC$y25))*100) , ((min(pTotalHCVC$y26)/mean(pTotalC$y26))*100) )
HCVCp$IncidenceCeiling <- c(((max(pTotalHCVC$y13)/mean(pTotalC$y13))*100) , ((max(pTotalHCVC$y14)/mean(pTotalC$y14))*100) , ((max(pTotalHCVC$y15)/mean(pTotalC$y15))*100) , ((max(pTotalHCVC$y16)/mean(pTotalC$y16))*100) , ((max(pTotalHCVC$y17)/mean(pTotalC$y17))*100) , ((max(pTotalHCVC$y18)/mean(pTotalC$y18))*100) , ((max(pTotalHCVC$y19)/mean(pTotalC$y19))*100) , ((max(pTotalHCVC$y20)/mean(pTotalC$y20))*100) , ((max(pTotalHCVC$y21)/mean(pTotalC$y21))*100) , ((max(pTotalHCVC$y22)/mean(pTotalC$y22))*100) , ((max(pTotalHCVC$y23)/mean(pTotalC$y23))*100) , ((max(pTotalHCVC$y24)/mean(pTotalC$y24))*100) , ((max(pTotalHCVC$y25)/mean(pTotalC$y25))*100) , ((max(pTotalHCVC$y26)/mean(pTotalC$y26))*100) )
HCVCp$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026")
HCVCp$Description <- c("DAA treatments reduced by 80%")

prevHCVAll <- NULL
prevHCVAll <- rbind(HCVAp, HCVBp, HCVCp)
PlotB <- ggplot(data=prevHCVAll, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=2.5) + scale_linetype_manual(values=c("solid","twodash","dotted")) + ylab("HCV prevalence\n among total prison population") + scale_color_manual(values=c("#000000", "#000000", "#000000")) + ylim(0, 50) + geom_vline(xintercept=c(2, 6), linetype="dotted") + ggtitle("B") + theme_bw() + theme(legend.position="none", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.1, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))

legend <- get_legend(PlotA)
grid.newpage()
#grid.arrange(arrangeGrob(PlotA, PlotB))
#popPlots <- rbind (ggplotGrob(PlotA), ggplotGrob(PlotB), size="first")
ggdraw() + draw_plot(plot_grid(PlotA + theme(legend.position='none'), PlotB, ncol=1, align='hv'), width=0.9) + draw_plot(legend, x=0.65, y=0.13, width=0.1, height=0.5)

#ggplot(data=HCVA, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0, 15)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid", "dotted")) + geom_vline(xintercept=c(2, 6), linetype="dotted") +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_line(data=HCVB, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVB, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(data=HCVC, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVC, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ggtitle("Projected HCV incidence with DAA treatment") + theme(legend.position="right")
#ggplot(data=HCVB, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0, 15)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid", "dotted")) +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_line(data=HCVC, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVB, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_point(data=HCVC, aes(shape=Description), size=4) + ggtitle("Projected HCV incidence with OST treatment") + theme(legend.position="right")

#among total prison population
HCVA <- data.frame("IncidenceIDU"=c(((mean(pNewCasesA$y13)/mean(pTotalA$y13))*100)*365, ((mean(pNewCasesA$y14)/mean(pTotalA$y14))*100)*365, ((mean(pNewCasesA$y15)/mean(pTotalA$y15))*100)*365, ((mean(pNewCasesA$y16)/mean(pTotalA$y16))*100)*365, ((mean(pNewCasesA$y17)/mean(pTotalA$y17))*100)*365, ((mean(pNewCasesA$y18)/mean(pTotalA$y18))*100)*365, ((mean(pNewCasesA$y19)/mean(pTotalA$y19))*100)*365, ((mean(pNewCasesA$y20)/mean(pTotalA$y20))*100)*365, ((mean(pNewCasesA$y21)/mean(pTotalA$y21))*100)*365, ((mean(pNewCasesA$y22)/mean(pTotalA$y22))*100)*365, ((mean(pNewCasesA$y23)/mean(pTotalA$y23))*100)*365, ((mean(pNewCasesA$y24)/mean(pTotalA$y24))*100)*365, ((mean(pNewCasesA$y25)/mean(pTotalA$y25))*100)*365, ((mean(pNewCasesA$y26)/mean(pTotalA$y26))*100)*365, ((mean(pNewCasesA$y27)/mean(pTotalA$y27))*100)*365, ((mean(pNewCasesA$y28)/mean(pTotalA$y28))*100)*365, ((mean(pNewCasesA$y29)/mean(pTotalA$y29))*100)*365, ((mean(pNewCasesA$y30)/mean(pTotalA$y30))*100)*365))
HCVA$IncidenceFloor <- c(((min(pNewCasesA$y13)/mean(pTotalA$y13))*100)*365, ((min(pNewCasesA$y14)/mean(pTotalA$y14))*100)*365, ((min(pNewCasesA$y15)/mean(pTotalA$y15))*100)*365, ((min(pNewCasesA$y16)/mean(pTotalA$y16))*100)*365, ((min(pNewCasesA$y17)/mean(pTotalA$y17))*100)*365, ((min(pNewCasesA$y18)/mean(pTotalA$y18))*100)*365, ((min(pNewCasesA$y19)/mean(pTotalA$y19))*100)*365, ((min(pNewCasesA$y20)/mean(pTotalA$y20))*100)*365, ((min(pNewCasesA$y21)/mean(pTotalA$y21))*100)*365, ((min(pNewCasesA$y22)/mean(pTotalA$y22))*100)*365, ((min(pNewCasesA$y23)/mean(pTotalA$y23))*100)*365, ((min(pNewCasesA$y24)/mean(pTotalA$y24))*100)*365, ((min(pNewCasesA$y25)/mean(pTotalA$y25))*100)*365, ((min(pNewCasesA$y26)/mean(pTotalA$y26))*100)*365, ((min(pNewCasesA$y27)/mean(pTotalA$y27))*100)*365, ((min(pNewCasesA$y28)/mean(pTotalA$y28))*100)*365, ((min(pNewCasesA$y29)/mean(pTotalA$y29))*100)*365, ((min(pNewCasesA$y30)/mean(pTotalA$y30))*100)*365)
HCVA$IncidenceCeiling <- c(((max(pNewCasesA$y13)/mean(pTotalA$y13))*100)*365, ((max(pNewCasesA$y14)/mean(pTotalA$y14))*100)*365, ((max(pNewCasesA$y15)/mean(pTotalA$y15))*100)*365, ((max(pNewCasesA$y16)/mean(pTotalA$y16))*100)*365, ((max(pNewCasesA$y17)/mean(pTotalA$y17))*100)*365, ((max(pNewCasesA$y18)/mean(pTotalA$y18))*100)*365, ((max(pNewCasesA$y19)/mean(pTotalA$y19))*100)*365, ((max(pNewCasesA$y20)/mean(pTotalA$y20))*100)*365, ((max(pNewCasesA$y21)/mean(pTotalA$y21))*100)*365, ((max(pNewCasesA$y22)/mean(pTotalA$y22))*100)*365, ((max(pNewCasesA$y23)/mean(pTotalA$y23))*100)*365, ((max(pNewCasesA$y24)/mean(pTotalA$y24))*100)*365, ((max(pNewCasesA$y25)/mean(pTotalA$y25))*100)*365, ((max(pNewCasesA$y26)/mean(pTotalA$y26))*100)*365, ((max(pNewCasesA$y27)/mean(pTotalA$y27))*100)*365, ((max(pNewCasesA$y28)/mean(pTotalA$y28))*100)*365, ((max(pNewCasesA$y29)/mean(pTotalA$y29))*100)*365, ((max(pNewCasesA$y30)/mean(pTotalA$y30))*100)*365)
HCVA$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVA$Description <- c("retained number of DAA treatments")

HCVB <- data.frame("IncidenceIDU"=c(((mean(pNewCasesB$y13)/mean(pTotalB$y13))*100)*365, ((mean(pNewCasesB$y14)/mean(pTotalB$y14))*100)*365, ((mean(pNewCasesB$y15)/mean(pTotalB$y15))*100)*365, ((mean(pNewCasesB$y16)/mean(pTotalB$y16))*100)*365, ((mean(pNewCasesB$y17)/mean(pTotalB$y17))*100)*365, ((mean(pNewCasesB$y18)/mean(pTotalB$y18))*100)*365, ((mean(pNewCasesB$y19)/mean(pTotalB$y19))*100)*365, ((mean(pNewCasesB$y20)/mean(pTotalB$y20))*100)*365, ((mean(pNewCasesB$y21)/mean(pTotalB$y21))*100)*365, ((mean(pNewCasesB$y22)/mean(pTotalB$y22))*100)*365, ((mean(pNewCasesB$y23)/mean(pTotalB$y23))*100)*365, ((mean(pNewCasesB$y24)/mean(pTotalB$y24))*100)*365, ((mean(pNewCasesB$y25)/mean(pTotalB$y25))*100)*365, ((mean(pNewCasesB$y26)/mean(pTotalB$y26))*100)*365, ((mean(pNewCasesB$y27)/mean(pTotalB$y27))*100)*365, ((mean(pNewCasesB$y28)/mean(pTotalB$y28))*100)*365, ((mean(pNewCasesB$y29)/mean(pTotalB$y29))*100)*365, ((mean(pNewCasesB$y30)/mean(pTotalB$y30))*100)*365))
HCVB$IncidenceFloor <- c(((min(pNewCasesB$y13)/mean(pTotalB$y13))*100)*365, ((min(pNewCasesB$y14)/mean(pTotalB$y14))*100)*365, ((min(pNewCasesB$y15)/mean(pTotalB$y15))*100)*365, ((min(pNewCasesB$y16)/mean(pTotalB$y16))*100)*365, ((min(pNewCasesB$y17)/mean(pTotalB$y17))*100)*365, ((min(pNewCasesB$y18)/mean(pTotalB$y18))*100)*365, ((min(pNewCasesB$y19)/mean(pTotalB$y19))*100)*365, ((min(pNewCasesB$y20)/mean(pTotalB$y20))*100)*365, ((min(pNewCasesB$y21)/mean(pTotalB$y21))*100)*365, ((min(pNewCasesB$y22)/mean(pTotalB$y22))*100)*365, ((min(pNewCasesB$y23)/mean(pTotalB$y23))*100)*365, ((min(pNewCasesB$y24)/mean(pTotalB$y24))*100)*365, ((min(pNewCasesB$y25)/mean(pTotalB$y25))*100)*365, ((min(pNewCasesB$y26)/mean(pTotalB$y26))*100)*365, ((min(pNewCasesB$y27)/mean(pTotalB$y27))*100)*365, ((min(pNewCasesB$y28)/mean(pTotalB$y28))*100)*365, ((min(pNewCasesB$y29)/mean(pTotalB$y29))*100)*365, ((min(pNewCasesB$y30)/mean(pTotalB$y30))*100)*365)
HCVB$IncidenceCeiling <- c(((max(pNewCasesB$y13)/mean(pTotalB$y13))*100)*365, ((max(pNewCasesB$y14)/mean(pTotalB$y14))*100)*365, ((max(pNewCasesB$y15)/mean(pTotalB$y15))*100)*365, ((max(pNewCasesB$y16)/mean(pTotalB$y16))*100)*365, ((max(pNewCasesB$y17)/mean(pTotalB$y17))*100)*365, ((max(pNewCasesB$y18)/mean(pTotalB$y18))*100)*365, ((max(pNewCasesB$y19)/mean(pTotalB$y19))*100)*365, ((max(pNewCasesB$y20)/mean(pTotalB$y20))*100)*365, ((max(pNewCasesB$y21)/mean(pTotalB$y21))*100)*365, ((max(pNewCasesB$y22)/mean(pTotalB$y22))*100)*365, ((max(pNewCasesB$y23)/mean(pTotalB$y23))*100)*365, ((max(pNewCasesB$y24)/mean(pTotalB$y24))*100)*365, ((max(pNewCasesB$y25)/mean(pTotalB$y25))*100)*365, ((max(pNewCasesB$y26)/mean(pTotalB$y26))*100)*365, ((max(pNewCasesB$y27)/mean(pTotalB$y27))*100)*365, ((max(pNewCasesB$y28)/mean(pTotalB$y28))*100)*365, ((max(pNewCasesB$y29)/mean(pTotalB$y29))*100)*365, ((max(pNewCasesB$y30)/mean(pTotalB$y30))*100)*365)
HCVB$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVB$Description <- c("DAA treatments increased by 80%")

HCVC <- data.frame("IncidenceIDU"=c(((mean(pNewCasesC$y13)/mean(pTotalC$y13))*100)*365, ((mean(pNewCasesC$y14)/mean(pTotalC$y14))*100)*365, ((mean(pNewCasesC$y15)/mean(pTotalC$y15))*100)*365, ((mean(pNewCasesC$y16)/mean(pTotalC$y16))*100)*365, ((mean(pNewCasesC$y17)/mean(pTotalC$y17))*100)*365, ((mean(pNewCasesC$y18)/mean(pTotalC$y18))*100)*365, ((mean(pNewCasesC$y19)/mean(pTotalC$y19))*100)*365, ((mean(pNewCasesC$y20)/mean(pTotalC$y20))*100)*365, ((mean(pNewCasesC$y21)/mean(pTotalC$y21))*100)*365, ((mean(pNewCasesC$y22)/mean(pTotalC$y22))*100)*365, ((mean(pNewCasesC$y23)/mean(pTotalC$y23))*100)*365, ((mean(pNewCasesC$y24)/mean(pTotalC$y24))*100)*365, ((mean(pNewCasesC$y25)/mean(pTotalC$y25))*100)*365, ((mean(pNewCasesC$y26)/mean(pTotalC$y26))*100)*365, ((mean(pNewCasesC$y27)/mean(pTotalC$y27))*100)*365, ((mean(pNewCasesC$y28)/mean(pTotalC$y28))*100)*365, ((mean(pNewCasesC$y29)/mean(pTotalC$y29))*100)*365, ((mean(pNewCasesC$y30)/mean(pTotalC$y30))*100)*365))
HCVC$IncidenceFloor <- c(((min(pNewCasesC$y13)/mean(pTotalC$y13))*100)*365, ((min(pNewCasesC$y14)/mean(pTotalC$y14))*100)*365, ((min(pNewCasesC$y15)/mean(pTotalC$y15))*100)*365, ((min(pNewCasesC$y16)/mean(pTotalC$y16))*100)*365, ((min(pNewCasesC$y17)/mean(pTotalC$y17))*100)*365, ((min(pNewCasesC$y18)/mean(pTotalC$y18))*100)*365, ((min(pNewCasesC$y19)/mean(pTotalC$y19))*100)*365, ((min(pNewCasesC$y20)/mean(pTotalC$y20))*100)*365, ((min(pNewCasesC$y21)/mean(pTotalC$y21))*100)*365, ((min(pNewCasesC$y22)/mean(pTotalC$y22))*100)*365, ((min(pNewCasesC$y23)/mean(pTotalC$y23))*100)*365, ((min(pNewCasesC$y24)/mean(pTotalC$y24))*100)*365, ((min(pNewCasesC$y25)/mean(pTotalC$y25))*100)*365, ((min(pNewCasesC$y26)/mean(pTotalC$y26))*100)*365, ((min(pNewCasesC$y27)/mean(pTotalC$y27))*100)*365, ((min(pNewCasesC$y28)/mean(pTotalC$y28))*100)*365, ((min(pNewCasesC$y29)/mean(pTotalC$y29))*100)*365, ((min(pNewCasesC$y30)/mean(pTotalC$y30))*100)*365)
HCVC$IncidenceCeiling <- c(((max(pNewCasesC$y13)/mean(pTotalC$y13))*100)*365, ((max(pNewCasesC$y14)/mean(pTotalC$y14))*100)*365, ((max(pNewCasesC$y15)/mean(pTotalC$y15))*100)*365, ((max(pNewCasesC$y16)/mean(pTotalC$y16))*100)*365, ((max(pNewCasesC$y17)/mean(pTotalC$y17))*100)*365, ((max(pNewCasesC$y18)/mean(pTotalC$y18))*100)*365, ((max(pNewCasesC$y19)/mean(pTotalC$y19))*100)*365, ((max(pNewCasesC$y20)/mean(pTotalC$y20))*100)*365, ((max(pNewCasesC$y21)/mean(pTotalC$y21))*100)*365, ((max(pNewCasesC$y22)/mean(pTotalC$y22))*100)*365, ((max(pNewCasesC$y23)/mean(pTotalC$y23))*100)*365, ((max(pNewCasesC$y24)/mean(pTotalC$y24))*100)*365, ((max(pNewCasesC$y25)/mean(pTotalC$y25))*100)*365, ((max(pNewCasesC$y26)/mean(pTotalC$y26))*100)*365, ((max(pNewCasesC$y27)/mean(pTotalC$y27))*100)*365, ((max(pNewCasesC$y28)/mean(pTotalC$y28))*100)*365, ((max(pNewCasesC$y29)/mean(pTotalC$y29))*100)*365, ((max(pNewCasesC$y30)/mean(pTotalC$y30))*100)*365)
HCVC$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVC$Description <- c("DAA treatments reduced by 80%")

ggplot(data=HCVA, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0, 100)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid", "dotted")) +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_line(data=HCVB, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVB, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(data=HCVC, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVC, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ggtitle("Projected HCV incidence with DAA treatment") + theme(legend.position="right")
ggplot(data=HCVB, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among total prison population") + ylim(0, 15)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid", "dotted")) +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_line(data=HCVC, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVB, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_point(data=HCVC, aes(shape=Description), size=4) + ggtitle("Projected HCV incidence with OST treatment") + theme(legend.position="right")

#TotalDAA
HCVA <- data.frame("IncidenceIDU"=c(pTotalDAAA$y13, pTotalDAAA$y14, pTotalDAAA$y15, pTotalDAAA$y16, pTotalDAAA$y17, pTotalDAAA$y18, pTotalDAAA$y19, pTotalDAAA$y20, pTotalDAAA$y21, pTotalDAAA$y22, pTotalDAAA$y23, pTotalDAAA$y24, pTotalDAAA$y25, pTotalDAAA$y26, pTotalDAAA$y27, pTotalDAAA$y28, pTotalDAAA$y29, pTotalDAAA$y30))
HCVA$IncidenceFloor <- c(pTotalDAAA$y13, pTotalDAAA$y14, pTotalDAAA$y15, pTotalDAAA$y16, pTotalDAAA$y17, pTotalDAAA$y18, pTotalDAAA$y19, pTotalDAAA$y20, pTotalDAAA$y21, pTotalDAAA$y22, pTotalDAAA$y23, pTotalDAAA$y24, pTotalDAAA$y25, pTotalDAAA$y26, pTotalDAAA$y27, pTotalDAAA$y28, pTotalDAAA$y29, pTotalDAAA$y30)
HCVA$IncidenceCeiling <- c(pTotalDAAA$y13, pTotalDAAA$y14, pTotalDAAA$y15, pTotalDAAA$y16, pTotalDAAA$y17, pTotalDAAA$y18, pTotalDAAA$y19, pTotalDAAA$y20, pTotalDAAA$y21, pTotalDAAA$y22, pTotalDAAA$y23, pTotalDAAA$y24, pTotalDAAA$y25, pTotalDAAA$y26, pTotalDAAA$y27, pTotalDAAA$y28, pTotalDAAA$y29, pTotalDAAA$y30)
HCVA$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVA$Description <- c("retained number of DAA treatments")

HCVB <- data.frame("IncidenceIDU"=c(pTotalDAAB$y13, pTotalDAAB$y14, pTotalDAAB$y15, pTotalDAAB$y16, pTotalDAAB$y17, pTotalDAAB$y18, pTotalDAAB$y19, pTotalDAAB$y20, pTotalDAAB$y21, pTotalDAAB$y22, pTotalDAAB$y23, pTotalDAAB$y24, pTotalDAAB$y25, pTotalDAAB$y26, pTotalDAAB$y27, pTotalDAAB$y28, pTotalDAAB$y29, pTotalDAAB$y30))
HCVB$IncidenceFloor <- c(pTotalDAAB$y13, pTotalDAAB$y14, pTotalDAAB$y15, pTotalDAAB$y16, pTotalDAAB$y17, pTotalDAAB$y18, pTotalDAAB$y19, pTotalDAAB$y20, pTotalDAAB$y21, pTotalDAAB$y22, pTotalDAAB$y23, pTotalDAAB$y24, pTotalDAAB$y25, pTotalDAAB$y26, pTotalDAAB$y27, pTotalDAAB$y28, pTotalDAAB$y29, pTotalDAAB$y30)
HCVB$IncidenceCeiling <- c(pTotalDAAB$y13, pTotalDAAB$y14, pTotalDAAB$y15, pTotalDAAB$y16, pTotalDAAB$y17, pTotalDAAB$y18, pTotalDAAB$y19, pTotalDAAB$y20, pTotalDAAB$y21, pTotalDAAB$y22, pTotalDAAB$y23, pTotalDAAB$y24, pTotalDAAB$y25, pTotalDAAB$y26, pTotalDAAB$y27, pTotalDAAB$y28, pTotalDAAB$y29, pTotalDAAB$y30)
HCVB$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVB$Description <- c("DAA treatments increased by 80%")

HCVC <- data.frame("IncidenceIDU"=c(pTotalDAAC$y13, pTotalDAAC$y14, pTotalDAAC$y15, pTotalDAAC$y16, pTotalDAAC$y17, pTotalDAAC$y18, pTotalDAAC$y19, pTotalDAAC$y20, pTotalDAAC$y21, pTotalDAAC$y22, pTotalDAAC$y23, pTotalDAAC$y24, pTotalDAAC$y25, pTotalDAAC$y26, pTotalDAAC$y27, pTotalDAAC$y28, pTotalDAAC$y29, pTotalDAAC$y30))
HCVC$IncidenceFloor <- c(pTotalDAAC$y13, pTotalDAAC$y14, pTotalDAAC$y15, pTotalDAAC$y16, pTotalDAAC$y17, pTotalDAAC$y18, pTotalDAAC$y19, pTotalDAAC$y20, pTotalDAAC$y21, pTotalDAAC$y22, pTotalDAAC$y23, pTotalDAAC$y24, pTotalDAAC$y25, pTotalDAAC$y26, pTotalDAAC$y27, pTotalDAAC$y28, pTotalDAAC$y29, pTotalDAAC$y30)
HCVC$IncidenceCeiling <- c(pTotalDAAC$y13, pTotalDAAC$y14, pTotalDAAC$y15, pTotalDAAC$y16, pTotalDAAC$y17, pTotalDAAC$y18, pTotalDAAC$y19, pTotalDAAC$y20, pTotalDAAC$y21, pTotalDAAC$y22, pTotalDAAC$y23, pTotalDAAC$y24, pTotalDAAC$y25, pTotalDAAC$y26, pTotalDAAC$y27, pTotalDAAC$y28, pTotalDAAC$y29, pTotalDAAC$y30)
HCVC$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVC$Description <- c("DAA treatments reduced by 80%")

ggplot(data=HCVA, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0,10)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid", "dotted")) +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_line(data=HCVB, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVB, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(data=HCVC, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVC, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ggtitle("Total DAA treatment given") + theme(legend.position="right")

#PrisonHCV
HCVpA <- data.frame("IncidenceIDU"=c(pPrisonHCVA$y13, pPrisonHCVA$y14, pPrisonHCVA$y15, pPrisonHCVA$y16, pPrisonHCVA$y17, pPrisonHCVA$y18, pPrisonHCVA$y19, pPrisonHCVA$y20, pPrisonHCVA$y21, pPrisonHCVA$y22, pPrisonHCVA$y23, pPrisonHCVA$y24, pPrisonHCVA$y25, pPrisonHCVA$y26, pPrisonHCVA$y27, pPrisonHCVA$y28, pPrisonHCVA$y29, pPrisonHCVA$y30))
HCVpA$IncidenceFloor <- c(pPrisonHCVA$y13, pPrisonHCVA$y14, pPrisonHCVA$y15, pPrisonHCVA$y16, pPrisonHCVA$y17, pPrisonHCVA$y18, pPrisonHCVA$y19, pPrisonHCVA$y20, pPrisonHCVA$y21, pPrisonHCVA$y22, pPrisonHCVA$y23, pPrisonHCVA$y24, pPrisonHCVA$y25, pPrisonHCVA$y26, pPrisonHCVA$y27, pPrisonHCVA$y28, pPrisonHCVA$y29, pPrisonHCVA$y30)
HCVpA$IncidenceCeiling <- c(pPrisonHCVA$y13, pPrisonHCVA$y14, pPrisonHCVA$y15, pPrisonHCVA$y16, pPrisonHCVA$y17, pPrisonHCVA$y18, pPrisonHCVA$y19, pPrisonHCVA$y20, pPrisonHCVA$y21, pPrisonHCVA$y22, pPrisonHCVA$y23, pPrisonHCVA$y24, pPrisonHCVA$y25, pPrisonHCVA$y26, pPrisonHCVA$y27, pPrisonHCVA$y28, pPrisonHCVA$y29, pPrisonHCVA$y30)
HCVpA$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVpA$Description <- c("retained number of DAA treatments")

HCVpB <- data.frame("IncidenceIDU"=c(pPrisonHCVB$y13, pPrisonHCVB$y14, pPrisonHCVB$y15, pPrisonHCVB$y16, pPrisonHCVB$y17, pPrisonHCVB$y18, pPrisonHCVB$y19, pPrisonHCVB$y20, pPrisonHCVB$y21, pPrisonHCVB$y22, pPrisonHCVB$y23, pPrisonHCVB$y24, pPrisonHCVB$y25, pPrisonHCVB$y26, pPrisonHCVB$y27, pPrisonHCVB$y28, pPrisonHCVB$y29, pPrisonHCVB$y30))
HCVpB$IncidenceFloor <- c(pPrisonHCVB$y13, pPrisonHCVB$y14, pPrisonHCVB$y15, pPrisonHCVB$y16, pPrisonHCVB$y17, pPrisonHCVB$y18, pPrisonHCVB$y19, pPrisonHCVB$y20, pPrisonHCVB$y21, pPrisonHCVB$y22, pPrisonHCVB$y23, pPrisonHCVB$y24, pPrisonHCVB$y25, pPrisonHCVB$y26, pPrisonHCVB$y27, pPrisonHCVB$y28, pPrisonHCVB$y29, pPrisonHCVB$y30)
HCVpB$IncidenceCeiling <- c(pPrisonHCVB$y13, pPrisonHCVB$y14, pPrisonHCVB$y15, pPrisonHCVB$y16, pPrisonHCVB$y17, pPrisonHCVB$y18, pPrisonHCVB$y19, pPrisonHCVB$y20, pPrisonHCVB$y21, pPrisonHCVB$y22, pPrisonHCVB$y23, pPrisonHCVB$y24, pPrisonHCVB$y25, pPrisonHCVB$y26, pPrisonHCVB$y27, pPrisonHCVB$y28, pPrisonHCVB$y29, pPrisonHCVB$y30)
HCVpB$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVpB$Description <- c("DAA treatments increased by 80%")

HCVpC <- data.frame("IncidenceIDU"=c(pPrisonHCVC$y13, pPrisonHCVC$y14, pPrisonHCVC$y15, pPrisonHCVC$y16, pPrisonHCVC$y17, pPrisonHCVC$y18, pPrisonHCVC$y19, pPrisonHCVC$y20, pPrisonHCVC$y21, pPrisonHCVC$y22, pPrisonHCVC$y23, pPrisonHCVC$y24, pPrisonHCVC$y25, pPrisonHCVC$y26, pPrisonHCVC$y27, pPrisonHCVC$y28, pPrisonHCVC$y29, pPrisonHCVC$y30))
HCVpC$IncidenceFloor <- c(pPrisonHCVC$y13, pPrisonHCVC$y14, pPrisonHCVC$y15, pPrisonHCVC$y16, pPrisonHCVC$y17, pPrisonHCVC$y18, pPrisonHCVC$y19, pPrisonHCVC$y20, pPrisonHCVC$y21, pPrisonHCVC$y22, pPrisonHCVC$y23, pPrisonHCVC$y24, pPrisonHCVC$y25, pPrisonHCVC$y26, pPrisonHCVC$y27, pPrisonHCVC$y28, pPrisonHCVC$y29, pPrisonHCVC$y30)
HCVpC$IncidenceCeiling <- c(pPrisonHCVC$y13, pPrisonHCVC$y14, pPrisonHCVC$y15, pPrisonHCVC$y16, pPrisonHCVC$y17, pPrisonHCVC$y18, pPrisonHCVC$y19, pPrisonHCVC$y20, pPrisonHCVC$y21, pPrisonHCVC$y22, pPrisonHCVC$y23, pPrisonHCVC$y24, pPrisonHCVC$y25, pPrisonHCVC$y26, pPrisonHCVC$y27, pPrisonHCVC$y28, pPrisonHCVC$y29, pPrisonHCVC$y30)
HCVpC$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVpC$Description <- c("DAA treatments reduced by 80%")
PrisonHCV <- NULL
PrisonHCV <- rbind(HCVpA, HCVpB, HCVpC)

ggplot(data=PrisonHCV, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(color=Description)) + scale_linetype_manual(values=c("solid","twodash","dotted")) + scale_color_manual(values=c("#660000", "#006633", "#003366")) + ylim(0, 10000) + ggtitle("Prison HCV") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.1, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
ggplot(data=HCVA, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0, 10000)  + geom_line() + scale_linetype_manual(values=c("dashed", "solid", "dotted")) +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_line(data=HCVB, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVB, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(data=HCVC, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVC, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ggtitle("Projected HCV incidence with DAA treatment") + theme(legend.position="right")



