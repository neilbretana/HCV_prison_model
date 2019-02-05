library(ggplot2)

#Load 50 files
pMin <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pMed <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pMax <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pTotal <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pReinfected <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pNewCases <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pTotalIDU <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pPrisonHCV<- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pOpd <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pEverIDU <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pClrD <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pTotalDAA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pTotalOST <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pDAAr <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pTotalHCVe <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]

pMinA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pMedA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pMaxA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pTotalA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pReinfectedA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pNewCasesA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pTotalIDUA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pPrisonHCVA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pOpdA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pEverIDUA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pClrDA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pTotalDAAA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pTotalOSTA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pDAArA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pTotalHCVeA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]

pMinB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pMedB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pMaxB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pTotalB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pReinfectedB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pNewCasesB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pTotalIDUB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pPrisonHCVB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pOpdB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pEverIDUB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pClrDB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pTotalDAAB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pTotalOSTB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pDAArB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
pTotalHCVeB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]

for (var in 1:1)
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
  
  #Create Total Columns for P1 P2 P3
  pTotalTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pTotal <- rbind(pTotal, pTotalTmp)
  
  pReTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pReinfected <- rbind(pReinfected, pReTmp)
  
  pNcTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pNewCases <- rbind(pNewCases, pNcTmp)
  
  pIDUTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pTotalIDU <- rbind(pTotalIDU, pIDUTmp)
  
  pPrisonTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pPrisonHCV <- rbind(pPrisonHCV, pPrisonTmp)
  
  pEverTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pEverIDU<- rbind(pEverIDU, pEverTmp)
  
  pClrDTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pClrD <- rbind(pClrD, pClrDTmp)
  
  ptDAATmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pTotalDAA <- rbind(pTotalDAA, ptDAATmp)
  
  ptDAArTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pDAAr <- rbind(pDAAr, ptDAArTmp)
}

for (var in 1:2)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/Testing/results/outDAAd80_", var, ".xls", sep="")
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
  
  #Create Total Columns for P1 P2 P3
  pTotalTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pTotalA <- rbind(pTotal, pTotalTmp)
  
  pReTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pReinfectedA <- rbind(pReinfected, pReTmp)
  
  pNcTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pNewCasesA <- rbind(pNewCases, pNcTmp)
  
  pIDUTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pTotalIDUA <- rbind(pTotalIDU, pIDUTmp)
  
  pPrisonTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pPrisonHCVA <- rbind(pPrisonHCV, pPrisonTmp)
  
  pEverTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pEverIDUA <- rbind(pEverIDU, pEverTmp)
  
  pClrDTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pClrDA <- rbind(pClrD, pClrDTmp)
  
  ptDAATmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pTotalDAAA <- rbind(pTotalDAA, ptDAATmp)
  
  ptDAArTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pDAArA <- rbind(pDAArA, ptDAArTmp)
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
  
  #Create Total Columns for P1 P2 P3
  pTotalTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pTotalB <- rbind(pTotal, pTotalTmp)
  
  pReTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pReinfectedB <- rbind(pReinfected, pReTmp)
  
  pNcTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pNewCasesB <- rbind(pNewCases, pNcTmp)
  
  pIDUTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pTotalIDUB <- rbind(pTotalIDU, pIDUTmp)
  
  pPrisonTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pPrisonHCVB <- rbind(pPrisonHCV, pPrisonTmp)
  
  pEverTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pEverIDUB <- rbind(pEverIDU, pEverTmp)
  
  pClrDTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pClrDB <- rbind(pClrD, pClrDTmp)
  
  ptDAATmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pTotalDAAB <- rbind(pTotalDAA, ptDAATmp)
  
  ptDAArTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA)[numeric(0), ]
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
  pDAArB <- rbind(pDAArB, ptDAArTmp)
}

HCV <- data.frame("IncidenceIDU"=c(((mean(pNewCases$y06)/mean(pTotalIDU$y06))*100)*365, ((mean(pNewCases$y07)/mean(pTotalIDU$y07))*100)*365, ((mean(pNewCases$y08)/mean(pTotalIDU$y08))*100)*365, ((mean(pNewCases$y09)/mean(pTotalIDU$y09))*100)*365, ((mean(pNewCases$y10)/mean(pTotalIDU$y10))*100)*365, ((mean(pNewCases$y11)/mean(pTotalIDU$y11))*100)*365, ((mean(pNewCases$y12)/mean(pTotalIDU$y12))*100)*365, ((mean(pNewCases$y13)/mean(pTotalIDU$y13))*100)*365, ((mean(pNewCases$y14)/mean(pTotalIDU$y14))*100)*365))
HCV$IncidenceFloor <- c(((min(pNewCases$y06)/mean(pTotalIDU$y06))*100)*365, ((min(pNewCases$y07)/mean(pTotalIDU$y07))*100)*365, ((min(pNewCases$y08)/mean(pTotalIDU$y08))*100)*365, ((min(pNewCases$y09)/mean(pTotalIDU$y09))*100)*365, ((min(pNewCases$y10)/mean(pTotalIDU$y10))*100)*365, ((min(pNewCases$y11)/mean(pTotalIDU$y11))*100)*365, ((min(pNewCases$y12)/mean(pTotalIDU$y12))*100)*365, ((min(pNewCases$y13)/mean(pTotalIDU$y13))*100)*365, ((min(pNewCases$y14)/mean(pTotalIDU$y14))*100)*365)
HCV$IncidenceCeiling <- c(((max(pNewCases$y06)/mean(pTotalIDU$y06))*100)*365, ((max(pNewCases$y07)/mean(pTotalIDU$y07))*100)*365, ((max(pNewCases$y08)/mean(pTotalIDU$y08))*100)*365, ((max(pNewCases$y09)/mean(pTotalIDU$y09))*100)*365, ((max(pNewCases$y10)/mean(pTotalIDU$y10))*100)*365, ((max(pNewCases$y11)/mean(pTotalIDU$y11))*100)*365, ((max(pNewCases$y12)/mean(pTotalIDU$y12))*100)*365, ((max(pNewCases$y13)/mean(pTotalIDU$y13))*100)*365, ((max(pNewCases$y14)/mean(pTotalIDU$y14))*100)*365)
##HCV$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
HCV$Year <- c("2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019")
HCV$Description <- c("retained DAA treatment")

HCVA <- data.frame("IncidenceIDU"=c(((mean(pNewCasesA$y06)/mean(pTotalIDUA$y06))*100)*365, ((mean(pNewCasesA$y07)/mean(pTotalIDUA$y07))*100)*365, ((mean(pNewCasesA$y08)/mean(pTotalIDUA$y08))*100)*365, ((mean(pNewCasesA$y09)/mean(pTotalIDUA$y09))*100)*365, ((mean(pNewCasesA$y10)/mean(pTotalIDUA$y10))*100)*365, ((mean(pNewCasesA$y11)/mean(pTotalIDUA$y11))*100)*365, ((mean(pNewCasesA$y12)/mean(pTotalIDUA$y12))*100)*365, ((mean(pNewCasesA$y13)/mean(pTotalIDUA$y13))*100)*365, ((mean(pNewCasesA$y14)/mean(pTotalIDUA$y14))*100)*365))
HCVA$IncidenceFloor <- c(((min(pNewCasesA$y06)/mean(pTotalIDUA$y06))*100)*365, ((min(pNewCasesA$y07)/mean(pTotalIDUA$y07))*100)*365, ((min(pNewCasesA$y08)/mean(pTotalIDUA$y08))*100)*365, ((min(pNewCasesA$y09)/mean(pTotalIDUA$y09))*100)*365, ((min(pNewCasesA$y10)/mean(pTotalIDUA$y10))*100)*365, ((min(pNewCasesA$y11)/mean(pTotalIDUA$y11))*100)*365, ((min(pNewCasesA$y12)/mean(pTotalIDUA$y12))*100)*365, ((min(pNewCasesA$y13)/mean(pTotalIDUA$y13))*100)*365, ((min(pNewCasesA$y14)/mean(pTotalIDUA$y14))*100)*365)
HCVA$IncidenceCeiling <- c(((max(pNewCasesA$y06)/mean(pTotalIDUA$y06))*100)*365, ((max(pNewCasesA$y07)/mean(pTotalIDUA$y07))*100)*365, ((max(pNewCasesA$y08)/mean(pTotalIDUA$y08))*100)*365, ((max(pNewCasesA$y09)/mean(pTotalIDUA$y09))*100)*365, ((max(pNewCasesA$y10)/mean(pTotalIDUA$y10))*100)*365, ((max(pNewCasesA$y11)/mean(pTotalIDUA$y11))*100)*365, ((max(pNewCasesA$y12)/mean(pTotalIDUA$y12))*100)*365, ((max(pNewCasesA$y13)/mean(pTotalIDUA$y13))*100)*365, ((max(pNewCasesA$y14)/mean(pTotalIDUA$y14))*100)*365)
##HCVA$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
HCVA$Year <- c("2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019")
HCVA$Description <- c("increased DAA treatment")

HCVB <- data.frame("IncidenceIDU"=c(((mean(pNewCasesB$y06)/mean(pTotalIDUB$y06))*100)*365, ((mean(pNewCasesB$y07)/mean(pTotalIDUB$y07))*100)*365, ((mean(pNewCasesB$y08)/mean(pTotalIDUB$y08))*100)*365, ((mean(pNewCasesB$y09)/mean(pTotalIDUB$y09))*100)*365, ((mean(pNewCasesB$y10)/mean(pTotalIDUB$y10))*100)*365, ((mean(pNewCasesB$y11)/mean(pTotalIDUB$y11))*100)*365, ((mean(pNewCasesB$y12)/mean(pTotalIDUB$y12))*100)*365, ((mean(pNewCasesB$y13)/mean(pTotalIDUB$y13))*100)*365, ((mean(pNewCasesB$y14)/mean(pTotalIDUB$y14))*100)*365))
HCVB$IncidenceFloor <- c(((min(pNewCasesB$y06)/mean(pTotalIDUB$y06))*100)*365, ((min(pNewCasesB$y07)/mean(pTotalIDUB$y07))*100)*365, ((min(pNewCasesB$y08)/mean(pTotalIDUB$y08))*100)*365, ((min(pNewCasesB$y09)/mean(pTotalIDUB$y09))*100)*365, ((min(pNewCasesB$y10)/mean(pTotalIDUB$y10))*100)*365, ((min(pNewCasesB$y11)/mean(pTotalIDUB$y11))*100)*365, ((min(pNewCasesB$y12)/mean(pTotalIDUB$y12))*100)*365, ((min(pNewCasesB$y13)/mean(pTotalIDUB$y13))*100)*365, ((min(pNewCasesB$y14)/mean(pTotalIDUB$y14))*100)*365)
HCVB$IncidenceCeiling <- c(((max(pNewCasesB$y06)/mean(pTotalIDUB$y06))*100)*365, ((max(pNewCasesB$y07)/mean(pTotalIDUB$y07))*100)*365, ((max(pNewCasesB$y08)/mean(pTotalIDUB$y08))*100)*365, ((max(pNewCasesB$y09)/mean(pTotalIDUB$y09))*100)*365, ((max(pNewCasesB$y10)/mean(pTotalIDUB$y10))*100)*365, ((max(pNewCasesB$y11)/mean(pTotalIDUB$y11))*100)*365, ((max(pNewCasesB$y12)/mean(pTotalIDUB$y12))*100)*365, ((max(pNewCasesB$y13)/mean(pTotalIDUB$y13))*100)*365, ((max(pNewCasesB$y14)/mean(pTotalIDUB$y14))*100)*365)
##HCVB$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
HCVB$Year <- c("2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019")
HCVB$Description <- c("reduced DAA treatment")

ggplot(data=HCV, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0, 20)  + geom_line() +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid", "dotted")) + geom_vline(xintercept=c(4, 7), linetype="dotted") +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_line(data=HCVB, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVB, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(data=HCVA, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVA, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ggtitle("Projected HCV incidence with DAA treatment") + theme(legend.position="right") 

+ geom_point(aes(shape=Description), size=4)

HCV <- data.frame("IncidenceIDU"=c(((mean(pNewCases$y06)/mean(pTotal$y06))*100)*365, ((mean(pNewCases$y07)/mean(pTotal$y07))*100)*365, ((mean(pNewCases$y08)/mean(pTotal$y08))*100)*365, ((mean(pNewCases$y09)/mean(pTotal$y09))*100)*365, ((mean(pNewCases$y10)/mean(pTotal$y10))*100)*365, ((mean(pNewCases$y11)/mean(pTotal$y11))*100)*365, ((mean(pNewCases$y12)/mean(pTotal$y12))*100)*365, ((mean(pNewCases$y13)/mean(pTotal$y13))*100)*365, ((mean(pNewCases$y14)/mean(pTotal$y14))*100)*365))
HCV$IncidenceFloor <- c(((min(pNewCases$y06)/mean(pTotal$y06))*100)*365, ((min(pNewCases$y07)/mean(pTotal$y07))*100)*365, ((min(pNewCases$y08)/mean(pTotal$y08))*100)*365, ((min(pNewCases$y09)/mean(pTotal$y09))*100)*365, ((min(pNewCases$y10)/mean(pTotal$y10))*100)*365, ((min(pNewCases$y11)/mean(pTotal$y11))*100)*365, ((min(pNewCases$y12)/mean(pTotal$y12))*100)*365, ((min(pNewCases$y13)/mean(pTotal$y13))*100)*365, ((min(pNewCases$y14)/mean(pTotal$y14))*100)*365)
HCV$IncidenceCeiling <- c(((max(pNewCases$y06)/mean(pTotal$y06))*100)*365, ((max(pNewCases$y07)/mean(pTotal$y07))*100)*365, ((max(pNewCases$y08)/mean(pTotal$y08))*100)*365, ((max(pNewCases$y09)/mean(pTotal$y09))*100)*365, ((max(pNewCases$y10)/mean(pTotal$y10))*100)*365, ((max(pNewCases$y11)/mean(pTotal$y11))*100)*365, ((max(pNewCases$y12)/mean(pTotal$y12))*100)*365, ((max(pNewCases$y13)/mean(pTotal$y13))*100)*365, ((max(pNewCases$y14)/mean(pTotal$y14))*100)*365)
HCV$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
HCV$Description <- c("retained DAA treatment")

HCVA <- data.frame("IncidenceIDU"=c(((mean(pNewCasesA$y06)/mean(pTotalA$y06))*100)*365, ((mean(pNewCasesA$y07)/mean(pTotalA$y07))*100)*365, ((mean(pNewCasesA$y08)/mean(pTotalA$y08))*100)*365, ((mean(pNewCasesA$y09)/mean(pTotalA$y09))*100)*365, ((mean(pNewCasesA$y10)/mean(pTotalA$y10))*100)*365, ((mean(pNewCasesA$y11)/mean(pTotalA$y11))*100)*365, ((mean(pNewCasesA$y12)/mean(pTotalA$y12))*100)*365, ((mean(pNewCasesA$y13)/mean(pTotalA$y13))*100)*365, ((mean(pNewCasesA$y14)/mean(pTotalA$y14))*100)*365))
HCVA$IncidenceFloor <- c(((min(pNewCasesA$y06)/mean(pTotalA$y06))*100)*365, ((min(pNewCasesA$y07)/mean(pTotalA$y07))*100)*365, ((min(pNewCasesA$y08)/mean(pTotalA$y08))*100)*365, ((min(pNewCasesA$y09)/mean(pTotalA$y09))*100)*365, ((min(pNewCasesA$y10)/mean(pTotalA$y10))*100)*365, ((min(pNewCasesA$y11)/mean(pTotalA$y11))*100)*365, ((min(pNewCasesA$y12)/mean(pTotalA$y12))*100)*365, ((min(pNewCasesA$y13)/mean(pTotalA$y13))*100)*365, ((min(pNewCasesA$y14)/mean(pTotalA$y14))*100)*365)
HCVA$IncidenceCeiling <- c(((max(pNewCasesA$y06)/mean(pTotalA$y06))*100)*365, ((max(pNewCasesA$y07)/mean(pTotalA$y07))*100)*365, ((max(pNewCasesA$y08)/mean(pTotalA$y08))*100)*365, ((max(pNewCasesA$y09)/mean(pTotalA$y09))*100)*365, ((max(pNewCasesA$y10)/mean(pTotalA$y10))*100)*365, ((max(pNewCasesA$y11)/mean(pTotalA$y11))*100)*365, ((max(pNewCasesA$y12)/mean(pTotalA$y12))*100)*365, ((max(pNewCasesA$y13)/mean(pTotalA$y13))*100)*365, ((max(pNewCasesA$y14)/mean(pTotalA$y14))*100)*365)
HCVA$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
HCVA$Description <- c("increased DAA treatment")

HCVB <- data.frame("IncidenceIDU"=c(((mean(pNewCasesB$y06)/mean(pTotalB$y06))*100)*365, ((mean(pNewCasesB$y07)/mean(pTotalB$y07))*100)*365, ((mean(pNewCasesB$y08)/mean(pTotalB$y08))*100)*365, ((mean(pNewCasesB$y09)/mean(pTotalB$y09))*100)*365, ((mean(pNewCasesB$y10)/mean(pTotalB$y10))*100)*365, ((mean(pNewCasesB$y11)/mean(pTotalB$y11))*100)*365, ((mean(pNewCasesB$y12)/mean(pTotalB$y12))*100)*365, ((mean(pNewCasesB$y13)/mean(pTotalB$y13))*100)*365, ((mean(pNewCasesB$y14)/mean(pTotalB$y14))*100)*365))
HCVB$IncidenceFloor <- c(((min(pNewCasesB$y06)/mean(pTotalB$y06))*100)*365, ((min(pNewCasesB$y07)/mean(pTotalB$y07))*100)*365, ((min(pNewCasesB$y08)/mean(pTotalB$y08))*100)*365, ((min(pNewCasesB$y09)/mean(pTotalB$y09))*100)*365, ((min(pNewCasesB$y10)/mean(pTotalB$y10))*100)*365, ((min(pNewCasesB$y11)/mean(pTotalB$y11))*100)*365, ((min(pNewCasesB$y12)/mean(pTotalB$y12))*100)*365, ((min(pNewCasesB$y13)/mean(pTotalB$y13))*100)*365, ((min(pNewCasesB$y14)/mean(pTotalB$y14))*100)*365)
HCVB$IncidenceCeiling <- c(((max(pNewCasesB$y06)/mean(pTotalB$y06))*100)*365, ((max(pNewCasesB$y07)/mean(pTotalB$y07))*100)*365, ((max(pNewCasesB$y08)/mean(pTotalB$y08))*100)*365, ((max(pNewCasesB$y09)/mean(pTotalB$y09))*100)*365, ((max(pNewCasesB$y10)/mean(pTotalB$y10))*100)*365, ((max(pNewCasesB$y11)/mean(pTotalB$y11))*100)*365, ((max(pNewCasesB$y12)/mean(pTotalB$y12))*100)*365, ((max(pNewCasesB$y13)/mean(pTotalB$y13))*100)*365, ((max(pNewCasesB$y14)/mean(pTotalB$y14))*100)*365)
HCVB$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
HCVB$Description <- c("reduced DAA treatment")

ggplot(data=HCV, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0, 5)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid", "dotted")) + geom_vline(xintercept=c(4, 7), linetype="dotted") +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_line(data=HCVB, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVB, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(data=HCVA, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVA, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ggtitle("Projected HCV incidence with DAA treatment") + theme(legend.position="right")
