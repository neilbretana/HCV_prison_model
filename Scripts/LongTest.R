library(ggplot2)

#Load 50 filespEv
pMin <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pMed <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pMax <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pTotal <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pReinfected <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pNewCases <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pTotalIDU <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pPrisonHCV<- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pOpd <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pEverIDU <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pClrD <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pTotalDAA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pSumDAA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pSumClrDAA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pTotalOST <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pDAAr <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pTotalHCVe <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pNewEntry <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pHCVantibody <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pHCVchronic <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pLOS <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pSus <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pLD <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pDM <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]

pMinA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pMedA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pMaxA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pTotalA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pReinfectedA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pNewCasesA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pTotalIDUA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pPrisonHCVA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pOpdA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pEverIDUA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pClrDA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pTotalDAAA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pTotalOSTA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pDAArA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pTotalHCVeA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]

pMinB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pMedB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pMaxB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pTotalB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pReinfectedB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pNewCasesB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pTotalIDUB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pPrisonHCVB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pOpdB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pEverIDUB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pClrDB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pTotalDAAB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pTotalOSTB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pDAArB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
pTotalHCVeB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]

for (var in 1:2)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/Testing/results/outAdj_24_", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "HCVe", "NewEntry", "HCVAntibody", "AveStay")
  
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
    
  #Create Total Columns for P1 P2 P3
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
  
  pSumClrTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
  pSumClrTmp[1,] <- 0
  pSumClrTmp$y06[1] <-  sum(Y1$totalClrDAA)
  pSumClrTmp$y07[1] <-    sum(Y2$totalClrDAA)
  pSumClrTmp$y08[1] <-    sum(Y3$totalClrDAA)
  pSumClrTmp$y09[1] <-    sum(Y4$totalClrDAA)
  pSumClrTmp$y10[1] <-    sum(Y5$totalClrDAA)
  pSumClrTmp$y11[1] <-    sum(Y6$totalClrDAA)
  pSumClrTmp$y12[1] <-    sum(Y7$totalClrDAA)
  pSumClrTmp$y13[1] <-    sum(Y8$totalClrDAA)
  pSumClrTmp$y14[1] <-    sum(Y9$totalClrDAA)
  pSumClrTmp$y15[1] <-    sum(Y10$totalClrDAA)
  pSumClrTmp$y16[1] <-    sum(Y11$totalClrDAA)
  pSumClrDAA <- rbind(pSumClrDAA, pSumClrTmp)
  
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
  
  pSumDAATmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
  pSumDAATmp[1,] <- 0
  pSumDAATmp$y06[1] <- sum(Y1$totalDAA)
  pSumDAATmp$y07[1] <-   sum(Y2$totalDAA)
  pSumDAATmp$y08[1] <-   sum(Y3$totalDAA)
  pSumDAATmp$y09[1] <-   sum(Y4$totalDAA)
  pSumDAATmp$y10[1] <-   sum(Y5$totalDAA)
  pSumDAATmp$y11[1] <-   sum(Y6$totalDAA)
  pSumDAATmp$y12[1] <-   sum(Y7$totalDAA)
  pSumDAATmp$y13[1] <-   sum(Y8$totalDAA)
  pSumDAATmp$y14[1] <-   sum(Y9$totalDAA)
  pSumDAATmp$y15[1] <-   sum(Y10$totalDAA)
  pSumDAATmp$y16[1] <-   sum(Y11$totalDAA)
  pSumDAA <- rbind(pSumDAA, pSumDAATmp)
  
  ptDAArTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
  ptDAArTmp[1,] <- 0
  ptDAArTmp$y06[1] <- mean(Y1$DAAremaining)
  ptDAArTmp$y07[1] <- mean(Y2$DAAremaining)
  ptDAArTmp$y08[1] <- mean(Y3$DAAremaining)
  ptDAArTmp$y09[1] <- mean(Y4$DAAremaining)
  ptDAArTmp$y10[1] <- mean(Y5$DAAremaining)
  ptDAArTmp$y11[1] <- mean(Y6$DAAremaining)
  ptDAArTmp$y12[1] <- mean(Y7$DAAremaining)
  ptDAArTmp$y13[1] <- mean(Y8$DAAremaining)
  ptDAArTmp$y14[1] <- mean(Y9$DAAremaining)
  ptDAArTmp$y15[1] <- mean(Y10$DAAremaining)
  ptDAArTmp$y16[1] <- mean(Y11$DAAremaining)
  pDAAr <- rbind(pDAAr, ptDAArTmp)
  
  ptNewEntryTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
  ptNewEntryTmp[1,] <- 0
  ptNewEntryTmp$y06[1] <- mean(Y1$NewEntry)
  ptNewEntryTmp$y07[1] <- mean(Y2$NewEntry)
  ptNewEntryTmp$y08[1] <- mean(Y3$NewEntry)
  ptNewEntryTmp$y09[1] <- mean(Y4$NewEntry)
  ptNewEntryTmp$y10[1] <- mean(Y5$NewEntry)
  ptNewEntryTmp$y11[1] <- mean(Y6$NewEntry)
  ptNewEntryTmp$y12[1] <- mean(Y7$NewEntry)
  ptNewEntryTmp$y13[1] <- mean(Y8$NewEntry)
  ptNewEntryTmp$y14[1] <- mean(Y9$NewEntry)
  ptNewEntryTmp$y15[1] <- mean(Y10$NewEntry)
  ptNewEntryTmp$y16[1] <- mean(Y11$NewEntry)
  pNewEntry <- rbind(pNewEntry, ptNewEntryTmp)
  
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
  
  ptSusTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
  ptSusTmp[1,] <- 0
  ptSusTmp$y06[1] <- mean(Y1$Pmin3+Y1$Pmin5+Y1$Pmed3+Y1$Pmed5+Y1$Pmax3+Y1$Pmax5)  
  ptSusTmp$y07[1] <- mean(Y2$Pmin3+Y2$Pmin5+Y2$Pmed3+Y2$Pmed5+Y2$Pmax3+Y2$Pmax5) 
  ptSusTmp$y08[1] <- mean(Y3$Pmin3+Y3$Pmin5+Y3$Pmed3+Y3$Pmed5+Y3$Pmax3+Y3$Pmax5) 
  ptSusTmp$y09[1] <- mean(Y4$Pmin3+Y4$Pmin5+Y4$Pmed3+Y4$Pmed5+Y4$Pmax3+Y4$Pmax5) 
  ptSusTmp$y10[1] <- mean(Y5$Pmin3+Y5$Pmin5+Y5$Pmed3+Y5$Pmed5+Y5$Pmax3+Y5$Pmax5) 
  ptSusTmp$y11[1] <- mean(Y6$Pmin3+Y6$Pmin5+Y6$Pmed3+Y6$Pmed5+Y6$Pmax3+Y6$Pmax5) 
  ptSusTmp$y12[1] <- mean(Y7$Pmin3+Y7$Pmin5+Y7$Pmed3+Y7$Pmed5+Y7$Pmax3+Y7$Pmax5) 
  ptSusTmp$y13[1] <- mean(Y8$Pmin3+Y8$Pmin5+Y8$Pmed3+Y8$Pmed5+Y8$Pmax3+Y8$Pmax5) 
  ptSusTmp$y14[1] <- mean(Y9$Pmin3+Y9$Pmin5+Y9$Pmed3+Y9$Pmed5+Y9$Pmax3+Y9$Pmax5)  
  ptSusTmp$y15[1] <-  mean(Y10$Pmin3+Y10$Pmin5+Y10$Pmed3+Y10$Pmed5+Y10$Pmax3+Y10$Pmax5) 
  ptSusTmp$y16[1] <-  mean(Y11$Pmin3+Y11$Pmin5+Y11$Pmed3+Y11$Pmed5+Y11$Pmax3+Y11$Pmax5)   
  pSus <- rbind(pSus, ptSusTmp)
  
  ptLDTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
  ptLDTmp[1,] <- 0
  ptLDTmp$y06[1] <- mean(Y1$R1+Y1$R2+Y1$R3+Y1$R4+Y1$R5+Y1$R6)  
  ptLDTmp$y07[1] <- mean(Y2$R1+Y2$R2+Y2$R3+Y2$R4+Y2$R5+Y2$R6) 
  ptLDTmp$y08[1] <- mean(Y3$R1+Y3$R2+Y3$R3+Y3$R4+Y3$R5+Y3$R6) 
  ptLDTmp$y09[1] <- mean(Y4$R1+Y4$R2+Y4$R3+Y4$R4+Y4$R5+Y4$R6) 
  ptLDTmp$y10[1] <- mean(Y5$R1+Y5$R2+Y5$R3+Y5$R4+Y5$R5+Y5$R6) 
  ptLDTmp$y11[1] <- mean(Y6$R1+Y6$R2+Y6$R3+Y6$R4+Y6$R5+Y6$R6) 
  ptLDTmp$y12[1] <- mean(Y7$R1+Y7$R2+Y7$R3+Y7$R4+Y7$R5+Y7$R6) 
  ptLDTmp$y13[1] <- mean(Y8$R1+Y8$R2+Y8$R3+Y8$R4+Y8$R5+Y8$R6) 
  ptLDTmp$y14[1] <- mean(Y9$R1+Y9$R2+Y9$R3+Y9$R4+Y9$R5+Y9$R6)  
  ptLDTmp$y15[1] <-  mean(Y10$R1+Y10$R2+Y10$R3+Y10$R4+Y10$R5+Y10$R6) 
  ptLDTmp$y16[1] <-  mean(Y11$R1+Y11$R2+Y11$R3+Y11$R4+Y11$R5+Y11$R6)   
  pLD <- rbind(pLD, ptLDTmp)
  
  ptDMTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
  ptDMTmp[1,] <- 0
  ptDMTmp$y06[1] <- mean(Y1$R7+Y1$R8+Y1$R9+Y1$R10+Y1$R11+Y1$R12)  
  ptDMTmp$y07[1] <- mean(Y2$R7+Y2$R8+Y2$R9+Y2$R10+Y2$R11+Y2$R12) 
  ptDMTmp$y08[1] <- mean(Y3$R7+Y3$R8+Y3$R9+Y3$R10+Y3$R11+Y3$R12) 
  ptDMTmp$y09[1] <- mean(Y4$R7+Y4$R8+Y4$R9+Y4$R10+Y4$R11+Y4$R12) 
  ptDMTmp$y10[1] <- mean(Y5$R7+Y5$R8+Y5$R9+Y5$R10+Y5$R11+Y5$R12) 
  ptDMTmp$y11[1] <- mean(Y6$R7+Y6$R8+Y6$R9+Y6$R10+Y6$R11+Y6$R12) 
  ptDMTmp$y12[1] <- mean(Y7$R7+Y7$R8+Y7$R9+Y7$R10+Y7$R11+Y7$R12) 
  ptDMTmp$y13[1] <- mean(Y8$R7+Y8$R8+Y8$R9+Y8$R10+Y8$R11+Y8$R12) 
  ptDMTmp$y14[1] <- mean(Y9$R7+Y9$R8+Y9$R9+Y9$R10+Y9$R11+Y9$R12)  
  ptDMTmp$y15[1] <-  mean(Y10$R7+Y10$R8+Y10$R9+Y10$R10+Y10$R11+Y10$R12) 
  ptDMTmp$y16[1] <-  mean(Y11$R7+Y11$R8+Y11$R9+Y11$R10+Y11$R11+Y11$R12)   
  pDM <- rbind(pDM, ptDMTmp)
  
  pLOSTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
  pLOSTmp[1,] <- 0
  pLOSTmp$y06[1] <- mean(Y1$AveStay)
  pLOSTmp$y07[1] <- mean(Y2$AveStay)
  pLOSTmp$y08[1] <- mean(Y3$AveStay)
  pLOSTmp$y09[1] <- mean(Y4$AveStay)
  pLOSTmp$y10[1] <- mean(Y5$AveStay)
  pLOSTmp$y11[1] <- mean(Y6$AveStay)
  pLOSTmp$y12[1] <- mean(Y7$AveStay)
  pLOSTmp$y13[1] <- mean(Y8$AveStay)
  pLOSTmp$y14[1] <- mean(Y9$AveStay)
  pLOSTmp$y15[1] <- mean(Y10$AveStay)
  pLOSTmp$y16[1] <- mean(Y11$AveStay)
  pLOS <- rbind(pLOS, pLOSTmp)
}

mean(Y1$R1+Y1$R2+Y1$R3+Y1$R4+Y1$R5+Y1$R6)
mean(Y2$R1+Y2$R2+Y2$R3+Y2$R4+Y2$R5+Y2$R6)
mean(Y3$R1+Y3$R2+Y3$R3+Y3$R4+Y3$R5+Y3$R6)
mean(Y4$R1+Y4$R2+Y4$R3+Y4$R4+Y4$R5+Y4$R6)
mean(Y5$R1+Y5$R2+Y5$R3+Y5$R4+Y5$R5+Y5$R6)
mean(Y6$R1+Y6$R2+Y6$R3+Y6$R4+Y6$R5+Y6$R6)
mean(Y7$R1+Y7$R2+Y7$R3+Y7$R4+Y7$R5+Y7$R6)
mean(Y8$R1+Y8$R2+Y8$R3+Y8$R4+Y8$R5+Y8$R6)
mean(Y9$R1+Y9$R2+Y9$R3+Y9$R4+Y9$R5+Y9$R6)
mean(Y10$R1+Y10$R2+Y10$R3+Y10$R4+Y10$R5+Y10$R6)
mean(Y11$R1+Y11$R2+Y11$R3+Y11$R4+Y11$R5+Y11$R6)

mean(Y1$R7+Y1$R8+Y1$R9+Y1$R10+Y1$R11+Y1$R12)
mean(Y2$R7+Y2$R8+Y2$R9+Y2$R10+Y2$R11+Y2$R12)
mean(Y3$R7+Y3$R8+Y3$R9+Y3$R10+Y3$R11+Y3$R12)
mean(Y4$R7+Y4$R8+Y4$R9+Y4$R10+Y4$R11+Y4$R12)
mean(Y5$R7+Y5$R8+Y5$R9+Y5$R10+Y5$R11+Y5$R12)
mean(Y6$R7+Y6$R8+Y6$R9+Y6$R10+Y6$R11+Y6$R12)
mean(Y7$R7+Y7$R8+Y7$R9+Y7$R10+Y7$R11+Y7$R12)
mean(Y8$R7+Y8$R8+Y8$R9+Y8$R10+Y8$R11+Y8$R12)
mean(Y9$R7+Y9$R8+Y9$R9+Y9$R10+Y9$R11+Y9$R12)
mean(Y10$R7+Y10$R8+Y10$R9+Y10$R10+Y10$R11+Y10$R12)
mean(Y11$R7+Y11$R8+Y11$R9+Y11$R10+Y11$R11+Y11$R12)

for (var in 1:2)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/Testing/results/outDAA_", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "HCVe")
  
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
  
  #Create Total Columns for P1 P2 P3
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
  pTotalA <- rbind(pTotal, pTotalTmp)
  
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
  pReinfectedA <- rbind(pReinfected, pReTmp)
  
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
  pNewCasesA <- rbind(pNewCases, pNcTmp)
  
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
  pTotalIDUA <- rbind(pTotalIDU, pIDUTmp)
  
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
  pPrisonHCVA <- rbind(pPrisonHCV, pPrisonTmp)
  
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
  pEverIDUA <- rbind(pEverIDU, pEverTmp)
  
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
  pClrDA <- rbind(pClrD, pClrDTmp)
  
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
  pTotalDAAA <- rbind(pTotalDAA, ptDAATmp)
  
  ptDAArTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
  ptDAArTmp[1,] <- 0
  ptDAArTmp$y06[1] <- mean(Y1$DAAremaining)
  ptDAArTmp$y07[1] <- mean(Y2$DAAremaining)
  ptDAArTmp$y08[1] <- mean(Y3$DAAremaining)
  ptDAArTmp$y09[1] <- mean(Y4$DAAremaining)
  ptDAArTmp$y10[1] <- mean(Y5$DAAremaining)
  ptDAArTmp$y11[1] <- mean(Y6$DAAremaining)
  ptDAArTmp$y12[1] <- mean(Y7$DAAremaining)
  ptDAArTmp$y13[1] <- mean(Y8$DAAremaining)
  ptDAArTmp$y14[1] <- mean(Y9$DAAremaining)
  ptDAArTmp$y15[1] <- mean(Y10$DAAremaining)
  ptDAArTmp$y16[1] <- mean(Y11$DAAremaining)
  pDAArA <- rbind(pDAAr, ptDAArTmp)
  
}

for (var in 1:2)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/Testing/results/outDAAi80_", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "HCVe")
  
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
  
  #Create Total Columns for P1 P2 P3
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
  pTotalB <- rbind(pTotal, pTotalTmp)
  
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
  pReinfectedB <- rbind(pReinfected, pReTmp)
  
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
  pNewCasesB <- rbind(pNewCases, pNcTmp)
  
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
  pTotalIDUB <- rbind(pTotalIDU, pIDUTmp)
  
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
  pPrisonHCVB <- rbind(pPrisonHCV, pPrisonTmp)
  
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
  pEverIDUB <- rbind(pEverIDU, pEverTmp)
  
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
  pClrDB <- rbind(pClrD, pClrDTmp)
  
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
  pTotalDAAB <- rbind(pTotalDAA, ptDAATmp)
  
  ptDAArTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA)[numeric(0), ]
  ptDAArTmp[1,] <- 0
  ptDAArTmp$y06[1] <- mean(Y1$DAAremaining)
  ptDAArTmp$y07[1] <- mean(Y2$DAAremaining)
  ptDAArTmp$y08[1] <- mean(Y3$DAAremaining)
  ptDAArTmp$y09[1] <- mean(Y4$DAAremaining)
  ptDAArTmp$y10[1] <- mean(Y5$DAAremaining)
  ptDAArTmp$y11[1] <- mean(Y6$DAAremaining)
  ptDAArTmp$y12[1] <- mean(Y7$DAAremaining)
  ptDAArTmp$y13[1] <- mean(Y8$DAAremaining)
  ptDAArTmp$y14[1] <- mean(Y9$DAAremaining)
  ptDAArTmp$y15[1] <- mean(Y10$DAAremaining)
  ptDAArTmp$y16[1] <- mean(Y11$DAAremaining)
  pDAArB <- rbind(pDAAr, ptDAArTmp)
}

#proportion of antibody and chronic
HCVantibody <- data.frame("Population"=c(((mean(pHCVantibody$y06)/mean(pTotal$y06))*100), ((mean(pHCVantibody$y07)/mean(pTotal$y07))*100), ((mean(pHCVantibody$y08)/mean(pTotal$y08))*100), ((mean(pHCVantibody$y09)/mean(pTotal$y09))*100), ((mean(pHCVantibody$y10)/mean(pTotal$y10))*100), ((mean(pHCVantibody$y11)/mean(pTotal$y11))*100), ((mean(pHCVantibody$y12)/mean(pTotal$y12))*100), ((mean(pHCVantibody$y13)/mean(pTotal$y13))*100), ((mean(pHCVantibody$y14)/mean(pTotal$y14))*100), ((mean(pHCVantibody$y15)/mean(pTotal$y15))*100), ((mean(pHCVantibody$y16)/mean(pTotal$y16))*100)))
HCVantibody$floor <- c(((min(pHCVantibody$y06)/mean(pTotal$y06))*100), ((min(pHCVantibody$y07)/mean(pTotal$y07))*100), ((min(pHCVantibody$y08)/mean(pTotal$y08))*100), ((min(pHCVantibody$y09)/mean(pTotal$y09))*100), ((min(pHCVantibody$y10)/mean(pTotal$y10))*100), ((min(pHCVantibody$y11)/mean(pTotal$y11))*100), ((min(pHCVantibody$y12)/mean(pTotal$y12))*100), ((min(pHCVantibody$y13)/mean(pTotal$y13))*100), ((min(pHCVantibody$y14)/mean(pTotal$y14))*100), ((min(pHCVantibody$y15)/mean(pTotal$y15))*100), ((min(pHCVantibody$y16)/mean(pTotal$y16))*100))
HCVantibody$ceiling <- c(((max(pHCVantibody$y06)/mean(pTotal$y06))*100), ((max(pHCVantibody$y07)/mean(pTotal$y07))*100), ((max(pHCVantibody$y08)/mean(pTotal$y08))*100), ((max(pHCVantibody$y09)/mean(pTotal$y09))*100), ((max(pHCVantibody$y10)/mean(pTotal$y10))*100), ((max(pHCVantibody$y11)/mean(pTotal$y11))*100), ((max(pHCVantibody$y12)/mean(pTotal$y12))*100), ((max(pHCVantibody$y13)/mean(pTotal$y13))*100), ((max(pHCVantibody$y14)/mean(pTotal$y14))*100), ((max(pHCVantibody$y15)/mean(pTotal$y15))*100), ((max(pHCVantibody$y16)/mean(pTotal$y16))*100))
HCVantibody$Year <- c("2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021")
HCVantibody$Description <- c("HCV antibody +")

HCVchronic <- data.frame("Population"=c(((mean(pHCVchronic$y06)/mean(pTotal$y06))*100), ((mean(pHCVchronic$y07)/mean(pTotal$y07))*100), ((mean(pHCVchronic$y08)/mean(pTotal$y08))*100), ((mean(pHCVchronic$y09)/mean(pTotal$y09))*100), ((mean(pHCVchronic$y10)/mean(pTotal$y10))*100), ((mean(pHCVchronic$y11)/mean(pTotal$y11))*100), ((mean(pHCVchronic$y12)/mean(pTotal$y12))*100), ((mean(pHCVchronic$y13)/mean(pTotal$y13))*100), ((mean(pHCVchronic$y14)/mean(pTotal$y14))*100), ((mean(pHCVchronic$y15)/mean(pTotal$y15))*100), ((mean(pHCVchronic$y16)/mean(pTotal$y16))*100)))
HCVchronic$floor <- c(((min(pHCVchronic$y06)/mean(pTotal$y06))*100), ((min(pHCVchronic$y07)/mean(pTotal$y07))*100), ((min(pHCVchronic$y08)/mean(pTotal$y08))*100), ((min(pHCVchronic$y09)/mean(pTotal$y09))*100), ((min(pHCVchronic$y10)/mean(pTotal$y10))*100), ((min(pHCVchronic$y11)/mean(pTotal$y11))*100), ((min(pHCVchronic$y12)/mean(pTotal$y12))*100), ((min(pHCVchronic$y13)/mean(pTotal$y13))*100), ((min(pHCVchronic$y14)/mean(pTotal$y14))*100), ((min(pHCVchronic$y15)/mean(pTotal$y15))*100), ((min(pHCVchronic$y16)/mean(pTotal$y16))*100))
HCVchronic$ceiling <- c(((max(pHCVchronic$y06)/mean(pTotal$y06))*100), ((max(pHCVchronic$y07)/mean(pTotal$y07))*100), ((max(pHCVchronic$y08)/mean(pTotal$y08))*100), ((max(pHCVchronic$y09)/mean(pTotal$y09))*100), ((max(pHCVchronic$y10)/mean(pTotal$y10))*100), ((max(pHCVchronic$y11)/mean(pTotal$y11))*100), ((max(pHCVchronic$y12)/mean(pTotal$y12))*100), ((max(pHCVchronic$y13)/mean(pTotal$y13))*100), ((max(pHCVchronic$y14)/mean(pTotal$y14))*100), ((max(pHCVchronic$y15)/mean(pTotal$y15))*100), ((max(pHCVchronic$y16)/mean(pTotal$y16))*100))
HCVchronic$Year <- c("2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021")
HCVchronic$Description <- c("chronic HCV")

HCVantibodyPlot <- data.frame("Population"=HCVantibody$Population-HCVchronic$Population)
HCVantibodyPlot$floor <- (HCVantibody$Population-HCVchronic$floor)
HCVantibodyPlot$ceiling <- (HCVantibody$Population-HCVchronic$ceiling)
HCVantibodyPlot$Year <- c("2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021")
HCVantibodyPlot$Description <- c("HCV antibody +")

HCVchronic$floor <- HCVchronic$floor+HCVantibodyPlot$floor
HCVchronic$ceiling <- HCVchronic$ceiling+HCVantibodyPlot$ceiling

Subpops <- rbind(HCVchronic, HCVantibodyPlot)

ggplot(data=Subpops, aes(x=Year, y=Population, fill=Description)) + geom_bar(stat="identity") + geom_errorbar(aes(ymin=floor, ymax=ceiling), colour="black", width=.1, position="identity") + xlab("Year") + ylim(0, 100) + ylab("Proportion") + theme_bw() + ggtitle("HCV infection in prison") + theme(legend.position="right")

##everIDU subpopulations
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
OpdProp$Description <- c("opioid injectors")

NOpd <- data.frame("Population"= TotalIDU$Population-Opd$Population)
NOpd$floor <- TotalIDU$Population-Opd$ceiling
NOpd$ceiling <- TotalIDU$Population-Opd$floor
NOpd$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
NOpd$Description <- c("non-opioid injecting")

NOpdProp <- data.frame("Population"= (NOpd$Population/Total$Population)*100)
NOpdProp$floor <- ((NOpd$floor/Total$Population)*100)+OpdProp$floor
NOpdProp$ceiling <- ((NOpd$ceiling/Total$Population)*100)+OpdProp$ceiling
NOpdProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
NOpdProp$Description <- c("non-opioid injectors")

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
ActiveProp$Description <- c("active injectors")

NActive <- data.frame("Population"= EverIDU$Population-TotalIDU$Population)
NActive$floor <- EverIDU$floor-TotalIDU$Population
NActive$ceiling <- EverIDU$ceiling-TotalIDU$Population
NActive$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
NActive$Description <- c("non-active injecting")

NActiveProp <- data.frame("Population"= (NActive$Population/Total$Population)*100)
NActiveProp$floor <- ((NActive$floor/Total$Population)*100)+NOpdProp$floor
NActiveProp$ceiling <- ((NActive$ceiling/Total$Population)*100)+NOpdProp$ceiling
NActiveProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
NActiveProp$Description <- c("non-active injectors")

NSWIHSaProp <- data.frame("Population"= c(40.00))
NSWIHSaProp$floor <- 0
NSWIHSaProp$ceiling <- 0
NSWIHSaProp$Year <- c("2009")
NSWIHSaProp$Description <- c("NIHS - ever injectors")

NSWIHSbProp <- data.frame("Population"= c(16.5))
NSWIHSbProp$floor <- 0
NSWIHSbProp$ceiling <- 0
NSWIHSbProp$Year <- c("2009")
NSWIHSbProp$Description <- c("NIHS - active injectors")

HITSProp <- data.frame("Population"= c(14.00, 14.00, 14.00, 14.00, 14.00, 14.00, 14.00, 14.00, 14.00, 14.00, 14.00)) #equivalent of 79% among active injectors
HITSProp$floor <- 0
HITSProp$ceiling <- 0
HITSProp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
HITSProp$Description <- c("HITS-p opioid injectors")

Subpops <- rbind(NOpdProp, OpdProp, NActiveProp)

ggplot(data=Subpops, aes(x=Year, y=Population, fill=Description)) + geom_bar(stat="identity") + geom_errorbar(aes(ymin=floor, ymax=ceiling), colour="black", width=.1, position="identity") + xlab("Year") + ylim(0, 100) + ylab("Proportion") + theme_bw() + geom_line(data=HITSProp, aes(x=Year, y=Population, group= Description, linetype=Description)) + geom_point(data=NSWIHSaProp, mapping=aes(x=Year, y=Population, shape=Description), size=4) + geom_point(data=NSWIHSbProp, mapping=aes(x=Year, y=Population, shape=Description), size=4) + ggtitle("Subpopulations of incarcerated PWID") + theme(legend.position="right")

#
HCV <- data.frame("IncidenceIDU"=c(((mean(pNewCases$y06)/mean(pTotalIDU$y06))*100)*365, ((mean(pNewCases$y07)/mean(pTotalIDU$y07))*100)*365, ((mean(pNewCases$y08)/mean(pTotalIDU$y08))*100)*365, ((mean(pNewCases$y09)/mean(pTotalIDU$y09))*100)*365, ((mean(pNewCases$y10)/mean(pTotalIDU$y10))*100)*365, ((mean(pNewCases$y11)/mean(pTotalIDU$y11))*100)*365, ((mean(pNewCases$y12)/mean(pTotalIDU$y12))*100)*365, ((mean(pNewCases$y13)/mean(pTotalIDU$y13))*100)*365, ((mean(pNewCases$y14)/mean(pTotalIDU$y14))*100)*365, ((mean(pNewCases$y15)/mean(pTotalIDU$y15))*100)*365, ((mean(pNewCases$y16)/mean(pTotalIDU$y16))*100)*365))
HCV$IncidenceFloor <- c(((min(pNewCases$y06)/mean(pTotalIDU$y06))*100)*365, ((min(pNewCases$y07)/mean(pTotalIDU$y07))*100)*365, ((min(pNewCases$y08)/mean(pTotalIDU$y08))*100)*365, ((min(pNewCases$y09)/mean(pTotalIDU$y09))*100)*365, ((min(pNewCases$y10)/mean(pTotalIDU$y10))*100)*365, ((min(pNewCases$y11)/mean(pTotalIDU$y11))*100)*365, ((min(pNewCases$y12)/mean(pTotalIDU$y12))*100)*365, ((min(pNewCases$y13)/mean(pTotalIDU$y13))*100)*365, ((min(pNewCases$y14)/mean(pTotalIDU$y14))*100)*365, ((min(pNewCases$y15)/mean(pTotalIDU$y15))*100)*365, ((min(pNewCases$y16)/mean(pTotalIDU$y16))*100)*365)
HCV$IncidenceCeiling <- c(((max(pNewCases$y06)/mean(pTotalIDU$y06))*100)*365, ((max(pNewCases$y07)/mean(pTotalIDU$y07))*100)*365, ((max(pNewCases$y08)/mean(pTotalIDU$y08))*100)*365, ((max(pNewCases$y09)/mean(pTotalIDU$y09))*100)*365, ((max(pNewCases$y10)/mean(pTotalIDU$y10))*100)*365, ((max(pNewCases$y11)/mean(pTotalIDU$y11))*100)*365, ((max(pNewCases$y12)/mean(pTotalIDU$y12))*100)*365, ((max(pNewCases$y13)/mean(pTotalIDU$y13))*100)*365, ((max(pNewCases$y14)/mean(pTotalIDU$y14))*100)*365, ((max(pNewCases$y15)/mean(pTotalIDU$y15))*100)*365, ((max(pNewCases$y16)/mean(pTotalIDU$y16))*100)*365)
HCV$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016")
HCV$Description <- c("simulated incidence")

HCVEvan <- data.frame("IncidenceIDU"=c(12.07, 12.07, 12.07, 9.74, 9.74, 13.3, 13.3, 13.3))
HCVEvan$IncidenceIDUCI <- c( 12.07-8.89, 12.07-8.89, 12.07-8.89, 9.74-6.81, 9.74-6.81, 13.3-8.64, 13.3-8.64, 13.3-8.64)
HCVEvan$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013")
HCVEvan$Description <- c("HITS-p incidence")

ggplot(data=HCV, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0, 20)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid")) +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_point(data=HCVEvan, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4) + geom_errorbar(data=HCVEvan, mapping=aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI), colour="black", width=.1) + ggtitle("HCV incidence") + theme(legend.position="right")

#
HCVi <- data.frame("IncidenceIDU"=c(mean(pHCVinfected$y06),mean(pHCVinfected$y07),mean(pHCVinfected$y08),mean(pHCVinfected$y09),mean(pHCVinfected$y10),mean(pHCVinfected$y11),mean(pHCVinfected$y12),mean(pHCVinfected$y13),mean(pHCVinfected$y14),mean(pHCVinfected$y15),mean(pHCVinfected$y16)))
HCVi$IncidenceFloor <- c(min(pHCVinfected$y06),min(pHCVinfected$y07),min(pHCVinfected$y08),min(pHCVinfected$y09),min(pHCVinfected$y10),min(pHCVinfected$y11),min(pHCVinfected$y12),min(pHCVinfected$y13),min(pHCVinfected$y14),min(pHCVinfected$y15),min(pHCVinfected$y16))
HCVi$IncidenceCeiling <- c(max(pHCVinfected$y06),max(pHCVinfected$y07),max(pHCVinfected$y08),max(pHCVinfected$y09),max(pHCVinfected$y10),max(pHCVinfected$y11),max(pHCVinfected$y12),max(pHCVinfected$y13),max(pHCVinfected$y14),max(pHCVinfected$y15),max(pHCVinfected$y16))
HCVi$Year <- c("2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021")
HCVi$Description <- c("Average number of viraemic subjects")

SumDAA <- data.frame("IncidenceIDU"=c(mean(pSumDAA$y06),mean(pSumDAA$y07),mean(pSumDAA$y08),mean(pSumDAA$y09),mean(pSumDAA$y10),mean(pSumDAA$y11),mean(pSumDAA$y12),mean(pSumDAA$y13),mean(pSumDAA$y14),mean(pSumDAA$y15),mean(pSumDAA$y16)))
SumDAA$IncidenceFloor <- c(min(pSumDAA$y06),min(pSumDAA$y07),min(pSumDAA$y08),min(pSumDAA$y09),min(pSumDAA$y10),min(pSumDAA$y11),min(pSumDAA$y12),min(pSumDAA$y13),min(pSumDAA$y14),min(pSumDAA$y15),min(pSumDAA$y16))
SumDAA$IncidenceCeiling <- c(max(pSumDAA$y06),max(pSumDAA$y07),max(pSumDAA$y08),max(pSumDAA$y09),max(pSumDAA$y10),max(pSumDAA$y11),max(pSumDAA$y12),max(pSumDAA$y13),max(pSumDAA$y14),max(pSumDAA$y15),max(pSumDAA$y16))
SumDAA$Year <- c("2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021")
SumDAA$Description <- c("DAA treatments given out")

SumClrDAA <- data.frame("IncidenceIDU"=c(mean(pSumClrDAA$y06),mean(pSumClrDAA$y07),mean(pSumClrDAA$y08),mean(pSumClrDAA$y09),mean(pSumClrDAA$y10),mean(pSumClrDAA$y11),mean(pSumClrDAA$y12),mean(pSumClrDAA$y13),mean(pSumClrDAA$y14),mean(pSumClrDAA$y15),mean(pSumClrDAA$y16)))
SumClrDAA$IncidenceFloor <- c(min(pSumClrDAA$y06),min(pSumClrDAA$y07),min(pSumClrDAA$y08),min(pSumClrDAA$y09),min(pSumClrDAA$y10),min(pSumClrDAA$y11),min(pSumClrDAA$y12),min(pSumClrDAA$y13),min(pSumClrDAA$y14),min(pSumClrDAA$y15),min(pSumClrDAA$y16))
SumClrDAA$IncidenceCeiling <- c(max(pSumClrDAA$y06),max(pSumClrDAA$y07),max(pSumClrDAA$y08),max(pSumClrDAA$y09),max(pSumClrDAA$y10),max(pSumClrDAA$y11),max(pSumClrDAA$y12),max(pSumClrDAA$y13),max(pSumClrDAA$y14),max(pSumClrDAA$y15),max(pSumClrDAA$y16))
SumClrDAA$Year <- c("2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021")
SumClrDAA$Description <- c("HCV clearers due to DAA")

ggplot(data=HCVi, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("Average number") + ylim(0, 500)  + geom_line() +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid", "dotted")) + geom_vline(xintercept=c(4, 8), linetype="dotted") +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_line(data=SumDAA, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=SumDAA, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(data=SumClrDAA, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=SumClrDAA, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ggtitle("Relationship between DAA and viraemic individuals") + theme(legend.position="right") 


HCV <- data.frame("IncidenceIDU"=c(((mean(pNewCases$y06)/mean(pTotalIDU$y06))*100)*365, ((mean(pNewCases$y07)/mean(pTotalIDU$y07))*100)*365, ((mean(pNewCases$y08)/mean(pTotalIDU$y08))*100)*365, ((mean(pNewCases$y09)/mean(pTotalIDU$y09))*100)*365, ((mean(pNewCases$y10)/mean(pTotalIDU$y10))*100)*365, ((mean(pNewCases$y11)/mean(pTotalIDU$y11))*100)*365, ((mean(pNewCases$y12)/mean(pTotalIDU$y12))*100)*365, ((mean(pNewCases$y13)/mean(pTotalIDU$y13))*100)*365, ((mean(pNewCases$y14)/mean(pTotalIDU$y14))*100)*365, ((mean(pNewCases$y15)/mean(pTotalIDU$y15))*100)*365, ((mean(pNewCases$y16)/mean(pTotalIDU$y16))*100)*365))
HCV$IncidenceFloor <- c(((min(pNewCases$y06)/mean(pTotalIDU$y06))*100)*365, ((min(pNewCases$y07)/mean(pTotalIDU$y07))*100)*365, ((min(pNewCases$y08)/mean(pTotalIDU$y08))*100)*365, ((min(pNewCases$y09)/mean(pTotalIDU$y09))*100)*365, ((min(pNewCases$y10)/mean(pTotalIDU$y10))*100)*365, ((min(pNewCases$y11)/mean(pTotalIDU$y11))*100)*365, ((min(pNewCases$y12)/mean(pTotalIDU$y12))*100)*365, ((min(pNewCases$y13)/mean(pTotalIDU$y13))*100)*365, ((min(pNewCases$y14)/mean(pTotalIDU$y14))*100)*365, ((min(pNewCases$y15)/mean(pTotalIDU$y15))*100)*365, ((min(pNewCases$y16)/mean(pTotalIDU$y16))*100)*365)
HCV$IncidenceCeiling <- c(((max(pNewCases$y06)/mean(pTotalIDU$y06))*100)*365, ((max(pNewCases$y07)/mean(pTotalIDU$y07))*100)*365, ((max(pNewCases$y08)/mean(pTotalIDU$y08))*100)*365, ((max(pNewCases$y09)/mean(pTotalIDU$y09))*100)*365, ((max(pNewCases$y10)/mean(pTotalIDU$y10))*100)*365, ((max(pNewCases$y11)/mean(pTotalIDU$y11))*100)*365, ((max(pNewCases$y12)/mean(pTotalIDU$y12))*100)*365, ((max(pNewCases$y13)/mean(pTotalIDU$y13))*100)*365, ((max(pNewCases$y14)/mean(pTotalIDU$y14))*100)*365, ((max(pNewCases$y15)/mean(pTotalIDU$y15))*100)*365, ((max(pNewCases$y16)/mean(pTotalIDU$y16))*100)*365)
HCV$Year <- c("2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021")
HCV$Description <- c("retained DAA treatment")

HCVA <- data.frame("IncidenceIDU"=c(((mean(pNewCasesA$y06)/mean(pTotalIDUA$y06))*100)*365, ((mean(pNewCasesA$y07)/mean(pTotalIDUA$y07))*100)*365, ((mean(pNewCasesA$y08)/mean(pTotalIDUA$y08))*100)*365, ((mean(pNewCasesA$y09)/mean(pTotalIDUA$y09))*100)*365, ((mean(pNewCasesA$y10)/mean(pTotalIDUA$y10))*100)*365, ((mean(pNewCasesA$y11)/mean(pTotalIDUA$y11))*100)*365, ((mean(pNewCasesA$y12)/mean(pTotalIDUA$y12))*100)*365, ((mean(pNewCasesA$y13)/mean(pTotalIDUA$y13))*100)*365, ((mean(pNewCasesA$y14)/mean(pTotalIDUA$y14))*100)*365, ((mean(pNewCasesA$y15)/mean(pTotalIDUA$y15))*100)*365, ((mean(pNewCasesA$y16)/mean(pTotalIDUA$y16))*100)*365))
HCVA$IncidenceFloor <- c(((min(pNewCasesA$y06)/mean(pTotalIDUA$y06))*100)*365, ((min(pNewCasesA$y07)/mean(pTotalIDUA$y07))*100)*365, ((min(pNewCasesA$y08)/mean(pTotalIDUA$y08))*100)*365, ((min(pNewCasesA$y09)/mean(pTotalIDUA$y09))*100)*365, ((min(pNewCasesA$y10)/mean(pTotalIDUA$y10))*100)*365, ((min(pNewCasesA$y11)/mean(pTotalIDUA$y11))*100)*365, ((min(pNewCasesA$y12)/mean(pTotalIDUA$y12))*100)*365, ((min(pNewCasesA$y13)/mean(pTotalIDUA$y13))*100)*365, ((min(pNewCasesA$y14)/mean(pTotalIDUA$y14))*100)*365, ((min(pNewCasesA$y15)/mean(pTotalIDUA$y15))*100)*365, ((min(pNewCasesA$y16)/mean(pTotalIDUA$y16))*100)*365)
HCVA$IncidenceCeiling <- c(((max(pNewCasesA$y06)/mean(pTotalIDUA$y06))*100)*365, ((max(pNewCasesA$y07)/mean(pTotalIDUA$y07))*100)*365, ((max(pNewCasesA$y08)/mean(pTotalIDUA$y08))*100)*365, ((max(pNewCasesA$y09)/mean(pTotalIDUA$y09))*100)*365, ((max(pNewCasesA$y10)/mean(pTotalIDUA$y10))*100)*365, ((max(pNewCasesA$y11)/mean(pTotalIDUA$y11))*100)*365, ((max(pNewCasesA$y12)/mean(pTotalIDUA$y12))*100)*365, ((max(pNewCasesA$y13)/mean(pTotalIDUA$y13))*100)*365, ((max(pNewCasesA$y14)/mean(pTotalIDUA$y14))*100)*365, ((max(pNewCasesA$y15)/mean(pTotalIDUA$y15))*100)*365, ((max(pNewCasesA$y16)/mean(pTotalIDUA$y16))*100)*365)
HCVA$Year <- c("2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021")
HCVA$Description <- c("increased DAA treatment")

HCVB <- data.frame("IncidenceIDU"=c(((mean(pNewCasesB$y06)/mean(pTotalIDUB$y06))*100)*365, ((mean(pNewCasesB$y07)/mean(pTotalIDUB$y07))*100)*365, ((mean(pNewCasesB$y08)/mean(pTotalIDUB$y08))*100)*365, ((mean(pNewCasesB$y09)/mean(pTotalIDUB$y09))*100)*365, ((mean(pNewCasesB$y10)/mean(pTotalIDUB$y10))*100)*365, ((mean(pNewCasesB$y11)/mean(pTotalIDUB$y11))*100)*365, ((mean(pNewCasesB$y12)/mean(pTotalIDUB$y12))*100)*365, ((mean(pNewCasesB$y13)/mean(pTotalIDUB$y13))*100)*365, ((mean(pNewCasesB$y14)/mean(pTotalIDUB$y14))*100)*365, ((mean(pNewCasesB$y15)/mean(pTotalIDUB$y15))*100)*365, ((mean(pNewCasesB$y16)/mean(pTotalIDUB$y16))*100)*365))
HCVB$IncidenceFloor <- c(((min(pNewCasesB$y06)/mean(pTotalIDUB$y06))*100)*365, ((min(pNewCasesB$y07)/mean(pTotalIDUB$y07))*100)*365, ((min(pNewCasesB$y08)/mean(pTotalIDUB$y08))*100)*365, ((min(pNewCasesB$y09)/mean(pTotalIDUB$y09))*100)*365, ((min(pNewCasesB$y10)/mean(pTotalIDUB$y10))*100)*365, ((min(pNewCasesB$y11)/mean(pTotalIDUB$y11))*100)*365, ((min(pNewCasesB$y12)/mean(pTotalIDUB$y12))*100)*365, ((min(pNewCasesB$y13)/mean(pTotalIDUB$y13))*100)*365, ((min(pNewCasesB$y14)/mean(pTotalIDUB$y14))*100)*365, ((min(pNewCasesB$y15)/mean(pTotalIDUB$y15))*100)*365, ((min(pNewCasesB$y16)/mean(pTotalIDUB$y16))*100)*365)
HCVB$IncidenceCeiling <- c(((max(pNewCasesB$y06)/mean(pTotalIDUB$y06))*100)*365, ((max(pNewCasesB$y07)/mean(pTotalIDUB$y07))*100)*365, ((max(pNewCasesB$y08)/mean(pTotalIDUB$y08))*100)*365, ((max(pNewCasesB$y09)/mean(pTotalIDUB$y09))*100)*365, ((max(pNewCasesB$y10)/mean(pTotalIDUB$y10))*100)*365, ((max(pNewCasesB$y11)/mean(pTotalIDUB$y11))*100)*365, ((max(pNewCasesB$y12)/mean(pTotalIDUB$y12))*100)*365, ((max(pNewCasesB$y13)/mean(pTotalIDUB$y13))*100)*365, ((max(pNewCasesB$y14)/mean(pTotalIDUB$y14))*100)*365, ((max(pNewCasesB$y15)/mean(pTotalIDUB$y15))*100)*365, ((max(pNewCasesB$y16)/mean(pTotalIDUB$y16))*100)*365)
HCVB$Year <- c("2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021")
HCVB$Description <- c("reduced DAA treatment")

ggplot(data=HCV, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0, 20)  + geom_line() +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid", "dotted")) + geom_vline(xintercept=c(4, 8), linetype="dotted") +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_line(data=HCVB, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVB, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(data=HCVA, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVA, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ggtitle("Projected HCV incidence with DAA treatment") + theme(legend.position="right") 

+ geom_point(aes(shape=Description), size=4)

HCV <- data.frame("IncidenceIDU"=c(((mean(pNewCases$y06)/mean(pTotal$y06))*100)*365, ((mean(pNewCases$y07)/mean(pTotal$y07))*100)*365, ((mean(pNewCases$y08)/mean(pTotal$y08))*100)*365, ((mean(pNewCases$y09)/mean(pTotal$y09))*100)*365, ((mean(pNewCases$y10)/mean(pTotal$y10))*100)*365, ((mean(pNewCases$y11)/mean(pTotal$y11))*100)*365, ((mean(pNewCases$y12)/mean(pTotal$y12))*100)*365, ((mean(pNewCases$y13)/mean(pTotal$y13))*100)*365, ((mean(pNewCases$y14)/mean(pTotal$y14))*100)*365, ((mean(pNewCases$y15)/mean(pTotal$y15))*100)*365, ((mean(pNewCases$y16)/mean(pTotal$y16))*100)*365))
HCV$IncidenceFloor <- c(((min(pNewCases$y06)/mean(pTotal$y06))*100)*365, ((min(pNewCases$y07)/mean(pTotal$y07))*100)*365, ((min(pNewCases$y08)/mean(pTotal$y08))*100)*365, ((min(pNewCases$y09)/mean(pTotal$y09))*100)*365, ((min(pNewCases$y10)/mean(pTotal$y10))*100)*365, ((min(pNewCases$y11)/mean(pTotal$y11))*100)*365, ((min(pNewCases$y12)/mean(pTotal$y12))*100)*365, ((min(pNewCases$y13)/mean(pTotal$y13))*100)*365, ((min(pNewCases$y14)/mean(pTotal$y14))*100)*365, ((min(pNewCases$y15)/mean(pTotal$y15))*100)*365, ((min(pNewCases$y16)/mean(pTotal$y16))*100)*365)
HCV$IncidenceCeiling <- c(((max(pNewCases$y06)/mean(pTotal$y06))*100)*365, ((max(pNewCases$y07)/mean(pTotal$y07))*100)*365, ((max(pNewCases$y08)/mean(pTotal$y08))*100)*365, ((max(pNewCases$y09)/mean(pTotal$y09))*100)*365, ((max(pNewCases$y10)/mean(pTotal$y10))*100)*365, ((max(pNewCases$y11)/mean(pTotal$y11))*100)*365, ((max(pNewCases$y12)/mean(pTotal$y12))*100)*365, ((max(pNewCases$y13)/mean(pTotal$y13))*100)*365, ((max(pNewCases$y14)/mean(pTotal$y14))*100)*365, ((max(pNewCases$y15)/mean(pTotal$y15))*100)*365, ((max(pNewCases$y16)/mean(pTotal$y16))*100)*365)
HCV$Year <- c("2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021")
HCV$Description <- c("retained DAA treatment")

HCVA <- data.frame("IncidenceIDU"=c(((mean(pNewCasesA$y06)/mean(pTotalA$y06))*100)*365, ((mean(pNewCasesA$y07)/mean(pTotalA$y07))*100)*365, ((mean(pNewCasesA$y08)/mean(pTotalA$y08))*100)*365, ((mean(pNewCasesA$y09)/mean(pTotalA$y09))*100)*365, ((mean(pNewCasesA$y10)/mean(pTotalA$y10))*100)*365, ((mean(pNewCasesA$y11)/mean(pTotalA$y11))*100)*365, ((mean(pNewCasesA$y12)/mean(pTotalA$y12))*100)*365, ((mean(pNewCasesA$y13)/mean(pTotalA$y13))*100)*365, ((mean(pNewCasesA$y14)/mean(pTotalA$y14))*100)*365, ((mean(pNewCasesA$y15)/mean(pTotalA$y15))*100)*365, ((mean(pNewCasesA$y16)/mean(pTotalA$y16))*100)*365))
HCVA$IncidenceFloor <- c(((min(pNewCasesA$y06)/mean(pTotalA$y06))*100)*365, ((min(pNewCasesA$y07)/mean(pTotalA$y07))*100)*365, ((min(pNewCasesA$y08)/mean(pTotalA$y08))*100)*365, ((min(pNewCasesA$y09)/mean(pTotalA$y09))*100)*365, ((min(pNewCasesA$y10)/mean(pTotalA$y10))*100)*365, ((min(pNewCasesA$y11)/mean(pTotalA$y11))*100)*365, ((min(pNewCasesA$y12)/mean(pTotalA$y12))*100)*365, ((min(pNewCasesA$y13)/mean(pTotalA$y13))*100)*365, ((min(pNewCasesA$y14)/mean(pTotalA$y14))*100)*365, ((min(pNewCasesA$y15)/mean(pTotalA$y15))*100)*365, ((min(pNewCasesA$y16)/mean(pTotalA$y16))*100)*365)
HCVA$IncidenceCeiling <- c(((max(pNewCasesA$y06)/mean(pTotalA$y06))*100)*365, ((max(pNewCasesA$y07)/mean(pTotalA$y07))*100)*365, ((max(pNewCasesA$y08)/mean(pTotalA$y08))*100)*365, ((max(pNewCasesA$y09)/mean(pTotalA$y09))*100)*365, ((max(pNewCasesA$y10)/mean(pTotalA$y10))*100)*365, ((max(pNewCasesA$y11)/mean(pTotalA$y11))*100)*365, ((max(pNewCasesA$y12)/mean(pTotalA$y12))*100)*365, ((max(pNewCasesA$y13)/mean(pTotalA$y13))*100)*365, ((max(pNewCasesA$y14)/mean(pTotalA$y14))*100)*365, ((max(pNewCasesA$y15)/mean(pTotalA$y15))*100)*365, ((max(pNewCasesA$y16)/mean(pTotalA$y16))*100)*365)
HCVA$Year <- c("2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021")
HCVA$Description <- c("increased DAA treatment")

HCVB <- data.frame("IncidenceIDU"=c(((mean(pNewCasesB$y06)/mean(pTotalB$y06))*100)*365, ((mean(pNewCasesB$y07)/mean(pTotalB$y07))*100)*365, ((mean(pNewCasesB$y08)/mean(pTotalB$y08))*100)*365, ((mean(pNewCasesB$y09)/mean(pTotalB$y09))*100)*365, ((mean(pNewCasesB$y10)/mean(pTotalB$y10))*100)*365, ((mean(pNewCasesB$y11)/mean(pTotalB$y11))*100)*365, ((mean(pNewCasesB$y12)/mean(pTotalB$y12))*100)*365, ((mean(pNewCasesB$y13)/mean(pTotalB$y13))*100)*365, ((mean(pNewCasesB$y14)/mean(pTotalB$y14))*100)*365, ((mean(pNewCasesB$y15)/mean(pTotalB$y15))*100)*365, ((mean(pNewCasesB$y16)/mean(pTotalB$y16))*100)*365))
HCVB$IncidenceFloor <- c(((min(pNewCasesB$y06)/mean(pTotalB$y06))*100)*365, ((min(pNewCasesB$y07)/mean(pTotalB$y07))*100)*365, ((min(pNewCasesB$y08)/mean(pTotalB$y08))*100)*365, ((min(pNewCasesB$y09)/mean(pTotalB$y09))*100)*365, ((min(pNewCasesB$y10)/mean(pTotalB$y10))*100)*365, ((min(pNewCasesB$y11)/mean(pTotalB$y11))*100)*365, ((min(pNewCasesB$y12)/mean(pTotalB$y12))*100)*365, ((min(pNewCasesB$y13)/mean(pTotalB$y13))*100)*365, ((min(pNewCasesB$y14)/mean(pTotalB$y14))*100)*365, ((min(pNewCasesB$y15)/mean(pTotalB$y15))*100)*365, ((min(pNewCasesB$y16)/mean(pTotalB$y16))*100)*365)
HCVB$IncidenceCeiling <- c(((max(pNewCasesB$y06)/mean(pTotalB$y06))*100)*365, ((max(pNewCasesB$y07)/mean(pTotalB$y07))*100)*365, ((max(pNewCasesB$y08)/mean(pTotalB$y08))*100)*365, ((max(pNewCasesB$y09)/mean(pTotalB$y09))*100)*365, ((max(pNewCasesB$y10)/mean(pTotalB$y10))*100)*365, ((max(pNewCasesB$y11)/mean(pTotalB$y11))*100)*365, ((max(pNewCasesB$y12)/mean(pTotalB$y12))*100)*365, ((max(pNewCasesB$y13)/mean(pTotalB$y13))*100)*365, ((max(pNewCasesB$y14)/mean(pTotalB$y14))*100)*365, ((max(pNewCasesB$y15)/mean(pTotalB$y15))*100)*365, ((max(pNewCasesB$y16)/mean(pTotalB$y16))*100)*365)
HCVB$Year <- c("2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021")
HCVB$Description <- c("reduced DAA treatment")

ggplot(data=HCV, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0, 5)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid", "dotted")) + geom_vline(xintercept=c(4, 7), linetype="dotted") +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_line(data=HCVB, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVB, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(data=HCVA, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVA, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ggtitle("Projected HCV incidence with DAA treatment") + theme(legend.position="right")
