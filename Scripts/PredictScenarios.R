
############Load 50 files from second file
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
Y12 <- NULL
Y13 <- NULL
Y14 <- NULL
Y15 <- NULL
for (var in 1:1)
{
fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet28.xls", sep="")
tempFile <- read.csv(fileName, sep="\t",header=TRUE)

colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")

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
Y12 <- rbind(Y12, tempFile[4016:4380,]) #YRS
Y13 <- rbind(Y13, tempFile[4381:4745,]) #YRS
Y14 <- rbind(Y14, tempFile[4746:5110,]) #YRS
Y15 <- rbind(Y15, tempFile[5111:5475,]) #YRS
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
Y12$PminTotal <- Y12$Pmin0+Y12$Pmin1+Y12$Pmin2+Y12$Pmin3+Y12$Pmin4+Y12$Pmin5+Y12$Pmin6+Y12$Pmin7+Y12$Pmin8+Y12$Pmin9+Y12$Pmin10+Y12$Pmin11
Y12$PminTotal <- Y12$Pmin0+Y12$Pmin1+Y12$Pmin2+Y12$Pmin3+Y12$Pmin4+Y12$Pmin5+Y12$Pmin6+Y12$Pmin7+Y12$Pmin8+Y12$Pmin9+Y12$Pmin10+Y12$Pmin11
Y12$PminTotal <- Y12$Pmin0+Y12$Pmin1+Y12$Pmin2+Y12$Pmin3+Y12$Pmin4+Y12$Pmin5+Y12$Pmin6+Y12$Pmin7+Y12$Pmin8+Y12$Pmin9+Y12$Pmin10+Y12$Pmin11
Y15$PminTotal <- Y15$Pmin0+Y15$Pmin1+Y15$Pmin2+Y15$Pmin3+Y15$Pmin4+Y15$Pmin5+Y15$Pmin6+Y15$Pmin7+Y15$Pmin8+Y15$Pmin9+Y15$Pmin10+Y15$Pmin11

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
Y12$PmedTotal <- Y12$Pmed0+Y12$Pmed1+Y12$Pmed2+Y12$Pmed3+Y12$Pmed4+Y12$Pmed5+Y12$Pmed6+Y12$Pmed7+Y12$Pmed8+Y12$Pmed9+Y12$Pmed10+Y12$Pmed11
Y13$PmedTotal <- Y13$Pmed0+Y13$Pmed1+Y13$Pmed2+Y13$Pmed3+Y13$Pmed4+Y13$Pmed5+Y13$Pmed6+Y13$Pmed7+Y13$Pmed8+Y13$Pmed9+Y13$Pmed10+Y13$Pmed11
Y14$PmedTotal <- Y14$Pmed0+Y14$Pmed1+Y14$Pmed2+Y14$Pmed3+Y14$Pmed4+Y14$Pmed5+Y14$Pmed6+Y14$Pmed7+Y14$Pmed8+Y14$Pmed9+Y14$Pmed10+Y14$Pmed11
Y15$PmedTotal <- Y15$Pmed0+Y15$Pmed1+Y15$Pmed2+Y15$Pmed3+Y15$Pmed4+Y15$Pmed5+Y15$Pmed6+Y15$Pmed7+Y15$Pmed8+Y15$Pmed9+Y15$Pmed10+Y15$Pmed11

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
Y12$PmaxTotal <- Y12$Pmax0+Y12$Pmax1+Y12$Pmax2+Y12$Pmax3+Y12$Pmax4+Y12$Pmax5+Y12$Pmax6+Y12$Pmax7+Y12$Pmax8+Y12$Pmax9+Y12$Pmax10+Y12$Pmax11
Y13$PmaxTotal <- Y13$Pmax0+Y13$Pmax1+Y13$Pmax2+Y13$Pmax3+Y13$Pmax4+Y13$Pmax5+Y13$Pmax6+Y13$Pmax7+Y13$Pmax8+Y13$Pmax9+Y13$Pmax10+Y13$Pmax11
Y14$PmaxTotal <- Y14$Pmax0+Y14$Pmax1+Y14$Pmax2+Y14$Pmax3+Y14$Pmax4+Y14$Pmax5+Y14$Pmax6+Y14$Pmax7+Y14$Pmax8+Y14$Pmax9+Y14$Pmax10+Y14$Pmax11
Y15$PmaxTotal <- Y15$Pmax0+Y15$Pmax1+Y15$Pmax2+Y15$Pmax3+Y15$Pmax4+Y15$Pmax5+Y15$Pmax6+Y15$Pmax7+Y15$Pmax8+Y15$Pmax9+Y15$Pmax10+Y15$Pmax11

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
Y11$TotalIDU <- Y11$Pmin0+Y11$Pmin1+Y11$Pmin2+Y11$Pmin3+Y11$Pmin4+Y11$Pmin5+Y11$Pmed0+Y11$Pmed1+Y11$Pmed2+Y11$Pmed3+Y11$Pmed4+Y11$Pmed5+Y11$Pmax0+Y11$Pmax1+Y11$Pmax2+Y11$Pmax3+Y11$Pmax4+Y11$Pmax5
Y12$TotalIDU <- Y12$Pmin0+Y12$Pmin1+Y12$Pmin2+Y12$Pmin3+Y12$Pmin4+Y12$Pmin5+Y12$Pmed0+Y12$Pmed1+Y12$Pmed2+Y12$Pmed3+Y12$Pmed4+Y12$Pmed5+Y12$Pmax0+Y12$Pmax1+Y12$Pmax2+Y12$Pmax3+Y12$Pmax4+Y12$Pmax5
Y13$TotalIDU <- Y13$Pmin0+Y13$Pmin1+Y13$Pmin2+Y13$Pmin3+Y13$Pmin4+Y13$Pmin5+Y13$Pmed0+Y13$Pmed1+Y13$Pmed2+Y13$Pmed3+Y13$Pmed4+Y13$Pmed5+Y13$Pmax0+Y13$Pmax1+Y13$Pmax2+Y13$Pmax3+Y13$Pmax4+Y13$Pmax5
Y14$TotalIDU <- Y14$Pmin0+Y14$Pmin1+Y14$Pmin2+Y14$Pmin3+Y14$Pmin4+Y14$Pmin5+Y14$Pmed0+Y14$Pmed1+Y14$Pmed2+Y14$Pmed3+Y14$Pmed4+Y14$Pmed5+Y14$Pmax0+Y14$Pmax1+Y14$Pmax2+Y14$Pmax3+Y14$Pmax4+Y14$Pmax5
Y15$TotalIDU <- Y15$Pmin0+Y15$Pmin1+Y15$Pmin2+Y15$Pmin3+Y15$Pmin4+Y15$Pmin5+Y15$Pmed0+Y15$Pmed1+Y15$Pmed2+Y15$Pmed3+Y15$Pmed4+Y15$Pmed5+Y15$Pmax0+Y15$Pmax1+Y15$Pmax2+Y15$Pmax3+Y15$Pmax4+Y15$Pmax5

Y1$TotalHCV <- Y1$PrisonHCV+Y1$COMMUNITYHCV
Y2$TotalHCV <- Y2$PrisonHCV+Y2$COMMUNITYHCV
Y3$TotalHCV <- Y3$PrisonHCV+Y3$COMMUNITYHCV
Y4$TotalHCV <- Y4$PrisonHCV+Y4$COMMUNITYHCV
Y5$TotalHCV <- Y5$PrisonHCV+Y5$COMMUNITYHCV
Y6$TotalHCV <- Y6$PrisonHCV+Y6$COMMUNITYHCV
Y7$TotalHCV <- Y7$PrisonHCV+Y7$COMMUNITYHCV
Y8$TotalHCV <- Y8$PrisonHCV+Y8$COMMUNITYHCV
Y9$TotalHCV <- Y9$PrisonHCV+Y9$COMMUNITYHCV
Y10$TotalHCV <- Y10$PrisonHCV+Y10$COMMUNITYHCV
Y11$TotalHCV <- Y11$PrisonHCV+Y11$COMMUNITYHCV
Y12$TotalHCV <- Y12$PrisonHCV+Y12$COMMUNITYHCV
Y13$TotalHCV <- Y13$PrisonHCV+Y13$COMMUNITYHCV
Y14$TotalHCV <- Y14$PrisonHCV+Y14$COMMUNITYHCV
Y15$TotalHCV <- Y15$PrisonHCV+Y15$COMMUNITYHCV

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
CY11 <- NULL
CY12 <- NULL
CY13 <- NULL
CY14 <- NULL
CY15 <- NULL
for (var in 1:1)
{
  fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outIncSha50.xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)

colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")

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
CY11 <- rbind(CY11, tempFile[3651:4015,]) #YRS
CY12 <- rbind(CY12, tempFile[4016:4380,]) #YRS
CY13 <- rbind(CY13, tempFile[4381:4745,]) #YRS
CY14 <- rbind(CY14, tempFile[4746:5110,]) #YRS
CY15 <- rbind(CY15, tempFile[5111:5475,]) #YRS
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
CY11$PminTotal <- CY11$Pmin0+CY11$Pmin1+CY11$Pmin2+CY11$Pmin3+CY11$Pmin4+CY11$Pmin5+CY11$Pmin6+CY11$Pmin7+CY11$Pmin8+CY11$Pmin9+CY11$Pmin10+CY11$Pmin11
CY12$PmedTotal <- CY12$Pmed0+CY12$Pmed1+CY12$Pmed2+CY12$Pmed3+CY12$Pmed4+CY12$Pmed5+CY12$Pmed6+CY12$Pmed7+CY12$Pmed8+CY12$Pmed9+CY12$Pmed10+CY12$Pmed11
CY13$PmedTotal <- CY13$Pmed0+CY13$Pmed1+CY13$Pmed2+CY13$Pmed3+CY13$Pmed4+CY13$Pmed5+CY13$Pmed6+CY13$Pmed7+CY13$Pmed8+CY13$Pmed9+CY13$Pmed10+CY13$Pmed11
CY14$PmedTotal <- CY14$Pmed0+CY14$Pmed1+CY14$Pmed2+CY14$Pmed3+CY14$Pmed4+CY14$Pmed5+CY14$Pmed6+CY14$Pmed7+CY14$Pmed8+CY14$Pmed9+CY14$Pmed10+CY14$Pmed11
CY15$PmedTotal <- CY15$Pmed0+CY15$Pmed1+CY15$Pmed2+CY15$Pmed3+CY15$Pmed4+CY15$Pmed5+CY15$Pmed6+CY15$Pmed7+CY15$Pmed8+CY15$Pmed9+CY15$Pmed10+CY15$Pmed11

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
CY11$PmedTotal <- CY11$Pmed0+CY11$Pmed1+CY11$Pmed2+CY11$Pmed3+CY11$Pmed4+CY11$Pmed5+CY11$Pmed6+CY11$Pmed7+CY11$Pmed8+CY11$Pmed9+CY11$Pmed10+CY11$Pmed11
CY12$PmedTotal <- CY12$Pmed0+CY12$Pmed1+CY12$Pmed2+CY12$Pmed3+CY12$Pmed4+CY12$Pmed5+CY12$Pmed6+CY12$Pmed7+CY12$Pmed8+CY12$Pmed9+CY12$Pmed10+CY12$Pmed11
CY13$PmedTotal <- CY13$Pmed0+CY13$Pmed1+CY13$Pmed2+CY13$Pmed3+CY13$Pmed4+CY13$Pmed5+CY13$Pmed6+CY13$Pmed7+CY13$Pmed8+CY13$Pmed9+CY13$Pmed10+CY13$Pmed11
CY14$PmedTotal <- CY14$Pmed0+CY14$Pmed1+CY14$Pmed2+CY14$Pmed3+CY14$Pmed4+CY14$Pmed5+CY14$Pmed6+CY14$Pmed7+CY14$Pmed8+CY14$Pmed9+CY14$Pmed10+CY14$Pmed11
CY15$PmedTotal <- CY15$Pmed0+CY15$Pmed1+CY15$Pmed2+CY15$Pmed3+CY15$Pmed4+CY15$Pmed5+CY15$Pmed6+CY15$Pmed7+CY15$Pmed8+CY15$Pmed9+CY15$Pmed10+CY15$Pmed11

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
CY11$PmaxTotal <- CY11$Pmax0+CY11$Pmax1+CY11$Pmax2+CY11$Pmax3+CY11$Pmax4+CY11$Pmax5+CY11$Pmax6+CY11$Pmax7+CY11$Pmax8+CY11$Pmax9+CY11$Pmax10+CY11$Pmax11
CY12$PmaxTotal <- CY12$Pmax0+CY12$Pmax1+CY12$Pmax2+CY12$Pmax3+CY12$Pmax4+CY12$Pmax5+CY12$Pmax6+CY12$Pmax7+CY12$Pmax8+CY12$Pmax9+CY12$Pmax10+CY12$Pmax11
CY13$PmaxTotal <- CY13$Pmax0+CY13$Pmax1+CY13$Pmax2+CY13$Pmax3+CY13$Pmax4+CY13$Pmax5+CY13$Pmax6+CY13$Pmax7+CY13$Pmax8+CY13$Pmax9+CY13$Pmax10+CY13$Pmax11
CY14$PmaxTotal <- CY14$Pmax0+CY14$Pmax1+CY14$Pmax2+CY14$Pmax3+CY14$Pmax4+CY14$Pmax5+CY14$Pmax6+CY14$Pmax7+CY14$Pmax8+CY14$Pmax9+CY14$Pmax10+CY14$Pmax11
CY15$PmaxTotal <- CY15$Pmax0+CY15$Pmax1+CY15$Pmax2+CY15$Pmax3+CY15$Pmax4+CY15$Pmax5+CY15$Pmax6+CY15$Pmax7+CY15$Pmax8+CY15$Pmax9+CY15$Pmax10+CY15$Pmax11

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
CY11$TotalIDU <- CY11$Pmin0+CY11$Pmin1+CY11$Pmin2+CY11$Pmin3+CY11$Pmin4+CY11$Pmin5+CY11$Pmed0+CY11$Pmed1+CY11$Pmed2+CY11$Pmed3+CY11$Pmed4+CY11$Pmed5+CY11$Pmax0+CY11$Pmax1+CY11$Pmax2+CY11$Pmax3+CY11$Pmax4+CY11$Pmax5
CY12$TotalIDU <- CY12$Pmin0+CY12$Pmin1+CY12$Pmin2+CY12$Pmin3+CY12$Pmin4+CY12$Pmin5+CY12$Pmed0+CY12$Pmed1+CY12$Pmed2+CY12$Pmed3+CY12$Pmed4+CY12$Pmed5+CY12$Pmax0+CY12$Pmax1+CY12$Pmax2+CY12$Pmax3+CY12$Pmax4+CY12$Pmax5
CY13$TotalIDU <- CY13$Pmin0+CY13$Pmin1+CY13$Pmin2+CY13$Pmin3+CY13$Pmin4+CY13$Pmin5+CY13$Pmed0+CY13$Pmed1+CY13$Pmed2+CY13$Pmed3+CY13$Pmed4+CY13$Pmed5+CY13$Pmax0+CY13$Pmax1+CY13$Pmax2+CY13$Pmax3+CY13$Pmax4+CY13$Pmax5
CY14$TotalIDU <- CY14$Pmin0+CY14$Pmin1+CY14$Pmin2+CY14$Pmin3+CY14$Pmin4+CY14$Pmin5+CY14$Pmed0+CY14$Pmed1+CY14$Pmed2+CY14$Pmed3+CY14$Pmed4+CY14$Pmed5+CY14$Pmax0+CY14$Pmax1+CY14$Pmax2+CY14$Pmax3+CY14$Pmax4+CY14$Pmax5
CY15$TotalIDU <- CY15$Pmin0+CY15$Pmin1+CY15$Pmin2+CY15$Pmin3+CY15$Pmin4+CY15$Pmin5+CY15$Pmed0+CY15$Pmed1+CY15$Pmed2+CY15$Pmed3+CY15$Pmed4+CY15$Pmed5+CY15$Pmax0+CY15$Pmax1+CY15$Pmax2+CY15$Pmax3+CY15$Pmax4+CY15$Pmax5

CY1$TotalHCV <- CY1$PrisonHCV+CY1$COMMUNITYHCV
CY2$TotalHCV <- CY2$PrisonHCV+CY2$COMMUNITYHCV
CY3$TotalHCV <- CY3$PrisonHCV+CY3$COMMUNITYHCV
CY4$TotalHCV <- CY4$PrisonHCV+CY4$COMMUNITYHCV
CY5$TotalHCV <- CY5$PrisonHCV+CY5$COMMUNITYHCV
CY6$TotalHCV <- CY6$PrisonHCV+CY6$COMMUNITYHCV
CY7$TotalHCV <- CY7$PrisonHCV+CY7$COMMUNITYHCV
CY8$TotalHCV <- CY8$PrisonHCV+CY8$COMMUNITYHCV
CY9$TotalHCV <- CY9$PrisonHCV+CY9$COMMUNITYHCV
CY10$TotalHCV <- CY10$PrisonHCV+CY10$COMMUNITYHCV
CY11$TotalHCV <- CY11$PrisonHCV+CY11$COMMUNITYHCV
CY12$TotalHCV <- CY12$PrisonHCV+CY12$COMMUNITYHCV
CY13$TotalHCV <- CY13$PrisonHCV+CY13$COMMUNITYHCV
CY14$TotalHCV <- CY14$PrisonHCV+CY14$COMMUNITYHCV
CY15$TotalHCV <- CY15$PrisonHCV+CY15$COMMUNITYHCV

############Load 50 files from second file
DY1 <- NULL
DY2 <- NULL
DY3 <- NULL
DY4 <- NULL
DY5 <- NULL
DY6 <- NULL
DY7 <- NULL
DY8 <- NULL
DY9 <- NULL
DY10 <- NULL
DY11 <- NULL
DY12 <- NULL
DY13 <- NULL
DY14 <- NULL
DY15 <- NULL
for (var in 1:1)
{
  fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outIncSha80.xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)

colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")

DY1 <- rbind(DY1, tempFile[1:365,])
DY2 <- rbind(DY2, tempFile[366:730,])
DY3 <- rbind(DY3, tempFile[731:1095,])
DY4 <- rbind(DY4, tempFile[1096:1460,])
DY5 <- rbind(DY5, tempFile[1461:1825,])
DY6 <- rbind(DY6, tempFile[1826:2190,])
DY7 <- rbind(DY7, tempFile[2191:2555,])
DY8 <- rbind(DY8, tempFile[2556:2920,])
DY9 <- rbind(DY9, tempFile[2921:3285,])
DY10 <- rbind(DY10, tempFile[3286:3650,]) #YRS
DY11 <- rbind(DY11, tempFile[3651:4015,]) #YRS
DY12 <- rbind(DY12, tempFile[4016:4380,]) #YRS
DY13 <- rbind(DY13, tempFile[4381:4745,]) #YRS
DY14 <- rbind(DY14, tempFile[4746:5110,]) #YRS
DY15 <- rbind(DY15, tempFile[5111:5475,]) #YRS
}

#Create Total Columns for P1 P2 P3
DY1$PminTotal <- DY1$Pmin0+DY1$Pmin1+DY1$Pmin2+DY1$Pmin3+DY1$Pmin4+DY1$Pmin5+DY1$Pmin6+DY1$Pmin7+DY1$Pmin8+DY1$Pmin9+DY1$Pmin10+DY1$Pmin11
DY2$PminTotal <- DY2$Pmin0+DY2$Pmin1+DY2$Pmin2+DY2$Pmin3+DY2$Pmin4+DY2$Pmin5+DY2$Pmin6+DY2$Pmin7+DY2$Pmin8+DY2$Pmin9+DY2$Pmin10+DY2$Pmin11
DY3$PminTotal <- DY3$Pmin0+DY3$Pmin1+DY3$Pmin2+DY3$Pmin3+DY3$Pmin4+DY3$Pmin5+DY3$Pmin6+DY3$Pmin7+DY3$Pmin8+DY3$Pmin9+DY3$Pmin10+DY3$Pmin11
DY4$PminTotal <- DY4$Pmin0+DY4$Pmin1+DY4$Pmin2+DY4$Pmin3+DY4$Pmin4+DY4$Pmin5+DY4$Pmin6+DY4$Pmin7+DY4$Pmin8+DY4$Pmin9+DY4$Pmin10+DY4$Pmin11
DY5$PminTotal <- DY5$Pmin0+DY5$Pmin1+DY5$Pmin2+DY5$Pmin3+DY5$Pmin4+DY5$Pmin5+DY5$Pmin6+DY5$Pmin7+DY5$Pmin8+DY5$Pmin9+DY5$Pmin10+DY5$Pmin11
DY6$PminTotal <- DY6$Pmin0+DY6$Pmin1+DY6$Pmin2+DY6$Pmin3+DY6$Pmin4+DY6$Pmin5+DY6$Pmin6+DY6$Pmin7+DY6$Pmin8+DY6$Pmin9+DY6$Pmin10+DY6$Pmin11
DY7$PminTotal <- DY7$Pmin0+DY7$Pmin1+DY7$Pmin2+DY7$Pmin3+DY7$Pmin4+DY7$Pmin5+DY7$Pmin6+DY7$Pmin7+DY7$Pmin8+DY7$Pmin9+DY7$Pmin10+DY7$Pmin11
DY8$PminTotal <- DY8$Pmin0+DY8$Pmin1+DY8$Pmin2+DY8$Pmin3+DY8$Pmin4+DY8$Pmin5+DY8$Pmin6+DY8$Pmin7+DY8$Pmin8+DY8$Pmin9+DY8$Pmin10+DY8$Pmin11
DY9$PminTotal <- DY9$Pmin0+DY9$Pmin1+DY9$Pmin2+DY9$Pmin3+DY9$Pmin4+DY9$Pmin5+DY9$Pmin6+DY9$Pmin7+DY9$Pmin8+DY9$Pmin9+DY9$Pmin10+DY9$Pmin11
DY10$PminTotal <- DY10$Pmin0+DY10$Pmin1+DY10$Pmin2+DY10$Pmin3+DY10$Pmin4+DY10$Pmin5+DY10$Pmin6+DY10$Pmin7+DY10$Pmin8+DY10$Pmin9+DY10$Pmin10+DY10$Pmin11
DY11$PminTotal <- DY11$Pmin0+DY11$Pmin1+DY11$Pmin2+DY11$Pmin3+DY11$Pmin4+DY11$Pmin5+DY11$Pmin6+DY11$Pmin7+DY11$Pmin8+DY11$Pmin9+DY11$Pmin10+DY11$Pmin11
DY12$PmedTotal <- DY12$Pmed0+DY12$Pmed1+DY12$Pmed2+DY12$Pmed3+DY12$Pmed4+DY12$Pmed5+DY12$Pmed6+DY12$Pmed7+DY12$Pmed8+DY12$Pmed9+DY12$Pmed10+DY12$Pmed11
DY13$PmedTotal <- DY13$Pmed0+DY13$Pmed1+DY13$Pmed2+DY13$Pmed3+DY13$Pmed4+DY13$Pmed5+DY13$Pmed6+DY13$Pmed7+DY13$Pmed8+DY13$Pmed9+DY13$Pmed10+DY13$Pmed11
DY14$PmedTotal <- DY14$Pmed0+DY14$Pmed1+DY14$Pmed2+DY14$Pmed3+DY14$Pmed4+DY14$Pmed5+DY14$Pmed6+DY14$Pmed7+DY14$Pmed8+DY14$Pmed9+DY14$Pmed10+DY14$Pmed11
DY15$PmedTotal <- DY15$Pmed0+DY15$Pmed1+DY15$Pmed2+DY15$Pmed3+DY15$Pmed4+DY15$Pmed5+DY15$Pmed6+DY15$Pmed7+DY15$Pmed8+DY15$Pmed9+DY15$Pmed10+DY15$Pmed11

DY1$PmedTotal <- DY1$Pmed0+DY1$Pmed1+DY1$Pmed2+DY1$Pmed3+DY1$Pmed4+DY1$Pmed5+DY1$Pmed6+DY1$Pmed7+DY1$Pmed8+DY1$Pmed9+DY1$Pmed10+DY1$Pmed11
DY2$PmedTotal <- DY2$Pmed0+DY2$Pmed1+DY2$Pmed2+DY2$Pmed3+DY2$Pmed4+DY2$Pmed5+DY2$Pmed6+DY2$Pmed7+DY2$Pmed8+DY2$Pmed9+DY2$Pmed10+DY2$Pmed11
DY3$PmedTotal <- DY3$Pmed0+DY3$Pmed1+DY3$Pmed2+DY3$Pmed3+DY3$Pmed4+DY3$Pmed5+DY3$Pmed6+DY3$Pmed7+DY3$Pmed8+DY3$Pmed9+DY3$Pmed10+DY3$Pmed11
DY4$PmedTotal <- DY4$Pmed0+DY4$Pmed1+DY4$Pmed2+DY4$Pmed3+DY4$Pmed4+DY4$Pmed5+DY4$Pmed6+DY4$Pmed7+DY4$Pmed8+DY4$Pmed9+DY4$Pmed10+DY4$Pmed11
DY5$PmedTotal <- DY5$Pmed0+DY5$Pmed1+DY5$Pmed2+DY5$Pmed3+DY5$Pmed4+DY5$Pmed5+DY5$Pmed6+DY5$Pmed7+DY5$Pmed8+DY5$Pmed9+DY5$Pmed10+DY5$Pmed11
DY6$PmedTotal <- DY6$Pmed0+DY6$Pmed1+DY6$Pmed2+DY6$Pmed3+DY6$Pmed4+DY6$Pmed5+DY6$Pmed6+DY6$Pmed7+DY6$Pmed8+DY6$Pmed9+DY6$Pmed10+DY6$Pmed11
DY7$PmedTotal <- DY7$Pmed0+DY7$Pmed1+DY7$Pmed2+DY7$Pmed3+DY7$Pmed4+DY7$Pmed5+DY7$Pmed6+DY7$Pmed7+DY7$Pmed8+DY7$Pmed9+DY7$Pmed10+DY7$Pmed11
DY8$PmedTotal <- DY8$Pmed0+DY8$Pmed1+DY8$Pmed2+DY8$Pmed3+DY8$Pmed4+DY8$Pmed5+DY8$Pmed6+DY8$Pmed7+DY8$Pmed8+DY8$Pmed9+DY8$Pmed10+DY8$Pmed11
DY9$PmedTotal <- DY9$Pmed0+DY9$Pmed1+DY9$Pmed2+DY9$Pmed3+DY9$Pmed4+DY9$Pmed5+DY9$Pmed6+DY9$Pmed7+DY9$Pmed8+DY9$Pmed9+DY9$Pmed10+DY9$Pmed11
DY10$PmedTotal <- DY10$Pmed0+DY10$Pmed1+DY10$Pmed2+DY10$Pmed3+DY10$Pmed4+DY10$Pmed5+DY10$Pmed6+DY10$Pmed7+DY10$Pmed8+DY10$Pmed9+DY10$Pmed10+DY10$Pmed11
DY11$PmedTotal <- DY11$Pmed0+DY11$Pmed1+DY11$Pmed2+DY11$Pmed3+DY11$Pmed4+DY11$Pmed5+DY11$Pmed6+DY11$Pmed7+DY11$Pmed8+DY11$Pmed9+DY11$Pmed10+DY11$Pmed11
DY12$PmedTotal <- DY12$Pmed0+DY12$Pmed1+DY12$Pmed2+DY12$Pmed3+DY12$Pmed4+DY12$Pmed5+DY12$Pmed6+DY12$Pmed7+DY12$Pmed8+DY12$Pmed9+DY12$Pmed10+DY12$Pmed11
DY13$PmedTotal <- DY13$Pmed0+DY13$Pmed1+DY13$Pmed2+DY13$Pmed3+DY13$Pmed4+DY13$Pmed5+DY13$Pmed6+DY13$Pmed7+DY13$Pmed8+DY13$Pmed9+DY13$Pmed10+DY13$Pmed11
DY14$PmedTotal <- DY14$Pmed0+DY14$Pmed1+DY14$Pmed2+DY14$Pmed3+DY14$Pmed4+DY14$Pmed5+DY14$Pmed6+DY14$Pmed7+DY14$Pmed8+DY14$Pmed9+DY14$Pmed10+DY14$Pmed11
DY15$PmedTotal <- DY15$Pmed0+DY15$Pmed1+DY15$Pmed2+DY15$Pmed3+DY15$Pmed4+DY15$Pmed5+DY15$Pmed6+DY15$Pmed7+DY15$Pmed8+DY15$Pmed9+DY15$Pmed10+DY15$Pmed11

DY1$PmaxTotal <- DY1$Pmax0+DY1$Pmax1+DY1$Pmax2+DY1$Pmax3+DY1$Pmax4+DY1$Pmax5+DY1$Pmax6+DY1$Pmax7+DY1$Pmax8+DY1$Pmax9+DY1$Pmax10+DY1$Pmax11
DY2$PmaxTotal <- DY2$Pmax0+DY2$Pmax1+DY2$Pmax2+DY2$Pmax3+DY2$Pmax4+DY2$Pmax5+DY2$Pmax6+DY2$Pmax7+DY2$Pmax8+DY2$Pmax9+DY2$Pmax10+DY2$Pmax11
DY3$PmaxTotal <- DY3$Pmax0+DY3$Pmax1+DY3$Pmax2+DY3$Pmax3+DY3$Pmax4+DY3$Pmax5+DY3$Pmax6+DY3$Pmax7+DY3$Pmax8+DY3$Pmax9+DY3$Pmax10+DY3$Pmax11
DY4$PmaxTotal <- DY4$Pmax0+DY4$Pmax1+DY4$Pmax2+DY4$Pmax3+DY4$Pmax4+DY4$Pmax5+DY4$Pmax6+DY4$Pmax7+DY4$Pmax8+DY4$Pmax9+DY4$Pmax10+DY4$Pmax11
DY5$PmaxTotal <- DY5$Pmax0+DY5$Pmax1+DY5$Pmax2+DY5$Pmax3+DY5$Pmax4+DY5$Pmax5+DY5$Pmax6+DY5$Pmax7+DY5$Pmax8+DY5$Pmax9+DY5$Pmax10+DY5$Pmax11
DY6$PmaxTotal <- DY6$Pmax0+DY6$Pmax1+DY6$Pmax2+DY6$Pmax3+DY6$Pmax4+DY6$Pmax5+DY6$Pmax6+DY6$Pmax7+DY6$Pmax8+DY6$Pmax9+DY6$Pmax10+DY6$Pmax11
DY7$PmaxTotal <- DY7$Pmax0+DY7$Pmax1+DY7$Pmax2+DY7$Pmax3+DY7$Pmax4+DY7$Pmax5+DY7$Pmax6+DY7$Pmax7+DY7$Pmax8+DY7$Pmax9+DY7$Pmax10+DY7$Pmax11
DY8$PmaxTotal <- DY8$Pmax0+DY8$Pmax1+DY8$Pmax2+DY8$Pmax3+DY8$Pmax4+DY8$Pmax5+DY8$Pmax6+DY8$Pmax7+DY8$Pmax8+DY8$Pmax9+DY8$Pmax10+DY8$Pmax11
DY9$PmaxTotal <- DY9$Pmax0+DY9$Pmax1+DY9$Pmax2+DY9$Pmax3+DY9$Pmax4+DY9$Pmax5+DY9$Pmax6+DY9$Pmax7+DY9$Pmax8+DY9$Pmax9+DY9$Pmax10+DY9$Pmax11
DY10$PmaxTotal <- DY10$Pmax0+DY10$Pmax1+DY10$Pmax2+DY10$Pmax3+DY10$Pmax4+DY10$Pmax5+DY10$Pmax6+DY10$Pmax7+DY10$Pmax8+DY10$Pmax9+DY10$Pmax10+DY10$Pmax11
DY11$PmaxTotal <- DY11$Pmax0+DY11$Pmax1+DY11$Pmax2+DY11$Pmax3+DY11$Pmax4+DY11$Pmax5+DY11$Pmax6+DY11$Pmax7+DY11$Pmax8+DY11$Pmax9+DY11$Pmax10+DY11$Pmax11
DY12$PmaxTotal <- DY12$Pmax0+DY12$Pmax1+DY12$Pmax2+DY12$Pmax3+DY12$Pmax4+DY12$Pmax5+DY12$Pmax6+DY12$Pmax7+DY12$Pmax8+DY12$Pmax9+DY12$Pmax10+DY12$Pmax11
DY13$PmaxTotal <- DY13$Pmax0+DY13$Pmax1+DY13$Pmax2+DY13$Pmax3+DY13$Pmax4+DY13$Pmax5+DY13$Pmax6+DY13$Pmax7+DY13$Pmax8+DY13$Pmax9+DY13$Pmax10+DY13$Pmax11
DY14$PmaxTotal <- DY14$Pmax0+DY14$Pmax1+DY14$Pmax2+DY14$Pmax3+DY14$Pmax4+DY14$Pmax5+DY14$Pmax6+DY14$Pmax7+DY14$Pmax8+DY14$Pmax9+DY14$Pmax10+DY14$Pmax11
DY15$PmaxTotal <- DY15$Pmax0+DY15$Pmax1+DY15$Pmax2+DY15$Pmax3+DY15$Pmax4+DY15$Pmax5+DY15$Pmax6+DY15$Pmax7+DY15$Pmax8+DY15$Pmax9+DY15$Pmax10+DY15$Pmax11

#Incidence and Prevalence
#Create total IDU columns
DY1$TotalIDU <- DY1$Pmin0+DY1$Pmin1+DY1$Pmin2+DY1$Pmin3+DY1$Pmin4+DY1$Pmin5+DY1$Pmed0+DY1$Pmed1+DY1$Pmed2+DY1$Pmed3+DY1$Pmed4+DY1$Pmed5+DY1$Pmax0+DY1$Pmax1+DY1$Pmax2+DY1$Pmax3+DY1$Pmax4+DY1$Pmax5
DY2$TotalIDU <- DY2$Pmin0+DY2$Pmin1+DY2$Pmin2+DY2$Pmin3+DY2$Pmin4+DY2$Pmin5+DY2$Pmed0+DY2$Pmed1+DY2$Pmed2+DY2$Pmed3+DY2$Pmed4+DY2$Pmed5+DY2$Pmax0+DY2$Pmax1+DY2$Pmax2+DY2$Pmax3+DY2$Pmax4+DY2$Pmax5
DY3$TotalIDU <- DY3$Pmin0+DY3$Pmin1+DY3$Pmin2+DY3$Pmin3+DY3$Pmin4+DY3$Pmin5+DY3$Pmed0+DY3$Pmed1+DY3$Pmed2+DY3$Pmed3+DY3$Pmed4+DY3$Pmed5+DY3$Pmax0+DY3$Pmax1+DY3$Pmax2+DY3$Pmax3+DY3$Pmax4+DY3$Pmax5
DY4$TotalIDU <- DY4$Pmin0+DY4$Pmin1+DY4$Pmin2+DY4$Pmin3+DY4$Pmin4+DY4$Pmin5+DY4$Pmed0+DY4$Pmed1+DY4$Pmed2+DY4$Pmed3+DY4$Pmed4+DY4$Pmed5+DY4$Pmax0+DY4$Pmax1+DY4$Pmax2+DY4$Pmax3+DY4$Pmax4+DY4$Pmax5
DY5$TotalIDU <- DY5$Pmin0+DY5$Pmin1+DY5$Pmin2+DY5$Pmin3+DY5$Pmin4+DY5$Pmin5+DY5$Pmed0+DY5$Pmed1+DY5$Pmed2+DY5$Pmed3+DY5$Pmed4+DY5$Pmed5+DY5$Pmax0+DY5$Pmax1+DY5$Pmax2+DY5$Pmax3+DY5$Pmax4+DY5$Pmax5
DY6$TotalIDU <- DY6$Pmin0+DY6$Pmin1+DY6$Pmin2+DY6$Pmin3+DY6$Pmin4+DY6$Pmin5+DY6$Pmed0+DY6$Pmed1+DY6$Pmed2+DY6$Pmed3+DY6$Pmed4+DY6$Pmed5+DY6$Pmax0+DY6$Pmax1+DY6$Pmax2+DY6$Pmax3+DY6$Pmax4+DY6$Pmax5
DY7$TotalIDU <- DY7$Pmin0+DY7$Pmin1+DY7$Pmin2+DY7$Pmin3+DY7$Pmin4+DY7$Pmin5+DY7$Pmed0+DY7$Pmed1+DY7$Pmed2+DY7$Pmed3+DY7$Pmed4+DY7$Pmed5+DY7$Pmax0+DY7$Pmax1+DY7$Pmax2+DY7$Pmax3+DY7$Pmax4+DY7$Pmax5
DY8$TotalIDU <- DY8$Pmin0+DY8$Pmin1+DY8$Pmin2+DY8$Pmin3+DY8$Pmin4+DY8$Pmin5+DY8$Pmed0+DY8$Pmed1+DY8$Pmed2+DY8$Pmed3+DY8$Pmed4+DY8$Pmed5+DY8$Pmax0+DY8$Pmax1+DY8$Pmax2+DY8$Pmax3+DY8$Pmax4+DY8$Pmax5
DY9$TotalIDU <- DY9$Pmin0+DY9$Pmin1+DY9$Pmin2+DY9$Pmin3+DY9$Pmin4+DY9$Pmin5+DY9$Pmed0+DY9$Pmed1+DY9$Pmed2+DY9$Pmed3+DY9$Pmed4+DY9$Pmed5+DY9$Pmax0+DY9$Pmax1+DY9$Pmax2+DY9$Pmax3+DY9$Pmax4+DY9$Pmax5
DY10$TotalIDU <- DY10$Pmin0+DY10$Pmin1+DY10$Pmin2+DY10$Pmin3+DY10$Pmin4+DY10$Pmin5+DY10$Pmed0+DY10$Pmed1+DY10$Pmed2+DY10$Pmed3+DY10$Pmed4+DY10$Pmed5+DY10$Pmax0+DY10$Pmax1+DY10$Pmax2+DY10$Pmax3+DY10$Pmax4+DY10$Pmax5
DY11$TotalIDU <- DY11$Pmin0+DY11$Pmin1+DY11$Pmin2+DY11$Pmin3+DY11$Pmin4+DY11$Pmin5+DY11$Pmed0+DY11$Pmed1+DY11$Pmed2+DY11$Pmed3+DY11$Pmed4+DY11$Pmed5+DY11$Pmax0+DY11$Pmax1+DY11$Pmax2+DY11$Pmax3+DY11$Pmax4+DY11$Pmax5
DY12$TotalIDU <- DY12$Pmin0+DY12$Pmin1+DY12$Pmin2+DY12$Pmin3+DY12$Pmin4+DY12$Pmin5+DY12$Pmed0+DY12$Pmed1+DY12$Pmed2+DY12$Pmed3+DY12$Pmed4+DY12$Pmed5+DY12$Pmax0+DY12$Pmax1+DY12$Pmax2+DY12$Pmax3+DY12$Pmax4+DY12$Pmax5
DY13$TotalIDU <- DY13$Pmin0+DY13$Pmin1+DY13$Pmin2+DY13$Pmin3+DY13$Pmin4+DY13$Pmin5+DY13$Pmed0+DY13$Pmed1+DY13$Pmed2+DY13$Pmed3+DY13$Pmed4+DY13$Pmed5+DY13$Pmax0+DY13$Pmax1+DY13$Pmax2+DY13$Pmax3+DY13$Pmax4+DY13$Pmax5
DY14$TotalIDU <- DY14$Pmin0+DY14$Pmin1+DY14$Pmin2+DY14$Pmin3+DY14$Pmin4+DY14$Pmin5+DY14$Pmed0+DY14$Pmed1+DY14$Pmed2+DY14$Pmed3+DY14$Pmed4+DY14$Pmed5+DY14$Pmax0+DY14$Pmax1+DY14$Pmax2+DY14$Pmax3+DY14$Pmax4+DY14$Pmax5
DY15$TotalIDU <- DY15$Pmin0+DY15$Pmin1+DY15$Pmin2+DY15$Pmin3+DY15$Pmin4+DY15$Pmin5+DY15$Pmed0+DY15$Pmed1+DY15$Pmed2+DY15$Pmed3+DY15$Pmed4+DY15$Pmed5+DY15$Pmax0+DY15$Pmax1+DY15$Pmax2+DY15$Pmax3+DY15$Pmax4+DY15$Pmax5

DY1$TotalHCV <- DY1$PrisonHCV+DY1$COMMUNITYHCV
DY2$TotalHCV <- DY2$PrisonHCV+DY2$COMMUNITYHCV
DY3$TotalHCV <- DY3$PrisonHCV+DY3$COMMUNITYHCV
DY4$TotalHCV <- DY4$PrisonHCV+DY4$COMMUNITYHCV
DY5$TotalHCV <- DY5$PrisonHCV+DY5$COMMUNITYHCV
DY6$TotalHCV <- DY6$PrisonHCV+DY6$COMMUNITYHCV
DY7$TotalHCV <- DY7$PrisonHCV+DY7$COMMUNITYHCV
DY8$TotalHCV <- DY8$PrisonHCV+DY8$COMMUNITYHCV
DY9$TotalHCV <- DY9$PrisonHCV+DY9$COMMUNITYHCV
DY10$TotalHCV <- DY10$PrisonHCV+DY10$COMMUNITYHCV
DY11$TotalHCV <- DY11$PrisonHCV+DY11$COMMUNITYHCV
DY12$TotalHCV <- DY12$PrisonHCV+DY12$COMMUNITYHCV
DY13$TotalHCV <- DY13$PrisonHCV+DY13$COMMUNITYHCV
DY14$TotalHCV <- DY14$PrisonHCV+DY14$COMMUNITYHCV
DY15$TotalHCV <- DY15$PrisonHCV+DY15$COMMUNITYHCV

############Load 50 files from second file
EY1 <- NULL
EY2 <- NULL
EY3 <- NULL
EY4 <- NULL
EY5 <- NULL
EY6 <- NULL
EY7 <- NULL
EY8 <- NULL
EY9 <- NULL
EY10 <- NULL
EY11 <- NULL
EY12 <- NULL
EY13 <- NULL
EY14 <- NULL
EY15 <- NULL
for (var in 1:1)
{
  fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outRedSha50.xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)

colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")

EY1 <- rbind(EY1, tempFile[1:365,])
EY2 <- rbind(EY2, tempFile[366:730,])
EY3 <- rbind(EY3, tempFile[731:1095,])
EY4 <- rbind(EY4, tempFile[1096:1460,])
EY5 <- rbind(EY5, tempFile[1461:1825,])
EY6 <- rbind(EY6, tempFile[1826:2190,])
EY7 <- rbind(EY7, tempFile[2191:2555,])
EY8 <- rbind(EY8, tempFile[2556:2920,])
EY9 <- rbind(EY9, tempFile[2921:3285,])
EY10 <- rbind(EY10, tempFile[3286:3650,]) #YRS
EY11 <- rbind(EY11, tempFile[3651:4015,]) #YRS
EY12 <- rbind(EY12, tempFile[4016:4380,]) #YRS
EY13 <- rbind(EY13, tempFile[4381:4745,]) #YRS
EY14 <- rbind(EY14, tempFile[4746:5110,]) #YRS
EY15 <- rbind(EY15, tempFile[5111:5475,]) #YRS
}

#Create Total Columns for P1 P2 P3
EY1$PminTotal <- EY1$Pmin0+EY1$Pmin1+EY1$Pmin2+EY1$Pmin3+EY1$Pmin4+EY1$Pmin5+EY1$Pmin6+EY1$Pmin7+EY1$Pmin8+EY1$Pmin9+EY1$Pmin10+EY1$Pmin11
EY2$PminTotal <- EY2$Pmin0+EY2$Pmin1+EY2$Pmin2+EY2$Pmin3+EY2$Pmin4+EY2$Pmin5+EY2$Pmin6+EY2$Pmin7+EY2$Pmin8+EY2$Pmin9+EY2$Pmin10+EY2$Pmin11
EY3$PminTotal <- EY3$Pmin0+EY3$Pmin1+EY3$Pmin2+EY3$Pmin3+EY3$Pmin4+EY3$Pmin5+EY3$Pmin6+EY3$Pmin7+EY3$Pmin8+EY3$Pmin9+EY3$Pmin10+EY3$Pmin11
EY4$PminTotal <- EY4$Pmin0+EY4$Pmin1+EY4$Pmin2+EY4$Pmin3+EY4$Pmin4+EY4$Pmin5+EY4$Pmin6+EY4$Pmin7+EY4$Pmin8+EY4$Pmin9+EY4$Pmin10+EY4$Pmin11
EY5$PminTotal <- EY5$Pmin0+EY5$Pmin1+EY5$Pmin2+EY5$Pmin3+EY5$Pmin4+EY5$Pmin5+EY5$Pmin6+EY5$Pmin7+EY5$Pmin8+EY5$Pmin9+EY5$Pmin10+EY5$Pmin11
EY6$PminTotal <- EY6$Pmin0+EY6$Pmin1+EY6$Pmin2+EY6$Pmin3+EY6$Pmin4+EY6$Pmin5+EY6$Pmin6+EY6$Pmin7+EY6$Pmin8+EY6$Pmin9+EY6$Pmin10+EY6$Pmin11
EY7$PminTotal <- EY7$Pmin0+EY7$Pmin1+EY7$Pmin2+EY7$Pmin3+EY7$Pmin4+EY7$Pmin5+EY7$Pmin6+EY7$Pmin7+EY7$Pmin8+EY7$Pmin9+EY7$Pmin10+EY7$Pmin11
EY8$PminTotal <- EY8$Pmin0+EY8$Pmin1+EY8$Pmin2+EY8$Pmin3+EY8$Pmin4+EY8$Pmin5+EY8$Pmin6+EY8$Pmin7+EY8$Pmin8+EY8$Pmin9+EY8$Pmin10+EY8$Pmin11
EY9$PminTotal <- EY9$Pmin0+EY9$Pmin1+EY9$Pmin2+EY9$Pmin3+EY9$Pmin4+EY9$Pmin5+EY9$Pmin6+EY9$Pmin7+EY9$Pmin8+EY9$Pmin9+EY9$Pmin10+EY9$Pmin11
EY10$PminTotal <- EY10$Pmin0+EY10$Pmin1+EY10$Pmin2+EY10$Pmin3+EY10$Pmin4+EY10$Pmin5+EY10$Pmin6+EY10$Pmin7+EY10$Pmin8+EY10$Pmin9+EY10$Pmin10+EY10$Pmin11
EY11$PminTotal <- EY11$Pmin0+EY11$Pmin1+EY11$Pmin2+EY11$Pmin3+EY11$Pmin4+EY11$Pmin5+EY11$Pmin6+EY11$Pmin7+EY11$Pmin8+EY11$Pmin9+EY11$Pmin10+EY11$Pmin11
EY12$PmedTotal <- EY12$Pmed0+EY12$Pmed1+EY12$Pmed2+EY12$Pmed3+EY12$Pmed4+EY12$Pmed5+EY12$Pmed6+EY12$Pmed7+EY12$Pmed8+EY12$Pmed9+EY12$Pmed10+EY12$Pmed11
EY13$PmedTotal <- EY13$Pmed0+EY13$Pmed1+EY13$Pmed2+EY13$Pmed3+EY13$Pmed4+EY13$Pmed5+EY13$Pmed6+EY13$Pmed7+EY13$Pmed8+EY13$Pmed9+EY13$Pmed10+EY13$Pmed11
EY14$PmedTotal <- EY14$Pmed0+EY14$Pmed1+EY14$Pmed2+EY14$Pmed3+EY14$Pmed4+EY14$Pmed5+EY14$Pmed6+EY14$Pmed7+EY14$Pmed8+EY14$Pmed9+EY14$Pmed10+EY14$Pmed11
EY15$PmedTotal <- EY15$Pmed0+EY15$Pmed1+EY15$Pmed2+EY15$Pmed3+EY15$Pmed4+EY15$Pmed5+EY15$Pmed6+EY15$Pmed7+EY15$Pmed8+EY15$Pmed9+EY15$Pmed10+EY15$Pmed11

EY1$PmedTotal <- EY1$Pmed0+EY1$Pmed1+EY1$Pmed2+EY1$Pmed3+EY1$Pmed4+EY1$Pmed5+EY1$Pmed6+EY1$Pmed7+EY1$Pmed8+EY1$Pmed9+EY1$Pmed10+EY1$Pmed11
EY2$PmedTotal <- EY2$Pmed0+EY2$Pmed1+EY2$Pmed2+EY2$Pmed3+EY2$Pmed4+EY2$Pmed5+EY2$Pmed6+EY2$Pmed7+EY2$Pmed8+EY2$Pmed9+EY2$Pmed10+EY2$Pmed11
EY3$PmedTotal <- EY3$Pmed0+EY3$Pmed1+EY3$Pmed2+EY3$Pmed3+EY3$Pmed4+EY3$Pmed5+EY3$Pmed6+EY3$Pmed7+EY3$Pmed8+EY3$Pmed9+EY3$Pmed10+EY3$Pmed11
EY4$PmedTotal <- EY4$Pmed0+EY4$Pmed1+EY4$Pmed2+EY4$Pmed3+EY4$Pmed4+EY4$Pmed5+EY4$Pmed6+EY4$Pmed7+EY4$Pmed8+EY4$Pmed9+EY4$Pmed10+EY4$Pmed11
EY5$PmedTotal <- EY5$Pmed0+EY5$Pmed1+EY5$Pmed2+EY5$Pmed3+EY5$Pmed4+EY5$Pmed5+EY5$Pmed6+EY5$Pmed7+EY5$Pmed8+EY5$Pmed9+EY5$Pmed10+EY5$Pmed11
EY6$PmedTotal <- EY6$Pmed0+EY6$Pmed1+EY6$Pmed2+EY6$Pmed3+EY6$Pmed4+EY6$Pmed5+EY6$Pmed6+EY6$Pmed7+EY6$Pmed8+EY6$Pmed9+EY6$Pmed10+EY6$Pmed11
EY7$PmedTotal <- EY7$Pmed0+EY7$Pmed1+EY7$Pmed2+EY7$Pmed3+EY7$Pmed4+EY7$Pmed5+EY7$Pmed6+EY7$Pmed7+EY7$Pmed8+EY7$Pmed9+EY7$Pmed10+EY7$Pmed11
EY8$PmedTotal <- EY8$Pmed0+EY8$Pmed1+EY8$Pmed2+EY8$Pmed3+EY8$Pmed4+EY8$Pmed5+EY8$Pmed6+EY8$Pmed7+EY8$Pmed8+EY8$Pmed9+EY8$Pmed10+EY8$Pmed11
EY9$PmedTotal <- EY9$Pmed0+EY9$Pmed1+EY9$Pmed2+EY9$Pmed3+EY9$Pmed4+EY9$Pmed5+EY9$Pmed6+EY9$Pmed7+EY9$Pmed8+EY9$Pmed9+EY9$Pmed10+EY9$Pmed11
EY10$PmedTotal <- EY10$Pmed0+EY10$Pmed1+EY10$Pmed2+EY10$Pmed3+EY10$Pmed4+EY10$Pmed5+EY10$Pmed6+EY10$Pmed7+EY10$Pmed8+EY10$Pmed9+EY10$Pmed10+EY10$Pmed11
EY11$PmedTotal <- EY11$Pmed0+EY11$Pmed1+EY11$Pmed2+EY11$Pmed3+EY11$Pmed4+EY11$Pmed5+EY11$Pmed6+EY11$Pmed7+EY11$Pmed8+EY11$Pmed9+EY11$Pmed10+EY11$Pmed11
EY12$PmedTotal <- EY12$Pmed0+EY12$Pmed1+EY12$Pmed2+EY12$Pmed3+EY12$Pmed4+EY12$Pmed5+EY12$Pmed6+EY12$Pmed7+EY12$Pmed8+EY12$Pmed9+EY12$Pmed10+EY12$Pmed11
EY13$PmedTotal <- EY13$Pmed0+EY13$Pmed1+EY13$Pmed2+EY13$Pmed3+EY13$Pmed4+EY13$Pmed5+EY13$Pmed6+EY13$Pmed7+EY13$Pmed8+EY13$Pmed9+EY13$Pmed10+EY13$Pmed11
EY14$PmedTotal <- EY14$Pmed0+EY14$Pmed1+EY14$Pmed2+EY14$Pmed3+EY14$Pmed4+EY14$Pmed5+EY14$Pmed6+EY14$Pmed7+EY14$Pmed8+EY14$Pmed9+EY14$Pmed10+EY14$Pmed11
EY15$PmedTotal <- EY15$Pmed0+EY15$Pmed1+EY15$Pmed2+EY15$Pmed3+EY15$Pmed4+EY15$Pmed5+EY15$Pmed6+EY15$Pmed7+EY15$Pmed8+EY15$Pmed9+EY15$Pmed10+EY15$Pmed11

EY1$PmaxTotal <- EY1$Pmax0+EY1$Pmax1+EY1$Pmax2+EY1$Pmax3+EY1$Pmax4+EY1$Pmax5+EY1$Pmax6+EY1$Pmax7+EY1$Pmax8+EY1$Pmax9+EY1$Pmax10+EY1$Pmax11
EY2$PmaxTotal <- EY2$Pmax0+EY2$Pmax1+EY2$Pmax2+EY2$Pmax3+EY2$Pmax4+EY2$Pmax5+EY2$Pmax6+EY2$Pmax7+EY2$Pmax8+EY2$Pmax9+EY2$Pmax10+EY2$Pmax11
EY3$PmaxTotal <- EY3$Pmax0+EY3$Pmax1+EY3$Pmax2+EY3$Pmax3+EY3$Pmax4+EY3$Pmax5+EY3$Pmax6+EY3$Pmax7+EY3$Pmax8+EY3$Pmax9+EY3$Pmax10+EY3$Pmax11
EY4$PmaxTotal <- EY4$Pmax0+EY4$Pmax1+EY4$Pmax2+EY4$Pmax3+EY4$Pmax4+EY4$Pmax5+EY4$Pmax6+EY4$Pmax7+EY4$Pmax8+EY4$Pmax9+EY4$Pmax10+EY4$Pmax11
EY5$PmaxTotal <- EY5$Pmax0+EY5$Pmax1+EY5$Pmax2+EY5$Pmax3+EY5$Pmax4+EY5$Pmax5+EY5$Pmax6+EY5$Pmax7+EY5$Pmax8+EY5$Pmax9+EY5$Pmax10+EY5$Pmax11
EY6$PmaxTotal <- EY6$Pmax0+EY6$Pmax1+EY6$Pmax2+EY6$Pmax3+EY6$Pmax4+EY6$Pmax5+EY6$Pmax6+EY6$Pmax7+EY6$Pmax8+EY6$Pmax9+EY6$Pmax10+EY6$Pmax11
EY7$PmaxTotal <- EY7$Pmax0+EY7$Pmax1+EY7$Pmax2+EY7$Pmax3+EY7$Pmax4+EY7$Pmax5+EY7$Pmax6+EY7$Pmax7+EY7$Pmax8+EY7$Pmax9+EY7$Pmax10+EY7$Pmax11
EY8$PmaxTotal <- EY8$Pmax0+EY8$Pmax1+EY8$Pmax2+EY8$Pmax3+EY8$Pmax4+EY8$Pmax5+EY8$Pmax6+EY8$Pmax7+EY8$Pmax8+EY8$Pmax9+EY8$Pmax10+EY8$Pmax11
EY9$PmaxTotal <- EY9$Pmax0+EY9$Pmax1+EY9$Pmax2+EY9$Pmax3+EY9$Pmax4+EY9$Pmax5+EY9$Pmax6+EY9$Pmax7+EY9$Pmax8+EY9$Pmax9+EY9$Pmax10+EY9$Pmax11
EY10$PmaxTotal <- EY10$Pmax0+EY10$Pmax1+EY10$Pmax2+EY10$Pmax3+EY10$Pmax4+EY10$Pmax5+EY10$Pmax6+EY10$Pmax7+EY10$Pmax8+EY10$Pmax9+EY10$Pmax10+EY10$Pmax11
EY11$PmaxTotal <- EY11$Pmax0+EY11$Pmax1+EY11$Pmax2+EY11$Pmax3+EY11$Pmax4+EY11$Pmax5+EY11$Pmax6+EY11$Pmax7+EY11$Pmax8+EY11$Pmax9+EY11$Pmax10+EY11$Pmax11
EY12$PmaxTotal <- EY12$Pmax0+EY12$Pmax1+EY12$Pmax2+EY12$Pmax3+EY12$Pmax4+EY12$Pmax5+EY12$Pmax6+EY12$Pmax7+EY12$Pmax8+EY12$Pmax9+EY12$Pmax10+EY12$Pmax11
EY13$PmaxTotal <- EY13$Pmax0+EY13$Pmax1+EY13$Pmax2+EY13$Pmax3+EY13$Pmax4+EY13$Pmax5+EY13$Pmax6+EY13$Pmax7+EY13$Pmax8+EY13$Pmax9+EY13$Pmax10+EY13$Pmax11
EY14$PmaxTotal <- EY14$Pmax0+EY14$Pmax1+EY14$Pmax2+EY14$Pmax3+EY14$Pmax4+EY14$Pmax5+EY14$Pmax6+EY14$Pmax7+EY14$Pmax8+EY14$Pmax9+EY14$Pmax10+EY14$Pmax11
EY15$PmaxTotal <- EY15$Pmax0+EY15$Pmax1+EY15$Pmax2+EY15$Pmax3+EY15$Pmax4+EY15$Pmax5+EY15$Pmax6+EY15$Pmax7+EY15$Pmax8+EY15$Pmax9+EY15$Pmax10+EY15$Pmax11

#Incidence and Prevalence
#Create total IDU columns
EY1$TotalIDU <- EY1$Pmin0+EY1$Pmin1+EY1$Pmin2+EY1$Pmin3+EY1$Pmin4+EY1$Pmin5+EY1$Pmed0+EY1$Pmed1+EY1$Pmed2+EY1$Pmed3+EY1$Pmed4+EY1$Pmed5+EY1$Pmax0+EY1$Pmax1+EY1$Pmax2+EY1$Pmax3+EY1$Pmax4+EY1$Pmax5
EY2$TotalIDU <- EY2$Pmin0+EY2$Pmin1+EY2$Pmin2+EY2$Pmin3+EY2$Pmin4+EY2$Pmin5+EY2$Pmed0+EY2$Pmed1+EY2$Pmed2+EY2$Pmed3+EY2$Pmed4+EY2$Pmed5+EY2$Pmax0+EY2$Pmax1+EY2$Pmax2+EY2$Pmax3+EY2$Pmax4+EY2$Pmax5
EY3$TotalIDU <- EY3$Pmin0+EY3$Pmin1+EY3$Pmin2+EY3$Pmin3+EY3$Pmin4+EY3$Pmin5+EY3$Pmed0+EY3$Pmed1+EY3$Pmed2+EY3$Pmed3+EY3$Pmed4+EY3$Pmed5+EY3$Pmax0+EY3$Pmax1+EY3$Pmax2+EY3$Pmax3+EY3$Pmax4+EY3$Pmax5
EY4$TotalIDU <- EY4$Pmin0+EY4$Pmin1+EY4$Pmin2+EY4$Pmin3+EY4$Pmin4+EY4$Pmin5+EY4$Pmed0+EY4$Pmed1+EY4$Pmed2+EY4$Pmed3+EY4$Pmed4+EY4$Pmed5+EY4$Pmax0+EY4$Pmax1+EY4$Pmax2+EY4$Pmax3+EY4$Pmax4+EY4$Pmax5
EY5$TotalIDU <- EY5$Pmin0+EY5$Pmin1+EY5$Pmin2+EY5$Pmin3+EY5$Pmin4+EY5$Pmin5+EY5$Pmed0+EY5$Pmed1+EY5$Pmed2+EY5$Pmed3+EY5$Pmed4+EY5$Pmed5+EY5$Pmax0+EY5$Pmax1+EY5$Pmax2+EY5$Pmax3+EY5$Pmax4+EY5$Pmax5
EY6$TotalIDU <- EY6$Pmin0+EY6$Pmin1+EY6$Pmin2+EY6$Pmin3+EY6$Pmin4+EY6$Pmin5+EY6$Pmed0+EY6$Pmed1+EY6$Pmed2+EY6$Pmed3+EY6$Pmed4+EY6$Pmed5+EY6$Pmax0+EY6$Pmax1+EY6$Pmax2+EY6$Pmax3+EY6$Pmax4+EY6$Pmax5
EY7$TotalIDU <- EY7$Pmin0+EY7$Pmin1+EY7$Pmin2+EY7$Pmin3+EY7$Pmin4+EY7$Pmin5+EY7$Pmed0+EY7$Pmed1+EY7$Pmed2+EY7$Pmed3+EY7$Pmed4+EY7$Pmed5+EY7$Pmax0+EY7$Pmax1+EY7$Pmax2+EY7$Pmax3+EY7$Pmax4+EY7$Pmax5
EY8$TotalIDU <- EY8$Pmin0+EY8$Pmin1+EY8$Pmin2+EY8$Pmin3+EY8$Pmin4+EY8$Pmin5+EY8$Pmed0+EY8$Pmed1+EY8$Pmed2+EY8$Pmed3+EY8$Pmed4+EY8$Pmed5+EY8$Pmax0+EY8$Pmax1+EY8$Pmax2+EY8$Pmax3+EY8$Pmax4+EY8$Pmax5
EY9$TotalIDU <- EY9$Pmin0+EY9$Pmin1+EY9$Pmin2+EY9$Pmin3+EY9$Pmin4+EY9$Pmin5+EY9$Pmed0+EY9$Pmed1+EY9$Pmed2+EY9$Pmed3+EY9$Pmed4+EY9$Pmed5+EY9$Pmax0+EY9$Pmax1+EY9$Pmax2+EY9$Pmax3+EY9$Pmax4+EY9$Pmax5
EY10$TotalIDU <- EY10$Pmin0+EY10$Pmin1+EY10$Pmin2+EY10$Pmin3+EY10$Pmin4+EY10$Pmin5+EY10$Pmed0+EY10$Pmed1+EY10$Pmed2+EY10$Pmed3+EY10$Pmed4+EY10$Pmed5+EY10$Pmax0+EY10$Pmax1+EY10$Pmax2+EY10$Pmax3+EY10$Pmax4+EY10$Pmax5
EY11$TotalIDU <- EY11$Pmin0+EY11$Pmin1+EY11$Pmin2+EY11$Pmin3+EY11$Pmin4+EY11$Pmin5+EY11$Pmed0+EY11$Pmed1+EY11$Pmed2+EY11$Pmed3+EY11$Pmed4+EY11$Pmed5+EY11$Pmax0+EY11$Pmax1+EY11$Pmax2+EY11$Pmax3+EY11$Pmax4+EY11$Pmax5
EY12$TotalIDU <- EY12$Pmin0+EY12$Pmin1+EY12$Pmin2+EY12$Pmin3+EY12$Pmin4+EY12$Pmin5+EY12$Pmed0+EY12$Pmed1+EY12$Pmed2+EY12$Pmed3+EY12$Pmed4+EY12$Pmed5+EY12$Pmax0+EY12$Pmax1+EY12$Pmax2+EY12$Pmax3+EY12$Pmax4+EY12$Pmax5
EY13$TotalIDU <- EY13$Pmin0+EY13$Pmin1+EY13$Pmin2+EY13$Pmin3+EY13$Pmin4+EY13$Pmin5+EY13$Pmed0+EY13$Pmed1+EY13$Pmed2+EY13$Pmed3+EY13$Pmed4+EY13$Pmed5+EY13$Pmax0+EY13$Pmax1+EY13$Pmax2+EY13$Pmax3+EY13$Pmax4+EY13$Pmax5
EY14$TotalIDU <- EY14$Pmin0+EY14$Pmin1+EY14$Pmin2+EY14$Pmin3+EY14$Pmin4+EY14$Pmin5+EY14$Pmed0+EY14$Pmed1+EY14$Pmed2+EY14$Pmed3+EY14$Pmed4+EY14$Pmed5+EY14$Pmax0+EY14$Pmax1+EY14$Pmax2+EY14$Pmax3+EY14$Pmax4+EY14$Pmax5
EY15$TotalIDU <- EY15$Pmin0+EY15$Pmin1+EY15$Pmin2+EY15$Pmin3+EY15$Pmin4+EY15$Pmin5+EY15$Pmed0+EY15$Pmed1+EY15$Pmed2+EY15$Pmed3+EY15$Pmed4+EY15$Pmed5+EY15$Pmax0+EY15$Pmax1+EY15$Pmax2+EY15$Pmax3+EY15$Pmax4+EY15$Pmax5

EY1$TotalHCV <- EY1$PrisonHCV+EY1$COMMUNITYHCV
EY2$TotalHCV <- EY2$PrisonHCV+EY2$COMMUNITYHCV
EY3$TotalHCV <- EY3$PrisonHCV+EY3$COMMUNITYHCV
EY4$TotalHCV <- EY4$PrisonHCV+EY4$COMMUNITYHCV
EY5$TotalHCV <- EY5$PrisonHCV+EY5$COMMUNITYHCV
EY6$TotalHCV <- EY6$PrisonHCV+EY6$COMMUNITYHCV
EY7$TotalHCV <- EY7$PrisonHCV+EY7$COMMUNITYHCV
EY8$TotalHCV <- EY8$PrisonHCV+EY8$COMMUNITYHCV
EY9$TotalHCV <- EY9$PrisonHCV+EY9$COMMUNITYHCV
EY10$TotalHCV <- EY10$PrisonHCV+EY10$COMMUNITYHCV

EY1$TotalHCV <- EY1$PrisonHCV+EY1$COMMUNITYHCV
EY2$TotalHCV <- EY2$PrisonHCV+EY2$COMMUNITYHCV
EY3$TotalHCV <- EY3$PrisonHCV+EY3$COMMUNITYHCV
EY4$TotalHCV <- EY4$PrisonHCV+EY4$COMMUNITYHCV
EY5$TotalHCV <- EY5$PrisonHCV+EY5$COMMUNITYHCV
EY6$TotalHCV <- EY6$PrisonHCV+EY6$COMMUNITYHCV
EY7$TotalHCV <- EY7$PrisonHCV+EY7$COMMUNITYHCV
EY8$TotalHCV <- EY8$PrisonHCV+EY8$COMMUNITYHCV
EY9$TotalHCV <- EY9$PrisonHCV+EY9$COMMUNITYHCV
EY10$TotalHCV <- EY10$PrisonHCV+EY10$COMMUNITYHCV
EY11$TotalHCV <- EY11$PrisonHCV+EY11$COMMUNITYHCV
EY12$TotalHCV <- EY12$PrisonHCV+EY12$COMMUNITYHCV
EY13$TotalHCV <- EY13$PrisonHCV+EY13$COMMUNITYHCV
EY14$TotalHCV <- EY14$PrisonHCV+EY14$COMMUNITYHCV
EY15$TotalHCV <- EY15$PrisonHCV+EY15$COMMUNITYHCV

############Load 50 files from second file
FY1 <- NULL
FY2 <- NULL
FY3 <- NULL
FY4 <- NULL
FY5 <- NULL
FY6 <- NULL
FY7 <- NULL
FY8 <- NULL
FY9 <- NULL
FY10 <- NULL
FY11 <- NULL
FY12 <- NULL
FY13 <- NULL
FY14 <- NULL
FY15 <- NULL
for (var in 1:1)
{
  fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outRedSha80.xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)

colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")

FY1 <- rbind(FY1, tempFile[1:365,])
FY2 <- rbind(FY2, tempFile[366:730,])
FY3 <- rbind(FY3, tempFile[731:1095,])
FY4 <- rbind(FY4, tempFile[1096:1460,])
FY5 <- rbind(FY5, tempFile[1461:1825,])
FY6 <- rbind(FY6, tempFile[1826:2190,])
FY7 <- rbind(FY7, tempFile[2191:2555,])
FY8 <- rbind(FY8, tempFile[2556:2920,])
FY9 <- rbind(FY9, tempFile[2921:3285,])
FY10 <- rbind(FY10, tempFile[3286:3650,]) #YRS
FY11 <- rbind(FY11, tempFile[3651:4015,]) #YRS
FY12 <- rbind(FY12, tempFile[4016:4380,]) #YRS
FY13 <- rbind(FY13, tempFile[4381:4745,]) #YRS
FY14 <- rbind(FY14, tempFile[4746:5110,]) #YRS
FY15 <- rbind(FY15, tempFile[5111:5475,]) #YRS
}

#Create Total Columns for P1 P2 P3
FY1$PminTotal <- FY1$Pmin0+FY1$Pmin1+FY1$Pmin2+FY1$Pmin3+FY1$Pmin4+FY1$Pmin5+FY1$Pmin6+FY1$Pmin7+FY1$Pmin8+FY1$Pmin9+FY1$Pmin10+FY1$Pmin11
FY2$PminTotal <- FY2$Pmin0+FY2$Pmin1+FY2$Pmin2+FY2$Pmin3+FY2$Pmin4+FY2$Pmin5+FY2$Pmin6+FY2$Pmin7+FY2$Pmin8+FY2$Pmin9+FY2$Pmin10+FY2$Pmin11
FY3$PminTotal <- FY3$Pmin0+FY3$Pmin1+FY3$Pmin2+FY3$Pmin3+FY3$Pmin4+FY3$Pmin5+FY3$Pmin6+FY3$Pmin7+FY3$Pmin8+FY3$Pmin9+FY3$Pmin10+FY3$Pmin11
FY4$PminTotal <- FY4$Pmin0+FY4$Pmin1+FY4$Pmin2+FY4$Pmin3+FY4$Pmin4+FY4$Pmin5+FY4$Pmin6+FY4$Pmin7+FY4$Pmin8+FY4$Pmin9+FY4$Pmin10+FY4$Pmin11
FY5$PminTotal <- FY5$Pmin0+FY5$Pmin1+FY5$Pmin2+FY5$Pmin3+FY5$Pmin4+FY5$Pmin5+FY5$Pmin6+FY5$Pmin7+FY5$Pmin8+FY5$Pmin9+FY5$Pmin10+FY5$Pmin11
FY6$PminTotal <- FY6$Pmin0+FY6$Pmin1+FY6$Pmin2+FY6$Pmin3+FY6$Pmin4+FY6$Pmin5+FY6$Pmin6+FY6$Pmin7+FY6$Pmin8+FY6$Pmin9+FY6$Pmin10+FY6$Pmin11
FY7$PminTotal <- FY7$Pmin0+FY7$Pmin1+FY7$Pmin2+FY7$Pmin3+FY7$Pmin4+FY7$Pmin5+FY7$Pmin6+FY7$Pmin7+FY7$Pmin8+FY7$Pmin9+FY7$Pmin10+FY7$Pmin11
FY8$PminTotal <- FY8$Pmin0+FY8$Pmin1+FY8$Pmin2+FY8$Pmin3+FY8$Pmin4+FY8$Pmin5+FY8$Pmin6+FY8$Pmin7+FY8$Pmin8+FY8$Pmin9+FY8$Pmin10+FY8$Pmin11
FY9$PminTotal <- FY9$Pmin0+FY9$Pmin1+FY9$Pmin2+FY9$Pmin3+FY9$Pmin4+FY9$Pmin5+FY9$Pmin6+FY9$Pmin7+FY9$Pmin8+FY9$Pmin9+FY9$Pmin10+FY9$Pmin11
FY10$PminTotal <- FY10$Pmin0+FY10$Pmin1+FY10$Pmin2+FY10$Pmin3+FY10$Pmin4+FY10$Pmin5+FY10$Pmin6+FY10$Pmin7+FY10$Pmin8+FY10$Pmin9+FY10$Pmin10+FY10$Pmin11
FY11$PminTotal <- FY11$Pmin0+FY11$Pmin1+FY11$Pmin2+FY11$Pmin3+FY11$Pmin4+FY11$Pmin5+FY11$Pmin6+FY11$Pmin7+FY11$Pmin8+FY11$Pmin9+FY11$Pmin10+FY11$Pmin11
FY12$PmedTotal <- FY12$Pmed0+FY12$Pmed1+FY12$Pmed2+FY12$Pmed3+FY12$Pmed4+FY12$Pmed5+FY12$Pmed6+FY12$Pmed7+FY12$Pmed8+FY12$Pmed9+FY12$Pmed10+FY12$Pmed11
FY13$PmedTotal <- FY13$Pmed0+FY13$Pmed1+FY13$Pmed2+FY13$Pmed3+FY13$Pmed4+FY13$Pmed5+FY13$Pmed6+FY13$Pmed7+FY13$Pmed8+FY13$Pmed9+FY13$Pmed10+FY13$Pmed11
FY14$PmedTotal <- FY14$Pmed0+FY14$Pmed1+FY14$Pmed2+FY14$Pmed3+FY14$Pmed4+FY14$Pmed5+FY14$Pmed6+FY14$Pmed7+FY14$Pmed8+FY14$Pmed9+FY14$Pmed10+FY14$Pmed11
FY15$PmedTotal <- FY15$Pmed0+FY15$Pmed1+FY15$Pmed2+FY15$Pmed3+FY15$Pmed4+FY15$Pmed5+FY15$Pmed6+FY15$Pmed7+FY15$Pmed8+FY15$Pmed9+FY15$Pmed10+FY15$Pmed11

FY1$PmedTotal <- FY1$Pmed0+FY1$Pmed1+FY1$Pmed2+FY1$Pmed3+FY1$Pmed4+FY1$Pmed5+FY1$Pmed6+FY1$Pmed7+FY1$Pmed8+FY1$Pmed9+FY1$Pmed10+FY1$Pmed11
FY2$PmedTotal <- FY2$Pmed0+FY2$Pmed1+FY2$Pmed2+FY2$Pmed3+FY2$Pmed4+FY2$Pmed5+FY2$Pmed6+FY2$Pmed7+FY2$Pmed8+FY2$Pmed9+FY2$Pmed10+FY2$Pmed11
FY3$PmedTotal <- FY3$Pmed0+FY3$Pmed1+FY3$Pmed2+FY3$Pmed3+FY3$Pmed4+FY3$Pmed5+FY3$Pmed6+FY3$Pmed7+FY3$Pmed8+FY3$Pmed9+FY3$Pmed10+FY3$Pmed11
FY4$PmedTotal <- FY4$Pmed0+FY4$Pmed1+FY4$Pmed2+FY4$Pmed3+FY4$Pmed4+FY4$Pmed5+FY4$Pmed6+FY4$Pmed7+FY4$Pmed8+FY4$Pmed9+FY4$Pmed10+FY4$Pmed11
FY5$PmedTotal <- FY5$Pmed0+FY5$Pmed1+FY5$Pmed2+FY5$Pmed3+FY5$Pmed4+FY5$Pmed5+FY5$Pmed6+FY5$Pmed7+FY5$Pmed8+FY5$Pmed9+FY5$Pmed10+FY5$Pmed11
FY6$PmedTotal <- FY6$Pmed0+FY6$Pmed1+FY6$Pmed2+FY6$Pmed3+FY6$Pmed4+FY6$Pmed5+FY6$Pmed6+FY6$Pmed7+FY6$Pmed8+FY6$Pmed9+FY6$Pmed10+FY6$Pmed11
FY7$PmedTotal <- FY7$Pmed0+FY7$Pmed1+FY7$Pmed2+FY7$Pmed3+FY7$Pmed4+FY7$Pmed5+FY7$Pmed6+FY7$Pmed7+FY7$Pmed8+FY7$Pmed9+FY7$Pmed10+FY7$Pmed11
FY8$PmedTotal <- FY8$Pmed0+FY8$Pmed1+FY8$Pmed2+FY8$Pmed3+FY8$Pmed4+FY8$Pmed5+FY8$Pmed6+FY8$Pmed7+FY8$Pmed8+FY8$Pmed9+FY8$Pmed10+FY8$Pmed11
FY9$PmedTotal <- FY9$Pmed0+FY9$Pmed1+FY9$Pmed2+FY9$Pmed3+FY9$Pmed4+FY9$Pmed5+FY9$Pmed6+FY9$Pmed7+FY9$Pmed8+FY9$Pmed9+FY9$Pmed10+FY9$Pmed11
FY10$PmedTotal <- FY10$Pmed0+FY10$Pmed1+FY10$Pmed2+FY10$Pmed3+FY10$Pmed4+FY10$Pmed5+FY10$Pmed6+FY10$Pmed7+FY10$Pmed8+FY10$Pmed9+FY10$Pmed10+FY10$Pmed11
FY11$PmedTotal <- FY11$Pmed0+FY11$Pmed1+FY11$Pmed2+FY11$Pmed3+FY11$Pmed4+FY11$Pmed5+FY11$Pmed6+FY11$Pmed7+FY11$Pmed8+FY11$Pmed9+FY11$Pmed10+FY11$Pmed11
FY12$PmedTotal <- FY12$Pmed0+FY12$Pmed1+FY12$Pmed2+FY12$Pmed3+FY12$Pmed4+FY12$Pmed5+FY12$Pmed6+FY12$Pmed7+FY12$Pmed8+FY12$Pmed9+FY12$Pmed10+FY12$Pmed11
FY13$PmedTotal <- FY13$Pmed0+FY13$Pmed1+FY13$Pmed2+FY13$Pmed3+FY13$Pmed4+FY13$Pmed5+FY13$Pmed6+FY13$Pmed7+FY13$Pmed8+FY13$Pmed9+FY13$Pmed10+FY13$Pmed11
FY14$PmedTotal <- FY14$Pmed0+FY14$Pmed1+FY14$Pmed2+FY14$Pmed3+FY14$Pmed4+FY14$Pmed5+FY14$Pmed6+FY14$Pmed7+FY14$Pmed8+FY14$Pmed9+FY14$Pmed10+FY14$Pmed11
FY15$PmedTotal <- FY15$Pmed0+FY15$Pmed1+FY15$Pmed2+FY15$Pmed3+FY15$Pmed4+FY15$Pmed5+FY15$Pmed6+FY15$Pmed7+FY15$Pmed8+FY15$Pmed9+FY15$Pmed10+FY15$Pmed11

FY1$PmaxTotal <- FY1$Pmax0+FY1$Pmax1+FY1$Pmax2+FY1$Pmax3+FY1$Pmax4+FY1$Pmax5+FY1$Pmax6+FY1$Pmax7+FY1$Pmax8+FY1$Pmax9+FY1$Pmax10+FY1$Pmax11
FY2$PmaxTotal <- FY2$Pmax0+FY2$Pmax1+FY2$Pmax2+FY2$Pmax3+FY2$Pmax4+FY2$Pmax5+FY2$Pmax6+FY2$Pmax7+FY2$Pmax8+FY2$Pmax9+FY2$Pmax10+FY2$Pmax11
FY3$PmaxTotal <- FY3$Pmax0+FY3$Pmax1+FY3$Pmax2+FY3$Pmax3+FY3$Pmax4+FY3$Pmax5+FY3$Pmax6+FY3$Pmax7+FY3$Pmax8+FY3$Pmax9+FY3$Pmax10+FY3$Pmax11
FY4$PmaxTotal <- FY4$Pmax0+FY4$Pmax1+FY4$Pmax2+FY4$Pmax3+FY4$Pmax4+FY4$Pmax5+FY4$Pmax6+FY4$Pmax7+FY4$Pmax8+FY4$Pmax9+FY4$Pmax10+FY4$Pmax11
FY5$PmaxTotal <- FY5$Pmax0+FY5$Pmax1+FY5$Pmax2+FY5$Pmax3+FY5$Pmax4+FY5$Pmax5+FY5$Pmax6+FY5$Pmax7+FY5$Pmax8+FY5$Pmax9+FY5$Pmax10+FY5$Pmax11
FY6$PmaxTotal <- FY6$Pmax0+FY6$Pmax1+FY6$Pmax2+FY6$Pmax3+FY6$Pmax4+FY6$Pmax5+FY6$Pmax6+FY6$Pmax7+FY6$Pmax8+FY6$Pmax9+FY6$Pmax10+FY6$Pmax11
FY7$PmaxTotal <- FY7$Pmax0+FY7$Pmax1+FY7$Pmax2+FY7$Pmax3+FY7$Pmax4+FY7$Pmax5+FY7$Pmax6+FY7$Pmax7+FY7$Pmax8+FY7$Pmax9+FY7$Pmax10+FY7$Pmax11
FY8$PmaxTotal <- FY8$Pmax0+FY8$Pmax1+FY8$Pmax2+FY8$Pmax3+FY8$Pmax4+FY8$Pmax5+FY8$Pmax6+FY8$Pmax7+FY8$Pmax8+FY8$Pmax9+FY8$Pmax10+FY8$Pmax11
FY9$PmaxTotal <- FY9$Pmax0+FY9$Pmax1+FY9$Pmax2+FY9$Pmax3+FY9$Pmax4+FY9$Pmax5+FY9$Pmax6+FY9$Pmax7+FY9$Pmax8+FY9$Pmax9+FY9$Pmax10+FY9$Pmax11
FY10$PmaxTotal <- FY10$Pmax0+FY10$Pmax1+FY10$Pmax2+FY10$Pmax3+FY10$Pmax4+FY10$Pmax5+FY10$Pmax6+FY10$Pmax7+FY10$Pmax8+FY10$Pmax9+FY10$Pmax10+FY10$Pmax11
FY11$PmaxTotal <- FY11$Pmax0+FY11$Pmax1+FY11$Pmax2+FY11$Pmax3+FY11$Pmax4+FY11$Pmax5+FY11$Pmax6+FY11$Pmax7+FY11$Pmax8+FY11$Pmax9+FY11$Pmax10+FY11$Pmax11
FY12$PmaxTotal <- FY12$Pmax0+FY12$Pmax1+FY12$Pmax2+FY12$Pmax3+FY12$Pmax4+FY12$Pmax5+FY12$Pmax6+FY12$Pmax7+FY12$Pmax8+FY12$Pmax9+FY12$Pmax10+FY12$Pmax11
FY13$PmaxTotal <- FY13$Pmax0+FY13$Pmax1+FY13$Pmax2+FY13$Pmax3+FY13$Pmax4+FY13$Pmax5+FY13$Pmax6+FY13$Pmax7+FY13$Pmax8+FY13$Pmax9+FY13$Pmax10+FY13$Pmax11
FY14$PmaxTotal <- FY14$Pmax0+FY14$Pmax1+FY14$Pmax2+FY14$Pmax3+FY14$Pmax4+FY14$Pmax5+FY14$Pmax6+FY14$Pmax7+FY14$Pmax8+FY14$Pmax9+FY14$Pmax10+FY14$Pmax11
FY15$PmaxTotal <- FY15$Pmax0+FY15$Pmax1+FY15$Pmax2+FY15$Pmax3+FY15$Pmax4+FY15$Pmax5+FY15$Pmax6+FY15$Pmax7+FY15$Pmax8+FY15$Pmax9+FY15$Pmax10+FY15$Pmax11

#Incidence and Prevalence
#Create total IDU columns
FY1$TotalIDU <- FY1$Pmin0+FY1$Pmin1+FY1$Pmin2+FY1$Pmin3+FY1$Pmin4+FY1$Pmin5+FY1$Pmed0+FY1$Pmed1+FY1$Pmed2+FY1$Pmed3+FY1$Pmed4+FY1$Pmed5+FY1$Pmax0+FY1$Pmax1+FY1$Pmax2+FY1$Pmax3+FY1$Pmax4+FY1$Pmax5
FY2$TotalIDU <- FY2$Pmin0+FY2$Pmin1+FY2$Pmin2+FY2$Pmin3+FY2$Pmin4+FY2$Pmin5+FY2$Pmed0+FY2$Pmed1+FY2$Pmed2+FY2$Pmed3+FY2$Pmed4+FY2$Pmed5+FY2$Pmax0+FY2$Pmax1+FY2$Pmax2+FY2$Pmax3+FY2$Pmax4+FY2$Pmax5
FY3$TotalIDU <- FY3$Pmin0+FY3$Pmin1+FY3$Pmin2+FY3$Pmin3+FY3$Pmin4+FY3$Pmin5+FY3$Pmed0+FY3$Pmed1+FY3$Pmed2+FY3$Pmed3+FY3$Pmed4+FY3$Pmed5+FY3$Pmax0+FY3$Pmax1+FY3$Pmax2+FY3$Pmax3+FY3$Pmax4+FY3$Pmax5
FY4$TotalIDU <- FY4$Pmin0+FY4$Pmin1+FY4$Pmin2+FY4$Pmin3+FY4$Pmin4+FY4$Pmin5+FY4$Pmed0+FY4$Pmed1+FY4$Pmed2+FY4$Pmed3+FY4$Pmed4+FY4$Pmed5+FY4$Pmax0+FY4$Pmax1+FY4$Pmax2+FY4$Pmax3+FY4$Pmax4+FY4$Pmax5
FY5$TotalIDU <- FY5$Pmin0+FY5$Pmin1+FY5$Pmin2+FY5$Pmin3+FY5$Pmin4+FY5$Pmin5+FY5$Pmed0+FY5$Pmed1+FY5$Pmed2+FY5$Pmed3+FY5$Pmed4+FY5$Pmed5+FY5$Pmax0+FY5$Pmax1+FY5$Pmax2+FY5$Pmax3+FY5$Pmax4+FY5$Pmax5
FY6$TotalIDU <- FY6$Pmin0+FY6$Pmin1+FY6$Pmin2+FY6$Pmin3+FY6$Pmin4+FY6$Pmin5+FY6$Pmed0+FY6$Pmed1+FY6$Pmed2+FY6$Pmed3+FY6$Pmed4+FY6$Pmed5+FY6$Pmax0+FY6$Pmax1+FY6$Pmax2+FY6$Pmax3+FY6$Pmax4+FY6$Pmax5
FY7$TotalIDU <- FY7$Pmin0+FY7$Pmin1+FY7$Pmin2+FY7$Pmin3+FY7$Pmin4+FY7$Pmin5+FY7$Pmed0+FY7$Pmed1+FY7$Pmed2+FY7$Pmed3+FY7$Pmed4+FY7$Pmed5+FY7$Pmax0+FY7$Pmax1+FY7$Pmax2+FY7$Pmax3+FY7$Pmax4+FY7$Pmax5
FY8$TotalIDU <- FY8$Pmin0+FY8$Pmin1+FY8$Pmin2+FY8$Pmin3+FY8$Pmin4+FY8$Pmin5+FY8$Pmed0+FY8$Pmed1+FY8$Pmed2+FY8$Pmed3+FY8$Pmed4+FY8$Pmed5+FY8$Pmax0+FY8$Pmax1+FY8$Pmax2+FY8$Pmax3+FY8$Pmax4+FY8$Pmax5
FY9$TotalIDU <- FY9$Pmin0+FY9$Pmin1+FY9$Pmin2+FY9$Pmin3+FY9$Pmin4+FY9$Pmin5+FY9$Pmed0+FY9$Pmed1+FY9$Pmed2+FY9$Pmed3+FY9$Pmed4+FY9$Pmed5+FY9$Pmax0+FY9$Pmax1+FY9$Pmax2+FY9$Pmax3+FY9$Pmax4+FY9$Pmax5
FY10$TotalIDU <- FY10$Pmin0+FY10$Pmin1+FY10$Pmin2+FY10$Pmin3+FY10$Pmin4+FY10$Pmin5+FY10$Pmed0+FY10$Pmed1+FY10$Pmed2+FY10$Pmed3+FY10$Pmed4+FY10$Pmed5+FY10$Pmax0+FY10$Pmax1+FY10$Pmax2+FY10$Pmax3+FY10$Pmax4+FY10$Pmax5
FY11$TotalIDU <- FY11$Pmin0+FY11$Pmin1+FY11$Pmin2+FY11$Pmin3+FY11$Pmin4+FY11$Pmin5+FY11$Pmed0+FY11$Pmed1+FY11$Pmed2+FY11$Pmed3+FY11$Pmed4+FY11$Pmed5+FY11$Pmax0+FY11$Pmax1+FY11$Pmax2+FY11$Pmax3+FY11$Pmax4+FY11$Pmax5
FY12$TotalIDU <- FY12$Pmin0+FY12$Pmin1+FY12$Pmin2+FY12$Pmin3+FY12$Pmin4+FY12$Pmin5+FY12$Pmed0+FY12$Pmed1+FY12$Pmed2+FY12$Pmed3+FY12$Pmed4+FY12$Pmed5+FY12$Pmax0+FY12$Pmax1+FY12$Pmax2+FY12$Pmax3+FY12$Pmax4+FY12$Pmax5
FY13$TotalIDU <- FY13$Pmin0+FY13$Pmin1+FY13$Pmin2+FY13$Pmin3+FY13$Pmin4+FY13$Pmin5+FY13$Pmed0+FY13$Pmed1+FY13$Pmed2+FY13$Pmed3+FY13$Pmed4+FY13$Pmed5+FY13$Pmax0+FY13$Pmax1+FY13$Pmax2+FY13$Pmax3+FY13$Pmax4+FY13$Pmax5
FY14$TotalIDU <- FY14$Pmin0+FY14$Pmin1+FY14$Pmin2+FY14$Pmin3+FY14$Pmin4+FY14$Pmin5+FY14$Pmed0+FY14$Pmed1+FY14$Pmed2+FY14$Pmed3+FY14$Pmed4+FY14$Pmed5+FY14$Pmax0+FY14$Pmax1+FY14$Pmax2+FY14$Pmax3+FY14$Pmax4+FY14$Pmax5
FY15$TotalIDU <- FY15$Pmin0+FY15$Pmin1+FY15$Pmin2+FY15$Pmin3+FY15$Pmin4+FY15$Pmin5+FY15$Pmed0+FY15$Pmed1+FY15$Pmed2+FY15$Pmed3+FY15$Pmed4+FY15$Pmed5+FY15$Pmax0+FY15$Pmax1+FY15$Pmax2+FY15$Pmax3+FY15$Pmax4+FY15$Pmax5

FY1$TotalHCV <- FY1$PrisonHCV+FY1$COMMUNITYHCV
FY2$TotalHCV <- FY2$PrisonHCV+FY2$COMMUNITYHCV
FY3$TotalHCV <- FY3$PrisonHCV+FY3$COMMUNITYHCV
FY4$TotalHCV <- FY4$PrisonHCV+FY4$COMMUNITYHCV
FY5$TotalHCV <- FY5$PrisonHCV+FY5$COMMUNITYHCV
FY6$TotalHCV <- FY6$PrisonHCV+FY6$COMMUNITYHCV
FY7$TotalHCV <- FY7$PrisonHCV+FY7$COMMUNITYHCV
FY8$TotalHCV <- FY8$PrisonHCV+FY8$COMMUNITYHCV
FY9$TotalHCV <- FY9$PrisonHCV+FY9$COMMUNITYHCV
FY10$TotalHCV <- FY10$PrisonHCV+FY10$COMMUNITYHCV

FY1$TotalHCV <- FY1$PrisonHCV+FY1$COMMUNITYHCV
FY2$TotalHCV <- FY2$PrisonHCV+FY2$COMMUNITYHCV
FY3$TotalHCV <- FY3$PrisonHCV+FY3$COMMUNITYHCV
FY4$TotalHCV <- FY4$PrisonHCV+FY4$COMMUNITYHCV
FY5$TotalHCV <- FY5$PrisonHCV+FY5$COMMUNITYHCV
FY6$TotalHCV <- FY6$PrisonHCV+FY6$COMMUNITYHCV
FY7$TotalHCV <- FY7$PrisonHCV+FY7$COMMUNITYHCV
FY8$TotalHCV <- FY8$PrisonHCV+FY8$COMMUNITYHCV
FY9$TotalHCV <- FY9$PrisonHCV+FY9$COMMUNITYHCV
FY10$TotalHCV <- FY10$PrisonHCV+FY10$COMMUNITYHCV
FY11$TotalHCV <- FY11$PrisonHCV+FY11$COMMUNITYHCV
FY12$TotalHCV <- FY12$PrisonHCV+FY12$COMMUNITYHCV
FY13$TotalHCV <- FY13$PrisonHCV+FY13$COMMUNITYHCV
FY14$TotalHCV <- FY14$PrisonHCV+FY14$COMMUNITYHCV
FY15$TotalHCV <- FY15$PrisonHCV+FY15$COMMUNITYHCV

############Load 50 files from second file
GY1 <- NULL
GY2 <- NULL
GY3 <- NULL
GY4 <- NULL
GY5 <- NULL
GY6 <- NULL
GY7 <- NULL
GY8 <- NULL
GY9 <- NULL
GY10 <- NULL
GY11 <- NULL
GY12 <- NULL
GY13 <- NULL
GY14 <- NULL
GY15 <- NULL
for (var in 1:20)
{
fileName <- paste("~/Dropbox/HCV Model/HCV New Model/HCV Model/calibration/Final Calibration Sets/final scenarios/sharing probability/increase 50p/out", var, ".csv", sep="")
tempFile <- read.csv(fileName, sep="\t",header=TRUE)

colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")

GY1 <- rbind(GY1, tempFile[1:365,])
GY2 <- rbind(GY2, tempFile[366:730,])
GY3 <- rbind(GY3, tempFile[731:1095,])
GY4 <- rbind(GY4, tempFile[1096:1460,])
GY5 <- rbind(GY5, tempFile[1461:1825,])
GY6 <- rbind(GY6, tempFile[1826:2190,])
GY7 <- rbind(GY7, tempFile[2191:2555,])
GY8 <- rbind(GY8, tempFile[2556:2920,])
GY9 <- rbind(GY9, tempFile[2921:3285,])
GY10 <- rbind(GY10, tempFile[3286:3650,]) #YRS
GY11 <- rbind(GY11, tempFile[3651:4015,]) #YRS
GY12 <- rbind(GY12, tempFile[4016:4380,]) #YRS
GY13 <- rbind(GY13, tempFile[4381:4745,]) #YRS
GY14 <- rbind(GY14, tempFile[4746:5110,]) #YRS
GY15 <- rbind(GY15, tempFile[5111:5475,]) #YRS
}

#Create Total Columns for P1 P2 P3
GY1$PminTotal <- GY1$Pmin0+GY1$Pmin1+GY1$Pmin2+GY1$Pmin3+GY1$Pmin4+GY1$Pmin5+GY1$Pmin6+GY1$Pmin7+GY1$Pmin8+GY1$Pmin9+GY1$Pmin10+GY1$Pmin11
GY2$PminTotal <- GY2$Pmin0+GY2$Pmin1+GY2$Pmin2+GY2$Pmin3+GY2$Pmin4+GY2$Pmin5+GY2$Pmin6+GY2$Pmin7+GY2$Pmin8+GY2$Pmin9+GY2$Pmin10+GY2$Pmin11
GY3$PminTotal <- GY3$Pmin0+GY3$Pmin1+GY3$Pmin2+GY3$Pmin3+GY3$Pmin4+GY3$Pmin5+GY3$Pmin6+GY3$Pmin7+GY3$Pmin8+GY3$Pmin9+GY3$Pmin10+GY3$Pmin11
GY4$PminTotal <- GY4$Pmin0+GY4$Pmin1+GY4$Pmin2+GY4$Pmin3+GY4$Pmin4+GY4$Pmin5+GY4$Pmin6+GY4$Pmin7+GY4$Pmin8+GY4$Pmin9+GY4$Pmin10+GY4$Pmin11
GY5$PminTotal <- GY5$Pmin0+GY5$Pmin1+GY5$Pmin2+GY5$Pmin3+GY5$Pmin4+GY5$Pmin5+GY5$Pmin6+GY5$Pmin7+GY5$Pmin8+GY5$Pmin9+GY5$Pmin10+GY5$Pmin11
GY6$PminTotal <- GY6$Pmin0+GY6$Pmin1+GY6$Pmin2+GY6$Pmin3+GY6$Pmin4+GY6$Pmin5+GY6$Pmin6+GY6$Pmin7+GY6$Pmin8+GY6$Pmin9+GY6$Pmin10+GY6$Pmin11
GY7$PminTotal <- GY7$Pmin0+GY7$Pmin1+GY7$Pmin2+GY7$Pmin3+GY7$Pmin4+GY7$Pmin5+GY7$Pmin6+GY7$Pmin7+GY7$Pmin8+GY7$Pmin9+GY7$Pmin10+GY7$Pmin11
GY8$PminTotal <- GY8$Pmin0+GY8$Pmin1+GY8$Pmin2+GY8$Pmin3+GY8$Pmin4+GY8$Pmin5+GY8$Pmin6+GY8$Pmin7+GY8$Pmin8+GY8$Pmin9+GY8$Pmin10+GY8$Pmin11
GY9$PminTotal <- GY9$Pmin0+GY9$Pmin1+GY9$Pmin2+GY9$Pmin3+GY9$Pmin4+GY9$Pmin5+GY9$Pmin6+GY9$Pmin7+GY9$Pmin8+GY9$Pmin9+GY9$Pmin10+GY9$Pmin11
GY10$PminTotal <- GY10$Pmin0+GY10$Pmin1+GY10$Pmin2+GY10$Pmin3+GY10$Pmin4+GY10$Pmin5+GY10$Pmin6+GY10$Pmin7+GY10$Pmin8+GY10$Pmin9+GY10$Pmin10+GY10$Pmin11
GY11$PminTotal <- GY11$Pmin0+GY11$Pmin1+GY11$Pmin2+GY11$Pmin3+GY11$Pmin4+GY11$Pmin5+GY11$Pmin6+GY11$Pmin7+GY11$Pmin8+GY11$Pmin9+GY11$Pmin10+GY11$Pmin11
GY12$PmedTotal <- GY12$Pmed0+GY12$Pmed1+GY12$Pmed2+GY12$Pmed3+GY12$Pmed4+GY12$Pmed5+GY12$Pmed6+GY12$Pmed7+GY12$Pmed8+GY12$Pmed9+GY12$Pmed10+GY12$Pmed11
GY13$PmedTotal <- GY13$Pmed0+GY13$Pmed1+GY13$Pmed2+GY13$Pmed3+GY13$Pmed4+GY13$Pmed5+GY13$Pmed6+GY13$Pmed7+GY13$Pmed8+GY13$Pmed9+GY13$Pmed10+GY13$Pmed11
GY14$PmedTotal <- GY14$Pmed0+GY14$Pmed1+GY14$Pmed2+GY14$Pmed3+GY14$Pmed4+GY14$Pmed5+GY14$Pmed6+GY14$Pmed7+GY14$Pmed8+GY14$Pmed9+GY14$Pmed10+GY14$Pmed11
GY15$PmedTotal <- GY15$Pmed0+GY15$Pmed1+GY15$Pmed2+GY15$Pmed3+GY15$Pmed4+GY15$Pmed5+GY15$Pmed6+GY15$Pmed7+GY15$Pmed8+GY15$Pmed9+GY15$Pmed10+GY15$Pmed11

GY1$PmedTotal <- GY1$Pmed0+GY1$Pmed1+GY1$Pmed2+GY1$Pmed3+GY1$Pmed4+GY1$Pmed5+GY1$Pmed6+GY1$Pmed7+GY1$Pmed8+GY1$Pmed9+GY1$Pmed10+GY1$Pmed11
GY2$PmedTotal <- GY2$Pmed0+GY2$Pmed1+GY2$Pmed2+GY2$Pmed3+GY2$Pmed4+GY2$Pmed5+GY2$Pmed6+GY2$Pmed7+GY2$Pmed8+GY2$Pmed9+GY2$Pmed10+GY2$Pmed11
GY3$PmedTotal <- GY3$Pmed0+GY3$Pmed1+GY3$Pmed2+GY3$Pmed3+GY3$Pmed4+GY3$Pmed5+GY3$Pmed6+GY3$Pmed7+GY3$Pmed8+GY3$Pmed9+GY3$Pmed10+GY3$Pmed11
GY4$PmedTotal <- GY4$Pmed0+GY4$Pmed1+GY4$Pmed2+GY4$Pmed3+GY4$Pmed4+GY4$Pmed5+GY4$Pmed6+GY4$Pmed7+GY4$Pmed8+GY4$Pmed9+GY4$Pmed10+GY4$Pmed11
GY5$PmedTotal <- GY5$Pmed0+GY5$Pmed1+GY5$Pmed2+GY5$Pmed3+GY5$Pmed4+GY5$Pmed5+GY5$Pmed6+GY5$Pmed7+GY5$Pmed8+GY5$Pmed9+GY5$Pmed10+GY5$Pmed11
GY6$PmedTotal <- GY6$Pmed0+GY6$Pmed1+GY6$Pmed2+GY6$Pmed3+GY6$Pmed4+GY6$Pmed5+GY6$Pmed6+GY6$Pmed7+GY6$Pmed8+GY6$Pmed9+GY6$Pmed10+GY6$Pmed11
GY7$PmedTotal <- GY7$Pmed0+GY7$Pmed1+GY7$Pmed2+GY7$Pmed3+GY7$Pmed4+GY7$Pmed5+GY7$Pmed6+GY7$Pmed7+GY7$Pmed8+GY7$Pmed9+GY7$Pmed10+GY7$Pmed11
GY8$PmedTotal <- GY8$Pmed0+GY8$Pmed1+GY8$Pmed2+GY8$Pmed3+GY8$Pmed4+GY8$Pmed5+GY8$Pmed6+GY8$Pmed7+GY8$Pmed8+GY8$Pmed9+GY8$Pmed10+GY8$Pmed11
GY9$PmedTotal <- GY9$Pmed0+GY9$Pmed1+GY9$Pmed2+GY9$Pmed3+GY9$Pmed4+GY9$Pmed5+GY9$Pmed6+GY9$Pmed7+GY9$Pmed8+GY9$Pmed9+GY9$Pmed10+GY9$Pmed11
GY10$PmedTotal <- GY10$Pmed0+GY10$Pmed1+GY10$Pmed2+GY10$Pmed3+GY10$Pmed4+GY10$Pmed5+GY10$Pmed6+GY10$Pmed7+GY10$Pmed8+GY10$Pmed9+GY10$Pmed10+GY10$Pmed11
GY11$PmedTotal <- GY11$Pmed0+GY11$Pmed1+GY11$Pmed2+GY11$Pmed3+GY11$Pmed4+GY11$Pmed5+GY11$Pmed6+GY11$Pmed7+GY11$Pmed8+GY11$Pmed9+GY11$Pmed10+GY11$Pmed11
GY12$PmedTotal <- GY12$Pmed0+GY12$Pmed1+GY12$Pmed2+GY12$Pmed3+GY12$Pmed4+GY12$Pmed5+GY12$Pmed6+GY12$Pmed7+GY12$Pmed8+GY12$Pmed9+GY12$Pmed10+GY12$Pmed11
GY13$PmedTotal <- GY13$Pmed0+GY13$Pmed1+GY13$Pmed2+GY13$Pmed3+GY13$Pmed4+GY13$Pmed5+GY13$Pmed6+GY13$Pmed7+GY13$Pmed8+GY13$Pmed9+GY13$Pmed10+GY13$Pmed11
GY14$PmedTotal <- GY14$Pmed0+GY14$Pmed1+GY14$Pmed2+GY14$Pmed3+GY14$Pmed4+GY14$Pmed5+GY14$Pmed6+GY14$Pmed7+GY14$Pmed8+GY14$Pmed9+GY14$Pmed10+GY14$Pmed11
GY15$PmedTotal <- GY15$Pmed0+GY15$Pmed1+GY15$Pmed2+GY15$Pmed3+GY15$Pmed4+GY15$Pmed5+GY15$Pmed6+GY15$Pmed7+GY15$Pmed8+GY15$Pmed9+GY15$Pmed10+GY15$Pmed11

GY1$PmaxTotal <- GY1$Pmax0+GY1$Pmax1+GY1$Pmax2+GY1$Pmax3+GY1$Pmax4+GY1$Pmax5+GY1$Pmax6+GY1$Pmax7+GY1$Pmax8+GY1$Pmax9+GY1$Pmax10+GY1$Pmax11
GY2$PmaxTotal <- GY2$Pmax0+GY2$Pmax1+GY2$Pmax2+GY2$Pmax3+GY2$Pmax4+GY2$Pmax5+GY2$Pmax6+GY2$Pmax7+GY2$Pmax8+GY2$Pmax9+GY2$Pmax10+GY2$Pmax11
GY3$PmaxTotal <- GY3$Pmax0+GY3$Pmax1+GY3$Pmax2+GY3$Pmax3+GY3$Pmax4+GY3$Pmax5+GY3$Pmax6+GY3$Pmax7+GY3$Pmax8+GY3$Pmax9+GY3$Pmax10+GY3$Pmax11
GY4$PmaxTotal <- GY4$Pmax0+GY4$Pmax1+GY4$Pmax2+GY4$Pmax3+GY4$Pmax4+GY4$Pmax5+GY4$Pmax6+GY4$Pmax7+GY4$Pmax8+GY4$Pmax9+GY4$Pmax10+GY4$Pmax11
GY5$PmaxTotal <- GY5$Pmax0+GY5$Pmax1+GY5$Pmax2+GY5$Pmax3+GY5$Pmax4+GY5$Pmax5+GY5$Pmax6+GY5$Pmax7+GY5$Pmax8+GY5$Pmax9+GY5$Pmax10+GY5$Pmax11
GY6$PmaxTotal <- GY6$Pmax0+GY6$Pmax1+GY6$Pmax2+GY6$Pmax3+GY6$Pmax4+GY6$Pmax5+GY6$Pmax6+GY6$Pmax7+GY6$Pmax8+GY6$Pmax9+GY6$Pmax10+GY6$Pmax11
GY7$PmaxTotal <- GY7$Pmax0+GY7$Pmax1+GY7$Pmax2+GY7$Pmax3+GY7$Pmax4+GY7$Pmax5+GY7$Pmax6+GY7$Pmax7+GY7$Pmax8+GY7$Pmax9+GY7$Pmax10+GY7$Pmax11
GY8$PmaxTotal <- GY8$Pmax0+GY8$Pmax1+GY8$Pmax2+GY8$Pmax3+GY8$Pmax4+GY8$Pmax5+GY8$Pmax6+GY8$Pmax7+GY8$Pmax8+GY8$Pmax9+GY8$Pmax10+GY8$Pmax11
GY9$PmaxTotal <- GY9$Pmax0+GY9$Pmax1+GY9$Pmax2+GY9$Pmax3+GY9$Pmax4+GY9$Pmax5+GY9$Pmax6+GY9$Pmax7+GY9$Pmax8+GY9$Pmax9+GY9$Pmax10+GY9$Pmax11
GY10$PmaxTotal <- GY10$Pmax0+GY10$Pmax1+GY10$Pmax2+GY10$Pmax3+GY10$Pmax4+GY10$Pmax5+GY10$Pmax6+GY10$Pmax7+GY10$Pmax8+GY10$Pmax9+GY10$Pmax10+GY10$Pmax11
GY11$PmaxTotal <- GY11$Pmax0+GY11$Pmax1+GY11$Pmax2+GY11$Pmax3+GY11$Pmax4+GY11$Pmax5+GY11$Pmax6+GY11$Pmax7+GY11$Pmax8+GY11$Pmax9+GY11$Pmax10+GY11$Pmax11
GY12$PmaxTotal <- GY12$Pmax0+GY12$Pmax1+GY12$Pmax2+GY12$Pmax3+GY12$Pmax4+GY12$Pmax5+GY12$Pmax6+GY12$Pmax7+GY12$Pmax8+GY12$Pmax9+GY12$Pmax10+GY12$Pmax11
GY13$PmaxTotal <- GY13$Pmax0+GY13$Pmax1+GY13$Pmax2+GY13$Pmax3+GY13$Pmax4+GY13$Pmax5+GY13$Pmax6+GY13$Pmax7+GY13$Pmax8+GY13$Pmax9+GY13$Pmax10+GY13$Pmax11
GY14$PmaxTotal <- GY14$Pmax0+GY14$Pmax1+GY14$Pmax2+GY14$Pmax3+GY14$Pmax4+GY14$Pmax5+GY14$Pmax6+GY14$Pmax7+GY14$Pmax8+GY14$Pmax9+GY14$Pmax10+GY14$Pmax11
GY15$PmaxTotal <- GY15$Pmax0+GY15$Pmax1+GY15$Pmax2+GY15$Pmax3+GY15$Pmax4+GY15$Pmax5+GY15$Pmax6+GY15$Pmax7+GY15$Pmax8+GY15$Pmax9+GY15$Pmax10+GY15$Pmax11

#Incidence and Prevalence
#Create total IDU columns
GY1$TotalIDU <- GY1$Pmin0+GY1$Pmin1+GY1$Pmin2+GY1$Pmin3+GY1$Pmin4+GY1$Pmin5+GY1$Pmed0+GY1$Pmed1+GY1$Pmed2+GY1$Pmed3+GY1$Pmed4+GY1$Pmed5+GY1$Pmax0+GY1$Pmax1+GY1$Pmax2+GY1$Pmax3+GY1$Pmax4+GY1$Pmax5
GY2$TotalIDU <- GY2$Pmin0+GY2$Pmin1+GY2$Pmin2+GY2$Pmin3+GY2$Pmin4+GY2$Pmin5+GY2$Pmed0+GY2$Pmed1+GY2$Pmed2+GY2$Pmed3+GY2$Pmed4+GY2$Pmed5+GY2$Pmax0+GY2$Pmax1+GY2$Pmax2+GY2$Pmax3+GY2$Pmax4+GY2$Pmax5
GY3$TotalIDU <- GY3$Pmin0+GY3$Pmin1+GY3$Pmin2+GY3$Pmin3+GY3$Pmin4+GY3$Pmin5+GY3$Pmed0+GY3$Pmed1+GY3$Pmed2+GY3$Pmed3+GY3$Pmed4+GY3$Pmed5+GY3$Pmax0+GY3$Pmax1+GY3$Pmax2+GY3$Pmax3+GY3$Pmax4+GY3$Pmax5
GY4$TotalIDU <- GY4$Pmin0+GY4$Pmin1+GY4$Pmin2+GY4$Pmin3+GY4$Pmin4+GY4$Pmin5+GY4$Pmed0+GY4$Pmed1+GY4$Pmed2+GY4$Pmed3+GY4$Pmed4+GY4$Pmed5+GY4$Pmax0+GY4$Pmax1+GY4$Pmax2+GY4$Pmax3+GY4$Pmax4+GY4$Pmax5
GY5$TotalIDU <- GY5$Pmin0+GY5$Pmin1+GY5$Pmin2+GY5$Pmin3+GY5$Pmin4+GY5$Pmin5+GY5$Pmed0+GY5$Pmed1+GY5$Pmed2+GY5$Pmed3+GY5$Pmed4+GY5$Pmed5+GY5$Pmax0+GY5$Pmax1+GY5$Pmax2+GY5$Pmax3+GY5$Pmax4+GY5$Pmax5
GY6$TotalIDU <- GY6$Pmin0+GY6$Pmin1+GY6$Pmin2+GY6$Pmin3+GY6$Pmin4+GY6$Pmin5+GY6$Pmed0+GY6$Pmed1+GY6$Pmed2+GY6$Pmed3+GY6$Pmed4+GY6$Pmed5+GY6$Pmax0+GY6$Pmax1+GY6$Pmax2+GY6$Pmax3+GY6$Pmax4+GY6$Pmax5
GY7$TotalIDU <- GY7$Pmin0+GY7$Pmin1+GY7$Pmin2+GY7$Pmin3+GY7$Pmin4+GY7$Pmin5+GY7$Pmed0+GY7$Pmed1+GY7$Pmed2+GY7$Pmed3+GY7$Pmed4+GY7$Pmed5+GY7$Pmax0+GY7$Pmax1+GY7$Pmax2+GY7$Pmax3+GY7$Pmax4+GY7$Pmax5
GY8$TotalIDU <- GY8$Pmin0+GY8$Pmin1+GY8$Pmin2+GY8$Pmin3+GY8$Pmin4+GY8$Pmin5+GY8$Pmed0+GY8$Pmed1+GY8$Pmed2+GY8$Pmed3+GY8$Pmed4+GY8$Pmed5+GY8$Pmax0+GY8$Pmax1+GY8$Pmax2+GY8$Pmax3+GY8$Pmax4+GY8$Pmax5
GY9$TotalIDU <- GY9$Pmin0+GY9$Pmin1+GY9$Pmin2+GY9$Pmin3+GY9$Pmin4+GY9$Pmin5+GY9$Pmed0+GY9$Pmed1+GY9$Pmed2+GY9$Pmed3+GY9$Pmed4+GY9$Pmed5+GY9$Pmax0+GY9$Pmax1+GY9$Pmax2+GY9$Pmax3+GY9$Pmax4+GY9$Pmax5
GY10$TotalIDU <- GY10$Pmin0+GY10$Pmin1+GY10$Pmin2+GY10$Pmin3+GY10$Pmin4+GY10$Pmin5+GY10$Pmed0+GY10$Pmed1+GY10$Pmed2+GY10$Pmed3+GY10$Pmed4+GY10$Pmed5+GY10$Pmax0+GY10$Pmax1+GY10$Pmax2+GY10$Pmax3+GY10$Pmax4+GY10$Pmax5
GY11$TotalIDU <- GY11$Pmin0+GY11$Pmin1+GY11$Pmin2+GY11$Pmin3+GY11$Pmin4+GY11$Pmin5+GY11$Pmed0+GY11$Pmed1+GY11$Pmed2+GY11$Pmed3+GY11$Pmed4+GY11$Pmed5+GY11$Pmax0+GY11$Pmax1+GY11$Pmax2+GY11$Pmax3+GY11$Pmax4+GY11$Pmax5
GY12$TotalIDU <- GY12$Pmin0+GY12$Pmin1+GY12$Pmin2+GY12$Pmin3+GY12$Pmin4+GY12$Pmin5+GY12$Pmed0+GY12$Pmed1+GY12$Pmed2+GY12$Pmed3+GY12$Pmed4+GY12$Pmed5+GY12$Pmax0+GY12$Pmax1+GY12$Pmax2+GY12$Pmax3+GY12$Pmax4+GY12$Pmax5
GY13$TotalIDU <- GY13$Pmin0+GY13$Pmin1+GY13$Pmin2+GY13$Pmin3+GY13$Pmin4+GY13$Pmin5+GY13$Pmed0+GY13$Pmed1+GY13$Pmed2+GY13$Pmed3+GY13$Pmed4+GY13$Pmed5+GY13$Pmax0+GY13$Pmax1+GY13$Pmax2+GY13$Pmax3+GY13$Pmax4+GY13$Pmax5
GY14$TotalIDU <- GY14$Pmin0+GY14$Pmin1+GY14$Pmin2+GY14$Pmin3+GY14$Pmin4+GY14$Pmin5+GY14$Pmed0+GY14$Pmed1+GY14$Pmed2+GY14$Pmed3+GY14$Pmed4+GY14$Pmed5+GY14$Pmax0+GY14$Pmax1+GY14$Pmax2+GY14$Pmax3+GY14$Pmax4+GY14$Pmax5
GY15$TotalIDU <- GY15$Pmin0+GY15$Pmin1+GY15$Pmin2+GY15$Pmin3+GY15$Pmin4+GY15$Pmin5+GY15$Pmed0+GY15$Pmed1+GY15$Pmed2+GY15$Pmed3+GY15$Pmed4+GY15$Pmed5+GY15$Pmax0+GY15$Pmax1+GY15$Pmax2+GY15$Pmax3+GY15$Pmax4+GY15$Pmax5

GY1$TotalHCV <- GY1$PrisonHCV+GY1$COMMUNITYHCV
GY2$TotalHCV <- GY2$PrisonHCV+GY2$COMMUNITYHCV
GY3$TotalHCV <- GY3$PrisonHCV+GY3$COMMUNITYHCV
GY4$TotalHCV <- GY4$PrisonHCV+GY4$COMMUNITYHCV
GY5$TotalHCV <- GY5$PrisonHCV+GY5$COMMUNITYHCV
GY6$TotalHCV <- GY6$PrisonHCV+GY6$COMMUNITYHCV
GY7$TotalHCV <- GY7$PrisonHCV+GY7$COMMUNITYHCV
GY8$TotalHCV <- GY8$PrisonHCV+GY8$COMMUNITYHCV
GY9$TotalHCV <- GY9$PrisonHCV+GY9$COMMUNITYHCV
GY10$TotalHCV <- GY10$PrisonHCV+GY10$COMMUNITYHCV

GY1$TotalHCV <- GY1$PrisonHCV+GY1$COMMUNITYHCV
GY2$TotalHCV <- GY2$PrisonHCV+GY2$COMMUNITYHCV
GY3$TotalHCV <- GY3$PrisonHCV+GY3$COMMUNITYHCV
GY4$TotalHCV <- GY4$PrisonHCV+GY4$COMMUNITYHCV
GY5$TotalHCV <- GY5$PrisonHCV+GY5$COMMUNITYHCV
GY6$TotalHCV <- GY6$PrisonHCV+GY6$COMMUNITYHCV
GY7$TotalHCV <- GY7$PrisonHCV+GY7$COMMUNITYHCV
GY8$TotalHCV <- GY8$PrisonHCV+GY8$COMMUNITYHCV
GY9$TotalHCV <- GY9$PrisonHCV+GY9$COMMUNITYHCV
GY10$TotalHCV <- GY10$PrisonHCV+GY10$COMMUNITYHCV
GY11$TotalHCV <- GY11$PrisonHCV+GY11$COMMUNITYHCV
GY12$TotalHCV <- GY12$PrisonHCV+GY12$COMMUNITYHCV
GY13$TotalHCV <- GY13$PrisonHCV+GY13$COMMUNITYHCV
GY14$TotalHCV <- GY14$PrisonHCV+GY14$COMMUNITYHCV
GY15$TotalHCV <- GY15$PrisonHCV+GY15$COMMUNITYHCV

############Load 50 files from second file
HY1 <- NULL
HY2 <- NULL
HY3 <- NULL
HY4 <- NULL
HY5 <- NULL
HY6 <- NULL
HY7 <- NULL
HY8 <- NULL
HY9 <- NULL
HY10 <- NULL
HY11 <- NULL
HY12 <- NULL
HY13 <- NULL
HY14 <- NULL
HY15 <- NULL
for (var in 1:20)
{
fileName <- paste("~/Dropbox/HCV Model/HCV New Model/HCV Model/calibration/Final Calibration Sets/final scenarios/sharing probability/increase by adopting NSP in Berlin prisons 64/out", var, ".csv", sep="")
tempFile <- read.csv(fileName, sep="\t",header=TRUE)

colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")

HY1 <- rbind(HY1, tempFile[1:365,])
HY2 <- rbind(HY2, tempFile[366:730,])
HY3 <- rbind(HY3, tempFile[731:1095,])
HY4 <- rbind(HY4, tempFile[1096:1460,])
HY5 <- rbind(HY5, tempFile[1461:1825,])
HY6 <- rbind(HY6, tempFile[1826:2190,])
HY7 <- rbind(HY7, tempFile[2191:2555,])
HY8 <- rbind(HY8, tempFile[2556:2920,])
HY9 <- rbind(HY9, tempFile[2921:3285,])
HY10 <- rbind(HY10, tempFile[3286:3650,]) #YRS
HY11 <- rbind(HY11, tempFile[3651:4015,]) #YRS
HY12 <- rbind(HY12, tempFile[4016:4380,]) #YRS
HY13 <- rbind(HY13, tempFile[4381:4745,]) #YRS
HY14 <- rbind(HY14, tempFile[4746:5110,]) #YRS
HY15 <- rbind(HY15, tempFile[5111:5475,]) #YRS
}

#Create Total Columns for P1 P2 P3
HY1$PminTotal <- HY1$Pmin0+HY1$Pmin1+HY1$Pmin2+HY1$Pmin3+HY1$Pmin4+HY1$Pmin5+HY1$Pmin6+HY1$Pmin7+HY1$Pmin8+HY1$Pmin9+HY1$Pmin10+HY1$Pmin11
HY2$PminTotal <- HY2$Pmin0+HY2$Pmin1+HY2$Pmin2+HY2$Pmin3+HY2$Pmin4+HY2$Pmin5+HY2$Pmin6+HY2$Pmin7+HY2$Pmin8+HY2$Pmin9+HY2$Pmin10+HY2$Pmin11
HY3$PminTotal <- HY3$Pmin0+HY3$Pmin1+HY3$Pmin2+HY3$Pmin3+HY3$Pmin4+HY3$Pmin5+HY3$Pmin6+HY3$Pmin7+HY3$Pmin8+HY3$Pmin9+HY3$Pmin10+HY3$Pmin11
HY4$PminTotal <- HY4$Pmin0+HY4$Pmin1+HY4$Pmin2+HY4$Pmin3+HY4$Pmin4+HY4$Pmin5+HY4$Pmin6+HY4$Pmin7+HY4$Pmin8+HY4$Pmin9+HY4$Pmin10+HY4$Pmin11
HY5$PminTotal <- HY5$Pmin0+HY5$Pmin1+HY5$Pmin2+HY5$Pmin3+HY5$Pmin4+HY5$Pmin5+HY5$Pmin6+HY5$Pmin7+HY5$Pmin8+HY5$Pmin9+HY5$Pmin10+HY5$Pmin11
HY6$PminTotal <- HY6$Pmin0+HY6$Pmin1+HY6$Pmin2+HY6$Pmin3+HY6$Pmin4+HY6$Pmin5+HY6$Pmin6+HY6$Pmin7+HY6$Pmin8+HY6$Pmin9+HY6$Pmin10+HY6$Pmin11
HY7$PminTotal <- HY7$Pmin0+HY7$Pmin1+HY7$Pmin2+HY7$Pmin3+HY7$Pmin4+HY7$Pmin5+HY7$Pmin6+HY7$Pmin7+HY7$Pmin8+HY7$Pmin9+HY7$Pmin10+HY7$Pmin11
HY8$PminTotal <- HY8$Pmin0+HY8$Pmin1+HY8$Pmin2+HY8$Pmin3+HY8$Pmin4+HY8$Pmin5+HY8$Pmin6+HY8$Pmin7+HY8$Pmin8+HY8$Pmin9+HY8$Pmin10+HY8$Pmin11
HY9$PminTotal <- HY9$Pmin0+HY9$Pmin1+HY9$Pmin2+HY9$Pmin3+HY9$Pmin4+HY9$Pmin5+HY9$Pmin6+HY9$Pmin7+HY9$Pmin8+HY9$Pmin9+HY9$Pmin10+HY9$Pmin11
HY10$PminTotal <- HY10$Pmin0+HY10$Pmin1+HY10$Pmin2+HY10$Pmin3+HY10$Pmin4+HY10$Pmin5+HY10$Pmin6+HY10$Pmin7+HY10$Pmin8+HY10$Pmin9+HY10$Pmin10+HY10$Pmin11
HY11$PminTotal <- HY11$Pmin0+HY11$Pmin1+HY11$Pmin2+HY11$Pmin3+HY11$Pmin4+HY11$Pmin5+HY11$Pmin6+HY11$Pmin7+HY11$Pmin8+HY11$Pmin9+HY11$Pmin10+HY11$Pmin11
HY12$PmedTotal <- HY12$Pmed0+HY12$Pmed1+HY12$Pmed2+HY12$Pmed3+HY12$Pmed4+HY12$Pmed5+HY12$Pmed6+HY12$Pmed7+HY12$Pmed8+HY12$Pmed9+HY12$Pmed10+HY12$Pmed11
HY13$PmedTotal <- HY13$Pmed0+HY13$Pmed1+HY13$Pmed2+HY13$Pmed3+HY13$Pmed4+HY13$Pmed5+HY13$Pmed6+HY13$Pmed7+HY13$Pmed8+HY13$Pmed9+HY13$Pmed10+HY13$Pmed11
HY14$PmedTotal <- HY14$Pmed0+HY14$Pmed1+HY14$Pmed2+HY14$Pmed3+HY14$Pmed4+HY14$Pmed5+HY14$Pmed6+HY14$Pmed7+HY14$Pmed8+HY14$Pmed9+HY14$Pmed10+HY14$Pmed11
HY15$PmedTotal <- HY15$Pmed0+HY15$Pmed1+HY15$Pmed2+HY15$Pmed3+HY15$Pmed4+HY15$Pmed5+HY15$Pmed6+HY15$Pmed7+HY15$Pmed8+HY15$Pmed9+HY15$Pmed10+HY15$Pmed11

HY1$PmedTotal <- HY1$Pmed0+HY1$Pmed1+HY1$Pmed2+HY1$Pmed3+HY1$Pmed4+HY1$Pmed5+HY1$Pmed6+HY1$Pmed7+HY1$Pmed8+HY1$Pmed9+HY1$Pmed10+HY1$Pmed11
HY2$PmedTotal <- HY2$Pmed0+HY2$Pmed1+HY2$Pmed2+HY2$Pmed3+HY2$Pmed4+HY2$Pmed5+HY2$Pmed6+HY2$Pmed7+HY2$Pmed8+HY2$Pmed9+HY2$Pmed10+HY2$Pmed11
HY3$PmedTotal <- HY3$Pmed0+HY3$Pmed1+HY3$Pmed2+HY3$Pmed3+HY3$Pmed4+HY3$Pmed5+HY3$Pmed6+HY3$Pmed7+HY3$Pmed8+HY3$Pmed9+HY3$Pmed10+HY3$Pmed11
HY4$PmedTotal <- HY4$Pmed0+HY4$Pmed1+HY4$Pmed2+HY4$Pmed3+HY4$Pmed4+HY4$Pmed5+HY4$Pmed6+HY4$Pmed7+HY4$Pmed8+HY4$Pmed9+HY4$Pmed10+HY4$Pmed11
HY5$PmedTotal <- HY5$Pmed0+HY5$Pmed1+HY5$Pmed2+HY5$Pmed3+HY5$Pmed4+HY5$Pmed5+HY5$Pmed6+HY5$Pmed7+HY5$Pmed8+HY5$Pmed9+HY5$Pmed10+HY5$Pmed11
HY6$PmedTotal <- HY6$Pmed0+HY6$Pmed1+HY6$Pmed2+HY6$Pmed3+HY6$Pmed4+HY6$Pmed5+HY6$Pmed6+HY6$Pmed7+HY6$Pmed8+HY6$Pmed9+HY6$Pmed10+HY6$Pmed11
HY7$PmedTotal <- HY7$Pmed0+HY7$Pmed1+HY7$Pmed2+HY7$Pmed3+HY7$Pmed4+HY7$Pmed5+HY7$Pmed6+HY7$Pmed7+HY7$Pmed8+HY7$Pmed9+HY7$Pmed10+HY7$Pmed11
HY8$PmedTotal <- HY8$Pmed0+HY8$Pmed1+HY8$Pmed2+HY8$Pmed3+HY8$Pmed4+HY8$Pmed5+HY8$Pmed6+HY8$Pmed7+HY8$Pmed8+HY8$Pmed9+HY8$Pmed10+HY8$Pmed11
HY9$PmedTotal <- HY9$Pmed0+HY9$Pmed1+HY9$Pmed2+HY9$Pmed3+HY9$Pmed4+HY9$Pmed5+HY9$Pmed6+HY9$Pmed7+HY9$Pmed8+HY9$Pmed9+HY9$Pmed10+HY9$Pmed11
HY10$PmedTotal <- HY10$Pmed0+HY10$Pmed1+HY10$Pmed2+HY10$Pmed3+HY10$Pmed4+HY10$Pmed5+HY10$Pmed6+HY10$Pmed7+HY10$Pmed8+HY10$Pmed9+HY10$Pmed10+HY10$Pmed11
HY11$PmedTotal <- HY11$Pmed0+HY11$Pmed1+HY11$Pmed2+HY11$Pmed3+HY11$Pmed4+HY11$Pmed5+HY11$Pmed6+HY11$Pmed7+HY11$Pmed8+HY11$Pmed9+HY11$Pmed10+HY11$Pmed11
HY12$PmedTotal <- HY12$Pmed0+HY12$Pmed1+HY12$Pmed2+HY12$Pmed3+HY12$Pmed4+HY12$Pmed5+HY12$Pmed6+HY12$Pmed7+HY12$Pmed8+HY12$Pmed9+HY12$Pmed10+HY12$Pmed11
HY13$PmedTotal <- HY13$Pmed0+HY13$Pmed1+HY13$Pmed2+HY13$Pmed3+HY13$Pmed4+HY13$Pmed5+HY13$Pmed6+HY13$Pmed7+HY13$Pmed8+HY13$Pmed9+HY13$Pmed10+HY13$Pmed11
HY14$PmedTotal <- HY14$Pmed0+HY14$Pmed1+HY14$Pmed2+HY14$Pmed3+HY14$Pmed4+HY14$Pmed5+HY14$Pmed6+HY14$Pmed7+HY14$Pmed8+HY14$Pmed9+HY14$Pmed10+HY14$Pmed11
HY15$PmedTotal <- HY15$Pmed0+HY15$Pmed1+HY15$Pmed2+HY15$Pmed3+HY15$Pmed4+HY15$Pmed5+HY15$Pmed6+HY15$Pmed7+HY15$Pmed8+HY15$Pmed9+HY15$Pmed10+HY15$Pmed11

HY1$PmaxTotal <- HY1$Pmax0+HY1$Pmax1+HY1$Pmax2+HY1$Pmax3+HY1$Pmax4+HY1$Pmax5+HY1$Pmax6+HY1$Pmax7+HY1$Pmax8+HY1$Pmax9+HY1$Pmax10+HY1$Pmax11
HY2$PmaxTotal <- HY2$Pmax0+HY2$Pmax1+HY2$Pmax2+HY2$Pmax3+HY2$Pmax4+HY2$Pmax5+HY2$Pmax6+HY2$Pmax7+HY2$Pmax8+HY2$Pmax9+HY2$Pmax10+HY2$Pmax11
HY3$PmaxTotal <- HY3$Pmax0+HY3$Pmax1+HY3$Pmax2+HY3$Pmax3+HY3$Pmax4+HY3$Pmax5+HY3$Pmax6+HY3$Pmax7+HY3$Pmax8+HY3$Pmax9+HY3$Pmax10+HY3$Pmax11
HY4$PmaxTotal <- HY4$Pmax0+HY4$Pmax1+HY4$Pmax2+HY4$Pmax3+HY4$Pmax4+HY4$Pmax5+HY4$Pmax6+HY4$Pmax7+HY4$Pmax8+HY4$Pmax9+HY4$Pmax10+HY4$Pmax11
HY5$PmaxTotal <- HY5$Pmax0+HY5$Pmax1+HY5$Pmax2+HY5$Pmax3+HY5$Pmax4+HY5$Pmax5+HY5$Pmax6+HY5$Pmax7+HY5$Pmax8+HY5$Pmax9+HY5$Pmax10+HY5$Pmax11
HY6$PmaxTotal <- HY6$Pmax0+HY6$Pmax1+HY6$Pmax2+HY6$Pmax3+HY6$Pmax4+HY6$Pmax5+HY6$Pmax6+HY6$Pmax7+HY6$Pmax8+HY6$Pmax9+HY6$Pmax10+HY6$Pmax11
HY7$PmaxTotal <- HY7$Pmax0+HY7$Pmax1+HY7$Pmax2+HY7$Pmax3+HY7$Pmax4+HY7$Pmax5+HY7$Pmax6+HY7$Pmax7+HY7$Pmax8+HY7$Pmax9+HY7$Pmax10+HY7$Pmax11
HY8$PmaxTotal <- HY8$Pmax0+HY8$Pmax1+HY8$Pmax2+HY8$Pmax3+HY8$Pmax4+HY8$Pmax5+HY8$Pmax6+HY8$Pmax7+HY8$Pmax8+HY8$Pmax9+HY8$Pmax10+HY8$Pmax11
HY9$PmaxTotal <- HY9$Pmax0+HY9$Pmax1+HY9$Pmax2+HY9$Pmax3+HY9$Pmax4+HY9$Pmax5+HY9$Pmax6+HY9$Pmax7+HY9$Pmax8+HY9$Pmax9+HY9$Pmax10+HY9$Pmax11
HY10$PmaxTotal <- HY10$Pmax0+HY10$Pmax1+HY10$Pmax2+HY10$Pmax3+HY10$Pmax4+HY10$Pmax5+HY10$Pmax6+HY10$Pmax7+HY10$Pmax8+HY10$Pmax9+HY10$Pmax10+HY10$Pmax11
HY11$PmaxTotal <- HY11$Pmax0+HY11$Pmax1+HY11$Pmax2+HY11$Pmax3+HY11$Pmax4+HY11$Pmax5+HY11$Pmax6+HY11$Pmax7+HY11$Pmax8+HY11$Pmax9+HY11$Pmax10+HY11$Pmax11
HY12$PmaxTotal <- HY12$Pmax0+HY12$Pmax1+HY12$Pmax2+HY12$Pmax3+HY12$Pmax4+HY12$Pmax5+HY12$Pmax6+HY12$Pmax7+HY12$Pmax8+HY12$Pmax9+HY12$Pmax10+HY12$Pmax11
HY13$PmaxTotal <- HY13$Pmax0+HY13$Pmax1+HY13$Pmax2+HY13$Pmax3+HY13$Pmax4+HY13$Pmax5+HY13$Pmax6+HY13$Pmax7+HY13$Pmax8+HY13$Pmax9+HY13$Pmax10+HY13$Pmax11
HY14$PmaxTotal <- HY14$Pmax0+HY14$Pmax1+HY14$Pmax2+HY14$Pmax3+HY14$Pmax4+HY14$Pmax5+HY14$Pmax6+HY14$Pmax7+HY14$Pmax8+HY14$Pmax9+HY14$Pmax10+HY14$Pmax11
HY15$PmaxTotal <- HY15$Pmax0+HY15$Pmax1+HY15$Pmax2+HY15$Pmax3+HY15$Pmax4+HY15$Pmax5+HY15$Pmax6+HY15$Pmax7+HY15$Pmax8+HY15$Pmax9+HY15$Pmax10+HY15$Pmax11

#Incidence and Prevalence
#Create total IDU columns
HY1$TotalIDU <- HY1$Pmin0+HY1$Pmin1+HY1$Pmin2+HY1$Pmin3+HY1$Pmin4+HY1$Pmin5+HY1$Pmed0+HY1$Pmed1+HY1$Pmed2+HY1$Pmed3+HY1$Pmed4+HY1$Pmed5+HY1$Pmax0+HY1$Pmax1+HY1$Pmax2+HY1$Pmax3+HY1$Pmax4+HY1$Pmax5
HY2$TotalIDU <- HY2$Pmin0+HY2$Pmin1+HY2$Pmin2+HY2$Pmin3+HY2$Pmin4+HY2$Pmin5+HY2$Pmed0+HY2$Pmed1+HY2$Pmed2+HY2$Pmed3+HY2$Pmed4+HY2$Pmed5+HY2$Pmax0+HY2$Pmax1+HY2$Pmax2+HY2$Pmax3+HY2$Pmax4+HY2$Pmax5
HY3$TotalIDU <- HY3$Pmin0+HY3$Pmin1+HY3$Pmin2+HY3$Pmin3+HY3$Pmin4+HY3$Pmin5+HY3$Pmed0+HY3$Pmed1+HY3$Pmed2+HY3$Pmed3+HY3$Pmed4+HY3$Pmed5+HY3$Pmax0+HY3$Pmax1+HY3$Pmax2+HY3$Pmax3+HY3$Pmax4+HY3$Pmax5
HY4$TotalIDU <- HY4$Pmin0+HY4$Pmin1+HY4$Pmin2+HY4$Pmin3+HY4$Pmin4+HY4$Pmin5+HY4$Pmed0+HY4$Pmed1+HY4$Pmed2+HY4$Pmed3+HY4$Pmed4+HY4$Pmed5+HY4$Pmax0+HY4$Pmax1+HY4$Pmax2+HY4$Pmax3+HY4$Pmax4+HY4$Pmax5
HY5$TotalIDU <- HY5$Pmin0+HY5$Pmin1+HY5$Pmin2+HY5$Pmin3+HY5$Pmin4+HY5$Pmin5+HY5$Pmed0+HY5$Pmed1+HY5$Pmed2+HY5$Pmed3+HY5$Pmed4+HY5$Pmed5+HY5$Pmax0+HY5$Pmax1+HY5$Pmax2+HY5$Pmax3+HY5$Pmax4+HY5$Pmax5
HY6$TotalIDU <- HY6$Pmin0+HY6$Pmin1+HY6$Pmin2+HY6$Pmin3+HY6$Pmin4+HY6$Pmin5+HY6$Pmed0+HY6$Pmed1+HY6$Pmed2+HY6$Pmed3+HY6$Pmed4+HY6$Pmed5+HY6$Pmax0+HY6$Pmax1+HY6$Pmax2+HY6$Pmax3+HY6$Pmax4+HY6$Pmax5
HY7$TotalIDU <- HY7$Pmin0+HY7$Pmin1+HY7$Pmin2+HY7$Pmin3+HY7$Pmin4+HY7$Pmin5+HY7$Pmed0+HY7$Pmed1+HY7$Pmed2+HY7$Pmed3+HY7$Pmed4+HY7$Pmed5+HY7$Pmax0+HY7$Pmax1+HY7$Pmax2+HY7$Pmax3+HY7$Pmax4+HY7$Pmax5
HY8$TotalIDU <- HY8$Pmin0+HY8$Pmin1+HY8$Pmin2+HY8$Pmin3+HY8$Pmin4+HY8$Pmin5+HY8$Pmed0+HY8$Pmed1+HY8$Pmed2+HY8$Pmed3+HY8$Pmed4+HY8$Pmed5+HY8$Pmax0+HY8$Pmax1+HY8$Pmax2+HY8$Pmax3+HY8$Pmax4+HY8$Pmax5
HY9$TotalIDU <- HY9$Pmin0+HY9$Pmin1+HY9$Pmin2+HY9$Pmin3+HY9$Pmin4+HY9$Pmin5+HY9$Pmed0+HY9$Pmed1+HY9$Pmed2+HY9$Pmed3+HY9$Pmed4+HY9$Pmed5+HY9$Pmax0+HY9$Pmax1+HY9$Pmax2+HY9$Pmax3+HY9$Pmax4+HY9$Pmax5
HY10$TotalIDU <- HY10$Pmin0+HY10$Pmin1+HY10$Pmin2+HY10$Pmin3+HY10$Pmin4+HY10$Pmin5+HY10$Pmed0+HY10$Pmed1+HY10$Pmed2+HY10$Pmed3+HY10$Pmed4+HY10$Pmed5+HY10$Pmax0+HY10$Pmax1+HY10$Pmax2+HY10$Pmax3+HY10$Pmax4+HY10$Pmax5
HY11$TotalIDU <- HY11$Pmin0+HY11$Pmin1+HY11$Pmin2+HY11$Pmin3+HY11$Pmin4+HY11$Pmin5+HY11$Pmed0+HY11$Pmed1+HY11$Pmed2+HY11$Pmed3+HY11$Pmed4+HY11$Pmed5+HY11$Pmax0+HY11$Pmax1+HY11$Pmax2+HY11$Pmax3+HY11$Pmax4+HY11$Pmax5
HY12$TotalIDU <- HY12$Pmin0+HY12$Pmin1+HY12$Pmin2+HY12$Pmin3+HY12$Pmin4+HY12$Pmin5+HY12$Pmed0+HY12$Pmed1+HY12$Pmed2+HY12$Pmed3+HY12$Pmed4+HY12$Pmed5+HY12$Pmax0+HY12$Pmax1+HY12$Pmax2+HY12$Pmax3+HY12$Pmax4+HY12$Pmax5
HY13$TotalIDU <- HY13$Pmin0+HY13$Pmin1+HY13$Pmin2+HY13$Pmin3+HY13$Pmin4+HY13$Pmin5+HY13$Pmed0+HY13$Pmed1+HY13$Pmed2+HY13$Pmed3+HY13$Pmed4+HY13$Pmed5+HY13$Pmax0+HY13$Pmax1+HY13$Pmax2+HY13$Pmax3+HY13$Pmax4+HY13$Pmax5
HY14$TotalIDU <- HY14$Pmin0+HY14$Pmin1+HY14$Pmin2+HY14$Pmin3+HY14$Pmin4+HY14$Pmin5+HY14$Pmed0+HY14$Pmed1+HY14$Pmed2+HY14$Pmed3+HY14$Pmed4+HY14$Pmed5+HY14$Pmax0+HY14$Pmax1+HY14$Pmax2+HY14$Pmax3+HY14$Pmax4+HY14$Pmax5
HY15$TotalIDU <- HY15$Pmin0+HY15$Pmin1+HY15$Pmin2+HY15$Pmin3+HY15$Pmin4+HY15$Pmin5+HY15$Pmed0+HY15$Pmed1+HY15$Pmed2+HY15$Pmed3+HY15$Pmed4+HY15$Pmed5+HY15$Pmax0+HY15$Pmax1+HY15$Pmax2+HY15$Pmax3+HY15$Pmax4+HY15$Pmax5

HY1$TotalHCV <- HY1$PrisonHCV+HY1$COMMUNITYHCV
HY2$TotalHCV <- HY2$PrisonHCV+HY2$COMMUNITYHCV
HY3$TotalHCV <- HY3$PrisonHCV+HY3$COMMUNITYHCV
HY4$TotalHCV <- HY4$PrisonHCV+HY4$COMMUNITYHCV
HY5$TotalHCV <- HY5$PrisonHCV+HY5$COMMUNITYHCV
HY6$TotalHCV <- HY6$PrisonHCV+HY6$COMMUNITYHCV
HY7$TotalHCV <- HY7$PrisonHCV+HY7$COMMUNITYHCV
HY8$TotalHCV <- HY8$PrisonHCV+HY8$COMMUNITYHCV
HY9$TotalHCV <- HY9$PrisonHCV+HY9$COMMUNITYHCV
HY10$TotalHCV <- HY10$PrisonHCV+HY10$COMMUNITYHCV

HY1$TotalHCV <- HY1$PrisonHCV+HY1$COMMUNITYHCV
HY2$TotalHCV <- HY2$PrisonHCV+HY2$COMMUNITYHCV
HY3$TotalHCV <- HY3$PrisonHCV+HY3$COMMUNITYHCV
HY4$TotalHCV <- HY4$PrisonHCV+HY4$COMMUNITYHCV
HY5$TotalHCV <- HY5$PrisonHCV+HY5$COMMUNITYHCV
HY6$TotalHCV <- HY6$PrisonHCV+HY6$COMMUNITYHCV
HY7$TotalHCV <- HY7$PrisonHCV+HY7$COMMUNITYHCV
HY8$TotalHCV <- HY8$PrisonHCV+HY8$COMMUNITYHCV
HY9$TotalHCV <- HY9$PrisonHCV+HY9$COMMUNITYHCV
HY10$TotalHCV <- HY10$PrisonHCV+HY10$COMMUNITYHCV
HY11$TotalHCV <- HY11$PrisonHCV+HY11$COMMUNITYHCV
HY12$TotalHCV <- HY12$PrisonHCV+HY12$COMMUNITYHCV
HY13$TotalHCV <- HY13$PrisonHCV+HY13$COMMUNITYHCV
HY14$TotalHCV <- HY14$PrisonHCV+HY14$COMMUNITYHCV
HY15$TotalHCV <- HY15$PrisonHCV+HY15$COMMUNITYHCV


#TotalIDU incidence and prevalence
HCV <- data.frame("IncidenceIDU"=c(
((mean(Y7$NewCases)/mean(Y7$TotalIDU))*100)*365,
((mean(Y8$NewCases)/mean(Y8$TotalIDU))*100)*365,
((mean(Y9$NewCases)/mean(Y9$TotalIDU))*100)*365,
((mean(Y10$NewCases)/mean(Y10$TotalIDU))*100)*365,
((mean(Y11$NewCases)/mean(Y11$TotalIDU))*100)*365, ((mean(Y12$NewCases)/mean(Y12$TotalIDU))*100)*365, ((mean(Y13$NewCases)/mean(Y13$TotalIDU))*100)*365, ((mean(Y14$NewCases)/mean(Y14$TotalIDU))*100)*365, ((mean(Y15$NewCases)/mean(Y15$TotalIDU))*100)*365))
HCV$IncidenceIDUCI <- c(
(1.96*((((mean(Y7$NewCases)/mean(Y7$TotalIDU))^2)*365)*((((var(Y7$NewCases)/mean(Y7$NewCases))^2))*365+(((var(Y7$TotalIDU)/mean(Y7$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y8$NewCases)/mean(Y8$TotalIDU))^2)*365)*((((var(Y8$NewCases)/mean(Y8$NewCases))^2))*365+(((var(Y8$TotalIDU)/mean(Y8$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y9$NewCases)/mean(Y9$TotalIDU))^2)*365)*((((var(Y9$NewCases)/mean(Y9$NewCases))^2))*365+(((var(Y9$TotalIDU)/mean(Y9$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y10$NewCases)/mean(Y10$TotalIDU))^2)*365)*((((var(Y10$NewCases)/mean(Y10$NewCases))^2))*365+(((var(Y10$TotalIDU)/mean(Y10$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y11$NewCases)/mean(Y11$TotalIDU))^2)*365)*((((var(Y11$NewCases)/mean(Y11$NewCases))^2))*365+(((var(Y11$TotalIDU)/mean(Y11$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y12$NewCases)/mean(Y12$TotalIDU))^2)*365)*((((var(Y12$NewCases)/mean(Y12$NewCases))^2))*365+(((var(Y12$TotalIDU)/mean(Y12$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y13$NewCases)/mean(Y13$TotalIDU))^2)*365)*((((var(Y13$NewCases)/mean(Y13$NewCases))^2))*365+(((var(Y13$TotalIDU)/mean(Y13$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y14$NewCases)/mean(Y14$TotalIDU))^2)*365)*((((var(Y14$NewCases)/mean(Y14$NewCases))^2))*365+(((var(Y14$TotalIDU)/mean(Y14$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y15$NewCases)/mean(Y15$TotalIDU))^2)*365)*((((var(Y15$NewCases)/mean(Y15$NewCases))^2))*365+(((var(Y15$TotalIDU)/mean(Y15$TotalIDU))^2))*365)/sqrt(50*365)))*100
)
HCV$IncidenceIDUCIFloor <- c(0,0,0,0,0,0,0,0,0)
HCV$IncidenceIDUCICeiling <- c(0,0,0,0,0,0,0,0,0)

HCV$IncidencePop <- c(
((mean(Y7$NewCases)/mean(Y7$TotalPrisonPop))*100)*365, 
((mean(Y8$NewCases)/mean(Y8$TotalPrisonPop))*100)*365, 
((mean(Y9$NewCases)/mean(Y9$TotalPrisonPop))*100)*365, 
((mean(Y10$NewCases)/mean(Y10$TotalPrisonPop))*100)*365, 
((mean(Y11$NewCases)/mean(Y11$TotalPrisonPop))*100)*365, 
((mean(Y12$NewCases)/mean(Y12$TotalPrisonPop))*100)*365, 
((mean(Y13$NewCases)/mean(Y13$TotalPrisonPop))*100)*365, 
((mean(Y14$NewCases)/mean(Y14$TotalPrisonPop))*100)*365, 
((mean(Y15$NewCases)/mean(Y15$TotalPrisonPop))*100)*365)
HCV$IncidencePopCI <- c(
(1.96*((((mean(Y7$NewCases)/mean(Y7$TotalPrisonPop))^2)*365)*((((var(Y7$NewCases)/mean(Y7$NewCases))^2))*365+(((var(Y7$TotalPrisonPop)/mean(Y7$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y8$NewCases)/mean(Y8$TotalPrisonPop))^2)*365)*((((var(Y8$NewCases)/mean(Y8$NewCases))^2))*365+(((var(Y8$TotalPrisonPop)/mean(Y8$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y9$NewCases)/mean(Y9$TotalPrisonPop))^2)*365)*((((var(Y9$NewCases)/mean(Y9$NewCases))^2))*365+(((var(Y9$TotalPrisonPop)/mean(Y9$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y10$NewCases)/mean(Y10$TotalPrisonPop))^2)*365)*((((var(Y10$NewCases)/mean(Y10$NewCases))^2))*365+(((var(Y10$TotalPrisonPop)/mean(Y10$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y11$NewCases)/mean(Y11$TotalPrisonPop))^2)*365)*((((var(Y11$NewCases)/mean(Y11$NewCases))^2))*365+(((var(Y11$TotalPrisonPop)/mean(Y11$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y12$NewCases)/mean(Y12$TotalPrisonPop))^2)*365)*((((var(Y12$NewCases)/mean(Y12$NewCases))^2))*365+(((var(Y12$TotalPrisonPop)/mean(Y12$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y13$NewCases)/mean(Y13$TotalPrisonPop))^2)*365)*((((var(Y13$NewCases)/mean(Y13$NewCases))^2))*365+(((var(Y13$TotalPrisonPop)/mean(Y13$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y14$NewCases)/mean(Y14$TotalPrisonPop))^2)*365)*((((var(Y14$NewCases)/mean(Y14$NewCases))^2))*365+(((var(Y14$TotalPrisonPop)/mean(Y14$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y15$NewCases)/mean(Y15$TotalPrisonPop))^2)*365)*((((var(Y15$NewCases)/mean(Y15$NewCases))^2))*365+(((var(Y15$TotalPrisonPop)/mean(Y15$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100
)
HCV$IncidencePopCIFloor <- c(0,0,0,0,0,0,0,0,0)
HCV$IncidencePopCICeiling <- c(0,0,0,0,0,0,0,0,0)

HCV$PrevalencePrisIDU <- c(
((mean(Y7$PrisonHCV)/mean(Y7$TotalIDU))*100),
((mean(Y8$PrisonHCV)/mean(Y8$TotalIDU))*100),
((mean(Y9$PrisonHCV)/mean(Y9$TotalIDU))*100),
((mean(Y10$PrisonHCV)/mean(Y10$TotalIDU))*100),
((mean(Y11$PrisonHCV)/mean(Y11$TotalIDU))*100),
((mean(Y12$PrisonHCV)/mean(Y12$TotalIDU))*100),
((mean(Y13$PrisonHCV)/mean(Y13$TotalIDU))*100),
((mean(Y14$PrisonHCV)/mean(Y14$TotalIDU))*100),
((mean(Y15$PrisonHCV)/mean(Y15$TotalIDU))*100)
)

HCV$PrevalenceComIDU <- c(
((mean(Y7$COMMUNITYHCV)/mean(Y7$TotalIDU))*100),
((mean(Y8$COMMUNITYHCV)/mean(Y8$TotalIDU))*100),
((mean(Y9$COMMUNITYHCV)/mean(Y9$TotalIDU))*100),
((mean(Y10$COMMUNITYHCV)/mean(Y10$TotalIDU))*100),
((mean(Y11$COMMUNITYHCV)/mean(Y11$TotalIDU))*100),
((mean(Y12$COMMUNITYHCV)/mean(Y12$TotalIDU))*100),
((mean(Y13$COMMUNITYHCV)/mean(Y13$TotalIDU))*100),
((mean(Y14$COMMUNITYHCV)/mean(Y14$TotalIDU))*100),
((mean(Y15$COMMUNITYHCV)/mean(Y15$TotalIDU))*100)
)

HCV$PrevalenceAllIDU <- c(
((mean(Y7$TotalHCV)/mean(Y7$TotalIDU))*100),
((mean(Y8$TotalHCV)/mean(Y8$TotalIDU))*100),
((mean(Y9$TotalHCV)/mean(Y9$TotalIDU))*100),
((mean(Y10$TotalHCV)/mean(Y10$TotalIDU))*100),
((mean(Y11$TotalHCV)/mean(Y11$TotalIDU))*100),
((mean(Y12$TotalHCV)/mean(Y12$TotalIDU))*100),
((mean(Y13$TotalHCV)/mean(Y13$TotalIDU))*100),
((mean(Y14$TotalHCV)/mean(Y14$TotalIDU))*100),
((mean(Y15$TotalHCV)/mean(Y15$TotalIDU))*100)
)

HCV$PrevalencePrisTotal <- c(
((mean(Y7$PrisonHCV)/mean(Y7$TotalPrisonPop))*100),
((mean(Y8$PrisonHCV)/mean(Y8$TotalPrisonPop))*100),
((mean(Y9$PrisonHCV)/mean(Y9$TotalPrisonPop))*100),
((mean(Y10$PrisonHCV)/mean(Y10$TotalPrisonPop))*100),
((mean(Y11$PrisonHCV)/mean(Y11$TotalPrisonPop))*100),
((mean(Y12$PrisonHCV)/mean(Y12$TotalPrisonPop))*100),
((mean(Y13$PrisonHCV)/mean(Y13$TotalPrisonPop))*100),
((mean(Y14$PrisonHCV)/mean(Y14$TotalPrisonPop))*100),
((mean(Y15$PrisonHCV)/mean(Y15$TotalPrisonPop))*100)
)

HCV$PrevalenceComTotal <- c(
((mean(Y7$COMMUNITYHCV)/mean(Y7$TotalPrisonPop))*100),
((mean(Y8$COMMUNITYHCV)/mean(Y8$TotalPrisonPop))*100),
((mean(Y9$COMMUNITYHCV)/mean(Y9$TotalPrisonPop))*100),
((mean(Y10$COMMUNITYHCV)/mean(Y10$TotalPrisonPop))*100),
((mean(Y11$COMMUNITYHCV)/mean(Y11$TotalPrisonPop))*100),
((mean(Y12$COMMUNITYHCV)/mean(Y12$TotalPrisonPop))*100),
((mean(Y13$COMMUNITYHCV)/mean(Y13$TotalPrisonPop))*100),
((mean(Y14$COMMUNITYHCV)/mean(Y14$TotalPrisonPop))*100),
((mean(Y15$COMMUNITYHCV)/mean(Y15$TotalPrisonPop))*100)
)

HCV$PrevalenceAllTotal <- c(
((mean(Y7$TotalHCV)/mean(Y7$TotalPrisonPop))*100),
((mean(Y8$TotalHCV)/mean(Y8$TotalPrisonPop))*100),
((mean(Y9$TotalHCV)/mean(Y9$TotalPrisonPop))*100),
((mean(Y10$TotalHCV)/mean(Y10$TotalPrisonPop))*100),
((mean(Y11$TotalHCV)/mean(Y11$TotalPrisonPop))*100),
((mean(Y12$TotalHCV)/mean(Y12$TotalPrisonPop))*100),
((mean(Y13$TotalHCV)/mean(Y13$TotalPrisonPop))*100),
((mean(Y14$TotalHCV)/mean(Y14$TotalPrisonPop))*100),
((mean(Y15$TotalHCV)/mean(Y15$TotalPrisonPop))*100)
)

HCV$PrevalencePrisonIDUFloor <- c(
((quantile(Y7$PrisonHCV, 0.25)/mean(Y7$TotalIDU))*100),
((quantile(Y8$PrisonHCV, 0.25)/mean(Y8$TotalIDU))*100),
((quantile(Y9$PrisonHCV, 0.25)/mean(Y9$TotalIDU))*100),
((quantile(Y10$PrisonHCV, 0.25)/mean(Y10$TotalIDU))*100),
((quantile(Y11$PrisonHCV, 0.25)/mean(Y11$TotalIDU))*100),
((quantile(Y12$PrisonHCV, 0.25)/mean(Y12$TotalIDU))*100),
((quantile(Y13$PrisonHCV, 0.25)/mean(Y13$TotalIDU))*100),
((quantile(Y14$PrisonHCV, 0.25)/mean(Y14$TotalIDU))*100),
((quantile(Y15$PrisonHCV, 0.25)/mean(Y15$TotalIDU))*100)
)

HCV$PrevalencePrisonIDUCeiling <- c(
((quantile(Y7$PrisonHCV, 0.75)/mean(Y7$TotalIDU))*100),
((quantile(Y8$PrisonHCV, 0.75)/mean(Y8$TotalIDU))*100),
((quantile(Y9$PrisonHCV, 0.75)/mean(Y9$TotalIDU))*100),
((quantile(Y10$PrisonHCV, 0.75)/mean(Y10$TotalIDU))*100),
((quantile(Y11$PrisonHCV, 0.75)/mean(Y11$TotalIDU))*100),
((quantile(Y12$PrisonHCV, 0.75)/mean(Y12$TotalIDU))*100),
((quantile(Y13$PrisonHCV, 0.75)/mean(Y13$TotalIDU))*100),
((quantile(Y14$PrisonHCV, 0.75)/mean(Y14$TotalIDU))*100),
((quantile(Y15$PrisonHCV, 0.75)/mean(Y15$TotalIDU))*100)
)

HCV$PrevalencePrisonTotalFloor <- c(
((quantile(Y7$PrisonHCV, 0.25)/mean(Y7$TotalPrisonPop))*100),
((quantile(Y8$PrisonHCV, 0.25)/mean(Y8$TotalPrisonPop))*100),
((quantile(Y9$PrisonHCV, 0.25)/mean(Y9$TotalPrisonPop))*100),
((quantile(Y10$PrisonHCV, 0.25)/mean(Y10$TotalPrisonPop))*100),
((quantile(Y11$PrisonHCV, 0.25)/mean(Y11$TotalPrisonPop))*100),
((quantile(Y12$PrisonHCV, 0.25)/mean(Y12$TotalPrisonPop))*100),
((quantile(Y13$PrisonHCV, 0.25)/mean(Y13$TotalPrisonPop))*100),
((quantile(Y14$PrisonHCV, 0.25)/mean(Y14$TotalPrisonPop))*100),
((quantile(Y15$PrisonHCV, 0.25)/mean(Y15$TotalPrisonPop))*100)
)

HCV$PrevalencePrisonTotalCeiling <- c(
((quantile(Y7$PrisonHCV, 0.75)/mean(Y7$TotalPrisonPop))*100),
((quantile(Y8$PrisonHCV, 0.75)/mean(Y8$TotalPrisonPop))*100),
((quantile(Y9$PrisonHCV, 0.75)/mean(Y9$TotalPrisonPop))*100),
((quantile(Y10$PrisonHCV, 0.75)/mean(Y10$TotalPrisonPop))*100),
((quantile(Y11$PrisonHCV, 0.75)/mean(Y11$TotalPrisonPop))*100),
((quantile(Y12$PrisonHCV, 0.75)/mean(Y12$TotalPrisonPop))*100),
((quantile(Y13$PrisonHCV, 0.75)/mean(Y13$TotalPrisonPop))*100),
((quantile(Y14$PrisonHCV, 0.75)/mean(Y14$TotalPrisonPop))*100),
((quantile(Y15$PrisonHCV, 0.75)/mean(Y15$TotalPrisonPop))*100)
)

HCV$PrevalenceComIDUFloor <- c(
((quantile(Y7$COMMUNITYHCV, 0.25)/mean(Y7$TotalIDU))*100),
((quantile(Y8$COMMUNITYHCV, 0.25)/mean(Y8$TotalIDU))*100),
((quantile(Y9$COMMUNITYHCV, 0.25)/mean(Y9$TotalIDU))*100),
((quantile(Y10$COMMUNITYHCV, 0.25)/mean(Y10$TotalIDU))*100),
((quantile(Y11$COMMUNITYHCV, 0.25)/mean(Y11$TotalIDU))*100),
((quantile(Y12$COMMUNITYHCV, 0.25)/mean(Y12$TotalIDU))*100),
((quantile(Y13$COMMUNITYHCV, 0.25)/mean(Y13$TotalIDU))*100),
((quantile(Y14$COMMUNITYHCV, 0.25)/mean(Y14$TotalIDU))*100),
((quantile(Y15$COMMUNITYHCV, 0.25)/mean(Y15$TotalIDU))*100)
)
HCV$PrevalenceComIDUCeiling <- c(
((quantile(Y7$COMMUNITYHCV, 0.75)/mean(Y7$TotalIDU))*100),
((quantile(Y8$COMMUNITYHCV, 0.75)/mean(Y8$TotalIDU))*100),
((quantile(Y9$COMMUNITYHCV, 0.75)/mean(Y9$TotalIDU))*100),
((quantile(Y10$COMMUNITYHCV, 0.75)/mean(Y10$TotalIDU))*100),
((quantile(Y11$COMMUNITYHCV, 0.75)/mean(Y11$TotalIDU))*100),
((quantile(Y12$COMMUNITYHCV, 0.75)/mean(Y12$TotalIDU))*100),
((quantile(Y13$COMMUNITYHCV, 0.75)/mean(Y13$TotalIDU))*100),
((quantile(Y14$COMMUNITYHCV, 0.75)/mean(Y14$TotalIDU))*100),
((quantile(Y15$COMMUNITYHCV, 0.75)/mean(Y15$TotalIDU))*100)
)

HCV$PrevalenceComTotalFloor <- c(
((quantile(Y7$COMMUNITYHCV, 0.25)/mean(Y7$TotalPrisonPop))*100),
((quantile(Y8$COMMUNITYHCV, 0.25)/mean(Y8$TotalPrisonPop))*100),
((quantile(Y9$COMMUNITYHCV, 0.25)/mean(Y9$TotalPrisonPop))*100),
((quantile(Y10$COMMUNITYHCV, 0.25)/mean(Y10$TotalPrisonPop))*100),
((quantile(Y11$COMMUNITYHCV, 0.25)/mean(Y11$TotalPrisonPop))*100),
((quantile(Y12$COMMUNITYHCV, 0.25)/mean(Y12$TotalPrisonPop))*100),
((quantile(Y13$COMMUNITYHCV, 0.25)/mean(Y13$TotalPrisonPop))*100),
((quantile(Y14$COMMUNITYHCV, 0.25)/mean(Y14$TotalPrisonPop))*100),
((quantile(Y15$COMMUNITYHCV, 0.25)/mean(Y15$TotalPrisonPop))*100)
)

HCV$PrevalenceComTotalCeiling <- c(
((quantile(Y7$COMMUNITYHCV, 0.75)/mean(Y7$TotalPrisonPop))*100),
((quantile(Y8$COMMUNITYHCV, 0.75)/mean(Y8$TotalPrisonPop))*100),
((quantile(Y9$COMMUNITYHCV, 0.75)/mean(Y9$TotalPrisonPop))*100),
((quantile(Y10$COMMUNITYHCV, 0.75)/mean(Y10$TotalPrisonPop))*100),
((quantile(Y11$COMMUNITYHCV, 0.75)/mean(Y11$TotalPrisonPop))*100),
((quantile(Y12$COMMUNITYHCV, 0.75)/mean(Y12$TotalPrisonPop))*100),
((quantile(Y13$COMMUNITYHCV, 0.75)/mean(Y13$TotalPrisonPop))*100),
((quantile(Y14$COMMUNITYHCV, 0.75)/mean(Y14$TotalPrisonPop))*100),
((quantile(Y15$COMMUNITYHCV, 0.75)/mean(Y15$TotalPrisonPop))*100)
)

HCV$PrevalenceAllIDUFloor <- c(
((quantile(Y7$TotalHCV, 0.25)/mean(Y7$TotalIDU))*100),
((quantile(Y8$TotalHCV, 0.25)/mean(Y8$TotalIDU))*100),
((quantile(Y9$TotalHCV, 0.25)/mean(Y9$TotalIDU))*100),
((quantile(Y10$TotalHCV, 0.25)/mean(Y10$TotalIDU))*100),
((quantile(Y11$TotalHCV, 0.25)/mean(Y11$TotalIDU))*100),
((quantile(Y12$TotalHCV, 0.25)/mean(Y12$TotalIDU))*100),
((quantile(Y13$TotalHCV, 0.25)/mean(Y13$TotalIDU))*100),
((quantile(Y14$TotalHCV, 0.25)/mean(Y14$TotalIDU))*100),
((quantile(Y15$TotalHCV, 0.25)/mean(Y15$TotalIDU))*100)
)

HCV$PrevalenceAllIDUCeiling <- c(
((quantile(Y7$TotalHCV, 0.75)/mean(Y7$TotalIDU))*100),
((quantile(Y8$TotalHCV, 0.75)/mean(Y8$TotalIDU))*100),
((quantile(Y9$TotalHCV, 0.75)/mean(Y9$TotalIDU))*100),
((quantile(Y10$TotalHCV, 0.75)/mean(Y10$TotalIDU))*100),
((quantile(Y11$TotalHCV, 0.75)/mean(Y11$TotalIDU))*100),
((quantile(Y12$TotalHCV, 0.75)/mean(Y12$TotalIDU))*100),
((quantile(Y13$TotalHCV, 0.75)/mean(Y13$TotalIDU))*100),
((quantile(Y14$TotalHCV, 0.75)/mean(Y14$TotalIDU))*100),
((quantile(Y15$TotalHCV, 0.75)/mean(Y15$TotalIDU))*100)
)

HCV$PrevalenceAllTotalFloor <- c(
((quantile(Y7$TotalHCV, 0.25)/mean(Y7$TotalPrisonPop))*100),
((quantile(Y8$TotalHCV, 0.25)/mean(Y8$TotalPrisonPop))*100),
((quantile(Y9$TotalHCV, 0.25)/mean(Y9$TotalPrisonPop))*100),
((quantile(Y10$TotalHCV, 0.25)/mean(Y10$TotalPrisonPop))*100),
((quantile(Y11$TotalHCV, 0.25)/mean(Y11$TotalPrisonPop))*100),
((quantile(Y12$TotalHCV, 0.25)/mean(Y12$TotalPrisonPop))*100),
((quantile(Y13$TotalHCV, 0.25)/mean(Y13$TotalPrisonPop))*100),
((quantile(Y14$TotalHCV, 0.25)/mean(Y14$TotalPrisonPop))*100),
((quantile(Y15$TotalHCV, 0.25)/mean(Y15$TotalPrisonPop))*100)
)

HCV$PrevalenceAllTotalCeiling <- c(
((quantile(Y7$TotalHCV, 0.75)/mean(Y7$TotalPrisonPop))*100),
((quantile(Y8$TotalHCV, 0.75)/mean(Y8$TotalPrisonPop))*100),
((quantile(Y9$TotalHCV, 0.75)/mean(Y9$TotalPrisonPop))*100),
((quantile(Y10$TotalHCV, 0.75)/mean(Y10$TotalPrisonPop))*100),
((quantile(Y11$TotalHCV, 0.75)/mean(Y11$TotalPrisonPop))*100),
((quantile(Y12$TotalHCV, 0.75)/mean(Y12$TotalPrisonPop))*100),
((quantile(Y13$TotalHCV, 0.75)/mean(Y13$TotalPrisonPop))*100),
((quantile(Y14$TotalHCV, 0.75)/mean(Y14$TotalPrisonPop))*100),
((quantile(Y15$TotalHCV, 0.75)/mean(Y15$TotalPrisonPop))*100)
)

HCV$Population <- c(
mean(Y7$TotalPrisonPop),
mean(Y8$TotalPrisonPop),
mean(Y9$TotalPrisonPop),
mean(Y10$TotalPrisonPop),
mean(Y11$TotalPrisonPop),
mean(Y12$TotalPrisonPop),
mean(Y13$TotalPrisonPop),
mean(Y14$TotalPrisonPop),
mean(Y15$TotalPrisonPop)
)

HCV$PopulationFloor <- c(
median(Y7$TotalPrisonPop)-quantile(Y7$TotalPrisonPop, 0.25),
median(Y8$TotalPrisonPop)-quantile(Y8$TotalPrisonPop, 0.25),
median(Y9$TotalPrisonPop)-quantile(Y9$TotalPrisonPop, 0.25),
median(Y10$TotalPrisonPop)-quantile(Y10$TotalPrisonPop, 0.25),
median(Y11$TotalPrisonPop)-quantile(Y11$TotalPrisonPop, 0.25),
median(Y12$TotalPrisonPop)-quantile(Y12$TotalPrisonPop, 0.25),
median(Y13$TotalPrisonPop)-quantile(Y13$TotalPrisonPop, 0.25),
median(Y14$TotalPrisonPop)-quantile(Y14$TotalPrisonPop, 0.25),
median(Y15$TotalPrisonPop)-quantile(Y15$TotalPrisonPop, 0.25)
)

HCV$PopulationCeiling <- c(
quantile(Y7$TotalPrisonPop, 0.75)-median(Y7$TotalPrisonPop),
quantile(Y8$TotalPrisonPop, 0.75)-median(Y8$TotalPrisonPop),
quantile(Y9$TotalPrisonPop, 0.75)-median(Y9$TotalPrisonPop),
quantile(Y10$TotalPrisonPop, 0.75)-median(Y10$TotalPrisonPop),
quantile(Y11$TotalPrisonPop, 0.75)-median(Y11$TotalPrisonPop),
quantile(Y12$TotalPrisonPop, 0.75)-median(Y12$TotalPrisonPop),
quantile(Y13$TotalPrisonPop, 0.75)-median(Y13$TotalPrisonPop),
quantile(Y14$TotalPrisonPop, 0.75)-median(Y14$TotalPrisonPop),
quantile(Y15$TotalPrisonPop, 0.75)-median(Y15$TotalPrisonPop)
)

HCV$Year <- c("2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020")

#C
HCVC <- data.frame("IncidenceIDU"=c(
((mean(CY7$NewCases)/mean(CY7$TotalIDU))*100)*365,
((mean(CY8$NewCases)/mean(CY8$TotalIDU))*100)*365,
((mean(CY9$NewCases)/mean(CY9$TotalIDU))*100)*365,
((mean(CY10$NewCases)/mean(CY10$TotalIDU))*100)*365,
((mean(CY11$NewCases)/mean(CY11$TotalIDU))*100)*365, ((mean(CY12$NewCases)/mean(CY12$TotalIDU))*100)*365, ((mean(CY13$NewCases)/mean(CY13$TotalIDU))*100)*365, ((mean(CY14$NewCases)/mean(CY14$TotalIDU))*100)*365, ((mean(CY15$NewCases)/mean(CY15$TotalIDU))*100)*365))
HCVC$IncidenceIDUCI <- c(
(1.96*((((mean(CY7$NewCases)/mean(CY7$TotalIDU))^2)*365)*((((var(CY7$NewCases)/mean(CY7$NewCases))^2))*365+(((var(CY7$TotalIDU)/mean(CY7$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY8$NewCases)/mean(CY8$TotalIDU))^2)*365)*((((var(CY8$NewCases)/mean(CY8$NewCases))^2))*365+(((var(CY8$TotalIDU)/mean(CY8$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY9$NewCases)/mean(CY9$TotalIDU))^2)*365)*((((var(CY9$NewCases)/mean(CY9$NewCases))^2))*365+(((var(CY9$TotalIDU)/mean(CY9$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY10$NewCases)/mean(CY10$TotalIDU))^2)*365)*((((var(CY10$NewCases)/mean(CY10$NewCases))^2))*365+(((var(CY10$TotalIDU)/mean(CY10$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY11$NewCases)/mean(CY11$TotalIDU))^2)*365)*((((var(CY11$NewCases)/mean(CY11$NewCases))^2))*365+(((var(CY11$TotalIDU)/mean(CY11$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY12$NewCases)/mean(CY12$TotalIDU))^2)*365)*((((var(CY12$NewCases)/mean(CY12$NewCases))^2))*365+(((var(CY12$TotalIDU)/mean(CY12$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY13$NewCases)/mean(CY13$TotalIDU))^2)*365)*((((var(CY13$NewCases)/mean(CY13$NewCases))^2))*365+(((var(CY13$TotalIDU)/mean(CY13$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY14$NewCases)/mean(CY14$TotalIDU))^2)*365)*((((var(CY14$NewCases)/mean(CY14$NewCases))^2))*365+(((var(CY14$TotalIDU)/mean(CY14$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY15$NewCases)/mean(CY15$TotalIDU))^2)*365)*((((var(CY15$NewCases)/mean(CY15$NewCases))^2))*365+(((var(CY15$TotalIDU)/mean(CY15$TotalIDU))^2))*365)/sqrt(50*365)))*100
)
HCVC$IncidenceIDUCIFloor <- c(0,0,0,0,0,0,0,0,0)
HCVC$IncidenceIDUCICeiling <- c(0,0,0,0,0,0,0,0,0)

HCVC$IncidencePop <- c(
((mean(CY7$NewCases)/mean(CY7$TotalPrisonPop))*100)*365, 
((mean(CY8$NewCases)/mean(CY8$TotalPrisonPop))*100)*365, 
((mean(CY9$NewCases)/mean(CY9$TotalPrisonPop))*100)*365, 
((mean(CY10$NewCases)/mean(CY10$TotalPrisonPop))*100)*365, 
((mean(CY11$NewCases)/mean(CY11$TotalPrisonPop))*100)*365, 
((mean(CY12$NewCases)/mean(CY12$TotalPrisonPop))*100)*365, 
((mean(CY13$NewCases)/mean(CY13$TotalPrisonPop))*100)*365, 
((mean(CY14$NewCases)/mean(CY14$TotalPrisonPop))*100)*365, 
((mean(CY15$NewCases)/mean(CY15$TotalPrisonPop))*100)*365)
HCVC$IncidencePopCI <- c(
(1.96*((((mean(CY7$NewCases)/mean(CY7$TotalPrisonPop))^2)*365)*((((var(CY7$NewCases)/mean(CY7$NewCases))^2))*365+(((var(CY7$TotalPrisonPop)/mean(CY7$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY8$NewCases)/mean(CY8$TotalPrisonPop))^2)*365)*((((var(CY8$NewCases)/mean(CY8$NewCases))^2))*365+(((var(CY8$TotalPrisonPop)/mean(CY8$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY9$NewCases)/mean(CY9$TotalPrisonPop))^2)*365)*((((var(CY9$NewCases)/mean(CY9$NewCases))^2))*365+(((var(CY9$TotalPrisonPop)/mean(CY9$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY10$NewCases)/mean(CY10$TotalPrisonPop))^2)*365)*((((var(CY10$NewCases)/mean(CY10$NewCases))^2))*365+(((var(CY10$TotalPrisonPop)/mean(CY10$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY11$NewCases)/mean(CY11$TotalPrisonPop))^2)*365)*((((var(CY11$NewCases)/mean(CY11$NewCases))^2))*365+(((var(CY11$TotalPrisonPop)/mean(CY11$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY12$NewCases)/mean(CY12$TotalPrisonPop))^2)*365)*((((var(CY12$NewCases)/mean(CY12$NewCases))^2))*365+(((var(CY12$TotalPrisonPop)/mean(CY12$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY13$NewCases)/mean(CY13$TotalPrisonPop))^2)*365)*((((var(CY13$NewCases)/mean(CY13$NewCases))^2))*365+(((var(CY13$TotalPrisonPop)/mean(CY13$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY14$NewCases)/mean(CY14$TotalPrisonPop))^2)*365)*((((var(CY14$NewCases)/mean(CY14$NewCases))^2))*365+(((var(CY14$TotalPrisonPop)/mean(CY14$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY15$NewCases)/mean(CY15$TotalPrisonPop))^2)*365)*((((var(CY15$NewCases)/mean(CY15$NewCases))^2))*365+(((var(CY15$TotalPrisonPop)/mean(CY15$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100
)
HCVC$IncidencePopCIFloor <- c(0,0,0,0,0,0,0,0,0)
HCVC$IncidencePopCICeiling <- c(0,0,0,0,0,0,0,0,0)

HCVC$PrevalencePrisIDU <- c(
((mean(CY7$PrisonHCV)/mean(CY7$TotalIDU))*100),
((mean(CY8$PrisonHCV)/mean(CY8$TotalIDU))*100),
((mean(CY9$PrisonHCV)/mean(CY9$TotalIDU))*100),
((mean(CY10$PrisonHCV)/mean(CY10$TotalIDU))*100),
((mean(CY11$PrisonHCV)/mean(CY11$TotalIDU))*100),
((mean(CY12$PrisonHCV)/mean(CY12$TotalIDU))*100),
((mean(CY13$PrisonHCV)/mean(CY13$TotalIDU))*100),
((mean(CY14$PrisonHCV)/mean(CY14$TotalIDU))*100),
((mean(CY15$PrisonHCV)/mean(CY15$TotalIDU))*100)
)

HCVC$PrevalenceComIDU <- c(
((mean(CY7$COMMUNITYHCV)/mean(CY7$TotalIDU))*100),
((mean(CY8$COMMUNITYHCV)/mean(CY8$TotalIDU))*100),
((mean(CY9$COMMUNITYHCV)/mean(CY9$TotalIDU))*100),
((mean(CY10$COMMUNITYHCV)/mean(CY10$TotalIDU))*100),
((mean(CY11$COMMUNITYHCV)/mean(CY11$TotalIDU))*100),
((mean(CY12$COMMUNITYHCV)/mean(CY12$TotalIDU))*100),
((mean(CY13$COMMUNITYHCV)/mean(CY13$TotalIDU))*100),
((mean(CY14$COMMUNITYHCV)/mean(CY14$TotalIDU))*100),
((mean(CY15$COMMUNITYHCV)/mean(CY15$TotalIDU))*100)
)

HCVC$PrevalenceAllIDU <- c(
((mean(CY7$TotalHCV)/mean(CY7$TotalIDU))*100),
((mean(CY8$TotalHCV)/mean(CY8$TotalIDU))*100),
((mean(CY9$TotalHCV)/mean(CY9$TotalIDU))*100),
((mean(CY10$TotalHCV)/mean(CY10$TotalIDU))*100),
((mean(CY11$TotalHCV)/mean(CY11$TotalIDU))*100),
((mean(CY12$TotalHCV)/mean(CY12$TotalIDU))*100),
((mean(CY13$TotalHCV)/mean(CY13$TotalIDU))*100),
((mean(CY14$TotalHCV)/mean(CY14$TotalIDU))*100),
((mean(CY15$TotalHCV)/mean(CY15$TotalIDU))*100)
)

HCVC$PrevalencePrisTotal <- c(
((mean(CY7$PrisonHCV)/mean(CY7$TotalPrisonPop))*100),
((mean(CY8$PrisonHCV)/mean(CY8$TotalPrisonPop))*100),
((mean(CY9$PrisonHCV)/mean(CY9$TotalPrisonPop))*100),
((mean(CY10$PrisonHCV)/mean(CY10$TotalPrisonPop))*100),
((mean(CY11$PrisonHCV)/mean(CY11$TotalPrisonPop))*100),
((mean(CY12$PrisonHCV)/mean(CY12$TotalPrisonPop))*100),
((mean(CY13$PrisonHCV)/mean(CY13$TotalPrisonPop))*100),
((mean(CY14$PrisonHCV)/mean(CY14$TotalPrisonPop))*100),
((mean(CY15$PrisonHCV)/mean(CY15$TotalPrisonPop))*100)
)

HCVC$PrevalenceComTotal <- c(
((mean(CY7$COMMUNITYHCV)/mean(CY7$TotalPrisonPop))*100),
((mean(CY8$COMMUNITYHCV)/mean(CY8$TotalPrisonPop))*100),
((mean(CY9$COMMUNITYHCV)/mean(CY9$TotalPrisonPop))*100),
((mean(CY10$COMMUNITYHCV)/mean(CY10$TotalPrisonPop))*100),
((mean(CY11$COMMUNITYHCV)/mean(CY11$TotalPrisonPop))*100),
((mean(CY12$COMMUNITYHCV)/mean(CY12$TotalPrisonPop))*100),
((mean(CY13$COMMUNITYHCV)/mean(CY13$TotalPrisonPop))*100),
((mean(CY14$COMMUNITYHCV)/mean(CY14$TotalPrisonPop))*100),
((mean(CY15$COMMUNITYHCV)/mean(CY15$TotalPrisonPop))*100)
)

HCVC$PrevalenceAllTotal <- c(
((mean(CY7$TotalHCV)/mean(CY7$TotalPrisonPop))*100),
((mean(CY8$TotalHCV)/mean(CY8$TotalPrisonPop))*100),
((mean(CY9$TotalHCV)/mean(CY9$TotalPrisonPop))*100),
((mean(CY10$TotalHCV)/mean(CY10$TotalPrisonPop))*100),
((mean(CY11$TotalHCV)/mean(CY11$TotalPrisonPop))*100),
((mean(CY12$TotalHCV)/mean(CY12$TotalPrisonPop))*100),
((mean(CY13$TotalHCV)/mean(CY13$TotalPrisonPop))*100),
((mean(CY14$TotalHCV)/mean(CY14$TotalPrisonPop))*100),
((mean(CY15$TotalHCV)/mean(CY15$TotalPrisonPop))*100)
)

HCVC$PrevalencePrisonIDUFloor <- c(
((quantile(CY7$PrisonHCV, 0.25)/mean(CY7$TotalIDU))*100),
((quantile(CY8$PrisonHCV, 0.25)/mean(CY8$TotalIDU))*100),
((quantile(CY9$PrisonHCV, 0.25)/mean(CY9$TotalIDU))*100),
((quantile(CY10$PrisonHCV, 0.25)/mean(CY10$TotalIDU))*100),
((quantile(CY11$PrisonHCV, 0.25)/mean(CY11$TotalIDU))*100),
((quantile(CY12$PrisonHCV, 0.25)/mean(CY12$TotalIDU))*100),
((quantile(CY13$PrisonHCV, 0.25)/mean(CY13$TotalIDU))*100),
((quantile(CY14$PrisonHCV, 0.25)/mean(CY14$TotalIDU))*100),
((quantile(CY15$PrisonHCV, 0.25)/mean(CY15$TotalIDU))*100)
)

HCVC$PrevalencePrisonIDUCeiling <- c(
((quantile(CY7$PrisonHCV, 0.75)/mean(CY7$TotalIDU))*100),
((quantile(CY8$PrisonHCV, 0.75)/mean(CY8$TotalIDU))*100),
((quantile(CY9$PrisonHCV, 0.75)/mean(CY9$TotalIDU))*100),
((quantile(CY10$PrisonHCV, 0.75)/mean(CY10$TotalIDU))*100),
((quantile(CY11$PrisonHCV, 0.75)/mean(CY11$TotalIDU))*100),
((quantile(CY12$PrisonHCV, 0.75)/mean(CY12$TotalIDU))*100),
((quantile(CY13$PrisonHCV, 0.75)/mean(CY13$TotalIDU))*100),
((quantile(CY14$PrisonHCV, 0.75)/mean(CY14$TotalIDU))*100),
((quantile(CY15$PrisonHCV, 0.75)/mean(CY15$TotalIDU))*100)
)

HCVC$PrevalencePrisonTotalFloor <- c(
((quantile(CY7$PrisonHCV, 0.25)/mean(CY7$TotalPrisonPop))*100),
((quantile(CY8$PrisonHCV, 0.25)/mean(CY8$TotalPrisonPop))*100),
((quantile(CY9$PrisonHCV, 0.25)/mean(CY9$TotalPrisonPop))*100),
((quantile(CY10$PrisonHCV, 0.25)/mean(CY10$TotalPrisonPop))*100),
((quantile(CY11$PrisonHCV, 0.25)/mean(CY11$TotalPrisonPop))*100),
((quantile(CY12$PrisonHCV, 0.25)/mean(CY12$TotalPrisonPop))*100),
((quantile(CY13$PrisonHCV, 0.25)/mean(CY13$TotalPrisonPop))*100),
((quantile(CY14$PrisonHCV, 0.25)/mean(CY14$TotalPrisonPop))*100),
((quantile(CY15$PrisonHCV, 0.25)/mean(CY15$TotalPrisonPop))*100)
)

HCVC$PrevalencePrisonTotalCeiling <- c(
((quantile(CY7$PrisonHCV, 0.75)/mean(CY7$TotalPrisonPop))*100),
((quantile(CY8$PrisonHCV, 0.75)/mean(CY8$TotalPrisonPop))*100),
((quantile(CY9$PrisonHCV, 0.75)/mean(CY9$TotalPrisonPop))*100),
((quantile(CY10$PrisonHCV, 0.75)/mean(CY10$TotalPrisonPop))*100),
((quantile(CY11$PrisonHCV, 0.75)/mean(CY11$TotalPrisonPop))*100),
((quantile(CY12$PrisonHCV, 0.75)/mean(CY12$TotalPrisonPop))*100),
((quantile(CY13$PrisonHCV, 0.75)/mean(CY13$TotalPrisonPop))*100),
((quantile(CY14$PrisonHCV, 0.75)/mean(CY14$TotalPrisonPop))*100),
((quantile(CY15$PrisonHCV, 0.75)/mean(CY15$TotalPrisonPop))*100)
)

HCVC$PrevalenceComIDUFloor <- c(
((quantile(CY7$COMMUNITYHCV, 0.25)/mean(CY7$TotalIDU))*100),
((quantile(CY8$COMMUNITYHCV, 0.25)/mean(CY8$TotalIDU))*100),
((quantile(CY9$COMMUNITYHCV, 0.25)/mean(CY9$TotalIDU))*100),
((quantile(CY10$COMMUNITYHCV, 0.25)/mean(CY10$TotalIDU))*100),
((quantile(CY11$COMMUNITYHCV, 0.25)/mean(CY11$TotalIDU))*100),
((quantile(CY12$COMMUNITYHCV, 0.25)/mean(CY12$TotalIDU))*100),
((quantile(CY13$COMMUNITYHCV, 0.25)/mean(CY13$TotalIDU))*100),
((quantile(CY14$COMMUNITYHCV, 0.25)/mean(CY14$TotalIDU))*100),
((quantile(CY15$COMMUNITYHCV, 0.25)/mean(CY15$TotalIDU))*100)
)
HCVC$PrevalenceComIDUCeiling <- c(
((quantile(CY7$COMMUNITYHCV, 0.75)/mean(CY7$TotalIDU))*100),
((quantile(CY8$COMMUNITYHCV, 0.75)/mean(CY8$TotalIDU))*100),
((quantile(CY9$COMMUNITYHCV, 0.75)/mean(CY9$TotalIDU))*100),
((quantile(CY10$COMMUNITYHCV, 0.75)/mean(CY10$TotalIDU))*100),
((quantile(CY11$COMMUNITYHCV, 0.75)/mean(CY11$TotalIDU))*100),
((quantile(CY12$COMMUNITYHCV, 0.75)/mean(CY12$TotalIDU))*100),
((quantile(CY13$COMMUNITYHCV, 0.75)/mean(CY13$TotalIDU))*100),
((quantile(CY14$COMMUNITYHCV, 0.75)/mean(CY14$TotalIDU))*100),
((quantile(CY15$COMMUNITYHCV, 0.75)/mean(CY15$TotalIDU))*100)
)

HCVC$PrevalenceComTotalFloor <- c(
((quantile(CY7$COMMUNITYHCV, 0.25)/mean(CY7$TotalPrisonPop))*100),
((quantile(CY8$COMMUNITYHCV, 0.25)/mean(CY8$TotalPrisonPop))*100),
((quantile(CY9$COMMUNITYHCV, 0.25)/mean(CY9$TotalPrisonPop))*100),
((quantile(CY10$COMMUNITYHCV, 0.25)/mean(CY10$TotalPrisonPop))*100),
((quantile(CY11$COMMUNITYHCV, 0.25)/mean(CY11$TotalPrisonPop))*100),
((quantile(CY12$COMMUNITYHCV, 0.25)/mean(CY12$TotalPrisonPop))*100),
((quantile(CY13$COMMUNITYHCV, 0.25)/mean(CY13$TotalPrisonPop))*100),
((quantile(CY14$COMMUNITYHCV, 0.25)/mean(CY14$TotalPrisonPop))*100),
((quantile(CY15$COMMUNITYHCV, 0.25)/mean(CY15$TotalPrisonPop))*100)
)

HCVC$PrevalenceComTotalCeiling <- c(
((quantile(CY7$COMMUNITYHCV, 0.75)/mean(CY7$TotalPrisonPop))*100),
((quantile(CY8$COMMUNITYHCV, 0.75)/mean(CY8$TotalPrisonPop))*100),
((quantile(CY9$COMMUNITYHCV, 0.75)/mean(CY9$TotalPrisonPop))*100),
((quantile(CY10$COMMUNITYHCV, 0.75)/mean(CY10$TotalPrisonPop))*100),
((quantile(CY11$COMMUNITYHCV, 0.75)/mean(CY11$TotalPrisonPop))*100),
((quantile(CY12$COMMUNITYHCV, 0.75)/mean(CY12$TotalPrisonPop))*100),
((quantile(CY13$COMMUNITYHCV, 0.75)/mean(CY13$TotalPrisonPop))*100),
((quantile(CY14$COMMUNITYHCV, 0.75)/mean(CY14$TotalPrisonPop))*100),
((quantile(CY15$COMMUNITYHCV, 0.75)/mean(CY15$TotalPrisonPop))*100)
)

HCVC$PrevalenceAllIDUFloor <- c(
((quantile(CY7$TotalHCV, 0.25)/mean(CY7$TotalIDU))*100),
((quantile(CY8$TotalHCV, 0.25)/mean(CY8$TotalIDU))*100),
((quantile(CY9$TotalHCV, 0.25)/mean(CY9$TotalIDU))*100),
((quantile(CY10$TotalHCV, 0.25)/mean(CY10$TotalIDU))*100),
((quantile(CY11$TotalHCV, 0.25)/mean(CY11$TotalIDU))*100),
((quantile(CY12$TotalHCV, 0.25)/mean(CY12$TotalIDU))*100),
((quantile(CY13$TotalHCV, 0.25)/mean(CY13$TotalIDU))*100),
((quantile(CY14$TotalHCV, 0.25)/mean(CY14$TotalIDU))*100),
((quantile(CY15$TotalHCV, 0.25)/mean(CY15$TotalIDU))*100)
)

HCVC$PrevalenceAllIDUCeiling <- c(
((quantile(CY7$TotalHCV, 0.75)/mean(CY7$TotalIDU))*100),
((quantile(CY8$TotalHCV, 0.75)/mean(CY8$TotalIDU))*100),
((quantile(CY9$TotalHCV, 0.75)/mean(CY9$TotalIDU))*100),
((quantile(CY10$TotalHCV, 0.75)/mean(CY10$TotalIDU))*100),
((quantile(CY11$TotalHCV, 0.75)/mean(CY11$TotalIDU))*100),
((quantile(CY12$TotalHCV, 0.75)/mean(CY12$TotalIDU))*100),
((quantile(CY13$TotalHCV, 0.75)/mean(CY13$TotalIDU))*100),
((quantile(CY14$TotalHCV, 0.75)/mean(CY14$TotalIDU))*100),
((quantile(CY15$TotalHCV, 0.75)/mean(CY15$TotalIDU))*100)
)

HCVC$PrevalenceAllTotalFloor <- c(
((quantile(CY7$TotalHCV, 0.25)/mean(CY7$TotalPrisonPop))*100),
((quantile(CY8$TotalHCV, 0.25)/mean(CY8$TotalPrisonPop))*100),
((quantile(CY9$TotalHCV, 0.25)/mean(CY9$TotalPrisonPop))*100),
((quantile(CY10$TotalHCV, 0.25)/mean(CY10$TotalPrisonPop))*100),
((quantile(CY11$TotalHCV, 0.25)/mean(CY11$TotalPrisonPop))*100),
((quantile(CY12$TotalHCV, 0.25)/mean(CY12$TotalPrisonPop))*100),
((quantile(CY13$TotalHCV, 0.25)/mean(CY13$TotalPrisonPop))*100),
((quantile(CY14$TotalHCV, 0.25)/mean(CY14$TotalPrisonPop))*100),
((quantile(CY15$TotalHCV, 0.25)/mean(CY15$TotalPrisonPop))*100)
)

HCVC$PrevalenceAllTotalCeiling <- c(
((quantile(CY7$TotalHCV, 0.75)/mean(CY7$TotalPrisonPop))*100),
((quantile(CY8$TotalHCV, 0.75)/mean(CY8$TotalPrisonPop))*100),
((quantile(CY9$TotalHCV, 0.75)/mean(CY9$TotalPrisonPop))*100),
((quantile(CY10$TotalHCV, 0.75)/mean(CY10$TotalPrisonPop))*100),
((quantile(CY11$TotalHCV, 0.75)/mean(CY11$TotalPrisonPop))*100),
((quantile(CY12$TotalHCV, 0.75)/mean(CY12$TotalPrisonPop))*100),
((quantile(CY13$TotalHCV, 0.75)/mean(CY13$TotalPrisonPop))*100),
((quantile(CY14$TotalHCV, 0.75)/mean(CY14$TotalPrisonPop))*100),
((quantile(CY15$TotalHCV, 0.75)/mean(CY15$TotalPrisonPop))*100)
)

HCVC$Population <- c(
mean(CY7$TotalPrisonPop),
mean(CY8$TotalPrisonPop),
mean(CY9$TotalPrisonPop),
mean(CY10$TotalPrisonPop),
mean(CY11$TotalPrisonPop),
mean(CY12$TotalPrisonPop),
mean(CY13$TotalPrisonPop),
mean(CY14$TotalPrisonPop),
mean(CY15$TotalPrisonPop)
)

HCVC$PopulationFloor <- c(
median(CY7$TotalPrisonPop)-quantile(CY7$TotalPrisonPop, 0.25),
median(CY8$TotalPrisonPop)-quantile(CY8$TotalPrisonPop, 0.25),
median(CY9$TotalPrisonPop)-quantile(CY9$TotalPrisonPop, 0.25),
median(CY10$TotalPrisonPop)-quantile(CY10$TotalPrisonPop, 0.25),
median(CY11$TotalPrisonPop)-quantile(CY11$TotalPrisonPop, 0.25),
median(CY12$TotalPrisonPop)-quantile(CY12$TotalPrisonPop, 0.25),
median(CY13$TotalPrisonPop)-quantile(CY13$TotalPrisonPop, 0.25),
median(CY14$TotalPrisonPop)-quantile(CY14$TotalPrisonPop, 0.25),
median(CY15$TotalPrisonPop)-quantile(CY15$TotalPrisonPop, 0.25)
)

HCVC$PopulationCeiling <- c(
quantile(CY7$TotalPrisonPop, 0.75)-median(CY7$TotalPrisonPop),
quantile(CY8$TotalPrisonPop, 0.75)-median(CY8$TotalPrisonPop),
quantile(CY9$TotalPrisonPop, 0.75)-median(CY9$TotalPrisonPop),
quantile(CY10$TotalPrisonPop, 0.75)-median(CY10$TotalPrisonPop),
quantile(CY11$TotalPrisonPop, 0.75)-median(CY11$TotalPrisonPop),
quantile(CY12$TotalPrisonPop, 0.75)-median(CY12$TotalPrisonPop),
quantile(CY13$TotalPrisonPop, 0.75)-median(CY13$TotalPrisonPop),
quantile(CY14$TotalPrisonPop, 0.75)-median(CY14$TotalPrisonPop),
quantile(CY15$TotalPrisonPop, 0.75)-median(CY15$TotalPrisonPop)
)

HCVC$Year <- c("2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020")

#D
#TotalIDU incidence and prevalence
HCVD <- data.frame("IncidenceIDU"=c(
((mean(DY7$NewCases)/mean(DY7$TotalIDU))*100)*365,
((mean(DY8$NewCases)/mean(DY8$TotalIDU))*100)*365,
((mean(DY9$NewCases)/mean(DY9$TotalIDU))*100)*365,
((mean(DY10$NewCases)/mean(DY10$TotalIDU))*100)*365,
((mean(DY11$NewCases)/mean(DY11$TotalIDU))*100)*365, ((mean(DY12$NewCases)/mean(DY12$TotalIDU))*100)*365, ((mean(DY13$NewCases)/mean(DY13$TotalIDU))*100)*365, ((mean(DY14$NewCases)/mean(DY14$TotalIDU))*100)*365, ((mean(DY15$NewCases)/mean(DY15$TotalIDU))*100)*365))
HCVD$IncidenceIDUCI <- c(
(1.96*((((mean(DY7$NewCases)/mean(DY7$TotalIDU))^2)*365)*((((var(DY7$NewCases)/mean(DY7$NewCases))^2))*365+(((var(DY7$TotalIDU)/mean(DY7$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(DY8$NewCases)/mean(DY8$TotalIDU))^2)*365)*((((var(DY8$NewCases)/mean(DY8$NewCases))^2))*365+(((var(DY8$TotalIDU)/mean(DY8$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(DY9$NewCases)/mean(DY9$TotalIDU))^2)*365)*((((var(DY9$NewCases)/mean(DY9$NewCases))^2))*365+(((var(DY9$TotalIDU)/mean(DY9$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(DY10$NewCases)/mean(DY10$TotalIDU))^2)*365)*((((var(DY10$NewCases)/mean(DY10$NewCases))^2))*365+(((var(DY10$TotalIDU)/mean(DY10$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(DY11$NewCases)/mean(DY11$TotalIDU))^2)*365)*((((var(DY11$NewCases)/mean(DY11$NewCases))^2))*365+(((var(DY11$TotalIDU)/mean(DY11$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(DY12$NewCases)/mean(DY12$TotalIDU))^2)*365)*((((var(DY12$NewCases)/mean(DY12$NewCases))^2))*365+(((var(DY12$TotalIDU)/mean(DY12$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(DY13$NewCases)/mean(DY13$TotalIDU))^2)*365)*((((var(DY13$NewCases)/mean(DY13$NewCases))^2))*365+(((var(DY13$TotalIDU)/mean(DY13$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(DY14$NewCases)/mean(DY14$TotalIDU))^2)*365)*((((var(DY14$NewCases)/mean(DY14$NewCases))^2))*365+(((var(DY14$TotalIDU)/mean(DY14$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(DY15$NewCases)/mean(DY15$TotalIDU))^2)*365)*((((var(DY15$NewCases)/mean(DY15$NewCases))^2))*365+(((var(DY15$TotalIDU)/mean(DY15$TotalIDU))^2))*365)/sqrt(50*365)))*100
)
HCVD$IncidenceIDUCIFloor <- c(0,0,0,0,0,0,0,0,0)
HCVD$IncidenceIDUCICeiling <- c(0,0,0,0,0,0,0,0,0)

HCVD$IncidencePop <- c(
((mean(DY7$NewCases)/mean(DY7$TotalPrisonPop))*100)*365, 
((mean(DY8$NewCases)/mean(DY8$TotalPrisonPop))*100)*365, 
((mean(DY9$NewCases)/mean(DY9$TotalPrisonPop))*100)*365, 
((mean(DY10$NewCases)/mean(DY10$TotalPrisonPop))*100)*365, 
((mean(DY11$NewCases)/mean(DY11$TotalPrisonPop))*100)*365, 
((mean(DY12$NewCases)/mean(DY12$TotalPrisonPop))*100)*365, 
((mean(DY13$NewCases)/mean(DY13$TotalPrisonPop))*100)*365, 
((mean(DY14$NewCases)/mean(DY14$TotalPrisonPop))*100)*365, 
((mean(DY15$NewCases)/mean(DY15$TotalPrisonPop))*100)*365)
HCVD$IncidencePopCI <- c(
(1.96*((((mean(DY7$NewCases)/mean(DY7$TotalPrisonPop))^2)*365)*((((var(DY7$NewCases)/mean(DY7$NewCases))^2))*365+(((var(DY7$TotalPrisonPop)/mean(DY7$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(DY8$NewCases)/mean(DY8$TotalPrisonPop))^2)*365)*((((var(DY8$NewCases)/mean(DY8$NewCases))^2))*365+(((var(DY8$TotalPrisonPop)/mean(DY8$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(DY9$NewCases)/mean(DY9$TotalPrisonPop))^2)*365)*((((var(DY9$NewCases)/mean(DY9$NewCases))^2))*365+(((var(DY9$TotalPrisonPop)/mean(DY9$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(DY10$NewCases)/mean(DY10$TotalPrisonPop))^2)*365)*((((var(DY10$NewCases)/mean(DY10$NewCases))^2))*365+(((var(DY10$TotalPrisonPop)/mean(DY10$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(DY11$NewCases)/mean(DY11$TotalPrisonPop))^2)*365)*((((var(DY11$NewCases)/mean(DY11$NewCases))^2))*365+(((var(DY11$TotalPrisonPop)/mean(DY11$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(DY12$NewCases)/mean(DY12$TotalPrisonPop))^2)*365)*((((var(DY12$NewCases)/mean(DY12$NewCases))^2))*365+(((var(DY12$TotalPrisonPop)/mean(DY12$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(DY13$NewCases)/mean(DY13$TotalPrisonPop))^2)*365)*((((var(DY13$NewCases)/mean(DY13$NewCases))^2))*365+(((var(DY13$TotalPrisonPop)/mean(DY13$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(DY14$NewCases)/mean(DY14$TotalPrisonPop))^2)*365)*((((var(DY14$NewCases)/mean(DY14$NewCases))^2))*365+(((var(DY14$TotalPrisonPop)/mean(DY14$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(DY15$NewCases)/mean(DY15$TotalPrisonPop))^2)*365)*((((var(DY15$NewCases)/mean(DY15$NewCases))^2))*365+(((var(DY15$TotalPrisonPop)/mean(DY15$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100
)
HCVD$IncidencePopCIFloor <- c(0,0,0,0,0,0,0,0,0)
HCVD$IncidencePopCICeiling <- c(0,0,0,0,0,0,0,0,0)

HCVD$PrevalencePrisIDU <- c(
((mean(DY7$PrisonHCV)/mean(DY7$TotalIDU))*100),
((mean(DY8$PrisonHCV)/mean(DY8$TotalIDU))*100),
((mean(DY9$PrisonHCV)/mean(DY9$TotalIDU))*100),
((mean(DY10$PrisonHCV)/mean(DY10$TotalIDU))*100),
((mean(DY11$PrisonHCV)/mean(DY11$TotalIDU))*100),
((mean(DY12$PrisonHCV)/mean(DY12$TotalIDU))*100),
((mean(DY13$PrisonHCV)/mean(DY13$TotalIDU))*100),
((mean(DY14$PrisonHCV)/mean(DY14$TotalIDU))*100),
((mean(DY15$PrisonHCV)/mean(DY15$TotalIDU))*100)
)

HCVD$PrevalenceComIDU <- c(
((mean(DY7$COMMUNITYHCV)/mean(DY7$TotalIDU))*100),
((mean(DY8$COMMUNITYHCV)/mean(DY8$TotalIDU))*100),
((mean(DY9$COMMUNITYHCV)/mean(DY9$TotalIDU))*100),
((mean(DY10$COMMUNITYHCV)/mean(DY10$TotalIDU))*100),
((mean(DY11$COMMUNITYHCV)/mean(DY11$TotalIDU))*100),
((mean(DY12$COMMUNITYHCV)/mean(DY12$TotalIDU))*100),
((mean(DY13$COMMUNITYHCV)/mean(DY13$TotalIDU))*100),
((mean(DY14$COMMUNITYHCV)/mean(DY14$TotalIDU))*100),
((mean(DY15$COMMUNITYHCV)/mean(DY15$TotalIDU))*100)
)

HCVD$PrevalenceAllIDU <- c(
((mean(DY7$TotalHCV)/mean(DY7$TotalIDU))*100),
((mean(DY8$TotalHCV)/mean(DY8$TotalIDU))*100),
((mean(DY9$TotalHCV)/mean(DY9$TotalIDU))*100),
((mean(DY10$TotalHCV)/mean(DY10$TotalIDU))*100),
((mean(DY11$TotalHCV)/mean(DY11$TotalIDU))*100),
((mean(DY12$TotalHCV)/mean(DY12$TotalIDU))*100),
((mean(DY13$TotalHCV)/mean(DY13$TotalIDU))*100),
((mean(DY14$TotalHCV)/mean(DY14$TotalIDU))*100),
((mean(DY15$TotalHCV)/mean(DY15$TotalIDU))*100)
)

HCVD$PrevalencePrisTotal <- c(
((mean(DY7$PrisonHCV)/mean(DY7$TotalPrisonPop))*100),
((mean(DY8$PrisonHCV)/mean(DY8$TotalPrisonPop))*100),
((mean(DY9$PrisonHCV)/mean(DY9$TotalPrisonPop))*100),
((mean(DY10$PrisonHCV)/mean(DY10$TotalPrisonPop))*100),
((mean(DY11$PrisonHCV)/mean(DY11$TotalPrisonPop))*100),
((mean(DY12$PrisonHCV)/mean(DY12$TotalPrisonPop))*100),
((mean(DY13$PrisonHCV)/mean(DY13$TotalPrisonPop))*100),
((mean(DY14$PrisonHCV)/mean(DY14$TotalPrisonPop))*100),
((mean(DY15$PrisonHCV)/mean(DY15$TotalPrisonPop))*100)
)

HCVD$PrevalenceComTotal <- c(
((mean(DY7$COMMUNITYHCV)/mean(DY7$TotalPrisonPop))*100),
((mean(DY8$COMMUNITYHCV)/mean(DY8$TotalPrisonPop))*100),
((mean(DY9$COMMUNITYHCV)/mean(DY9$TotalPrisonPop))*100),
((mean(DY10$COMMUNITYHCV)/mean(DY10$TotalPrisonPop))*100),
((mean(DY11$COMMUNITYHCV)/mean(DY11$TotalPrisonPop))*100),
((mean(DY12$COMMUNITYHCV)/mean(DY12$TotalPrisonPop))*100),
((mean(DY13$COMMUNITYHCV)/mean(DY13$TotalPrisonPop))*100),
((mean(DY14$COMMUNITYHCV)/mean(DY14$TotalPrisonPop))*100),
((mean(DY15$COMMUNITYHCV)/mean(DY15$TotalPrisonPop))*100)
)

HCVD$PrevalenceAllTotal <- c(
((mean(DY7$TotalHCV)/mean(DY7$TotalPrisonPop))*100),
((mean(DY8$TotalHCV)/mean(DY8$TotalPrisonPop))*100),
((mean(DY9$TotalHCV)/mean(DY9$TotalPrisonPop))*100),
((mean(DY10$TotalHCV)/mean(DY10$TotalPrisonPop))*100),
((mean(DY11$TotalHCV)/mean(DY11$TotalPrisonPop))*100),
((mean(DY12$TotalHCV)/mean(DY12$TotalPrisonPop))*100),
((mean(DY13$TotalHCV)/mean(DY13$TotalPrisonPop))*100),
((mean(DY14$TotalHCV)/mean(DY14$TotalPrisonPop))*100),
((mean(DY15$TotalHCV)/mean(DY15$TotalPrisonPop))*100)
)

HCVD$PrevalencePrisonIDUFloor <- c(
((quantile(DY7$PrisonHCV, 0.25)/mean(DY7$TotalIDU))*100),
((quantile(DY8$PrisonHCV, 0.25)/mean(DY8$TotalIDU))*100),
((quantile(DY9$PrisonHCV, 0.25)/mean(DY9$TotalIDU))*100),
((quantile(DY10$PrisonHCV, 0.25)/mean(DY10$TotalIDU))*100),
((quantile(DY11$PrisonHCV, 0.25)/mean(DY11$TotalIDU))*100),
((quantile(DY12$PrisonHCV, 0.25)/mean(DY12$TotalIDU))*100),
((quantile(DY13$PrisonHCV, 0.25)/mean(DY13$TotalIDU))*100),
((quantile(DY14$PrisonHCV, 0.25)/mean(DY14$TotalIDU))*100),
((quantile(DY15$PrisonHCV, 0.25)/mean(DY15$TotalIDU))*100)
)

HCVD$PrevalencePrisonIDUCeiling <- c(
((quantile(DY7$PrisonHCV, 0.75)/mean(DY7$TotalIDU))*100),
((quantile(DY8$PrisonHCV, 0.75)/mean(DY8$TotalIDU))*100),
((quantile(DY9$PrisonHCV, 0.75)/mean(DY9$TotalIDU))*100),
((quantile(DY10$PrisonHCV, 0.75)/mean(DY10$TotalIDU))*100),
((quantile(DY11$PrisonHCV, 0.75)/mean(DY11$TotalIDU))*100),
((quantile(DY12$PrisonHCV, 0.75)/mean(DY12$TotalIDU))*100),
((quantile(DY13$PrisonHCV, 0.75)/mean(DY13$TotalIDU))*100),
((quantile(DY14$PrisonHCV, 0.75)/mean(DY14$TotalIDU))*100),
((quantile(DY15$PrisonHCV, 0.75)/mean(DY15$TotalIDU))*100)
)

HCVD$PrevalencePrisonTotalFloor <- c(
((quantile(DY7$PrisonHCV, 0.25)/mean(DY7$TotalPrisonPop))*100),
((quantile(DY8$PrisonHCV, 0.25)/mean(DY8$TotalPrisonPop))*100),
((quantile(DY9$PrisonHCV, 0.25)/mean(DY9$TotalPrisonPop))*100),
((quantile(DY10$PrisonHCV, 0.25)/mean(DY10$TotalPrisonPop))*100),
((quantile(DY11$PrisonHCV, 0.25)/mean(DY11$TotalPrisonPop))*100),
((quantile(DY12$PrisonHCV, 0.25)/mean(DY12$TotalPrisonPop))*100),
((quantile(DY13$PrisonHCV, 0.25)/mean(DY13$TotalPrisonPop))*100),
((quantile(DY14$PrisonHCV, 0.25)/mean(DY14$TotalPrisonPop))*100),
((quantile(DY15$PrisonHCV, 0.25)/mean(DY15$TotalPrisonPop))*100)
)

HCVD$PrevalencePrisonTotalCeiling <- c(
((quantile(DY7$PrisonHCV, 0.75)/mean(DY7$TotalPrisonPop))*100),
((quantile(DY8$PrisonHCV, 0.75)/mean(DY8$TotalPrisonPop))*100),
((quantile(DY9$PrisonHCV, 0.75)/mean(DY9$TotalPrisonPop))*100),
((quantile(DY10$PrisonHCV, 0.75)/mean(DY10$TotalPrisonPop))*100),
((quantile(DY11$PrisonHCV, 0.75)/mean(DY11$TotalPrisonPop))*100),
((quantile(DY12$PrisonHCV, 0.75)/mean(DY12$TotalPrisonPop))*100),
((quantile(DY13$PrisonHCV, 0.75)/mean(DY13$TotalPrisonPop))*100),
((quantile(DY14$PrisonHCV, 0.75)/mean(DY14$TotalPrisonPop))*100),
((quantile(DY15$PrisonHCV, 0.75)/mean(DY15$TotalPrisonPop))*100)
)

HCVD$PrevalenceComIDUFloor <- c(
((quantile(DY7$COMMUNITYHCV, 0.25)/mean(DY7$TotalIDU))*100),
((quantile(DY8$COMMUNITYHCV, 0.25)/mean(DY8$TotalIDU))*100),
((quantile(DY9$COMMUNITYHCV, 0.25)/mean(DY9$TotalIDU))*100),
((quantile(DY10$COMMUNITYHCV, 0.25)/mean(DY10$TotalIDU))*100),
((quantile(DY11$COMMUNITYHCV, 0.25)/mean(DY11$TotalIDU))*100),
((quantile(DY12$COMMUNITYHCV, 0.25)/mean(DY12$TotalIDU))*100),
((quantile(DY13$COMMUNITYHCV, 0.25)/mean(DY13$TotalIDU))*100),
((quantile(DY14$COMMUNITYHCV, 0.25)/mean(DY14$TotalIDU))*100),
((quantile(DY15$COMMUNITYHCV, 0.25)/mean(DY15$TotalIDU))*100)
)
HCVD$PrevalenceComIDUCeiling <- c(
((quantile(DY7$COMMUNITYHCV, 0.75)/mean(DY7$TotalIDU))*100),
((quantile(DY8$COMMUNITYHCV, 0.75)/mean(DY8$TotalIDU))*100),
((quantile(DY9$COMMUNITYHCV, 0.75)/mean(DY9$TotalIDU))*100),
((quantile(DY10$COMMUNITYHCV, 0.75)/mean(DY10$TotalIDU))*100),
((quantile(DY11$COMMUNITYHCV, 0.75)/mean(DY11$TotalIDU))*100),
((quantile(DY12$COMMUNITYHCV, 0.75)/mean(DY12$TotalIDU))*100),
((quantile(DY13$COMMUNITYHCV, 0.75)/mean(DY13$TotalIDU))*100),
((quantile(DY14$COMMUNITYHCV, 0.75)/mean(DY14$TotalIDU))*100),
((quantile(DY15$COMMUNITYHCV, 0.75)/mean(DY15$TotalIDU))*100)
)

HCVD$PrevalenceComTotalFloor <- c(
((quantile(DY7$COMMUNITYHCV, 0.25)/mean(DY7$TotalPrisonPop))*100),
((quantile(DY8$COMMUNITYHCV, 0.25)/mean(DY8$TotalPrisonPop))*100),
((quantile(DY9$COMMUNITYHCV, 0.25)/mean(DY9$TotalPrisonPop))*100),
((quantile(DY10$COMMUNITYHCV, 0.25)/mean(DY10$TotalPrisonPop))*100),
((quantile(DY11$COMMUNITYHCV, 0.25)/mean(DY11$TotalPrisonPop))*100),
((quantile(DY12$COMMUNITYHCV, 0.25)/mean(DY12$TotalPrisonPop))*100),
((quantile(DY13$COMMUNITYHCV, 0.25)/mean(DY13$TotalPrisonPop))*100),
((quantile(DY14$COMMUNITYHCV, 0.25)/mean(DY14$TotalPrisonPop))*100),
((quantile(DY15$COMMUNITYHCV, 0.25)/mean(DY15$TotalPrisonPop))*100)
)

HCVD$PrevalenceComTotalCeiling <- c(
((quantile(DY7$COMMUNITYHCV, 0.75)/mean(DY7$TotalPrisonPop))*100),
((quantile(DY8$COMMUNITYHCV, 0.75)/mean(DY8$TotalPrisonPop))*100),
((quantile(DY9$COMMUNITYHCV, 0.75)/mean(DY9$TotalPrisonPop))*100),
((quantile(DY10$COMMUNITYHCV, 0.75)/mean(DY10$TotalPrisonPop))*100),
((quantile(DY11$COMMUNITYHCV, 0.75)/mean(DY11$TotalPrisonPop))*100),
((quantile(DY12$COMMUNITYHCV, 0.75)/mean(DY12$TotalPrisonPop))*100),
((quantile(DY13$COMMUNITYHCV, 0.75)/mean(DY13$TotalPrisonPop))*100),
((quantile(DY14$COMMUNITYHCV, 0.75)/mean(DY14$TotalPrisonPop))*100),
((quantile(DY15$COMMUNITYHCV, 0.75)/mean(DY15$TotalPrisonPop))*100)
)

HCVD$PrevalenceAllIDUFloor <- c(
((quantile(DY7$TotalHCV, 0.25)/mean(DY7$TotalIDU))*100),
((quantile(DY8$TotalHCV, 0.25)/mean(DY8$TotalIDU))*100),
((quantile(DY9$TotalHCV, 0.25)/mean(DY9$TotalIDU))*100),
((quantile(DY10$TotalHCV, 0.25)/mean(DY10$TotalIDU))*100),
((quantile(DY11$TotalHCV, 0.25)/mean(DY11$TotalIDU))*100),
((quantile(DY12$TotalHCV, 0.25)/mean(DY12$TotalIDU))*100),
((quantile(DY13$TotalHCV, 0.25)/mean(DY13$TotalIDU))*100),
((quantile(DY14$TotalHCV, 0.25)/mean(DY14$TotalIDU))*100),
((quantile(DY15$TotalHCV, 0.25)/mean(DY15$TotalIDU))*100)
)

HCVD$PrevalenceAllIDUCeiling <- c(
((quantile(DY7$TotalHCV, 0.75)/mean(DY7$TotalIDU))*100),
((quantile(DY8$TotalHCV, 0.75)/mean(DY8$TotalIDU))*100),
((quantile(DY9$TotalHCV, 0.75)/mean(DY9$TotalIDU))*100),
((quantile(DY10$TotalHCV, 0.75)/mean(DY10$TotalIDU))*100),
((quantile(DY11$TotalHCV, 0.75)/mean(DY11$TotalIDU))*100),
((quantile(DY12$TotalHCV, 0.75)/mean(DY12$TotalIDU))*100),
((quantile(DY13$TotalHCV, 0.75)/mean(DY13$TotalIDU))*100),
((quantile(DY14$TotalHCV, 0.75)/mean(DY14$TotalIDU))*100),
((quantile(DY15$TotalHCV, 0.75)/mean(DY15$TotalIDU))*100)
)

HCVD$PrevalenceAllTotalFloor <- c(
((quantile(DY7$TotalHCV, 0.25)/mean(DY7$TotalPrisonPop))*100),
((quantile(DY8$TotalHCV, 0.25)/mean(DY8$TotalPrisonPop))*100),
((quantile(DY9$TotalHCV, 0.25)/mean(DY9$TotalPrisonPop))*100),
((quantile(DY10$TotalHCV, 0.25)/mean(DY10$TotalPrisonPop))*100),
((quantile(DY11$TotalHCV, 0.25)/mean(DY11$TotalPrisonPop))*100),
((quantile(DY12$TotalHCV, 0.25)/mean(DY12$TotalPrisonPop))*100),
((quantile(DY13$TotalHCV, 0.25)/mean(DY13$TotalPrisonPop))*100),
((quantile(DY14$TotalHCV, 0.25)/mean(DY14$TotalPrisonPop))*100),
((quantile(DY15$TotalHCV, 0.25)/mean(DY15$TotalPrisonPop))*100)
)

HCVD$PrevalenceAllTotalCeiling <- c(
((quantile(DY7$TotalHCV, 0.75)/mean(DY7$TotalPrisonPop))*100),
((quantile(DY8$TotalHCV, 0.75)/mean(DY8$TotalPrisonPop))*100),
((quantile(DY9$TotalHCV, 0.75)/mean(DY9$TotalPrisonPop))*100),
((quantile(DY10$TotalHCV, 0.75)/mean(DY10$TotalPrisonPop))*100),
((quantile(DY11$TotalHCV, 0.75)/mean(DY11$TotalPrisonPop))*100),
((quantile(DY12$TotalHCV, 0.75)/mean(DY12$TotalPrisonPop))*100),
((quantile(DY13$TotalHCV, 0.75)/mean(DY13$TotalPrisonPop))*100),
((quantile(DY14$TotalHCV, 0.75)/mean(DY14$TotalPrisonPop))*100),
((quantile(DY15$TotalHCV, 0.75)/mean(DY15$TotalPrisonPop))*100)
)

HCVD$Population <- c(
mean(DY7$TotalPrisonPop),
mean(DY8$TotalPrisonPop),
mean(DY9$TotalPrisonPop),
mean(DY10$TotalPrisonPop),
mean(DY11$TotalPrisonPop),
mean(DY12$TotalPrisonPop),
mean(DY13$TotalPrisonPop),
mean(DY14$TotalPrisonPop),
mean(DY15$TotalPrisonPop)
)

HCVD$PopulationFloor <- c(
median(DY7$TotalPrisonPop)-quantile(DY7$TotalPrisonPop, 0.25),
median(DY8$TotalPrisonPop)-quantile(DY8$TotalPrisonPop, 0.25),
median(DY9$TotalPrisonPop)-quantile(DY9$TotalPrisonPop, 0.25),
median(DY10$TotalPrisonPop)-quantile(DY10$TotalPrisonPop, 0.25),
median(DY11$TotalPrisonPop)-quantile(DY11$TotalPrisonPop, 0.25),
median(DY12$TotalPrisonPop)-quantile(DY12$TotalPrisonPop, 0.25),
median(DY13$TotalPrisonPop)-quantile(DY13$TotalPrisonPop, 0.25),
median(DY14$TotalPrisonPop)-quantile(DY14$TotalPrisonPop, 0.25),
median(DY15$TotalPrisonPop)-quantile(DY15$TotalPrisonPop, 0.25)
)

HCVD$PopulationCeiling <- c(
quantile(DY7$TotalPrisonPop, 0.75)-median(DY7$TotalPrisonPop),
quantile(DY8$TotalPrisonPop, 0.75)-median(DY8$TotalPrisonPop),
quantile(DY9$TotalPrisonPop, 0.75)-median(DY9$TotalPrisonPop),
quantile(DY10$TotalPrisonPop, 0.75)-median(DY10$TotalPrisonPop),
quantile(DY11$TotalPrisonPop, 0.75)-median(DY11$TotalPrisonPop),
quantile(DY12$TotalPrisonPop, 0.75)-median(DY12$TotalPrisonPop),
quantile(DY13$TotalPrisonPop, 0.75)-median(DY13$TotalPrisonPop),
quantile(DY14$TotalPrisonPop, 0.75)-median(DY14$TotalPrisonPop),
quantile(DY15$TotalPrisonPop, 0.75)-median(DY15$TotalPrisonPop)
)

HCVD$Year <- c("2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020")

#E
#TotalIDU incidence and prevalence
HCVE <- data.frame("IncidenceIDU"=c(
((mean(EY7$NewCases)/mean(EY7$TotalIDU))*100)*365,
((mean(EY8$NewCases)/mean(EY8$TotalIDU))*100)*365,
((mean(EY9$NewCases)/mean(EY9$TotalIDU))*100)*365,
((mean(EY10$NewCases)/mean(EY10$TotalIDU))*100)*365,
((mean(EY11$NewCases)/mean(EY11$TotalIDU))*100)*365, ((mean(EY12$NewCases)/mean(EY12$TotalIDU))*100)*365, ((mean(EY13$NewCases)/mean(EY13$TotalIDU))*100)*365, ((mean(EY14$NewCases)/mean(EY14$TotalIDU))*100)*365, ((mean(EY15$NewCases)/mean(EY15$TotalIDU))*100)*365))
HCVE$IncidenceIDUCI <- c(
(1.96*((((mean(EY7$NewCases)/mean(EY7$TotalIDU))^2)*365)*((((var(EY7$NewCases)/mean(EY7$NewCases))^2))*365+(((var(EY7$TotalIDU)/mean(EY7$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(EY8$NewCases)/mean(EY8$TotalIDU))^2)*365)*((((var(EY8$NewCases)/mean(EY8$NewCases))^2))*365+(((var(EY8$TotalIDU)/mean(EY8$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(EY9$NewCases)/mean(EY9$TotalIDU))^2)*365)*((((var(EY9$NewCases)/mean(EY9$NewCases))^2))*365+(((var(EY9$TotalIDU)/mean(EY9$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(EY10$NewCases)/mean(EY10$TotalIDU))^2)*365)*((((var(EY10$NewCases)/mean(EY10$NewCases))^2))*365+(((var(EY10$TotalIDU)/mean(EY10$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(EY11$NewCases)/mean(EY11$TotalIDU))^2)*365)*((((var(EY11$NewCases)/mean(EY11$NewCases))^2))*365+(((var(EY11$TotalIDU)/mean(EY11$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(EY12$NewCases)/mean(EY12$TotalIDU))^2)*365)*((((var(EY12$NewCases)/mean(EY12$NewCases))^2))*365+(((var(EY12$TotalIDU)/mean(EY12$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(EY13$NewCases)/mean(EY13$TotalIDU))^2)*365)*((((var(EY13$NewCases)/mean(EY13$NewCases))^2))*365+(((var(EY13$TotalIDU)/mean(EY13$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(EY14$NewCases)/mean(EY14$TotalIDU))^2)*365)*((((var(EY14$NewCases)/mean(EY14$NewCases))^2))*365+(((var(EY14$TotalIDU)/mean(EY14$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(EY15$NewCases)/mean(EY15$TotalIDU))^2)*365)*((((var(EY15$NewCases)/mean(EY15$NewCases))^2))*365+(((var(EY15$TotalIDU)/mean(EY15$TotalIDU))^2))*365)/sqrt(50*365)))*100
)
HCVE$IncidenceIDUCIFloor <- c(0,0,0,0,0,0,0,0,0)
HCVE$IncidenceIDUCICeiling <- c(0,0,0,0,0,0,0,0,0)

HCVE$IncidencePop <- c(
((mean(EY7$NewCases)/mean(EY7$TotalPrisonPop))*100)*365, 
((mean(EY8$NewCases)/mean(EY8$TotalPrisonPop))*100)*365, 
((mean(EY9$NewCases)/mean(EY9$TotalPrisonPop))*100)*365, 
((mean(EY10$NewCases)/mean(EY10$TotalPrisonPop))*100)*365, 
((mean(EY11$NewCases)/mean(EY11$TotalPrisonPop))*100)*365, 
((mean(EY12$NewCases)/mean(EY12$TotalPrisonPop))*100)*365, 
((mean(EY13$NewCases)/mean(EY13$TotalPrisonPop))*100)*365, 
((mean(EY14$NewCases)/mean(EY14$TotalPrisonPop))*100)*365, 
((mean(EY15$NewCases)/mean(EY15$TotalPrisonPop))*100)*365)
HCVE$IncidencePopCI <- c(
(1.96*((((mean(EY7$NewCases)/mean(EY7$TotalPrisonPop))^2)*365)*((((var(EY7$NewCases)/mean(EY7$NewCases))^2))*365+(((var(EY7$TotalPrisonPop)/mean(EY7$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(EY8$NewCases)/mean(EY8$TotalPrisonPop))^2)*365)*((((var(EY8$NewCases)/mean(EY8$NewCases))^2))*365+(((var(EY8$TotalPrisonPop)/mean(EY8$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(EY9$NewCases)/mean(EY9$TotalPrisonPop))^2)*365)*((((var(EY9$NewCases)/mean(EY9$NewCases))^2))*365+(((var(EY9$TotalPrisonPop)/mean(EY9$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(EY10$NewCases)/mean(EY10$TotalPrisonPop))^2)*365)*((((var(EY10$NewCases)/mean(EY10$NewCases))^2))*365+(((var(EY10$TotalPrisonPop)/mean(EY10$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(EY11$NewCases)/mean(EY11$TotalPrisonPop))^2)*365)*((((var(EY11$NewCases)/mean(EY11$NewCases))^2))*365+(((var(EY11$TotalPrisonPop)/mean(EY11$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(EY12$NewCases)/mean(EY12$TotalPrisonPop))^2)*365)*((((var(EY12$NewCases)/mean(EY12$NewCases))^2))*365+(((var(EY12$TotalPrisonPop)/mean(EY12$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(EY13$NewCases)/mean(EY13$TotalPrisonPop))^2)*365)*((((var(EY13$NewCases)/mean(EY13$NewCases))^2))*365+(((var(EY13$TotalPrisonPop)/mean(EY13$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(EY14$NewCases)/mean(EY14$TotalPrisonPop))^2)*365)*((((var(EY14$NewCases)/mean(EY14$NewCases))^2))*365+(((var(EY14$TotalPrisonPop)/mean(EY14$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(EY15$NewCases)/mean(EY15$TotalPrisonPop))^2)*365)*((((var(EY15$NewCases)/mean(EY15$NewCases))^2))*365+(((var(EY15$TotalPrisonPop)/mean(EY15$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100
)
HCVE$IncidencePopCIFloor <- c(0,0,0,0,0,0,0,0,0)
HCVE$IncidencePopCICeiling <- c(0,0,0,0,0,0,0,0,0)

HCVE$PrevalencePrisIDU <- c(
((mean(EY7$PrisonHCV)/mean(EY7$TotalIDU))*100),
((mean(EY8$PrisonHCV)/mean(EY8$TotalIDU))*100),
((mean(EY9$PrisonHCV)/mean(EY9$TotalIDU))*100),
((mean(EY10$PrisonHCV)/mean(EY10$TotalIDU))*100),
((mean(EY11$PrisonHCV)/mean(EY11$TotalIDU))*100),
((mean(EY12$PrisonHCV)/mean(EY12$TotalIDU))*100),
((mean(EY13$PrisonHCV)/mean(EY13$TotalIDU))*100),
((mean(EY14$PrisonHCV)/mean(EY14$TotalIDU))*100),
((mean(EY15$PrisonHCV)/mean(EY15$TotalIDU))*100)
)

HCVE$PrevalenceComIDU <- c(
((mean(EY7$COMMUNITYHCV)/mean(EY7$TotalIDU))*100),
((mean(EY8$COMMUNITYHCV)/mean(EY8$TotalIDU))*100),
((mean(EY9$COMMUNITYHCV)/mean(EY9$TotalIDU))*100),
((mean(EY10$COMMUNITYHCV)/mean(EY10$TotalIDU))*100),
((mean(EY11$COMMUNITYHCV)/mean(EY11$TotalIDU))*100),
((mean(EY12$COMMUNITYHCV)/mean(EY12$TotalIDU))*100),
((mean(EY13$COMMUNITYHCV)/mean(EY13$TotalIDU))*100),
((mean(EY14$COMMUNITYHCV)/mean(EY14$TotalIDU))*100),
((mean(EY15$COMMUNITYHCV)/mean(EY15$TotalIDU))*100)
)

HCVE$PrevalenceAllIDU <- c(
((mean(EY7$TotalHCV)/mean(EY7$TotalIDU))*100),
((mean(EY8$TotalHCV)/mean(EY8$TotalIDU))*100),
((mean(EY9$TotalHCV)/mean(EY9$TotalIDU))*100),
((mean(EY10$TotalHCV)/mean(EY10$TotalIDU))*100),
((mean(EY11$TotalHCV)/mean(EY11$TotalIDU))*100),
((mean(EY12$TotalHCV)/mean(EY12$TotalIDU))*100),
((mean(EY13$TotalHCV)/mean(EY13$TotalIDU))*100),
((mean(EY14$TotalHCV)/mean(EY14$TotalIDU))*100),
((mean(EY15$TotalHCV)/mean(EY15$TotalIDU))*100)
)

HCVE$PrevalencePrisTotal <- c(
((mean(EY7$PrisonHCV)/mean(EY7$TotalPrisonPop))*100),
((mean(EY8$PrisonHCV)/mean(EY8$TotalPrisonPop))*100),
((mean(EY9$PrisonHCV)/mean(EY9$TotalPrisonPop))*100),
((mean(EY10$PrisonHCV)/mean(EY10$TotalPrisonPop))*100),
((mean(EY11$PrisonHCV)/mean(EY11$TotalPrisonPop))*100),
((mean(EY12$PrisonHCV)/mean(EY12$TotalPrisonPop))*100),
((mean(EY13$PrisonHCV)/mean(EY13$TotalPrisonPop))*100),
((mean(EY14$PrisonHCV)/mean(EY14$TotalPrisonPop))*100),
((mean(EY15$PrisonHCV)/mean(EY15$TotalPrisonPop))*100)
)

HCVE$PrevalenceComTotal <- c(
((mean(EY7$COMMUNITYHCV)/mean(EY7$TotalPrisonPop))*100),
((mean(EY8$COMMUNITYHCV)/mean(EY8$TotalPrisonPop))*100),
((mean(EY9$COMMUNITYHCV)/mean(EY9$TotalPrisonPop))*100),
((mean(EY10$COMMUNITYHCV)/mean(EY10$TotalPrisonPop))*100),
((mean(EY11$COMMUNITYHCV)/mean(EY11$TotalPrisonPop))*100),
((mean(EY12$COMMUNITYHCV)/mean(EY12$TotalPrisonPop))*100),
((mean(EY13$COMMUNITYHCV)/mean(EY13$TotalPrisonPop))*100),
((mean(EY14$COMMUNITYHCV)/mean(EY14$TotalPrisonPop))*100),
((mean(EY15$COMMUNITYHCV)/mean(EY15$TotalPrisonPop))*100)
)

HCVE$PrevalenceAllTotal <- c(
((mean(EY7$TotalHCV)/mean(EY7$TotalPrisonPop))*100),
((mean(EY8$TotalHCV)/mean(EY8$TotalPrisonPop))*100),
((mean(EY9$TotalHCV)/mean(EY9$TotalPrisonPop))*100),
((mean(EY10$TotalHCV)/mean(EY10$TotalPrisonPop))*100),
((mean(EY11$TotalHCV)/mean(EY11$TotalPrisonPop))*100),
((mean(EY12$TotalHCV)/mean(EY12$TotalPrisonPop))*100),
((mean(EY13$TotalHCV)/mean(EY13$TotalPrisonPop))*100),
((mean(EY14$TotalHCV)/mean(EY14$TotalPrisonPop))*100),
((mean(EY15$TotalHCV)/mean(EY15$TotalPrisonPop))*100)
)

HCVE$PrevalencePrisonIDUFloor <- c(
((quantile(EY7$PrisonHCV, 0.25)/mean(EY7$TotalIDU))*100),
((quantile(EY8$PrisonHCV, 0.25)/mean(EY8$TotalIDU))*100),
((quantile(EY9$PrisonHCV, 0.25)/mean(EY9$TotalIDU))*100),
((quantile(EY10$PrisonHCV, 0.25)/mean(EY10$TotalIDU))*100),
((quantile(EY11$PrisonHCV, 0.25)/mean(EY11$TotalIDU))*100),
((quantile(EY12$PrisonHCV, 0.25)/mean(EY12$TotalIDU))*100),
((quantile(EY13$PrisonHCV, 0.25)/mean(EY13$TotalIDU))*100),
((quantile(EY14$PrisonHCV, 0.25)/mean(EY14$TotalIDU))*100),
((quantile(EY15$PrisonHCV, 0.25)/mean(EY15$TotalIDU))*100)
)

HCVE$PrevalencePrisonIDUCeiling <- c(
((quantile(EY7$PrisonHCV, 0.75)/mean(EY7$TotalIDU))*100),
((quantile(EY8$PrisonHCV, 0.75)/mean(EY8$TotalIDU))*100),
((quantile(EY9$PrisonHCV, 0.75)/mean(EY9$TotalIDU))*100),
((quantile(EY10$PrisonHCV, 0.75)/mean(EY10$TotalIDU))*100),
((quantile(EY11$PrisonHCV, 0.75)/mean(EY11$TotalIDU))*100),
((quantile(EY12$PrisonHCV, 0.75)/mean(EY12$TotalIDU))*100),
((quantile(EY13$PrisonHCV, 0.75)/mean(EY13$TotalIDU))*100),
((quantile(EY14$PrisonHCV, 0.75)/mean(EY14$TotalIDU))*100),
((quantile(EY15$PrisonHCV, 0.75)/mean(EY15$TotalIDU))*100)
)

HCVE$PrevalencePrisonTotalFloor <- c(
((quantile(EY7$PrisonHCV, 0.25)/mean(EY7$TotalPrisonPop))*100),
((quantile(EY8$PrisonHCV, 0.25)/mean(EY8$TotalPrisonPop))*100),
((quantile(EY9$PrisonHCV, 0.25)/mean(EY9$TotalPrisonPop))*100),
((quantile(EY10$PrisonHCV, 0.25)/mean(EY10$TotalPrisonPop))*100),
((quantile(EY11$PrisonHCV, 0.25)/mean(EY11$TotalPrisonPop))*100),
((quantile(EY12$PrisonHCV, 0.25)/mean(EY12$TotalPrisonPop))*100),
((quantile(EY13$PrisonHCV, 0.25)/mean(EY13$TotalPrisonPop))*100),
((quantile(EY14$PrisonHCV, 0.25)/mean(EY14$TotalPrisonPop))*100),
((quantile(EY15$PrisonHCV, 0.25)/mean(EY15$TotalPrisonPop))*100)
)

HCVE$PrevalencePrisonTotalCeiling <- c(
((quantile(EY7$PrisonHCV, 0.75)/mean(EY7$TotalPrisonPop))*100),
((quantile(EY8$PrisonHCV, 0.75)/mean(EY8$TotalPrisonPop))*100),
((quantile(EY9$PrisonHCV, 0.75)/mean(EY9$TotalPrisonPop))*100),
((quantile(EY10$PrisonHCV, 0.75)/mean(EY10$TotalPrisonPop))*100),
((quantile(EY11$PrisonHCV, 0.75)/mean(EY11$TotalPrisonPop))*100),
((quantile(EY12$PrisonHCV, 0.75)/mean(EY12$TotalPrisonPop))*100),
((quantile(EY13$PrisonHCV, 0.75)/mean(EY13$TotalPrisonPop))*100),
((quantile(EY14$PrisonHCV, 0.75)/mean(EY14$TotalPrisonPop))*100),
((quantile(EY15$PrisonHCV, 0.75)/mean(EY15$TotalPrisonPop))*100)
)

HCVE$PrevalenceComIDUFloor <- c(
((quantile(EY7$COMMUNITYHCV, 0.25)/mean(EY7$TotalIDU))*100),
((quantile(EY8$COMMUNITYHCV, 0.25)/mean(EY8$TotalIDU))*100),
((quantile(EY9$COMMUNITYHCV, 0.25)/mean(EY9$TotalIDU))*100),
((quantile(EY10$COMMUNITYHCV, 0.25)/mean(EY10$TotalIDU))*100),
((quantile(EY11$COMMUNITYHCV, 0.25)/mean(EY11$TotalIDU))*100),
((quantile(EY12$COMMUNITYHCV, 0.25)/mean(EY12$TotalIDU))*100),
((quantile(EY13$COMMUNITYHCV, 0.25)/mean(EY13$TotalIDU))*100),
((quantile(EY14$COMMUNITYHCV, 0.25)/mean(EY14$TotalIDU))*100),
((quantile(EY15$COMMUNITYHCV, 0.25)/mean(EY15$TotalIDU))*100)
)
HCVE$PrevalenceComIDUCeiling <- c(
((quantile(EY7$COMMUNITYHCV, 0.75)/mean(EY7$TotalIDU))*100),
((quantile(EY8$COMMUNITYHCV, 0.75)/mean(EY8$TotalIDU))*100),
((quantile(EY9$COMMUNITYHCV, 0.75)/mean(EY9$TotalIDU))*100),
((quantile(EY10$COMMUNITYHCV, 0.75)/mean(EY10$TotalIDU))*100),
((quantile(EY11$COMMUNITYHCV, 0.75)/mean(EY11$TotalIDU))*100),
((quantile(EY12$COMMUNITYHCV, 0.75)/mean(EY12$TotalIDU))*100),
((quantile(EY13$COMMUNITYHCV, 0.75)/mean(EY13$TotalIDU))*100),
((quantile(EY14$COMMUNITYHCV, 0.75)/mean(EY14$TotalIDU))*100),
((quantile(EY15$COMMUNITYHCV, 0.75)/mean(EY15$TotalIDU))*100)
)

HCVE$PrevalenceComTotalFloor <- c(
((quantile(EY7$COMMUNITYHCV, 0.25)/mean(EY7$TotalPrisonPop))*100),
((quantile(EY8$COMMUNITYHCV, 0.25)/mean(EY8$TotalPrisonPop))*100),
((quantile(EY9$COMMUNITYHCV, 0.25)/mean(EY9$TotalPrisonPop))*100),
((quantile(EY10$COMMUNITYHCV, 0.25)/mean(EY10$TotalPrisonPop))*100),
((quantile(EY11$COMMUNITYHCV, 0.25)/mean(EY11$TotalPrisonPop))*100),
((quantile(EY12$COMMUNITYHCV, 0.25)/mean(EY12$TotalPrisonPop))*100),
((quantile(EY13$COMMUNITYHCV, 0.25)/mean(EY13$TotalPrisonPop))*100),
((quantile(EY14$COMMUNITYHCV, 0.25)/mean(EY14$TotalPrisonPop))*100),
((quantile(EY15$COMMUNITYHCV, 0.25)/mean(EY15$TotalPrisonPop))*100)
)

HCVE$PrevalenceComTotalCeiling <- c(
((quantile(EY7$COMMUNITYHCV, 0.75)/mean(EY7$TotalPrisonPop))*100),
((quantile(EY8$COMMUNITYHCV, 0.75)/mean(EY8$TotalPrisonPop))*100),
((quantile(EY9$COMMUNITYHCV, 0.75)/mean(EY9$TotalPrisonPop))*100),
((quantile(EY10$COMMUNITYHCV, 0.75)/mean(EY10$TotalPrisonPop))*100),
((quantile(EY11$COMMUNITYHCV, 0.75)/mean(EY11$TotalPrisonPop))*100),
((quantile(EY12$COMMUNITYHCV, 0.75)/mean(EY12$TotalPrisonPop))*100),
((quantile(EY13$COMMUNITYHCV, 0.75)/mean(EY13$TotalPrisonPop))*100),
((quantile(EY14$COMMUNITYHCV, 0.75)/mean(EY14$TotalPrisonPop))*100),
((quantile(EY15$COMMUNITYHCV, 0.75)/mean(EY15$TotalPrisonPop))*100)
)

HCVE$PrevalenceAllIDUFloor <- c(
((quantile(EY7$TotalHCV, 0.25)/mean(EY7$TotalIDU))*100),
((quantile(EY8$TotalHCV, 0.25)/mean(EY8$TotalIDU))*100),
((quantile(EY9$TotalHCV, 0.25)/mean(EY9$TotalIDU))*100),
((quantile(EY10$TotalHCV, 0.25)/mean(EY10$TotalIDU))*100),
((quantile(EY11$TotalHCV, 0.25)/mean(EY11$TotalIDU))*100),
((quantile(EY12$TotalHCV, 0.25)/mean(EY12$TotalIDU))*100),
((quantile(EY13$TotalHCV, 0.25)/mean(EY13$TotalIDU))*100),
((quantile(EY14$TotalHCV, 0.25)/mean(EY14$TotalIDU))*100),
((quantile(EY15$TotalHCV, 0.25)/mean(EY15$TotalIDU))*100)
)

HCVE$PrevalenceAllIDUCeiling <- c(
((quantile(EY7$TotalHCV, 0.75)/mean(EY7$TotalIDU))*100),
((quantile(EY8$TotalHCV, 0.75)/mean(EY8$TotalIDU))*100),
((quantile(EY9$TotalHCV, 0.75)/mean(EY9$TotalIDU))*100),
((quantile(EY10$TotalHCV, 0.75)/mean(EY10$TotalIDU))*100),
((quantile(EY11$TotalHCV, 0.75)/mean(EY11$TotalIDU))*100),
((quantile(EY12$TotalHCV, 0.75)/mean(EY12$TotalIDU))*100),
((quantile(EY13$TotalHCV, 0.75)/mean(EY13$TotalIDU))*100),
((quantile(EY14$TotalHCV, 0.75)/mean(EY14$TotalIDU))*100),
((quantile(EY15$TotalHCV, 0.75)/mean(EY15$TotalIDU))*100)
)

HCVE$PrevalenceAllTotalFloor <- c(
((quantile(EY7$TotalHCV, 0.25)/mean(EY7$TotalPrisonPop))*100),
((quantile(EY8$TotalHCV, 0.25)/mean(EY8$TotalPrisonPop))*100),
((quantile(EY9$TotalHCV, 0.25)/mean(EY9$TotalPrisonPop))*100),
((quantile(EY10$TotalHCV, 0.25)/mean(EY10$TotalPrisonPop))*100),
((quantile(EY11$TotalHCV, 0.25)/mean(EY11$TotalPrisonPop))*100),
((quantile(EY12$TotalHCV, 0.25)/mean(EY12$TotalPrisonPop))*100),
((quantile(EY13$TotalHCV, 0.25)/mean(EY13$TotalPrisonPop))*100),
((quantile(EY14$TotalHCV, 0.25)/mean(EY14$TotalPrisonPop))*100),
((quantile(EY15$TotalHCV, 0.25)/mean(EY15$TotalPrisonPop))*100)
)

HCVE$PrevalenceAllTotalCeiling <- c(
((quantile(EY7$TotalHCV, 0.75)/mean(EY7$TotalPrisonPop))*100),
((quantile(EY8$TotalHCV, 0.75)/mean(EY8$TotalPrisonPop))*100),
((quantile(EY9$TotalHCV, 0.75)/mean(EY9$TotalPrisonPop))*100),
((quantile(EY10$TotalHCV, 0.75)/mean(EY10$TotalPrisonPop))*100),
((quantile(EY11$TotalHCV, 0.75)/mean(EY11$TotalPrisonPop))*100),
((quantile(EY12$TotalHCV, 0.75)/mean(EY12$TotalPrisonPop))*100),
((quantile(EY13$TotalHCV, 0.75)/mean(EY13$TotalPrisonPop))*100),
((quantile(EY14$TotalHCV, 0.75)/mean(EY14$TotalPrisonPop))*100),
((quantile(EY15$TotalHCV, 0.75)/mean(EY15$TotalPrisonPop))*100)
)

HCVE$Population <- c(
mean(EY7$TotalPrisonPop),
mean(EY8$TotalPrisonPop),
mean(EY9$TotalPrisonPop),
mean(EY10$TotalPrisonPop),
mean(EY11$TotalPrisonPop),
mean(EY12$TotalPrisonPop),
mean(EY13$TotalPrisonPop),
mean(EY14$TotalPrisonPop),
mean(EY15$TotalPrisonPop)
)

HCVE$PopulationFloor <- c(
median(EY7$TotalPrisonPop)-quantile(EY7$TotalPrisonPop, 0.25),
median(EY8$TotalPrisonPop)-quantile(EY8$TotalPrisonPop, 0.25),
median(EY9$TotalPrisonPop)-quantile(EY9$TotalPrisonPop, 0.25),
median(EY10$TotalPrisonPop)-quantile(EY10$TotalPrisonPop, 0.25),
median(EY11$TotalPrisonPop)-quantile(EY11$TotalPrisonPop, 0.25),
median(EY12$TotalPrisonPop)-quantile(EY12$TotalPrisonPop, 0.25),
median(EY13$TotalPrisonPop)-quantile(EY13$TotalPrisonPop, 0.25),
median(EY14$TotalPrisonPop)-quantile(EY14$TotalPrisonPop, 0.25),
median(EY15$TotalPrisonPop)-quantile(EY15$TotalPrisonPop, 0.25)
)

HCVE$PopulationCeiling <- c(
quantile(EY7$TotalPrisonPop, 0.75)-median(EY7$TotalPrisonPop),
quantile(EY8$TotalPrisonPop, 0.75)-median(EY8$TotalPrisonPop),
quantile(EY9$TotalPrisonPop, 0.75)-median(EY9$TotalPrisonPop),
quantile(EY10$TotalPrisonPop, 0.75)-median(EY10$TotalPrisonPop),
quantile(EY11$TotalPrisonPop, 0.75)-median(EY11$TotalPrisonPop),
quantile(EY12$TotalPrisonPop, 0.75)-median(EY12$TotalPrisonPop),
quantile(EY13$TotalPrisonPop, 0.75)-median(EY13$TotalPrisonPop),
quantile(EY14$TotalPrisonPop, 0.75)-median(EY14$TotalPrisonPop),
quantile(EY15$TotalPrisonPop, 0.75)-median(EY15$TotalPrisonPop)
)

HCVE$Year <- c("2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020")

#F
#TotalIDU incidence and prevalence
HCVF <- data.frame("IncidenceIDU"=c(
((mean(FY7$NewCases)/mean(FY7$TotalIDU))*100)*365,
((mean(FY8$NewCases)/mean(FY8$TotalIDU))*100)*365,
((mean(FY9$NewCases)/mean(FY9$TotalIDU))*100)*365,
((mean(FY10$NewCases)/mean(FY10$TotalIDU))*100)*365,
((mean(FY11$NewCases)/mean(FY11$TotalIDU))*100)*365, ((mean(FY12$NewCases)/mean(FY12$TotalIDU))*100)*365, ((mean(FY13$NewCases)/mean(FY13$TotalIDU))*100)*365, ((mean(FY14$NewCases)/mean(FY14$TotalIDU))*100)*365, ((mean(FY15$NewCases)/mean(FY15$TotalIDU))*100)*365))
HCVF$IncidenceIDUCI <- c(
(1.96*((((mean(FY7$NewCases)/mean(FY7$TotalIDU))^2)*365)*((((var(FY7$NewCases)/mean(FY7$NewCases))^2))*365+(((var(FY7$TotalIDU)/mean(FY7$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(FY8$NewCases)/mean(FY8$TotalIDU))^2)*365)*((((var(FY8$NewCases)/mean(FY8$NewCases))^2))*365+(((var(FY8$TotalIDU)/mean(FY8$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(FY9$NewCases)/mean(FY9$TotalIDU))^2)*365)*((((var(FY9$NewCases)/mean(FY9$NewCases))^2))*365+(((var(FY9$TotalIDU)/mean(FY9$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(FY10$NewCases)/mean(FY10$TotalIDU))^2)*365)*((((var(FY10$NewCases)/mean(FY10$NewCases))^2))*365+(((var(FY10$TotalIDU)/mean(FY10$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(FY11$NewCases)/mean(FY11$TotalIDU))^2)*365)*((((var(FY11$NewCases)/mean(FY11$NewCases))^2))*365+(((var(FY11$TotalIDU)/mean(FY11$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(FY12$NewCases)/mean(FY12$TotalIDU))^2)*365)*((((var(FY12$NewCases)/mean(FY12$NewCases))^2))*365+(((var(FY12$TotalIDU)/mean(FY12$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(FY13$NewCases)/mean(FY13$TotalIDU))^2)*365)*((((var(FY13$NewCases)/mean(FY13$NewCases))^2))*365+(((var(FY13$TotalIDU)/mean(FY13$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(FY14$NewCases)/mean(FY14$TotalIDU))^2)*365)*((((var(FY14$NewCases)/mean(FY14$NewCases))^2))*365+(((var(FY14$TotalIDU)/mean(FY14$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(FY15$NewCases)/mean(FY15$TotalIDU))^2)*365)*((((var(FY15$NewCases)/mean(FY15$NewCases))^2))*365+(((var(FY15$TotalIDU)/mean(FY15$TotalIDU))^2))*365)/sqrt(50*365)))*100
)
HCVF$IncidenceIDUCIFloor <- c(0,0,0,0,0,0,0,0,0)
HCVF$IncidenceIDUCICeiling <- c(0,0,0,0,0,0,0,0,0)

HCVF$IncidencePop <- c(
((mean(FY7$NewCases)/mean(FY7$TotalPrisonPop))*100)*365, 
((mean(FY8$NewCases)/mean(FY8$TotalPrisonPop))*100)*365, 
((mean(FY9$NewCases)/mean(FY9$TotalPrisonPop))*100)*365, 
((mean(FY10$NewCases)/mean(FY10$TotalPrisonPop))*100)*365, 
((mean(FY11$NewCases)/mean(FY11$TotalPrisonPop))*100)*365, 
((mean(FY12$NewCases)/mean(FY12$TotalPrisonPop))*100)*365, 
((mean(FY13$NewCases)/mean(FY13$TotalPrisonPop))*100)*365, 
((mean(FY14$NewCases)/mean(FY14$TotalPrisonPop))*100)*365, 
((mean(FY15$NewCases)/mean(FY15$TotalPrisonPop))*100)*365)
HCVF$IncidencePopCI <- c(
(1.96*((((mean(FY7$NewCases)/mean(FY7$TotalPrisonPop))^2)*365)*((((var(FY7$NewCases)/mean(FY7$NewCases))^2))*365+(((var(FY7$TotalPrisonPop)/mean(FY7$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(FY8$NewCases)/mean(FY8$TotalPrisonPop))^2)*365)*((((var(FY8$NewCases)/mean(FY8$NewCases))^2))*365+(((var(FY8$TotalPrisonPop)/mean(FY8$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(FY9$NewCases)/mean(FY9$TotalPrisonPop))^2)*365)*((((var(FY9$NewCases)/mean(FY9$NewCases))^2))*365+(((var(FY9$TotalPrisonPop)/mean(FY9$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(FY10$NewCases)/mean(FY10$TotalPrisonPop))^2)*365)*((((var(FY10$NewCases)/mean(FY10$NewCases))^2))*365+(((var(FY10$TotalPrisonPop)/mean(FY10$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(FY11$NewCases)/mean(FY11$TotalPrisonPop))^2)*365)*((((var(FY11$NewCases)/mean(FY11$NewCases))^2))*365+(((var(FY11$TotalPrisonPop)/mean(FY11$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(FY12$NewCases)/mean(FY12$TotalPrisonPop))^2)*365)*((((var(FY12$NewCases)/mean(FY12$NewCases))^2))*365+(((var(FY12$TotalPrisonPop)/mean(FY12$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(FY13$NewCases)/mean(FY13$TotalPrisonPop))^2)*365)*((((var(FY13$NewCases)/mean(FY13$NewCases))^2))*365+(((var(FY13$TotalPrisonPop)/mean(FY13$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(FY14$NewCases)/mean(FY14$TotalPrisonPop))^2)*365)*((((var(FY14$NewCases)/mean(FY14$NewCases))^2))*365+(((var(FY14$TotalPrisonPop)/mean(FY14$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(FY15$NewCases)/mean(FY15$TotalPrisonPop))^2)*365)*((((var(FY15$NewCases)/mean(FY15$NewCases))^2))*365+(((var(FY15$TotalPrisonPop)/mean(FY15$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100
)
HCVF$IncidencePopCIFloor <- c(0,0,0,0,0,0,0,0,0)
HCVF$IncidencePopCICeiling <- c(0,0,0,0,0,0,0,0,0)

HCVF$PrevalencePrisIDU <- c(
((mean(FY7$PrisonHCV)/mean(FY7$TotalIDU))*100),
((mean(FY8$PrisonHCV)/mean(FY8$TotalIDU))*100),
((mean(FY9$PrisonHCV)/mean(FY9$TotalIDU))*100),
((mean(FY10$PrisonHCV)/mean(FY10$TotalIDU))*100),
((mean(FY11$PrisonHCV)/mean(FY11$TotalIDU))*100),
((mean(FY12$PrisonHCV)/mean(FY12$TotalIDU))*100),
((mean(FY13$PrisonHCV)/mean(FY13$TotalIDU))*100),
((mean(FY14$PrisonHCV)/mean(FY14$TotalIDU))*100),
((mean(FY15$PrisonHCV)/mean(FY15$TotalIDU))*100)
)

HCVF$PrevalenceComIDU <- c(
((mean(FY7$COMMUNITYHCV)/mean(FY7$TotalIDU))*100),
((mean(FY8$COMMUNITYHCV)/mean(FY8$TotalIDU))*100),
((mean(FY9$COMMUNITYHCV)/mean(FY9$TotalIDU))*100),
((mean(FY10$COMMUNITYHCV)/mean(FY10$TotalIDU))*100),
((mean(FY11$COMMUNITYHCV)/mean(FY11$TotalIDU))*100),
((mean(FY12$COMMUNITYHCV)/mean(FY12$TotalIDU))*100),
((mean(FY13$COMMUNITYHCV)/mean(FY13$TotalIDU))*100),
((mean(FY14$COMMUNITYHCV)/mean(FY14$TotalIDU))*100),
((mean(FY15$COMMUNITYHCV)/mean(FY15$TotalIDU))*100)
)

HCVF$PrevalenceAllIDU <- c(
((mean(FY7$TotalHCV)/mean(FY7$TotalIDU))*100),
((mean(FY8$TotalHCV)/mean(FY8$TotalIDU))*100),
((mean(FY9$TotalHCV)/mean(FY9$TotalIDU))*100),
((mean(FY10$TotalHCV)/mean(FY10$TotalIDU))*100),
((mean(FY11$TotalHCV)/mean(FY11$TotalIDU))*100),
((mean(FY12$TotalHCV)/mean(FY12$TotalIDU))*100),
((mean(FY13$TotalHCV)/mean(FY13$TotalIDU))*100),
((mean(FY14$TotalHCV)/mean(FY14$TotalIDU))*100),
((mean(FY15$TotalHCV)/mean(FY15$TotalIDU))*100)
)

HCVF$PrevalencePrisTotal <- c(
((mean(FY7$PrisonHCV)/mean(FY7$TotalPrisonPop))*100),
((mean(FY8$PrisonHCV)/mean(FY8$TotalPrisonPop))*100),
((mean(FY9$PrisonHCV)/mean(FY9$TotalPrisonPop))*100),
((mean(FY10$PrisonHCV)/mean(FY10$TotalPrisonPop))*100),
((mean(FY11$PrisonHCV)/mean(FY11$TotalPrisonPop))*100),
((mean(FY12$PrisonHCV)/mean(FY12$TotalPrisonPop))*100),
((mean(FY13$PrisonHCV)/mean(FY13$TotalPrisonPop))*100),
((mean(FY14$PrisonHCV)/mean(FY14$TotalPrisonPop))*100),
((mean(FY15$PrisonHCV)/mean(FY15$TotalPrisonPop))*100)
)

HCVF$PrevalenceComTotal <- c(
((mean(FY7$COMMUNITYHCV)/mean(FY7$TotalPrisonPop))*100),
((mean(FY8$COMMUNITYHCV)/mean(FY8$TotalPrisonPop))*100),
((mean(FY9$COMMUNITYHCV)/mean(FY9$TotalPrisonPop))*100),
((mean(FY10$COMMUNITYHCV)/mean(FY10$TotalPrisonPop))*100),
((mean(FY11$COMMUNITYHCV)/mean(FY11$TotalPrisonPop))*100),
((mean(FY12$COMMUNITYHCV)/mean(FY12$TotalPrisonPop))*100),
((mean(FY13$COMMUNITYHCV)/mean(FY13$TotalPrisonPop))*100),
((mean(FY14$COMMUNITYHCV)/mean(FY14$TotalPrisonPop))*100),
((mean(FY15$COMMUNITYHCV)/mean(FY15$TotalPrisonPop))*100)
)

HCVF$PrevalenceAllTotal <- c(
((mean(FY7$TotalHCV)/mean(FY7$TotalPrisonPop))*100),
((mean(FY8$TotalHCV)/mean(FY8$TotalPrisonPop))*100),
((mean(FY9$TotalHCV)/mean(FY9$TotalPrisonPop))*100),
((mean(FY10$TotalHCV)/mean(FY10$TotalPrisonPop))*100),
((mean(FY11$TotalHCV)/mean(FY11$TotalPrisonPop))*100),
((mean(FY12$TotalHCV)/mean(FY12$TotalPrisonPop))*100),
((mean(FY13$TotalHCV)/mean(FY13$TotalPrisonPop))*100),
((mean(FY14$TotalHCV)/mean(FY14$TotalPrisonPop))*100),
((mean(FY15$TotalHCV)/mean(FY15$TotalPrisonPop))*100)
)

HCVF$PrevalencePrisonIDUFloor <- c(
((quantile(FY7$PrisonHCV, 0.25)/mean(FY7$TotalIDU))*100),
((quantile(FY8$PrisonHCV, 0.25)/mean(FY8$TotalIDU))*100),
((quantile(FY9$PrisonHCV, 0.25)/mean(FY9$TotalIDU))*100),
((quantile(FY10$PrisonHCV, 0.25)/mean(FY10$TotalIDU))*100),
((quantile(FY11$PrisonHCV, 0.25)/mean(FY11$TotalIDU))*100),
((quantile(FY12$PrisonHCV, 0.25)/mean(FY12$TotalIDU))*100),
((quantile(FY13$PrisonHCV, 0.25)/mean(FY13$TotalIDU))*100),
((quantile(FY14$PrisonHCV, 0.25)/mean(FY14$TotalIDU))*100),
((quantile(FY15$PrisonHCV, 0.25)/mean(FY15$TotalIDU))*100)
)

HCVF$PrevalencePrisonIDUCeiling <- c(
((quantile(FY7$PrisonHCV, 0.75)/mean(FY7$TotalIDU))*100),
((quantile(FY8$PrisonHCV, 0.75)/mean(FY8$TotalIDU))*100),
((quantile(FY9$PrisonHCV, 0.75)/mean(FY9$TotalIDU))*100),
((quantile(FY10$PrisonHCV, 0.75)/mean(FY10$TotalIDU))*100),
((quantile(FY11$PrisonHCV, 0.75)/mean(FY11$TotalIDU))*100),
((quantile(FY12$PrisonHCV, 0.75)/mean(FY12$TotalIDU))*100),
((quantile(FY13$PrisonHCV, 0.75)/mean(FY13$TotalIDU))*100),
((quantile(FY14$PrisonHCV, 0.75)/mean(FY14$TotalIDU))*100),
((quantile(FY15$PrisonHCV, 0.75)/mean(FY15$TotalIDU))*100)
)

HCVF$PrevalencePrisonTotalFloor <- c(
((quantile(FY7$PrisonHCV, 0.25)/mean(FY7$TotalPrisonPop))*100),
((quantile(FY8$PrisonHCV, 0.25)/mean(FY8$TotalPrisonPop))*100),
((quantile(FY9$PrisonHCV, 0.25)/mean(FY9$TotalPrisonPop))*100),
((quantile(FY10$PrisonHCV, 0.25)/mean(FY10$TotalPrisonPop))*100),
((quantile(FY11$PrisonHCV, 0.25)/mean(FY11$TotalPrisonPop))*100),
((quantile(FY12$PrisonHCV, 0.25)/mean(FY12$TotalPrisonPop))*100),
((quantile(FY13$PrisonHCV, 0.25)/mean(FY13$TotalPrisonPop))*100),
((quantile(FY14$PrisonHCV, 0.25)/mean(FY14$TotalPrisonPop))*100),
((quantile(FY15$PrisonHCV, 0.25)/mean(FY15$TotalPrisonPop))*100)
)

HCVF$PrevalencePrisonTotalCeiling <- c(
((quantile(FY7$PrisonHCV, 0.75)/mean(FY7$TotalPrisonPop))*100),
((quantile(FY8$PrisonHCV, 0.75)/mean(FY8$TotalPrisonPop))*100),
((quantile(FY9$PrisonHCV, 0.75)/mean(FY9$TotalPrisonPop))*100),
((quantile(FY10$PrisonHCV, 0.75)/mean(FY10$TotalPrisonPop))*100),
((quantile(FY11$PrisonHCV, 0.75)/mean(FY11$TotalPrisonPop))*100),
((quantile(FY12$PrisonHCV, 0.75)/mean(FY12$TotalPrisonPop))*100),
((quantile(FY13$PrisonHCV, 0.75)/mean(FY13$TotalPrisonPop))*100),
((quantile(FY14$PrisonHCV, 0.75)/mean(FY14$TotalPrisonPop))*100),
((quantile(FY15$PrisonHCV, 0.75)/mean(FY15$TotalPrisonPop))*100)
)

HCVF$PrevalenceComIDUFloor <- c(
((quantile(FY7$COMMUNITYHCV, 0.25)/mean(FY7$TotalIDU))*100),
((quantile(FY8$COMMUNITYHCV, 0.25)/mean(FY8$TotalIDU))*100),
((quantile(FY9$COMMUNITYHCV, 0.25)/mean(FY9$TotalIDU))*100),
((quantile(FY10$COMMUNITYHCV, 0.25)/mean(FY10$TotalIDU))*100),
((quantile(FY11$COMMUNITYHCV, 0.25)/mean(FY11$TotalIDU))*100),
((quantile(FY12$COMMUNITYHCV, 0.25)/mean(FY12$TotalIDU))*100),
((quantile(FY13$COMMUNITYHCV, 0.25)/mean(FY13$TotalIDU))*100),
((quantile(FY14$COMMUNITYHCV, 0.25)/mean(FY14$TotalIDU))*100),
((quantile(FY15$COMMUNITYHCV, 0.25)/mean(FY15$TotalIDU))*100)
)
HCVF$PrevalenceComIDUCeiling <- c(
((quantile(FY7$COMMUNITYHCV, 0.75)/mean(FY7$TotalIDU))*100),
((quantile(FY8$COMMUNITYHCV, 0.75)/mean(FY8$TotalIDU))*100),
((quantile(FY9$COMMUNITYHCV, 0.75)/mean(FY9$TotalIDU))*100),
((quantile(FY10$COMMUNITYHCV, 0.75)/mean(FY10$TotalIDU))*100),
((quantile(FY11$COMMUNITYHCV, 0.75)/mean(FY11$TotalIDU))*100),
((quantile(FY12$COMMUNITYHCV, 0.75)/mean(FY12$TotalIDU))*100),
((quantile(FY13$COMMUNITYHCV, 0.75)/mean(FY13$TotalIDU))*100),
((quantile(FY14$COMMUNITYHCV, 0.75)/mean(FY14$TotalIDU))*100),
((quantile(FY15$COMMUNITYHCV, 0.75)/mean(FY15$TotalIDU))*100)
)

HCVF$PrevalenceComTotalFloor <- c(
((quantile(FY7$COMMUNITYHCV, 0.25)/mean(FY7$TotalPrisonPop))*100),
((quantile(FY8$COMMUNITYHCV, 0.25)/mean(FY8$TotalPrisonPop))*100),
((quantile(FY9$COMMUNITYHCV, 0.25)/mean(FY9$TotalPrisonPop))*100),
((quantile(FY10$COMMUNITYHCV, 0.25)/mean(FY10$TotalPrisonPop))*100),
((quantile(FY11$COMMUNITYHCV, 0.25)/mean(FY11$TotalPrisonPop))*100),
((quantile(FY12$COMMUNITYHCV, 0.25)/mean(FY12$TotalPrisonPop))*100),
((quantile(FY13$COMMUNITYHCV, 0.25)/mean(FY13$TotalPrisonPop))*100),
((quantile(FY14$COMMUNITYHCV, 0.25)/mean(FY14$TotalPrisonPop))*100),
((quantile(FY15$COMMUNITYHCV, 0.25)/mean(FY15$TotalPrisonPop))*100)
)

HCVF$PrevalenceComTotalCeiling <- c(
((quantile(FY7$COMMUNITYHCV, 0.75)/mean(FY7$TotalPrisonPop))*100),
((quantile(FY8$COMMUNITYHCV, 0.75)/mean(FY8$TotalPrisonPop))*100),
((quantile(FY9$COMMUNITYHCV, 0.75)/mean(FY9$TotalPrisonPop))*100),
((quantile(FY10$COMMUNITYHCV, 0.75)/mean(FY10$TotalPrisonPop))*100),
((quantile(FY11$COMMUNITYHCV, 0.75)/mean(FY11$TotalPrisonPop))*100),
((quantile(FY12$COMMUNITYHCV, 0.75)/mean(FY12$TotalPrisonPop))*100),
((quantile(FY13$COMMUNITYHCV, 0.75)/mean(FY13$TotalPrisonPop))*100),
((quantile(FY14$COMMUNITYHCV, 0.75)/mean(FY14$TotalPrisonPop))*100),
((quantile(FY15$COMMUNITYHCV, 0.75)/mean(FY15$TotalPrisonPop))*100)
)

HCVF$PrevalenceAllIDUFloor <- c(
((quantile(FY7$TotalHCV, 0.25)/mean(FY7$TotalIDU))*100),
((quantile(FY8$TotalHCV, 0.25)/mean(FY8$TotalIDU))*100),
((quantile(FY9$TotalHCV, 0.25)/mean(FY9$TotalIDU))*100),
((quantile(FY10$TotalHCV, 0.25)/mean(FY10$TotalIDU))*100),
((quantile(FY11$TotalHCV, 0.25)/mean(FY11$TotalIDU))*100),
((quantile(FY12$TotalHCV, 0.25)/mean(FY12$TotalIDU))*100),
((quantile(FY13$TotalHCV, 0.25)/mean(FY13$TotalIDU))*100),
((quantile(FY14$TotalHCV, 0.25)/mean(FY14$TotalIDU))*100),
((quantile(FY15$TotalHCV, 0.25)/mean(FY15$TotalIDU))*100)
)

HCVF$PrevalenceAllIDUCeiling <- c(
((quantile(FY7$TotalHCV, 0.75)/mean(FY7$TotalIDU))*100),
((quantile(FY8$TotalHCV, 0.75)/mean(FY8$TotalIDU))*100),
((quantile(FY9$TotalHCV, 0.75)/mean(FY9$TotalIDU))*100),
((quantile(FY10$TotalHCV, 0.75)/mean(FY10$TotalIDU))*100),
((quantile(FY11$TotalHCV, 0.75)/mean(FY11$TotalIDU))*100),
((quantile(FY12$TotalHCV, 0.75)/mean(FY12$TotalIDU))*100),
((quantile(FY13$TotalHCV, 0.75)/mean(FY13$TotalIDU))*100),
((quantile(FY14$TotalHCV, 0.75)/mean(FY14$TotalIDU))*100),
((quantile(FY15$TotalHCV, 0.75)/mean(FY15$TotalIDU))*100)
)

HCVF$PrevalenceAllTotalFloor <- c(
((quantile(FY7$TotalHCV, 0.25)/mean(FY7$TotalPrisonPop))*100),
((quantile(FY8$TotalHCV, 0.25)/mean(FY8$TotalPrisonPop))*100),
((quantile(FY9$TotalHCV, 0.25)/mean(FY9$TotalPrisonPop))*100),
((quantile(FY10$TotalHCV, 0.25)/mean(FY10$TotalPrisonPop))*100),
((quantile(FY11$TotalHCV, 0.25)/mean(FY11$TotalPrisonPop))*100),
((quantile(FY12$TotalHCV, 0.25)/mean(FY12$TotalPrisonPop))*100),
((quantile(FY13$TotalHCV, 0.25)/mean(FY13$TotalPrisonPop))*100),
((quantile(FY14$TotalHCV, 0.25)/mean(FY14$TotalPrisonPop))*100),
((quantile(FY15$TotalHCV, 0.25)/mean(FY15$TotalPrisonPop))*100)
)

HCVF$PrevalenceAllTotalCeiling <- c(
((quantile(FY7$TotalHCV, 0.75)/mean(FY7$TotalPrisonPop))*100),
((quantile(FY8$TotalHCV, 0.75)/mean(FY8$TotalPrisonPop))*100),
((quantile(FY9$TotalHCV, 0.75)/mean(FY9$TotalPrisonPop))*100),
((quantile(FY10$TotalHCV, 0.75)/mean(FY10$TotalPrisonPop))*100),
((quantile(FY11$TotalHCV, 0.75)/mean(FY11$TotalPrisonPop))*100),
((quantile(FY12$TotalHCV, 0.75)/mean(FY12$TotalPrisonPop))*100),
((quantile(FY13$TotalHCV, 0.75)/mean(FY13$TotalPrisonPop))*100),
((quantile(FY14$TotalHCV, 0.75)/mean(FY14$TotalPrisonPop))*100),
((quantile(FY15$TotalHCV, 0.75)/mean(FY15$TotalPrisonPop))*100)
)

HCVF$Population <- c(
mean(FY7$TotalPrisonPop),
mean(FY8$TotalPrisonPop),
mean(FY9$TotalPrisonPop),
mean(FY10$TotalPrisonPop),
mean(FY11$TotalPrisonPop),
mean(FY12$TotalPrisonPop),
mean(FY13$TotalPrisonPop),
mean(FY14$TotalPrisonPop),
mean(FY15$TotalPrisonPop)
)

HCVF$PopulationFloor <- c(
median(FY7$TotalPrisonPop)-quantile(FY7$TotalPrisonPop, 0.25),
median(FY8$TotalPrisonPop)-quantile(FY8$TotalPrisonPop, 0.25),
median(FY9$TotalPrisonPop)-quantile(FY9$TotalPrisonPop, 0.25),
median(FY10$TotalPrisonPop)-quantile(FY10$TotalPrisonPop, 0.25),
median(FY11$TotalPrisonPop)-quantile(FY11$TotalPrisonPop, 0.25),
median(FY12$TotalPrisonPop)-quantile(FY12$TotalPrisonPop, 0.25),
median(FY13$TotalPrisonPop)-quantile(FY13$TotalPrisonPop, 0.25),
median(FY14$TotalPrisonPop)-quantile(FY14$TotalPrisonPop, 0.25),
median(FY15$TotalPrisonPop)-quantile(FY15$TotalPrisonPop, 0.25)
)

HCVF$PopulationCeiling <- c(
quantile(FY7$TotalPrisonPop, 0.75)-median(FY7$TotalPrisonPop),
quantile(FY8$TotalPrisonPop, 0.75)-median(FY8$TotalPrisonPop),
quantile(FY9$TotalPrisonPop, 0.75)-median(FY9$TotalPrisonPop),
quantile(FY10$TotalPrisonPop, 0.75)-median(FY10$TotalPrisonPop),
quantile(FY11$TotalPrisonPop, 0.75)-median(FY11$TotalPrisonPop),
quantile(FY12$TotalPrisonPop, 0.75)-median(FY12$TotalPrisonPop),
quantile(FY13$TotalPrisonPop, 0.75)-median(FY13$TotalPrisonPop),
quantile(FY14$TotalPrisonPop, 0.75)-median(FY14$TotalPrisonPop),
quantile(FY15$TotalPrisonPop, 0.75)-median(FY15$TotalPrisonPop)
)

HCVF$Year <- c("2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020")

#F
#TotalIDU incidence and prevalence
HCVG <- data.frame("IncidenceIDU"=c(
((mean(GY7$NewCases)/mean(GY7$TotalIDU))*100)*365,
((mean(GY8$NewCases)/mean(GY8$TotalIDU))*100)*365,
((mean(GY9$NewCases)/mean(GY9$TotalIDU))*100)*365,
((mean(GY10$NewCases)/mean(GY10$TotalIDU))*100)*365,
((mean(GY11$NewCases)/mean(GY11$TotalIDU))*100)*365, ((mean(GY12$NewCases)/mean(GY12$TotalIDU))*100)*365, ((mean(GY13$NewCases)/mean(GY13$TotalIDU))*100)*365, ((mean(GY14$NewCases)/mean(GY14$TotalIDU))*100)*365, ((mean(GY15$NewCases)/mean(GY15$TotalIDU))*100)*365))
HCVG$IncidenceIDUCI <- c(
(1.96*((((mean(GY7$NewCases)/mean(GY7$TotalIDU))^2)*365)*((((var(GY7$NewCases)/mean(GY7$NewCases))^2))*365+(((var(GY7$TotalIDU)/mean(GY7$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(GY8$NewCases)/mean(GY8$TotalIDU))^2)*365)*((((var(GY8$NewCases)/mean(GY8$NewCases))^2))*365+(((var(GY8$TotalIDU)/mean(GY8$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(GY9$NewCases)/mean(GY9$TotalIDU))^2)*365)*((((var(GY9$NewCases)/mean(GY9$NewCases))^2))*365+(((var(GY9$TotalIDU)/mean(GY9$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(GY10$NewCases)/mean(GY10$TotalIDU))^2)*365)*((((var(GY10$NewCases)/mean(GY10$NewCases))^2))*365+(((var(GY10$TotalIDU)/mean(GY10$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(GY11$NewCases)/mean(GY11$TotalIDU))^2)*365)*((((var(GY11$NewCases)/mean(GY11$NewCases))^2))*365+(((var(GY11$TotalIDU)/mean(GY11$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(GY12$NewCases)/mean(GY12$TotalIDU))^2)*365)*((((var(GY12$NewCases)/mean(GY12$NewCases))^2))*365+(((var(GY12$TotalIDU)/mean(GY12$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(GY13$NewCases)/mean(GY13$TotalIDU))^2)*365)*((((var(GY13$NewCases)/mean(GY13$NewCases))^2))*365+(((var(GY13$TotalIDU)/mean(GY13$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(GY14$NewCases)/mean(GY14$TotalIDU))^2)*365)*((((var(GY14$NewCases)/mean(GY14$NewCases))^2))*365+(((var(GY14$TotalIDU)/mean(GY14$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(GY15$NewCases)/mean(GY15$TotalIDU))^2)*365)*((((var(GY15$NewCases)/mean(GY15$NewCases))^2))*365+(((var(GY15$TotalIDU)/mean(GY15$TotalIDU))^2))*365)/sqrt(50*365)))*100
)
HCVG$IncidenceIDUCIFloor <- c(0,0,0,0,0,0,0,0,0)
HCVG$IncidenceIDUCICeiling <- c(0,0,0,0,0,0,0,0,0)

HCVG$IncidencePop <- c(
((mean(GY7$NewCases)/mean(GY7$TotalPrisonPop))*100)*365, 
((mean(GY8$NewCases)/mean(GY8$TotalPrisonPop))*100)*365, 
((mean(GY9$NewCases)/mean(GY9$TotalPrisonPop))*100)*365, 
((mean(GY10$NewCases)/mean(GY10$TotalPrisonPop))*100)*365, 
((mean(GY11$NewCases)/mean(GY11$TotalPrisonPop))*100)*365, 
((mean(GY12$NewCases)/mean(GY12$TotalPrisonPop))*100)*365, 
((mean(GY13$NewCases)/mean(GY13$TotalPrisonPop))*100)*365, 
((mean(GY14$NewCases)/mean(GY14$TotalPrisonPop))*100)*365, 
((mean(GY15$NewCases)/mean(GY15$TotalPrisonPop))*100)*365)
HCVG$IncidencePopCI <- c(
(1.96*((((mean(GY7$NewCases)/mean(GY7$TotalPrisonPop))^2)*365)*((((var(GY7$NewCases)/mean(GY7$NewCases))^2))*365+(((var(GY7$TotalPrisonPop)/mean(GY7$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(GY8$NewCases)/mean(GY8$TotalPrisonPop))^2)*365)*((((var(GY8$NewCases)/mean(GY8$NewCases))^2))*365+(((var(GY8$TotalPrisonPop)/mean(GY8$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(GY9$NewCases)/mean(GY9$TotalPrisonPop))^2)*365)*((((var(GY9$NewCases)/mean(GY9$NewCases))^2))*365+(((var(GY9$TotalPrisonPop)/mean(GY9$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(GY10$NewCases)/mean(GY10$TotalPrisonPop))^2)*365)*((((var(GY10$NewCases)/mean(GY10$NewCases))^2))*365+(((var(GY10$TotalPrisonPop)/mean(GY10$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(GY11$NewCases)/mean(GY11$TotalPrisonPop))^2)*365)*((((var(GY11$NewCases)/mean(GY11$NewCases))^2))*365+(((var(GY11$TotalPrisonPop)/mean(GY11$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(GY12$NewCases)/mean(GY12$TotalPrisonPop))^2)*365)*((((var(GY12$NewCases)/mean(GY12$NewCases))^2))*365+(((var(GY12$TotalPrisonPop)/mean(GY12$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(GY13$NewCases)/mean(GY13$TotalPrisonPop))^2)*365)*((((var(GY13$NewCases)/mean(GY13$NewCases))^2))*365+(((var(GY13$TotalPrisonPop)/mean(GY13$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(GY14$NewCases)/mean(GY14$TotalPrisonPop))^2)*365)*((((var(GY14$NewCases)/mean(GY14$NewCases))^2))*365+(((var(GY14$TotalPrisonPop)/mean(GY14$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(GY15$NewCases)/mean(GY15$TotalPrisonPop))^2)*365)*((((var(GY15$NewCases)/mean(GY15$NewCases))^2))*365+(((var(GY15$TotalPrisonPop)/mean(GY15$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100
)
HCVG$IncidencePopCIFloor <- c(0,0,0,0,0,0,0,0,0)
HCVG$IncidencePopCICeiling <- c(0,0,0,0,0,0,0,0,0)

HCVG$PrevalencePrisIDU <- c(
((mean(GY7$PrisonHCV)/mean(GY7$TotalIDU))*100),
((mean(GY8$PrisonHCV)/mean(GY8$TotalIDU))*100),
((mean(GY9$PrisonHCV)/mean(GY9$TotalIDU))*100),
((mean(GY10$PrisonHCV)/mean(GY10$TotalIDU))*100),
((mean(GY11$PrisonHCV)/mean(GY11$TotalIDU))*100),
((mean(GY12$PrisonHCV)/mean(GY12$TotalIDU))*100),
((mean(GY13$PrisonHCV)/mean(GY13$TotalIDU))*100),
((mean(GY14$PrisonHCV)/mean(GY14$TotalIDU))*100),
((mean(GY15$PrisonHCV)/mean(GY15$TotalIDU))*100)
)

HCVG$PrevalenceComIDU <- c(
((mean(GY7$COMMUNITYHCV)/mean(GY7$TotalIDU))*100),
((mean(GY8$COMMUNITYHCV)/mean(GY8$TotalIDU))*100),
((mean(GY9$COMMUNITYHCV)/mean(GY9$TotalIDU))*100),
((mean(GY10$COMMUNITYHCV)/mean(GY10$TotalIDU))*100),
((mean(GY11$COMMUNITYHCV)/mean(GY11$TotalIDU))*100),
((mean(GY12$COMMUNITYHCV)/mean(GY12$TotalIDU))*100),
((mean(GY13$COMMUNITYHCV)/mean(GY13$TotalIDU))*100),
((mean(GY14$COMMUNITYHCV)/mean(GY14$TotalIDU))*100),
((mean(GY15$COMMUNITYHCV)/mean(GY15$TotalIDU))*100)
)

HCVG$PrevalenceAllIDU <- c(
((mean(GY7$TotalHCV)/mean(GY7$TotalIDU))*100),
((mean(GY8$TotalHCV)/mean(GY8$TotalIDU))*100),
((mean(GY9$TotalHCV)/mean(GY9$TotalIDU))*100),
((mean(GY10$TotalHCV)/mean(GY10$TotalIDU))*100),
((mean(GY11$TotalHCV)/mean(GY11$TotalIDU))*100),
((mean(GY12$TotalHCV)/mean(GY12$TotalIDU))*100),
((mean(GY13$TotalHCV)/mean(GY13$TotalIDU))*100),
((mean(GY14$TotalHCV)/mean(GY14$TotalIDU))*100),
((mean(GY15$TotalHCV)/mean(GY15$TotalIDU))*100)
)

HCVG$PrevalencePrisTotal <- c(
((mean(GY7$PrisonHCV)/mean(GY7$TotalPrisonPop))*100),
((mean(GY8$PrisonHCV)/mean(GY8$TotalPrisonPop))*100),
((mean(GY9$PrisonHCV)/mean(GY9$TotalPrisonPop))*100),
((mean(GY10$PrisonHCV)/mean(GY10$TotalPrisonPop))*100),
((mean(GY11$PrisonHCV)/mean(GY11$TotalPrisonPop))*100),
((mean(GY12$PrisonHCV)/mean(GY12$TotalPrisonPop))*100),
((mean(GY13$PrisonHCV)/mean(GY13$TotalPrisonPop))*100),
((mean(GY14$PrisonHCV)/mean(GY14$TotalPrisonPop))*100),
((mean(GY15$PrisonHCV)/mean(GY15$TotalPrisonPop))*100)
)

HCVG$PrevalenceComTotal <- c(
((mean(GY7$COMMUNITYHCV)/mean(GY7$TotalPrisonPop))*100),
((mean(GY8$COMMUNITYHCV)/mean(GY8$TotalPrisonPop))*100),
((mean(GY9$COMMUNITYHCV)/mean(GY9$TotalPrisonPop))*100),
((mean(GY10$COMMUNITYHCV)/mean(GY10$TotalPrisonPop))*100),
((mean(GY11$COMMUNITYHCV)/mean(GY11$TotalPrisonPop))*100),
((mean(GY12$COMMUNITYHCV)/mean(GY12$TotalPrisonPop))*100),
((mean(GY13$COMMUNITYHCV)/mean(GY13$TotalPrisonPop))*100),
((mean(GY14$COMMUNITYHCV)/mean(GY14$TotalPrisonPop))*100),
((mean(GY15$COMMUNITYHCV)/mean(GY15$TotalPrisonPop))*100)
)

HCVG$PrevalenceAllTotal <- c(
((mean(GY7$TotalHCV)/mean(GY7$TotalPrisonPop))*100),
((mean(GY8$TotalHCV)/mean(GY8$TotalPrisonPop))*100),
((mean(GY9$TotalHCV)/mean(GY9$TotalPrisonPop))*100),
((mean(GY10$TotalHCV)/mean(GY10$TotalPrisonPop))*100),
((mean(GY11$TotalHCV)/mean(GY11$TotalPrisonPop))*100),
((mean(GY12$TotalHCV)/mean(GY12$TotalPrisonPop))*100),
((mean(GY13$TotalHCV)/mean(GY13$TotalPrisonPop))*100),
((mean(GY14$TotalHCV)/mean(GY14$TotalPrisonPop))*100),
((mean(GY15$TotalHCV)/mean(GY15$TotalPrisonPop))*100)
)

HCVG$PrevalencePrisonIDUFloor <- c(
((quantile(GY7$PrisonHCV, 0.25)/mean(GY7$TotalIDU))*100),
((quantile(GY8$PrisonHCV, 0.25)/mean(GY8$TotalIDU))*100),
((quantile(GY9$PrisonHCV, 0.25)/mean(GY9$TotalIDU))*100),
((quantile(GY10$PrisonHCV, 0.25)/mean(GY10$TotalIDU))*100),
((quantile(GY11$PrisonHCV, 0.25)/mean(GY11$TotalIDU))*100),
((quantile(GY12$PrisonHCV, 0.25)/mean(GY12$TotalIDU))*100),
((quantile(GY13$PrisonHCV, 0.25)/mean(GY13$TotalIDU))*100),
((quantile(GY14$PrisonHCV, 0.25)/mean(GY14$TotalIDU))*100),
((quantile(GY15$PrisonHCV, 0.25)/mean(GY15$TotalIDU))*100)
)

HCVG$PrevalencePrisonIDUCeiling <- c(
((quantile(GY7$PrisonHCV, 0.75)/mean(GY7$TotalIDU))*100),
((quantile(GY8$PrisonHCV, 0.75)/mean(GY8$TotalIDU))*100),
((quantile(GY9$PrisonHCV, 0.75)/mean(GY9$TotalIDU))*100),
((quantile(GY10$PrisonHCV, 0.75)/mean(GY10$TotalIDU))*100),
((quantile(GY11$PrisonHCV, 0.75)/mean(GY11$TotalIDU))*100),
((quantile(GY12$PrisonHCV, 0.75)/mean(GY12$TotalIDU))*100),
((quantile(GY13$PrisonHCV, 0.75)/mean(GY13$TotalIDU))*100),
((quantile(GY14$PrisonHCV, 0.75)/mean(GY14$TotalIDU))*100),
((quantile(GY15$PrisonHCV, 0.75)/mean(GY15$TotalIDU))*100)
)

HCVG$PrevalencePrisonTotalFloor <- c(
((quantile(GY7$PrisonHCV, 0.25)/mean(GY7$TotalPrisonPop))*100),
((quantile(GY8$PrisonHCV, 0.25)/mean(GY8$TotalPrisonPop))*100),
((quantile(GY9$PrisonHCV, 0.25)/mean(GY9$TotalPrisonPop))*100),
((quantile(GY10$PrisonHCV, 0.25)/mean(GY10$TotalPrisonPop))*100),
((quantile(GY11$PrisonHCV, 0.25)/mean(GY11$TotalPrisonPop))*100),
((quantile(GY12$PrisonHCV, 0.25)/mean(GY12$TotalPrisonPop))*100),
((quantile(GY13$PrisonHCV, 0.25)/mean(GY13$TotalPrisonPop))*100),
((quantile(GY14$PrisonHCV, 0.25)/mean(GY14$TotalPrisonPop))*100),
((quantile(GY15$PrisonHCV, 0.25)/mean(GY15$TotalPrisonPop))*100)
)

HCVG$PrevalencePrisonTotalCeiling <- c(
((quantile(GY7$PrisonHCV, 0.75)/mean(GY7$TotalPrisonPop))*100),
((quantile(GY8$PrisonHCV, 0.75)/mean(GY8$TotalPrisonPop))*100),
((quantile(GY9$PrisonHCV, 0.75)/mean(GY9$TotalPrisonPop))*100),
((quantile(GY10$PrisonHCV, 0.75)/mean(GY10$TotalPrisonPop))*100),
((quantile(GY11$PrisonHCV, 0.75)/mean(GY11$TotalPrisonPop))*100),
((quantile(GY12$PrisonHCV, 0.75)/mean(GY12$TotalPrisonPop))*100),
((quantile(GY13$PrisonHCV, 0.75)/mean(GY13$TotalPrisonPop))*100),
((quantile(GY14$PrisonHCV, 0.75)/mean(GY14$TotalPrisonPop))*100),
((quantile(GY15$PrisonHCV, 0.75)/mean(GY15$TotalPrisonPop))*100)
)

HCVG$PrevalenceComIDUFloor <- c(
((quantile(GY7$COMMUNITYHCV, 0.25)/mean(GY7$TotalIDU))*100),
((quantile(GY8$COMMUNITYHCV, 0.25)/mean(GY8$TotalIDU))*100),
((quantile(GY9$COMMUNITYHCV, 0.25)/mean(GY9$TotalIDU))*100),
((quantile(GY10$COMMUNITYHCV, 0.25)/mean(GY10$TotalIDU))*100),
((quantile(GY11$COMMUNITYHCV, 0.25)/mean(GY11$TotalIDU))*100),
((quantile(GY12$COMMUNITYHCV, 0.25)/mean(GY12$TotalIDU))*100),
((quantile(GY13$COMMUNITYHCV, 0.25)/mean(GY13$TotalIDU))*100),
((quantile(GY14$COMMUNITYHCV, 0.25)/mean(GY14$TotalIDU))*100),
((quantile(GY15$COMMUNITYHCV, 0.25)/mean(GY15$TotalIDU))*100)
)
HCVG$PrevalenceComIDUCeiling <- c(
((quantile(GY7$COMMUNITYHCV, 0.75)/mean(GY7$TotalIDU))*100),
((quantile(GY8$COMMUNITYHCV, 0.75)/mean(GY8$TotalIDU))*100),
((quantile(GY9$COMMUNITYHCV, 0.75)/mean(GY9$TotalIDU))*100),
((quantile(GY10$COMMUNITYHCV, 0.75)/mean(GY10$TotalIDU))*100),
((quantile(GY11$COMMUNITYHCV, 0.75)/mean(GY11$TotalIDU))*100),
((quantile(GY12$COMMUNITYHCV, 0.75)/mean(GY12$TotalIDU))*100),
((quantile(GY13$COMMUNITYHCV, 0.75)/mean(GY13$TotalIDU))*100),
((quantile(GY14$COMMUNITYHCV, 0.75)/mean(GY14$TotalIDU))*100),
((quantile(GY15$COMMUNITYHCV, 0.75)/mean(GY15$TotalIDU))*100)
)

HCVG$PrevalenceComTotalFloor <- c(
((quantile(GY7$COMMUNITYHCV, 0.25)/mean(GY7$TotalPrisonPop))*100),
((quantile(GY8$COMMUNITYHCV, 0.25)/mean(GY8$TotalPrisonPop))*100),
((quantile(GY9$COMMUNITYHCV, 0.25)/mean(GY9$TotalPrisonPop))*100),
((quantile(GY10$COMMUNITYHCV, 0.25)/mean(GY10$TotalPrisonPop))*100),
((quantile(GY11$COMMUNITYHCV, 0.25)/mean(GY11$TotalPrisonPop))*100),
((quantile(GY12$COMMUNITYHCV, 0.25)/mean(GY12$TotalPrisonPop))*100),
((quantile(GY13$COMMUNITYHCV, 0.25)/mean(GY13$TotalPrisonPop))*100),
((quantile(GY14$COMMUNITYHCV, 0.25)/mean(GY14$TotalPrisonPop))*100),
((quantile(GY15$COMMUNITYHCV, 0.25)/mean(GY15$TotalPrisonPop))*100)
)

HCVG$PrevalenceComTotalCeiling <- c(
((quantile(GY7$COMMUNITYHCV, 0.75)/mean(GY7$TotalPrisonPop))*100),
((quantile(GY8$COMMUNITYHCV, 0.75)/mean(GY8$TotalPrisonPop))*100),
((quantile(GY9$COMMUNITYHCV, 0.75)/mean(GY9$TotalPrisonPop))*100),
((quantile(GY10$COMMUNITYHCV, 0.75)/mean(GY10$TotalPrisonPop))*100),
((quantile(GY11$COMMUNITYHCV, 0.75)/mean(GY11$TotalPrisonPop))*100),
((quantile(GY12$COMMUNITYHCV, 0.75)/mean(GY12$TotalPrisonPop))*100),
((quantile(GY13$COMMUNITYHCV, 0.75)/mean(GY13$TotalPrisonPop))*100),
((quantile(GY14$COMMUNITYHCV, 0.75)/mean(GY14$TotalPrisonPop))*100),
((quantile(GY15$COMMUNITYHCV, 0.75)/mean(GY15$TotalPrisonPop))*100)
)

HCVG$PrevalenceAllIDUFloor <- c(
((quantile(GY7$TotalHCV, 0.25)/mean(GY7$TotalIDU))*100),
((quantile(GY8$TotalHCV, 0.25)/mean(GY8$TotalIDU))*100),
((quantile(GY9$TotalHCV, 0.25)/mean(GY9$TotalIDU))*100),
((quantile(GY10$TotalHCV, 0.25)/mean(GY10$TotalIDU))*100),
((quantile(GY11$TotalHCV, 0.25)/mean(GY11$TotalIDU))*100),
((quantile(GY12$TotalHCV, 0.25)/mean(GY12$TotalIDU))*100),
((quantile(GY13$TotalHCV, 0.25)/mean(GY13$TotalIDU))*100),
((quantile(GY14$TotalHCV, 0.25)/mean(GY14$TotalIDU))*100),
((quantile(GY15$TotalHCV, 0.25)/mean(GY15$TotalIDU))*100)
)

HCVG$PrevalenceAllIDUCeiling <- c(
((quantile(GY7$TotalHCV, 0.75)/mean(GY7$TotalIDU))*100),
((quantile(GY8$TotalHCV, 0.75)/mean(GY8$TotalIDU))*100),
((quantile(GY9$TotalHCV, 0.75)/mean(GY9$TotalIDU))*100),
((quantile(GY10$TotalHCV, 0.75)/mean(GY10$TotalIDU))*100),
((quantile(GY11$TotalHCV, 0.75)/mean(GY11$TotalIDU))*100),
((quantile(GY12$TotalHCV, 0.75)/mean(GY12$TotalIDU))*100),
((quantile(GY13$TotalHCV, 0.75)/mean(GY13$TotalIDU))*100),
((quantile(GY14$TotalHCV, 0.75)/mean(GY14$TotalIDU))*100),
((quantile(GY15$TotalHCV, 0.75)/mean(GY15$TotalIDU))*100)
)

HCVG$PrevalenceAllTotalFloor <- c(
((quantile(GY7$TotalHCV, 0.25)/mean(GY7$TotalPrisonPop))*100),
((quantile(GY8$TotalHCV, 0.25)/mean(GY8$TotalPrisonPop))*100),
((quantile(GY9$TotalHCV, 0.25)/mean(GY9$TotalPrisonPop))*100),
((quantile(GY10$TotalHCV, 0.25)/mean(GY10$TotalPrisonPop))*100),
((quantile(GY11$TotalHCV, 0.25)/mean(GY11$TotalPrisonPop))*100),
((quantile(GY12$TotalHCV, 0.25)/mean(GY12$TotalPrisonPop))*100),
((quantile(GY13$TotalHCV, 0.25)/mean(GY13$TotalPrisonPop))*100),
((quantile(GY14$TotalHCV, 0.25)/mean(GY14$TotalPrisonPop))*100),
((quantile(GY15$TotalHCV, 0.25)/mean(GY15$TotalPrisonPop))*100)
)

HCVG$PrevalenceAllTotalCeiling <- c(
((quantile(GY7$TotalHCV, 0.75)/mean(GY7$TotalPrisonPop))*100),
((quantile(GY8$TotalHCV, 0.75)/mean(GY8$TotalPrisonPop))*100),
((quantile(GY9$TotalHCV, 0.75)/mean(GY9$TotalPrisonPop))*100),
((quantile(GY10$TotalHCV, 0.75)/mean(GY10$TotalPrisonPop))*100),
((quantile(GY11$TotalHCV, 0.75)/mean(GY11$TotalPrisonPop))*100),
((quantile(GY12$TotalHCV, 0.75)/mean(GY12$TotalPrisonPop))*100),
((quantile(GY13$TotalHCV, 0.75)/mean(GY13$TotalPrisonPop))*100),
((quantile(GY14$TotalHCV, 0.75)/mean(GY14$TotalPrisonPop))*100),
((quantile(GY15$TotalHCV, 0.75)/mean(GY15$TotalPrisonPop))*100)
)

HCVG$Population <- c(
mean(GY7$TotalPrisonPop),
mean(GY8$TotalPrisonPop),
mean(GY9$TotalPrisonPop),
mean(GY10$TotalPrisonPop),
mean(GY11$TotalPrisonPop),
mean(GY12$TotalPrisonPop),
mean(GY13$TotalPrisonPop),
mean(GY14$TotalPrisonPop),
mean(GY15$TotalPrisonPop)
)

HCVG$PopulationFloor <- c(
median(GY7$TotalPrisonPop)-quantile(GY7$TotalPrisonPop, 0.25),
median(GY8$TotalPrisonPop)-quantile(GY8$TotalPrisonPop, 0.25),
median(GY9$TotalPrisonPop)-quantile(GY9$TotalPrisonPop, 0.25),
median(GY10$TotalPrisonPop)-quantile(GY10$TotalPrisonPop, 0.25),
median(GY11$TotalPrisonPop)-quantile(GY11$TotalPrisonPop, 0.25),
median(GY12$TotalPrisonPop)-quantile(GY12$TotalPrisonPop, 0.25),
median(GY13$TotalPrisonPop)-quantile(GY13$TotalPrisonPop, 0.25),
median(GY14$TotalPrisonPop)-quantile(GY14$TotalPrisonPop, 0.25),
median(GY15$TotalPrisonPop)-quantile(GY15$TotalPrisonPop, 0.25)
)

HCVG$PopulationCeiling <- c(
quantile(GY7$TotalPrisonPop, 0.75)-median(GY7$TotalPrisonPop),
quantile(GY8$TotalPrisonPop, 0.75)-median(GY8$TotalPrisonPop),
quantile(GY9$TotalPrisonPop, 0.75)-median(GY9$TotalPrisonPop),
quantile(GY10$TotalPrisonPop, 0.75)-median(GY10$TotalPrisonPop),
quantile(GY11$TotalPrisonPop, 0.75)-median(GY11$TotalPrisonPop),
quantile(GY12$TotalPrisonPop, 0.75)-median(GY12$TotalPrisonPop),
quantile(GY13$TotalPrisonPop, 0.75)-median(GY13$TotalPrisonPop),
quantile(GY14$TotalPrisonPop, 0.75)-median(GY14$TotalPrisonPop),
quantile(GY15$TotalPrisonPop, 0.75)-median(GY15$TotalPrisonPop)
)

HCVG$Year <- c("2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020")

#F
#TotalIDU incidence and prevalence
HCVH <- data.frame("IncidenceIDU"=c(
((mean(HY7$NewCases)/mean(HY7$TotalIDU))*100)*365,
((mean(HY8$NewCases)/mean(HY8$TotalIDU))*100)*365,
((mean(HY9$NewCases)/mean(HY9$TotalIDU))*100)*365,
((mean(HY10$NewCases)/mean(HY10$TotalIDU))*100)*365,
((mean(HY11$NewCases)/mean(HY11$TotalIDU))*100)*365, ((mean(HY12$NewCases)/mean(HY12$TotalIDU))*100)*365, ((mean(HY13$NewCases)/mean(HY13$TotalIDU))*100)*365, ((mean(HY14$NewCases)/mean(HY14$TotalIDU))*100)*365, ((mean(HY15$NewCases)/mean(HY15$TotalIDU))*100)*365))
HCVH$IncidenceIDUCI <- c(
(1.96*((((mean(HY7$NewCases)/mean(HY7$TotalIDU))^2)*365)*((((var(HY7$NewCases)/mean(HY7$NewCases))^2))*365+(((var(HY7$TotalIDU)/mean(HY7$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(HY8$NewCases)/mean(HY8$TotalIDU))^2)*365)*((((var(HY8$NewCases)/mean(HY8$NewCases))^2))*365+(((var(HY8$TotalIDU)/mean(HY8$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(HY9$NewCases)/mean(HY9$TotalIDU))^2)*365)*((((var(HY9$NewCases)/mean(HY9$NewCases))^2))*365+(((var(HY9$TotalIDU)/mean(HY9$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(HY10$NewCases)/mean(HY10$TotalIDU))^2)*365)*((((var(HY10$NewCases)/mean(HY10$NewCases))^2))*365+(((var(HY10$TotalIDU)/mean(HY10$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(HY11$NewCases)/mean(HY11$TotalIDU))^2)*365)*((((var(HY11$NewCases)/mean(HY11$NewCases))^2))*365+(((var(HY11$TotalIDU)/mean(HY11$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(HY12$NewCases)/mean(HY12$TotalIDU))^2)*365)*((((var(HY12$NewCases)/mean(HY12$NewCases))^2))*365+(((var(HY12$TotalIDU)/mean(HY12$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(HY13$NewCases)/mean(HY13$TotalIDU))^2)*365)*((((var(HY13$NewCases)/mean(HY13$NewCases))^2))*365+(((var(HY13$TotalIDU)/mean(HY13$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(HY14$NewCases)/mean(HY14$TotalIDU))^2)*365)*((((var(HY14$NewCases)/mean(HY14$NewCases))^2))*365+(((var(HY14$TotalIDU)/mean(HY14$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(HY15$NewCases)/mean(HY15$TotalIDU))^2)*365)*((((var(HY15$NewCases)/mean(HY15$NewCases))^2))*365+(((var(HY15$TotalIDU)/mean(HY15$TotalIDU))^2))*365)/sqrt(50*365)))*100
)
HCVH$IncidenceIDUCIFloor <- c(0,0,0,0,0,0,0,0,0)
HCVH$IncidenceIDUCICeiling <- c(0,0,0,0,0,0,0,0,0)

HCVH$IncidencePop <- c(
((mean(HY7$NewCases)/mean(HY7$TotalPrisonPop))*100)*365, 
((mean(HY8$NewCases)/mean(HY8$TotalPrisonPop))*100)*365, 
((mean(HY9$NewCases)/mean(HY9$TotalPrisonPop))*100)*365, 
((mean(HY10$NewCases)/mean(HY10$TotalPrisonPop))*100)*365, 
((mean(HY11$NewCases)/mean(HY11$TotalPrisonPop))*100)*365, 
((mean(HY12$NewCases)/mean(HY12$TotalPrisonPop))*100)*365, 
((mean(HY13$NewCases)/mean(HY13$TotalPrisonPop))*100)*365, 
((mean(HY14$NewCases)/mean(HY14$TotalPrisonPop))*100)*365, 
((mean(HY15$NewCases)/mean(HY15$TotalPrisonPop))*100)*365)
HCVH$IncidencePopCI <- c(
(1.96*((((mean(HY7$NewCases)/mean(HY7$TotalPrisonPop))^2)*365)*((((var(HY7$NewCases)/mean(HY7$NewCases))^2))*365+(((var(HY7$TotalPrisonPop)/mean(HY7$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(HY8$NewCases)/mean(HY8$TotalPrisonPop))^2)*365)*((((var(HY8$NewCases)/mean(HY8$NewCases))^2))*365+(((var(HY8$TotalPrisonPop)/mean(HY8$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(HY9$NewCases)/mean(HY9$TotalPrisonPop))^2)*365)*((((var(HY9$NewCases)/mean(HY9$NewCases))^2))*365+(((var(HY9$TotalPrisonPop)/mean(HY9$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(HY10$NewCases)/mean(HY10$TotalPrisonPop))^2)*365)*((((var(HY10$NewCases)/mean(HY10$NewCases))^2))*365+(((var(HY10$TotalPrisonPop)/mean(HY10$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(HY11$NewCases)/mean(HY11$TotalPrisonPop))^2)*365)*((((var(HY11$NewCases)/mean(HY11$NewCases))^2))*365+(((var(HY11$TotalPrisonPop)/mean(HY11$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(HY12$NewCases)/mean(HY12$TotalPrisonPop))^2)*365)*((((var(HY12$NewCases)/mean(HY12$NewCases))^2))*365+(((var(HY12$TotalPrisonPop)/mean(HY12$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(HY13$NewCases)/mean(HY13$TotalPrisonPop))^2)*365)*((((var(HY13$NewCases)/mean(HY13$NewCases))^2))*365+(((var(HY13$TotalPrisonPop)/mean(HY13$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(HY14$NewCases)/mean(HY14$TotalPrisonPop))^2)*365)*((((var(HY14$NewCases)/mean(HY14$NewCases))^2))*365+(((var(HY14$TotalPrisonPop)/mean(HY14$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(HY15$NewCases)/mean(HY15$TotalPrisonPop))^2)*365)*((((var(HY15$NewCases)/mean(HY15$NewCases))^2))*365+(((var(HY15$TotalPrisonPop)/mean(HY15$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100
)
HCVH$IncidencePopCIFloor <- c(0,0,0,0,0,0,0,0,0)
HCVH$IncidencePopCICeiling <- c(0,0,0,0,0,0,0,0,0)

HCVH$PrevalencePrisIDU <- c(
((mean(HY7$PrisonHCV)/mean(HY7$TotalIDU))*100),
((mean(HY8$PrisonHCV)/mean(HY8$TotalIDU))*100),
((mean(HY9$PrisonHCV)/mean(HY9$TotalIDU))*100),
((mean(HY10$PrisonHCV)/mean(HY10$TotalIDU))*100),
((mean(HY11$PrisonHCV)/mean(HY11$TotalIDU))*100),
((mean(HY12$PrisonHCV)/mean(HY12$TotalIDU))*100),
((mean(HY13$PrisonHCV)/mean(HY13$TotalIDU))*100),
((mean(HY14$PrisonHCV)/mean(HY14$TotalIDU))*100),
((mean(HY15$PrisonHCV)/mean(HY15$TotalIDU))*100)
)

HCVH$PrevalenceComIDU <- c(
((mean(HY7$COMMUNITYHCV)/mean(HY7$TotalIDU))*100),
((mean(HY8$COMMUNITYHCV)/mean(HY8$TotalIDU))*100),
((mean(HY9$COMMUNITYHCV)/mean(HY9$TotalIDU))*100),
((mean(HY10$COMMUNITYHCV)/mean(HY10$TotalIDU))*100),
((mean(HY11$COMMUNITYHCV)/mean(HY11$TotalIDU))*100),
((mean(HY12$COMMUNITYHCV)/mean(HY12$TotalIDU))*100),
((mean(HY13$COMMUNITYHCV)/mean(HY13$TotalIDU))*100),
((mean(HY14$COMMUNITYHCV)/mean(HY14$TotalIDU))*100),
((mean(HY15$COMMUNITYHCV)/mean(HY15$TotalIDU))*100)
)

HCVH$PrevalenceAllIDU <- c(
((mean(HY7$TotalHCV)/mean(HY7$TotalIDU))*100),
((mean(HY8$TotalHCV)/mean(HY8$TotalIDU))*100),
((mean(HY9$TotalHCV)/mean(HY9$TotalIDU))*100),
((mean(HY10$TotalHCV)/mean(HY10$TotalIDU))*100),
((mean(HY11$TotalHCV)/mean(HY11$TotalIDU))*100),
((mean(HY12$TotalHCV)/mean(HY12$TotalIDU))*100),
((mean(HY13$TotalHCV)/mean(HY13$TotalIDU))*100),
((mean(HY14$TotalHCV)/mean(HY14$TotalIDU))*100),
((mean(HY15$TotalHCV)/mean(HY15$TotalIDU))*100)
)

HCVH$PrevalencePrisTotal <- c(
((mean(HY7$PrisonHCV)/mean(HY7$TotalPrisonPop))*100),
((mean(HY8$PrisonHCV)/mean(HY8$TotalPrisonPop))*100),
((mean(HY9$PrisonHCV)/mean(HY9$TotalPrisonPop))*100),
((mean(HY10$PrisonHCV)/mean(HY10$TotalPrisonPop))*100),
((mean(HY11$PrisonHCV)/mean(HY11$TotalPrisonPop))*100),
((mean(HY12$PrisonHCV)/mean(HY12$TotalPrisonPop))*100),
((mean(HY13$PrisonHCV)/mean(HY13$TotalPrisonPop))*100),
((mean(HY14$PrisonHCV)/mean(HY14$TotalPrisonPop))*100),
((mean(HY15$PrisonHCV)/mean(HY15$TotalPrisonPop))*100)
)

HCVH$PrevalenceComTotal <- c(
((mean(HY7$COMMUNITYHCV)/mean(HY7$TotalPrisonPop))*100),
((mean(HY8$COMMUNITYHCV)/mean(HY8$TotalPrisonPop))*100),
((mean(HY9$COMMUNITYHCV)/mean(HY9$TotalPrisonPop))*100),
((mean(HY10$COMMUNITYHCV)/mean(HY10$TotalPrisonPop))*100),
((mean(HY11$COMMUNITYHCV)/mean(HY11$TotalPrisonPop))*100),
((mean(HY12$COMMUNITYHCV)/mean(HY12$TotalPrisonPop))*100),
((mean(HY13$COMMUNITYHCV)/mean(HY13$TotalPrisonPop))*100),
((mean(HY14$COMMUNITYHCV)/mean(HY14$TotalPrisonPop))*100),
((mean(HY15$COMMUNITYHCV)/mean(HY15$TotalPrisonPop))*100)
)

HCVH$PrevalenceAllTotal <- c(
((mean(HY7$TotalHCV)/mean(HY7$TotalPrisonPop))*100),
((mean(HY8$TotalHCV)/mean(HY8$TotalPrisonPop))*100),
((mean(HY9$TotalHCV)/mean(HY9$TotalPrisonPop))*100),
((mean(HY10$TotalHCV)/mean(HY10$TotalPrisonPop))*100),
((mean(HY11$TotalHCV)/mean(HY11$TotalPrisonPop))*100),
((mean(HY12$TotalHCV)/mean(HY12$TotalPrisonPop))*100),
((mean(HY13$TotalHCV)/mean(HY13$TotalPrisonPop))*100),
((mean(HY14$TotalHCV)/mean(HY14$TotalPrisonPop))*100),
((mean(HY15$TotalHCV)/mean(HY15$TotalPrisonPop))*100)
)

HCVH$PrevalencePrisonIDUFloor <- c(
((quantile(HY7$PrisonHCV, 0.25)/mean(HY7$TotalIDU))*100),
((quantile(HY8$PrisonHCV, 0.25)/mean(HY8$TotalIDU))*100),
((quantile(HY9$PrisonHCV, 0.25)/mean(HY9$TotalIDU))*100),
((quantile(HY10$PrisonHCV, 0.25)/mean(HY10$TotalIDU))*100),
((quantile(HY11$PrisonHCV, 0.25)/mean(HY11$TotalIDU))*100),
((quantile(HY12$PrisonHCV, 0.25)/mean(HY12$TotalIDU))*100),
((quantile(HY13$PrisonHCV, 0.25)/mean(HY13$TotalIDU))*100),
((quantile(HY14$PrisonHCV, 0.25)/mean(HY14$TotalIDU))*100),
((quantile(HY15$PrisonHCV, 0.25)/mean(HY15$TotalIDU))*100)
)

HCVH$PrevalencePrisonIDUCeiling <- c(
((quantile(HY7$PrisonHCV, 0.75)/mean(HY7$TotalIDU))*100),
((quantile(HY8$PrisonHCV, 0.75)/mean(HY8$TotalIDU))*100),
((quantile(HY9$PrisonHCV, 0.75)/mean(HY9$TotalIDU))*100),
((quantile(HY10$PrisonHCV, 0.75)/mean(HY10$TotalIDU))*100),
((quantile(HY11$PrisonHCV, 0.75)/mean(HY11$TotalIDU))*100),
((quantile(HY12$PrisonHCV, 0.75)/mean(HY12$TotalIDU))*100),
((quantile(HY13$PrisonHCV, 0.75)/mean(HY13$TotalIDU))*100),
((quantile(HY14$PrisonHCV, 0.75)/mean(HY14$TotalIDU))*100),
((quantile(HY15$PrisonHCV, 0.75)/mean(HY15$TotalIDU))*100)
)

HCVH$PrevalencePrisonTotalFloor <- c(
((quantile(HY7$PrisonHCV, 0.25)/mean(HY7$TotalPrisonPop))*100),
((quantile(HY8$PrisonHCV, 0.25)/mean(HY8$TotalPrisonPop))*100),
((quantile(HY9$PrisonHCV, 0.25)/mean(HY9$TotalPrisonPop))*100),
((quantile(HY10$PrisonHCV, 0.25)/mean(HY10$TotalPrisonPop))*100),
((quantile(HY11$PrisonHCV, 0.25)/mean(HY11$TotalPrisonPop))*100),
((quantile(HY12$PrisonHCV, 0.25)/mean(HY12$TotalPrisonPop))*100),
((quantile(HY13$PrisonHCV, 0.25)/mean(HY13$TotalPrisonPop))*100),
((quantile(HY14$PrisonHCV, 0.25)/mean(HY14$TotalPrisonPop))*100),
((quantile(HY15$PrisonHCV, 0.25)/mean(HY15$TotalPrisonPop))*100)
)

HCVH$PrevalencePrisonTotalCeiling <- c(
((quantile(HY7$PrisonHCV, 0.75)/mean(HY7$TotalPrisonPop))*100),
((quantile(HY8$PrisonHCV, 0.75)/mean(HY8$TotalPrisonPop))*100),
((quantile(HY9$PrisonHCV, 0.75)/mean(HY9$TotalPrisonPop))*100),
((quantile(HY10$PrisonHCV, 0.75)/mean(HY10$TotalPrisonPop))*100),
((quantile(HY11$PrisonHCV, 0.75)/mean(HY11$TotalPrisonPop))*100),
((quantile(HY12$PrisonHCV, 0.75)/mean(HY12$TotalPrisonPop))*100),
((quantile(HY13$PrisonHCV, 0.75)/mean(HY13$TotalPrisonPop))*100),
((quantile(HY14$PrisonHCV, 0.75)/mean(HY14$TotalPrisonPop))*100),
((quantile(HY15$PrisonHCV, 0.75)/mean(HY15$TotalPrisonPop))*100)
)

HCVH$PrevalenceComIDUFloor <- c(
((quantile(HY7$COMMUNITYHCV, 0.25)/mean(HY7$TotalIDU))*100),
((quantile(HY8$COMMUNITYHCV, 0.25)/mean(HY8$TotalIDU))*100),
((quantile(HY9$COMMUNITYHCV, 0.25)/mean(HY9$TotalIDU))*100),
((quantile(HY10$COMMUNITYHCV, 0.25)/mean(HY10$TotalIDU))*100),
((quantile(HY11$COMMUNITYHCV, 0.25)/mean(HY11$TotalIDU))*100),
((quantile(HY12$COMMUNITYHCV, 0.25)/mean(HY12$TotalIDU))*100),
((quantile(HY13$COMMUNITYHCV, 0.25)/mean(HY13$TotalIDU))*100),
((quantile(HY14$COMMUNITYHCV, 0.25)/mean(HY14$TotalIDU))*100),
((quantile(HY15$COMMUNITYHCV, 0.25)/mean(HY15$TotalIDU))*100)
)
HCVH$PrevalenceComIDUCeiling <- c(
((quantile(HY7$COMMUNITYHCV, 0.75)/mean(HY7$TotalIDU))*100),
((quantile(HY8$COMMUNITYHCV, 0.75)/mean(HY8$TotalIDU))*100),
((quantile(HY9$COMMUNITYHCV, 0.75)/mean(HY9$TotalIDU))*100),
((quantile(HY10$COMMUNITYHCV, 0.75)/mean(HY10$TotalIDU))*100),
((quantile(HY11$COMMUNITYHCV, 0.75)/mean(HY11$TotalIDU))*100),
((quantile(HY12$COMMUNITYHCV, 0.75)/mean(HY12$TotalIDU))*100),
((quantile(HY13$COMMUNITYHCV, 0.75)/mean(HY13$TotalIDU))*100),
((quantile(HY14$COMMUNITYHCV, 0.75)/mean(HY14$TotalIDU))*100),
((quantile(HY15$COMMUNITYHCV, 0.75)/mean(HY15$TotalIDU))*100)
)

HCVH$PrevalenceComTotalFloor <- c(
((quantile(HY7$COMMUNITYHCV, 0.25)/mean(HY7$TotalPrisonPop))*100),
((quantile(HY8$COMMUNITYHCV, 0.25)/mean(HY8$TotalPrisonPop))*100),
((quantile(HY9$COMMUNITYHCV, 0.25)/mean(HY9$TotalPrisonPop))*100),
((quantile(HY10$COMMUNITYHCV, 0.25)/mean(HY10$TotalPrisonPop))*100),
((quantile(HY11$COMMUNITYHCV, 0.25)/mean(HY11$TotalPrisonPop))*100),
((quantile(HY12$COMMUNITYHCV, 0.25)/mean(HY12$TotalPrisonPop))*100),
((quantile(HY13$COMMUNITYHCV, 0.25)/mean(HY13$TotalPrisonPop))*100),
((quantile(HY14$COMMUNITYHCV, 0.25)/mean(HY14$TotalPrisonPop))*100),
((quantile(HY15$COMMUNITYHCV, 0.25)/mean(HY15$TotalPrisonPop))*100)
)

HCVH$PrevalenceComTotalCeiling <- c(
((quantile(HY7$COMMUNITYHCV, 0.75)/mean(HY7$TotalPrisonPop))*100),
((quantile(HY8$COMMUNITYHCV, 0.75)/mean(HY8$TotalPrisonPop))*100),
((quantile(HY9$COMMUNITYHCV, 0.75)/mean(HY9$TotalPrisonPop))*100),
((quantile(HY10$COMMUNITYHCV, 0.75)/mean(HY10$TotalPrisonPop))*100),
((quantile(HY11$COMMUNITYHCV, 0.75)/mean(HY11$TotalPrisonPop))*100),
((quantile(HY12$COMMUNITYHCV, 0.75)/mean(HY12$TotalPrisonPop))*100),
((quantile(HY13$COMMUNITYHCV, 0.75)/mean(HY13$TotalPrisonPop))*100),
((quantile(HY14$COMMUNITYHCV, 0.75)/mean(HY14$TotalPrisonPop))*100),
((quantile(HY15$COMMUNITYHCV, 0.75)/mean(HY15$TotalPrisonPop))*100)
)

HCVH$PrevalenceAllIDUFloor <- c(
((quantile(HY7$TotalHCV, 0.25)/mean(HY7$TotalIDU))*100),
((quantile(HY8$TotalHCV, 0.25)/mean(HY8$TotalIDU))*100),
((quantile(HY9$TotalHCV, 0.25)/mean(HY9$TotalIDU))*100),
((quantile(HY10$TotalHCV, 0.25)/mean(HY10$TotalIDU))*100),
((quantile(HY11$TotalHCV, 0.25)/mean(HY11$TotalIDU))*100),
((quantile(HY12$TotalHCV, 0.25)/mean(HY12$TotalIDU))*100),
((quantile(HY13$TotalHCV, 0.25)/mean(HY13$TotalIDU))*100),
((quantile(HY14$TotalHCV, 0.25)/mean(HY14$TotalIDU))*100),
((quantile(HY15$TotalHCV, 0.25)/mean(HY15$TotalIDU))*100)
)

HCVH$PrevalenceAllIDUCeiling <- c(
((quantile(HY7$TotalHCV, 0.75)/mean(HY7$TotalIDU))*100),
((quantile(HY8$TotalHCV, 0.75)/mean(HY8$TotalIDU))*100),
((quantile(HY9$TotalHCV, 0.75)/mean(HY9$TotalIDU))*100),
((quantile(HY10$TotalHCV, 0.75)/mean(HY10$TotalIDU))*100),
((quantile(HY11$TotalHCV, 0.75)/mean(HY11$TotalIDU))*100),
((quantile(HY12$TotalHCV, 0.75)/mean(HY12$TotalIDU))*100),
((quantile(HY13$TotalHCV, 0.75)/mean(HY13$TotalIDU))*100),
((quantile(HY14$TotalHCV, 0.75)/mean(HY14$TotalIDU))*100),
((quantile(HY15$TotalHCV, 0.75)/mean(HY15$TotalIDU))*100)
)

HCVH$PrevalenceAllTotalFloor <- c(
((quantile(HY7$TotalHCV, 0.25)/mean(HY7$TotalPrisonPop))*100),
((quantile(HY8$TotalHCV, 0.25)/mean(HY8$TotalPrisonPop))*100),
((quantile(HY9$TotalHCV, 0.25)/mean(HY9$TotalPrisonPop))*100),
((quantile(HY10$TotalHCV, 0.25)/mean(HY10$TotalPrisonPop))*100),
((quantile(HY11$TotalHCV, 0.25)/mean(HY11$TotalPrisonPop))*100),
((quantile(HY12$TotalHCV, 0.25)/mean(HY12$TotalPrisonPop))*100),
((quantile(HY13$TotalHCV, 0.25)/mean(HY13$TotalPrisonPop))*100),
((quantile(HY14$TotalHCV, 0.25)/mean(HY14$TotalPrisonPop))*100),
((quantile(HY15$TotalHCV, 0.25)/mean(HY15$TotalPrisonPop))*100)
)

HCVH$PrevalenceAllTotalCeiling <- c(
((quantile(HY7$TotalHCV, 0.75)/mean(HY7$TotalPrisonPop))*100),
((quantile(HY8$TotalHCV, 0.75)/mean(HY8$TotalPrisonPop))*100),
((quantile(HY9$TotalHCV, 0.75)/mean(HY9$TotalPrisonPop))*100),
((quantile(HY10$TotalHCV, 0.75)/mean(HY10$TotalPrisonPop))*100),
((quantile(HY11$TotalHCV, 0.75)/mean(HY11$TotalPrisonPop))*100),
((quantile(HY12$TotalHCV, 0.75)/mean(HY12$TotalPrisonPop))*100),
((quantile(HY13$TotalHCV, 0.75)/mean(HY13$TotalPrisonPop))*100),
((quantile(HY14$TotalHCV, 0.75)/mean(HY14$TotalPrisonPop))*100),
((quantile(HY15$TotalHCV, 0.75)/mean(HY15$TotalPrisonPop))*100)
)

HCVH$Population <- c(
mean(HY7$TotalPrisonPop),
mean(HY8$TotalPrisonPop),
mean(HY9$TotalPrisonPop),
mean(HY10$TotalPrisonPop),
mean(HY11$TotalPrisonPop),
mean(HY12$TotalPrisonPop),
mean(HY13$TotalPrisonPop),
mean(HY14$TotalPrisonPop),
mean(HY15$TotalPrisonPop)
)

HCVH$PopulationFloor <- c(
median(HY7$TotalPrisonPop)-quantile(HY7$TotalPrisonPop, 0.25),
median(HY8$TotalPrisonPop)-quantile(HY8$TotalPrisonPop, 0.25),
median(HY9$TotalPrisonPop)-quantile(HY9$TotalPrisonPop, 0.25),
median(HY10$TotalPrisonPop)-quantile(HY10$TotalPrisonPop, 0.25),
median(HY11$TotalPrisonPop)-quantile(HY11$TotalPrisonPop, 0.25),
median(HY12$TotalPrisonPop)-quantile(HY12$TotalPrisonPop, 0.25),
median(HY13$TotalPrisonPop)-quantile(HY13$TotalPrisonPop, 0.25),
median(HY14$TotalPrisonPop)-quantile(HY14$TotalPrisonPop, 0.25),
median(HY15$TotalPrisonPop)-quantile(HY15$TotalPrisonPop, 0.25)
)

HCVH$PopulationCeiling <- c(
quantile(HY7$TotalPrisonPop, 0.75)-median(HY7$TotalPrisonPop),
quantile(HY8$TotalPrisonPop, 0.75)-median(HY8$TotalPrisonPop),
quantile(HY9$TotalPrisonPop, 0.75)-median(HY9$TotalPrisonPop),
quantile(HY10$TotalPrisonPop, 0.75)-median(HY10$TotalPrisonPop),
quantile(HY11$TotalPrisonPop, 0.75)-median(HY11$TotalPrisonPop),
quantile(HY12$TotalPrisonPop, 0.75)-median(HY12$TotalPrisonPop),
quantile(HY13$TotalPrisonPop, 0.75)-median(HY13$TotalPrisonPop),
quantile(HY14$TotalPrisonPop, 0.75)-median(HY14$TotalPrisonPop),
quantile(HY15$TotalPrisonPop, 0.75)-median(HY15$TotalPrisonPop)
)

HCVH$Year <- c("2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020")

#Incidence
HCV$Description <- c("no change")
HCVC$Description <- c("decrease sharing (33%)")
HCVD$Description <- c("decrease sharing (50%)")
HCVE$Description <- c("decrease sharing (64%)")
HCVF$Description <- c("increase sharing (33%)")
HCVG$Description <- c("increase sharing (50%)")
HCVH$Description <- c("increase sharing (64%)")

EPI <- rbind(HCV, HCVC)
EPI <- rbind(EPI, HCVE)
EPI <- rbind(EPI, HCVD)
EPI <- rbind(EPI, HCVF)
EPI <- rbind(EPI, HCVG)
EPI <- rbind(EPI, HCVH)

EPI$IncidenceIDUFloor <- ifelse(EPI$IncidenceIDU-EPI$IncidenceIDUCI<0, 0, EPI$IncidenceIDU-EPI$IncidenceIDUCI)
EPI$IncidencePopFloor <- ifelse(EPI$IncidencePop-EPI$IncidencePopCI<0, 0, EPI$IncidencePop-EPI$IncidencePopCI)

PlotA <- ggplot(data=EPI, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description, shape=Description)) + geom_errorbar(aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI, col=Description),  width=.1) + ylim(0, 20) + ylab("HCV incidence among PWID") + geom_line(size=0.4) + geom_point(size=4) + geom_vline(xintercept=3, linetype=2, size=0.2) +  scale_shape_manual(values=c(3, 4, 2, 7, 8, 10, 1)) + scale_linetype_manual(values=c("dashed", "dotted", "dotdash", "longdash", "twodash", "dotdash", "solid")) + scale_color_manual(values=c("#A93226", "#0B5345", "#8E44AD", "#009933", "#F39C12", "#003366", "#7B241C")) + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=15), axis.title.x = element_text(size=15, face="bold"), axis.title.y = element_text(size=15, face="bold"),  panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.title=element_blank(), legend.key = element_blank(), legend.position = "none")
PlotA
#+ ylim(0, 30) , legend.position = "none"
#scale_linetype_manual(values=c("dotted", "twodash", "dotdash", "longdash", "solid")) + 

#Incidence
PlotB <- ggplot(data=EPI, aes(x=Year, y=IncidencePop, group=Description, col=Description, linetype=Description, shape=Description)) + geom_errorbar(aes(ymin=IncidencePop-IncidencePopCI, ymax=IncidencePop+IncidencePopCI, col=Description), width=.1) + ylim(0, 4) + ylab("HCV incidence among overall population") + geom_line(size=0.4) + geom_point(size=4) + geom_vline(xintercept=3, linetype=2, size=0.2) +  scale_shape_manual(values=c(3, 4, 2, 7, 8, 10, 1)) + scale_linetype_manual(values=c("dashed", "dotted", "dotdash", "longdash", "twodash", "dotdash", "solid")) + scale_color_manual(values=c("#A93226", "#0B5345", "#8E44AD", "#009933", "#F39C12", "#003366", "#7B241C")) + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=14), axis.title.x = element_text(size=15, face="bold"), axis.title.y = element_text(size=15, face="bold"),  panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.title=element_blank(), legend.key = element_blank(), legend.position = "none")
PlotB
#+ ylim(0, 10) 

get_legend<-function(myggplot){
  tmp <- ggplot_gtable(ggplot_build(myggplot))
  leg <- which(sapply(tmp$grobs, function(x) x$name) == "guide-box")
  legend <- tmp$grobs[[leg]]
  return(legend)
}

legend <- get_legend(PlotA)
grid.newpage()
grid.arrange(arrangeGrob(PlotA, PlotB))

PlotF <- ggplot(data=EPI, aes(x=Year, y=PrevalencePrisIDU, group=Description, col=Description, linetype=Description, shape=Description)) + geom_errorbar(aes(ymin=PrevalencePrisonIDUFloor, ymax=PrevalencePrisonIDUCeiling, col=Description), width=.1)  + ylim(0, 2.5)+ ylab(" ") +  scale_shape_manual(values=c(3, 4, 2, 7, 8, 10, 1))+ scale_linetype_manual(values=c("dashed", "dotted", "dotdash", "longdash", "twodash", "dotdash", "solid")) + scale_color_manual(values=c("#A93226", "#0B5345", "#8E44AD", "#009933", "#F39C12", "#003366", "#7B241C"))  + geom_line(size=0.4) + geom_vline(xintercept=3, linetype=2, size=0.2) + geom_point(size=4) + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=14), axis.title.x = element_text(size=15, face="bold"), axis.title.y = element_text(size=15, face="bold"), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.title=element_blank(), legend.key = element_blank(), legend.position = "none")
PlotF

PlotG <- ggplot(data=EPI, aes(x=Year, y=PrevalenceComIDU, group=Description, col=Description, linetype=Description, shape=Description)) + geom_errorbar(aes(ymin=PrevalenceComIDUFloor, ymax=PrevalenceComIDUCeiling, col=Description), width=.1)  + ylim(0, 1.5)+ ylab(" ") +  scale_shape_manual(values=c(3, 4, 2, 7, 8, 10, 1))+ scale_linetype_manual(values=c("dashed", "dotted", "dotdash", "longdash", "twodash", "dotdash", "solid")) + scale_color_manual(values=c("#A93226", "#0B5345", "#8E44AD", "#009933", "#F39C12", "#003366", "#7B241C"))  + geom_line(size=0.4) + geom_vline(xintercept=3, linetype=2, size=0.2) + geom_point(size=4) + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=14), axis.title.x = element_text(size=15, face="bold"), axis.title.y = element_text(size=15, face="bold"), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.title=element_blank(), legend.key = element_blank(), legend.position = "none")
PlotG

PlotH <- ggplot(data=EPI, aes(x=Year, y=PrevalenceAllIDU, group=Description, col=Description, linetype=Description, shape=Description)) + geom_errorbar(aes(ymin=PrevalenceAllIDUFloor, ymax=PrevalenceAllIDUCeiling, col=Description), width=.1)  + ylim(0, 4)+ ylab(" ") +  scale_shape_manual(values=c(3, 4, 2, 7, 8, 10, 1))+ scale_linetype_manual(values=c("dashed", "dotted", "dotdash", "longdash", "twodash", "dotdash", "solid")) + scale_color_manual(values=c("#A93226", "#0B5345", "#8E44AD", "#009933", "#F39C12", "#003366", "#7B241C"))  + geom_line(size=0.4) + geom_vline(xintercept=3, linetype=2, size=0.2) + geom_point(size=4) + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=14), axis.title.x = element_text(size=15, face="bold"), axis.title.y = element_text(size=15, face="bold"), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.title=element_blank(), legend.key = element_blank(), legend.position = "none")
PlotH

#Total 
PlotI <- ggplot(data=EPI, aes(x=Year, y=PrevalencePrisTotal, group=Description, col=Description, linetype=Description, shape=Description)) + geom_errorbar(aes(ymin=PrevalencePrisonTotalFloor, ymax=PrevalencePrisonTotalCeiling, col=Description), width=.1)  + ylim(0, .5)+ ylab(" ") +  scale_shape_manual(values=c(3, 4, 2, 7, 8, 10, 1))+ scale_linetype_manual(values=c("dashed", "dotted", "dotdash", "longdash", "twodash", "dotdash", "solid")) + scale_color_manual(values=c("#A93226", "#0B5345", "#8E44AD", "#009933", "#F39C12", "#003366", "#7B241C"))  + geom_line(size=0.4) + geom_vline(xintercept=3, linetype=2, size=0.2) + geom_point(size=4) + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=14), axis.title.x = element_text(size=15, face="bold"), axis.title.y = element_text(size=15, face="bold"), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.title=element_blank(), legend.key = element_blank(), legend.position = "none")
PlotI

PlotJ <- ggplot(data=EPI, aes(x=Year, y=PrevalenceComTotal, group=Description, col=Description, linetype=Description, shape=Description)) + geom_errorbar(aes(ymin=PrevalenceComTotalFloor, ymax=PrevalenceComTotalCeiling, col=Description), width=.1)  + ylim(0, .5)+ ylab(" ") +  scale_shape_manual(values=c(3, 4, 2, 7, 8, 10, 1))+ scale_linetype_manual(values=c("dashed", "dotted", "dotdash", "longdash", "twodash", "dotdash", "solid")) + scale_color_manual(values=c("#A93226", "#0B5345", "#8E44AD", "#009933", "#F39C12", "#003366", "#7B241C"))  + geom_line(size=0.4) + geom_vline(xintercept=3, linetype=2, size=0.2) + geom_point(size=4) + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=14), axis.title.x = element_text(size=15, face="bold"), axis.title.y = element_text(size=15, face="bold"), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.title=element_blank(), legend.key = element_blank(), legend.position = "none")
PlotJ

PlotK <- ggplot(data=EPI, aes(x=Year, y=PrevalenceAllTotal, group=Description, col=Description, linetype=Description, shape=Description)) + geom_errorbar(aes(ymin=PrevalenceAllTotalFloor, ymax=PrevalenceAllTotalCeiling, col=Description), width=.1)  + ylim(0, 1)+ ylab(" ") +  scale_shape_manual(values=c(3, 4, 2, 7, 8, 10, 1))+ scale_linetype_manual(values=c("dashed", "dotted", "dotdash", "longdash", "twodash", "dotdash", "solid")) + scale_color_manual(values=c("#A93226", "#0B5345", "#8E44AD", "#009933", "#F39C12", "#003366", "#7B241C"))  + geom_line(size=0.4) + geom_vline(xintercept=3, linetype=2, size=0.2) + geom_point(size=4) + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=14), axis.title.x = element_text(size=15, face="bold"), axis.title.y = element_text(size=15, face="bold"), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.title=element_blank(), legend.key = element_blank(), legend.position = "none")
PlotK

grid.newpage()
grid.arrange(arrangeGrob(PlotF, PlotG), arrangeGrob(PlotI, PlotJ), ncol=2)

###
