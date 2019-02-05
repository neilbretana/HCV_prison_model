
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
Y16 <- NULL
Y17 <- NULL
Y18 <- NULL
Y19 <- NULL
Y20 <- NULL
for (var in 1:10)
{
fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/DAA scenario/results/outOSTDAA", var, ".xls", sep="")
tempFile <- read.csv(fileName, sep="\t",header=TRUE)

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
Y12 <- rbind(Y12, tempFile[4016:4380,]) #YRS
Y13 <- rbind(Y13, tempFile[4381:4745,]) #YRS
Y14 <- rbind(Y14, tempFile[4746:5110,]) #YRS
Y15 <- rbind(Y15, tempFile[5111:5475,]) #YRS
Y16 <- rbind(Y16, tempFile[5476:5840,]) #YRS
Y17 <- rbind(Y17, tempFile[5841:6205,]) #YRS
Y18 <- rbind(Y18, tempFile[6206:6570,]) #YRS
Y19 <- rbind(Y19, tempFile[6571:6935,]) #YRS
Y20 <- rbind(Y20, tempFile[6936:7300,]) #YRS
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
Y13$PminTotal <- Y13$Pmin0+Y13$Pmin1+Y13$Pmin2+Y13$Pmin3+Y13$Pmin4+Y13$Pmin5+Y13$Pmin6+Y13$Pmin7+Y13$Pmin8+Y13$Pmin9+Y13$Pmin10+Y13$Pmin11
Y14$PminTotal <- Y14$Pmin0+Y14$Pmin1+Y14$Pmin2+Y14$Pmin3+Y14$Pmin4+Y14$Pmin5+Y14$Pmin6+Y14$Pmin7+Y14$Pmin8+Y14$Pmin9+Y14$Pmin10+Y14$Pmin11
Y15$PminTotal <- Y15$Pmin0+Y15$Pmin1+Y15$Pmin2+Y15$Pmin3+Y15$Pmin4+Y15$Pmin5+Y15$Pmin6+Y15$Pmin7+Y15$Pmin8+Y15$Pmin9+Y15$Pmin10+Y15$Pmin11
Y16$PminTotal <- Y16$Pmin0+Y16$Pmin1+Y16$Pmin2+Y16$Pmin3+Y16$Pmin4+Y16$Pmin5+Y16$Pmin6+Y16$Pmin7+Y16$Pmin8+Y16$Pmin9+Y16$Pmin10+Y16$Pmin11
Y17$PminTotal <- Y17$Pmin0+Y17$Pmin1+Y17$Pmin2+Y17$Pmin3+Y17$Pmin4+Y17$Pmin5+Y17$Pmin6+Y17$Pmin7+Y17$Pmin8+Y17$Pmin9+Y17$Pmin10+Y17$Pmin11
Y18$PminTotal <- Y18$Pmin0+Y18$Pmin1+Y18$Pmin2+Y18$Pmin3+Y18$Pmin4+Y18$Pmin5+Y18$Pmin6+Y18$Pmin7+Y18$Pmin8+Y18$Pmin9+Y18$Pmin10+Y18$Pmin11
Y19$PminTotal <- Y19$Pmin0+Y19$Pmin1+Y19$Pmin2+Y19$Pmin3+Y19$Pmin4+Y19$Pmin5+Y19$Pmin6+Y19$Pmin7+Y19$Pmin8+Y19$Pmin9+Y19$Pmin10+Y19$Pmin11
Y20$PminTotal <- Y20$Pmin0+Y20$Pmin1+Y20$Pmin2+Y20$Pmin3+Y20$Pmin4+Y20$Pmin5+Y20$Pmin6+Y20$Pmin7+Y20$Pmin8+Y20$Pmin9+Y20$Pmin10+Y20$Pmin11

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
Y16$PmedTotal <- Y16$Pmed0+Y16$Pmed1+Y16$Pmed2+Y16$Pmed3+Y16$Pmed4+Y16$Pmed5+Y16$Pmed6+Y16$Pmed7+Y16$Pmed8+Y16$Pmed9+Y16$Pmed10+Y16$Pmed11
Y17$PmedTotal <- Y17$Pmed0+Y17$Pmed1+Y17$Pmed2+Y17$Pmed3+Y17$Pmed4+Y17$Pmed5+Y17$Pmed6+Y17$Pmed7+Y17$Pmed8+Y17$Pmed9+Y17$Pmed10+Y17$Pmed11
Y18$PmedTotal <- Y18$Pmed0+Y18$Pmed1+Y18$Pmed2+Y18$Pmed3+Y18$Pmed4+Y18$Pmed5+Y18$Pmed6+Y18$Pmed7+Y18$Pmed8+Y18$Pmed9+Y18$Pmed10+Y18$Pmed11
Y19$PmedTotal <- Y19$Pmed0+Y19$Pmed1+Y19$Pmed2+Y19$Pmed3+Y19$Pmed4+Y19$Pmed5+Y19$Pmed6+Y19$Pmed7+Y19$Pmed8+Y19$Pmed9+Y19$Pmed10+Y19$Pmed11
Y20$PmedTotal <- Y20$Pmed0+Y20$Pmed1+Y20$Pmed2+Y20$Pmed3+Y20$Pmed4+Y20$Pmed5+Y20$Pmed6+Y20$Pmed7+Y20$Pmed8+Y20$Pmed9+Y20$Pmed10+Y20$Pmed11

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
Y16$PmaxTotal <- Y16$Pmax0+Y16$Pmax1+Y16$Pmax2+Y16$Pmax3+Y16$Pmax4+Y16$Pmax5+Y16$Pmax6+Y16$Pmax7+Y16$Pmax8+Y16$Pmax9+Y16$Pmax10+Y16$Pmax11
Y17$PmaxTotal <- Y17$Pmax0+Y17$Pmax1+Y17$Pmax2+Y17$Pmax3+Y17$Pmax4+Y17$Pmax5+Y17$Pmax6+Y17$Pmax7+Y17$Pmax8+Y17$Pmax9+Y17$Pmax10+Y17$Pmax11
Y18$PmaxTotal <- Y18$Pmax0+Y18$Pmax1+Y18$Pmax2+Y18$Pmax3+Y18$Pmax4+Y18$Pmax5+Y18$Pmax6+Y18$Pmax7+Y18$Pmax8+Y18$Pmax9+Y18$Pmax10+Y18$Pmax11
Y19$PmaxTotal <- Y19$Pmax0+Y19$Pmax1+Y19$Pmax2+Y19$Pmax3+Y19$Pmax4+Y19$Pmax5+Y19$Pmax6+Y19$Pmax7+Y19$Pmax8+Y19$Pmax9+Y19$Pmax10+Y19$Pmax11
Y20$PmaxTotal <- Y20$Pmax0+Y20$Pmax1+Y20$Pmax2+Y20$Pmax3+Y20$Pmax4+Y20$Pmax5+Y20$Pmax6+Y20$Pmax7+Y20$Pmax8+Y20$Pmax9+Y20$Pmax10+Y20$Pmax11

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
Y16$TotalIDU <- Y16$Pmin0+Y16$Pmin1+Y16$Pmin2+Y16$Pmin3+Y16$Pmin4+Y16$Pmin5+Y16$Pmed0+Y16$Pmed1+Y16$Pmed2+Y16$Pmed3+Y16$Pmed4+Y16$Pmed5+Y16$Pmax0+Y16$Pmax1+Y16$Pmax2+Y16$Pmax3+Y16$Pmax4+Y16$Pmax5
Y17$TotalIDU <- Y17$Pmin0+Y17$Pmin1+Y17$Pmin2+Y17$Pmin3+Y17$Pmin4+Y17$Pmin5+Y17$Pmed0+Y17$Pmed1+Y17$Pmed2+Y17$Pmed3+Y17$Pmed4+Y17$Pmed5+Y17$Pmax0+Y17$Pmax1+Y17$Pmax2+Y17$Pmax3+Y17$Pmax4+Y17$Pmax5
Y18$TotalIDU <- Y18$Pmin0+Y18$Pmin1+Y18$Pmin2+Y18$Pmin3+Y18$Pmin4+Y18$Pmin5+Y18$Pmed0+Y18$Pmed1+Y18$Pmed2+Y18$Pmed3+Y18$Pmed4+Y18$Pmed5+Y18$Pmax0+Y18$Pmax1+Y18$Pmax2+Y18$Pmax3+Y18$Pmax4+Y18$Pmax5
Y19$TotalIDU <- Y19$Pmin0+Y19$Pmin1+Y19$Pmin2+Y19$Pmin3+Y19$Pmin4+Y19$Pmin5+Y19$Pmed0+Y19$Pmed1+Y19$Pmed2+Y19$Pmed3+Y19$Pmed4+Y19$Pmed5+Y19$Pmax0+Y19$Pmax1+Y19$Pmax2+Y19$Pmax3+Y19$Pmax4+Y19$Pmax5
Y20$TotalIDU <- Y20$Pmin0+Y20$Pmin1+Y20$Pmin2+Y20$Pmin3+Y20$Pmin4+Y20$Pmin5+Y20$Pmed0+Y20$Pmed1+Y20$Pmed2+Y20$Pmed3+Y20$Pmed4+Y20$Pmed5+Y20$Pmax0+Y20$Pmax1+Y20$Pmax2+Y20$Pmax3+Y20$Pmax4+Y20$Pmax5

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
Y16$TotalHCV <- Y16$PrisonHCV+Y16$COMMUNITYHCV
Y17$TotalHCV <- Y17$PrisonHCV+Y17$COMMUNITYHCV
Y18$TotalHCV <- Y18$PrisonHCV+Y18$COMMUNITYHCV
Y19$TotalHCV <- Y19$PrisonHCV+Y19$COMMUNITYHCV
Y20$TotalHCV <- Y20$PrisonHCV+Y20$COMMUNITYHCV

############Load 50 files from second file
BY1 <- NULL
BY2 <- NULL
BY3 <- NULL
BY4 <- NULL
BY5 <- NULL
BY6 <- NULL
BY7 <- NULL
BY8 <- NULL
BY9 <- NULL
BY10 <- NULL
BY11 <- NULL
BY12 <- NULL
BY13 <- NULL
BY14 <- NULL
BY15 <- NULL
BY16 <- NULL
BY17 <- NULL
BY18 <- NULL
BY19 <- NULL
BY20 <- NULL
for (var in 1:20)
{
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/DAA scenario/increase80/results/outOSTDAAi80_", var, ".csv", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "totalOST", "totalDAA", "totalClrDAA", "reinfected")
  
  BY1 <- rbind(BY1, tempFile[1:365,])
  BY2 <- rbind(BY2, tempFile[366:730,])
  BY3 <- rbind(BY3, tempFile[731:1095,])
  BY4 <- rbind(BY4, tempFile[1096:1460,])
  BY5 <- rbind(BY5, tempFile[1461:1825,])
  BY6 <- rbind(BY6, tempFile[1826:2190,])
  BY7 <- rbind(BY7, tempFile[2191:2555,])
  BY8 <- rbind(BY8, tempFile[2556:2920,])
  BY9 <- rbind(BY9, tempFile[2921:3285,])
  BY10 <- rbind(BY10, tempFile[3286:3650,]) #YRS
  BY11 <- rbind(BY11, tempFile[3651:4015,]) #YRS
  BY12 <- rbind(BY12, tempFile[4016:4380,]) #YRS
  BY13 <- rbind(BY13, tempFile[4381:4745,]) #YRS
  BY14 <- rbind(BY14, tempFile[4746:5110,]) #YRS
  BY15 <- rbind(BY15, tempFile[5111:5475,]) #YRS
  BY16 <- rbind(BY16, tempFile[5476:5840,]) #YRS
  BY17 <- rbind(BY17, tempFile[5841:6205,]) #YRS
  BY18 <- rbind(BY18, tempFile[6206:6570,]) #YRS
  BY19 <- rbind(BY19, tempFile[6571:6935,]) #YRS
  BY20 <- rbind(BY20, tempFile[6936:7300,]) #YRS
}

#Create Total Columns for P1 P2 P3
BY1$PminTotal <- BY1$Pmin0+BY1$Pmin1+BY1$Pmin2+BY1$Pmin3+BY1$Pmin4+BY1$Pmin5+BY1$Pmin6+BY1$Pmin7+BY1$Pmin8+BY1$Pmin9+BY1$Pmin10+BY1$Pmin11
BY2$PminTotal <- BY2$Pmin0+BY2$Pmin1+BY2$Pmin2+BY2$Pmin3+BY2$Pmin4+BY2$Pmin5+BY2$Pmin6+BY2$Pmin7+BY2$Pmin8+BY2$Pmin9+BY2$Pmin10+BY2$Pmin11
BY3$PminTotal <- BY3$Pmin0+BY3$Pmin1+BY3$Pmin2+BY3$Pmin3+BY3$Pmin4+BY3$Pmin5+BY3$Pmin6+BY3$Pmin7+BY3$Pmin8+BY3$Pmin9+BY3$Pmin10+BY3$Pmin11
BY4$PminTotal <- BY4$Pmin0+BY4$Pmin1+BY4$Pmin2+BY4$Pmin3+BY4$Pmin4+BY4$Pmin5+BY4$Pmin6+BY4$Pmin7+BY4$Pmin8+BY4$Pmin9+BY4$Pmin10+BY4$Pmin11
BY5$PminTotal <- BY5$Pmin0+BY5$Pmin1+BY5$Pmin2+BY5$Pmin3+BY5$Pmin4+BY5$Pmin5+BY5$Pmin6+BY5$Pmin7+BY5$Pmin8+BY5$Pmin9+BY5$Pmin10+BY5$Pmin11
BY6$PminTotal <- BY6$Pmin0+BY6$Pmin1+BY6$Pmin2+BY6$Pmin3+BY6$Pmin4+BY6$Pmin5+BY6$Pmin6+BY6$Pmin7+BY6$Pmin8+BY6$Pmin9+BY6$Pmin10+BY6$Pmin11
BY7$PminTotal <- BY7$Pmin0+BY7$Pmin1+BY7$Pmin2+BY7$Pmin3+BY7$Pmin4+BY7$Pmin5+BY7$Pmin6+BY7$Pmin7+BY7$Pmin8+BY7$Pmin9+BY7$Pmin10+BY7$Pmin11
BY8$PminTotal <- BY8$Pmin0+BY8$Pmin1+BY8$Pmin2+BY8$Pmin3+BY8$Pmin4+BY8$Pmin5+BY8$Pmin6+BY8$Pmin7+BY8$Pmin8+BY8$Pmin9+BY8$Pmin10+BY8$Pmin11
BY9$PminTotal <- BY9$Pmin0+BY9$Pmin1+BY9$Pmin2+BY9$Pmin3+BY9$Pmin4+BY9$Pmin5+BY9$Pmin6+BY9$Pmin7+BY9$Pmin8+BY9$Pmin9+BY9$Pmin10+BY9$Pmin11
BY10$PminTotal <- BY10$Pmin0+BY10$Pmin1+BY10$Pmin2+BY10$Pmin3+BY10$Pmin4+BY10$Pmin5+BY10$Pmin6+BY10$Pmin7+BY10$Pmin8+BY10$Pmin9+BY10$Pmin10+BY10$Pmin11
BY11$PminTotal <- BY11$Pmin0+BY11$Pmin1+BY11$Pmin2+BY11$Pmin3+BY11$Pmin4+BY11$Pmin5+BY11$Pmin6+BY11$Pmin7+BY11$Pmin8+BY11$Pmin9+BY11$Pmin10+BY11$Pmin11
BY12$PminTotal <- BY12$Pmin0+BY12$Pmin1+BY12$Pmin2+BY12$Pmin3+BY12$Pmin4+BY12$Pmin5+BY12$Pmin6+BY12$Pmin7+BY12$Pmin8+BY12$Pmin9+BY12$Pmin10+BY12$Pmin11
BY13$PminTotal <- BY13$Pmin0+BY13$Pmin1+BY13$Pmin2+BY13$Pmin3+BY13$Pmin4+BY13$Pmin5+BY13$Pmin6+BY13$Pmin7+BY13$Pmin8+BY13$Pmin9+BY13$Pmin10+BY13$Pmin11
BY14$PminTotal <- BY14$Pmin0+BY14$Pmin1+BY14$Pmin2+BY14$Pmin3+BY14$Pmin4+BY14$Pmin5+BY14$Pmin6+BY14$Pmin7+BY14$Pmin8+BY14$Pmin9+BY14$Pmin10+BY14$Pmin11
BY15$PminTotal <- BY15$Pmin0+BY15$Pmin1+BY15$Pmin2+BY15$Pmin3+BY15$Pmin4+BY15$Pmin5+BY15$Pmin6+BY15$Pmin7+BY15$Pmin8+BY15$Pmin9+BY15$Pmin10+BY15$Pmin11
BY16$PminTotal <- BY16$Pmin0+BY16$Pmin1+BY16$Pmin2+BY16$Pmin3+BY16$Pmin4+BY16$Pmin5+BY16$Pmin6+BY16$Pmin7+BY16$Pmin8+BY16$Pmin9+BY16$Pmin10+BY16$Pmin11
BY17$PminTotal <- BY17$Pmin0+BY17$Pmin1+BY17$Pmin2+BY17$Pmin3+BY17$Pmin4+BY17$Pmin5+BY17$Pmin6+BY17$Pmin7+BY17$Pmin8+BY17$Pmin9+BY17$Pmin10+BY17$Pmin11
BY18$PminTotal <- BY18$Pmin0+BY18$Pmin1+BY18$Pmin2+BY18$Pmin3+BY18$Pmin4+BY18$Pmin5+BY18$Pmin6+BY18$Pmin7+BY18$Pmin8+BY18$Pmin9+BY18$Pmin10+BY18$Pmin11
BY19$PminTotal <- BY19$Pmin0+BY19$Pmin1+BY19$Pmin2+BY19$Pmin3+BY19$Pmin4+BY19$Pmin5+BY19$Pmin6+BY19$Pmin7+BY19$Pmin8+BY19$Pmin9+BY19$Pmin10+BY19$Pmin11
BY20$PminTotal <- BY20$Pmin0+BY20$Pmin1+BY20$Pmin2+BY20$Pmin3+BY20$Pmin4+BY20$Pmin5+BY20$Pmin6+BY20$Pmin7+BY20$Pmin8+BY20$Pmin9+BY20$Pmin10+BY20$Pmin11

BY1$PmedTotal <- BY1$Pmed0+BY1$Pmed1+BY1$Pmed2+BY1$Pmed3+BY1$Pmed4+BY1$Pmed5+BY1$Pmed6+BY1$Pmed7+BY1$Pmed8+BY1$Pmed9+BY1$Pmed10+BY1$Pmed11
BY2$PmedTotal <- BY2$Pmed0+BY2$Pmed1+BY2$Pmed2+BY2$Pmed3+BY2$Pmed4+BY2$Pmed5+BY2$Pmed6+BY2$Pmed7+BY2$Pmed8+BY2$Pmed9+BY2$Pmed10+BY2$Pmed11
BY3$PmedTotal <- BY3$Pmed0+BY3$Pmed1+BY3$Pmed2+BY3$Pmed3+BY3$Pmed4+BY3$Pmed5+BY3$Pmed6+BY3$Pmed7+BY3$Pmed8+BY3$Pmed9+BY3$Pmed10+BY3$Pmed11
BY4$PmedTotal <- BY4$Pmed0+BY4$Pmed1+BY4$Pmed2+BY4$Pmed3+BY4$Pmed4+BY4$Pmed5+BY4$Pmed6+BY4$Pmed7+BY4$Pmed8+BY4$Pmed9+BY4$Pmed10+BY4$Pmed11
BY5$PmedTotal <- BY5$Pmed0+BY5$Pmed1+BY5$Pmed2+BY5$Pmed3+BY5$Pmed4+BY5$Pmed5+BY5$Pmed6+BY5$Pmed7+BY5$Pmed8+BY5$Pmed9+BY5$Pmed10+BY5$Pmed11
BY6$PmedTotal <- BY6$Pmed0+BY6$Pmed1+BY6$Pmed2+BY6$Pmed3+BY6$Pmed4+BY6$Pmed5+BY6$Pmed6+BY6$Pmed7+BY6$Pmed8+BY6$Pmed9+BY6$Pmed10+BY6$Pmed11
BY7$PmedTotal <- BY7$Pmed0+BY7$Pmed1+BY7$Pmed2+BY7$Pmed3+BY7$Pmed4+BY7$Pmed5+BY7$Pmed6+BY7$Pmed7+BY7$Pmed8+BY7$Pmed9+BY7$Pmed10+BY7$Pmed11
BY8$PmedTotal <- BY8$Pmed0+BY8$Pmed1+BY8$Pmed2+BY8$Pmed3+BY8$Pmed4+BY8$Pmed5+BY8$Pmed6+BY8$Pmed7+BY8$Pmed8+BY8$Pmed9+BY8$Pmed10+BY8$Pmed11
BY9$PmedTotal <- BY9$Pmed0+BY9$Pmed1+BY9$Pmed2+BY9$Pmed3+BY9$Pmed4+BY9$Pmed5+BY9$Pmed6+BY9$Pmed7+BY9$Pmed8+BY9$Pmed9+BY9$Pmed10+BY9$Pmed11
BY10$PmedTotal <- BY10$Pmed0+BY10$Pmed1+BY10$Pmed2+BY10$Pmed3+BY10$Pmed4+BY10$Pmed5+BY10$Pmed6+BY10$Pmed7+BY10$Pmed8+BY10$Pmed9+BY10$Pmed10+BY10$Pmed11
BY11$PmedTotal <- BY11$Pmed0+BY11$Pmed1+BY11$Pmed2+BY11$Pmed3+BY11$Pmed4+BY11$Pmed5+BY11$Pmed6+BY11$Pmed7+BY11$Pmed8+BY11$Pmed9+BY11$Pmed10+BY11$Pmed11
BY12$PmedTotal <- BY12$Pmed0+BY12$Pmed1+BY12$Pmed2+BY12$Pmed3+BY12$Pmed4+BY12$Pmed5+BY12$Pmed6+BY12$Pmed7+BY12$Pmed8+BY12$Pmed9+BY12$Pmed10+BY12$Pmed11
BY13$PmedTotal <- BY13$Pmed0+BY13$Pmed1+BY13$Pmed2+BY13$Pmed3+BY13$Pmed4+BY13$Pmed5+BY13$Pmed6+BY13$Pmed7+BY13$Pmed8+BY13$Pmed9+BY13$Pmed10+BY13$Pmed11
BY14$PmedTotal <- BY14$Pmed0+BY14$Pmed1+BY14$Pmed2+BY14$Pmed3+BY14$Pmed4+BY14$Pmed5+BY14$Pmed6+BY14$Pmed7+BY14$Pmed8+BY14$Pmed9+BY14$Pmed10+BY14$Pmed11
BY15$PmedTotal <- BY15$Pmed0+BY15$Pmed1+BY15$Pmed2+BY15$Pmed3+BY15$Pmed4+BY15$Pmed5+BY15$Pmed6+BY15$Pmed7+BY15$Pmed8+BY15$Pmed9+BY15$Pmed10+BY15$Pmed11
BY16$PmedTotal <- BY16$Pmed0+BY16$Pmed1+BY16$Pmed2+BY16$Pmed3+BY16$Pmed4+BY16$Pmed5+BY16$Pmed6+BY16$Pmed7+BY16$Pmed8+BY16$Pmed9+BY16$Pmed10+BY16$Pmed11
BY17$PmedTotal <- BY17$Pmed0+BY17$Pmed1+BY17$Pmed2+BY17$Pmed3+BY17$Pmed4+BY17$Pmed5+BY17$Pmed6+BY17$Pmed7+BY17$Pmed8+BY17$Pmed9+BY17$Pmed10+BY17$Pmed11
BY18$PmedTotal <- BY18$Pmed0+BY18$Pmed1+BY18$Pmed2+BY18$Pmed3+BY18$Pmed4+BY18$Pmed5+BY18$Pmed6+BY18$Pmed7+BY18$Pmed8+BY18$Pmed9+BY18$Pmed10+BY18$Pmed11
BY19$PmedTotal <- BY19$Pmed0+BY19$Pmed1+BY19$Pmed2+BY19$Pmed3+BY19$Pmed4+BY19$Pmed5+BY19$Pmed6+BY19$Pmed7+BY19$Pmed8+BY19$Pmed9+BY19$Pmed10+BY19$Pmed11
BY20$PmedTotal <- BY20$Pmed0+BY20$Pmed1+BY20$Pmed2+BY20$Pmed3+BY20$Pmed4+BY20$Pmed5+BY20$Pmed6+BY20$Pmed7+BY20$Pmed8+BY20$Pmed9+BY20$Pmed10+BY20$Pmed11

BY1$PmaxTotal <- BY1$Pmax0+BY1$Pmax1+BY1$Pmax2+BY1$Pmax3+BY1$Pmax4+BY1$Pmax5+BY1$Pmax6+BY1$Pmax7+BY1$Pmax8+BY1$Pmax9+BY1$Pmax10+BY1$Pmax11
BY2$PmaxTotal <- BY2$Pmax0+BY2$Pmax1+BY2$Pmax2+BY2$Pmax3+BY2$Pmax4+BY2$Pmax5+BY2$Pmax6+BY2$Pmax7+BY2$Pmax8+BY2$Pmax9+BY2$Pmax10+BY2$Pmax11
BY3$PmaxTotal <- BY3$Pmax0+BY3$Pmax1+BY3$Pmax2+BY3$Pmax3+BY3$Pmax4+BY3$Pmax5+BY3$Pmax6+BY3$Pmax7+BY3$Pmax8+BY3$Pmax9+BY3$Pmax10+BY3$Pmax11
BY4$PmaxTotal <- BY4$Pmax0+BY4$Pmax1+BY4$Pmax2+BY4$Pmax3+BY4$Pmax4+BY4$Pmax5+BY4$Pmax6+BY4$Pmax7+BY4$Pmax8+BY4$Pmax9+BY4$Pmax10+BY4$Pmax11
BY5$PmaxTotal <- BY5$Pmax0+BY5$Pmax1+BY5$Pmax2+BY5$Pmax3+BY5$Pmax4+BY5$Pmax5+BY5$Pmax6+BY5$Pmax7+BY5$Pmax8+BY5$Pmax9+BY5$Pmax10+BY5$Pmax11
BY6$PmaxTotal <- BY6$Pmax0+BY6$Pmax1+BY6$Pmax2+BY6$Pmax3+BY6$Pmax4+BY6$Pmax5+BY6$Pmax6+BY6$Pmax7+BY6$Pmax8+BY6$Pmax9+BY6$Pmax10+BY6$Pmax11
BY7$PmaxTotal <- BY7$Pmax0+BY7$Pmax1+BY7$Pmax2+BY7$Pmax3+BY7$Pmax4+BY7$Pmax5+BY7$Pmax6+BY7$Pmax7+BY7$Pmax8+BY7$Pmax9+BY7$Pmax10+BY7$Pmax11
BY8$PmaxTotal <- BY8$Pmax0+BY8$Pmax1+BY8$Pmax2+BY8$Pmax3+BY8$Pmax4+BY8$Pmax5+BY8$Pmax6+BY8$Pmax7+BY8$Pmax8+BY8$Pmax9+BY8$Pmax10+BY8$Pmax11
BY9$PmaxTotal <- BY9$Pmax0+BY9$Pmax1+BY9$Pmax2+BY9$Pmax3+BY9$Pmax4+BY9$Pmax5+BY9$Pmax6+BY9$Pmax7+BY9$Pmax8+BY9$Pmax9+BY9$Pmax10+BY9$Pmax11
BY10$PmaxTotal <- BY10$Pmax0+BY10$Pmax1+BY10$Pmax2+BY10$Pmax3+BY10$Pmax4+BY10$Pmax5+BY10$Pmax6+BY10$Pmax7+BY10$Pmax8+BY10$Pmax9+BY10$Pmax10+BY10$Pmax11
BY11$PmaxTotal <- BY11$Pmax0+BY11$Pmax1+BY11$Pmax2+BY11$Pmax3+BY11$Pmax4+BY11$Pmax5+BY11$Pmax6+BY11$Pmax7+BY11$Pmax8+BY11$Pmax9+BY11$Pmax10+BY11$Pmax11
BY12$PmaxTotal <- BY12$Pmax0+BY12$Pmax1+BY12$Pmax2+BY12$Pmax3+BY12$Pmax4+BY12$Pmax5+BY12$Pmax6+BY12$Pmax7+BY12$Pmax8+BY12$Pmax9+BY12$Pmax10+BY12$Pmax11
BY13$PmaxTotal <- BY13$Pmax0+BY13$Pmax1+BY13$Pmax2+BY13$Pmax3+BY13$Pmax4+BY13$Pmax5+BY13$Pmax6+BY13$Pmax7+BY13$Pmax8+BY13$Pmax9+BY13$Pmax10+BY13$Pmax11
BY14$PmaxTotal <- BY14$Pmax0+BY14$Pmax1+BY14$Pmax2+BY14$Pmax3+BY14$Pmax4+BY14$Pmax5+BY14$Pmax6+BY14$Pmax7+BY14$Pmax8+BY14$Pmax9+BY14$Pmax10+BY14$Pmax11
BY15$PmaxTotal <- BY15$Pmax0+BY15$Pmax1+BY15$Pmax2+BY15$Pmax3+BY15$Pmax4+BY15$Pmax5+BY15$Pmax6+BY15$Pmax7+BY15$Pmax8+BY15$Pmax9+BY15$Pmax10+BY15$Pmax11
BY16$PmaxTotal <- BY16$Pmax0+BY16$Pmax1+BY16$Pmax2+BY16$Pmax3+BY16$Pmax4+BY16$Pmax5+BY16$Pmax6+BY16$Pmax7+BY16$Pmax8+BY16$Pmax9+BY16$Pmax10+BY16$Pmax11
BY17$PmaxTotal <- BY17$Pmax0+BY17$Pmax1+BY17$Pmax2+BY17$Pmax3+BY17$Pmax4+BY17$Pmax5+BY17$Pmax6+BY17$Pmax7+BY17$Pmax8+BY17$Pmax9+BY17$Pmax10+BY17$Pmax11
BY18$PmaxTotal <- BY18$Pmax0+BY18$Pmax1+BY18$Pmax2+BY18$Pmax3+BY18$Pmax4+BY18$Pmax5+BY18$Pmax6+BY18$Pmax7+BY18$Pmax8+BY18$Pmax9+BY18$Pmax10+BY18$Pmax11
BY19$PmaxTotal <- BY19$Pmax0+BY19$Pmax1+BY19$Pmax2+BY19$Pmax3+BY19$Pmax4+BY19$Pmax5+BY19$Pmax6+BY19$Pmax7+BY19$Pmax8+BY19$Pmax9+BY19$Pmax10+BY19$Pmax11
BY20$PmaxTotal <- BY20$Pmax0+BY20$Pmax1+BY20$Pmax2+BY20$Pmax3+BY20$Pmax4+BY20$Pmax5+BY20$Pmax6+BY20$Pmax7+BY20$Pmax8+BY20$Pmax9+BY20$Pmax10+BY20$Pmax11

#Incidence and Prevalence
#Create total IDU columns
BY1$TotalIDU <- BY1$Pmin0+BY1$Pmin1+BY1$Pmin2+BY1$Pmin3+BY1$Pmin4+BY1$Pmin5+BY1$Pmed0+BY1$Pmed1+BY1$Pmed2+BY1$Pmed3+BY1$Pmed4+BY1$Pmed5+BY1$Pmax0+BY1$Pmax1+BY1$Pmax2+BY1$Pmax3+BY1$Pmax4+BY1$Pmax5
BY2$TotalIDU <- BY2$Pmin0+BY2$Pmin1+BY2$Pmin2+BY2$Pmin3+BY2$Pmin4+BY2$Pmin5+BY2$Pmed0+BY2$Pmed1+BY2$Pmed2+BY2$Pmed3+BY2$Pmed4+BY2$Pmed5+BY2$Pmax0+BY2$Pmax1+BY2$Pmax2+BY2$Pmax3+BY2$Pmax4+BY2$Pmax5
BY3$TotalIDU <- BY3$Pmin0+BY3$Pmin1+BY3$Pmin2+BY3$Pmin3+BY3$Pmin4+BY3$Pmin5+BY3$Pmed0+BY3$Pmed1+BY3$Pmed2+BY3$Pmed3+BY3$Pmed4+BY3$Pmed5+BY3$Pmax0+BY3$Pmax1+BY3$Pmax2+BY3$Pmax3+BY3$Pmax4+BY3$Pmax5
BY4$TotalIDU <- BY4$Pmin0+BY4$Pmin1+BY4$Pmin2+BY4$Pmin3+BY4$Pmin4+BY4$Pmin5+BY4$Pmed0+BY4$Pmed1+BY4$Pmed2+BY4$Pmed3+BY4$Pmed4+BY4$Pmed5+BY4$Pmax0+BY4$Pmax1+BY4$Pmax2+BY4$Pmax3+BY4$Pmax4+BY4$Pmax5
BY5$TotalIDU <- BY5$Pmin0+BY5$Pmin1+BY5$Pmin2+BY5$Pmin3+BY5$Pmin4+BY5$Pmin5+BY5$Pmed0+BY5$Pmed1+BY5$Pmed2+BY5$Pmed3+BY5$Pmed4+BY5$Pmed5+BY5$Pmax0+BY5$Pmax1+BY5$Pmax2+BY5$Pmax3+BY5$Pmax4+BY5$Pmax5
BY6$TotalIDU <- BY6$Pmin0+BY6$Pmin1+BY6$Pmin2+BY6$Pmin3+BY6$Pmin4+BY6$Pmin5+BY6$Pmed0+BY6$Pmed1+BY6$Pmed2+BY6$Pmed3+BY6$Pmed4+BY6$Pmed5+BY6$Pmax0+BY6$Pmax1+BY6$Pmax2+BY6$Pmax3+BY6$Pmax4+BY6$Pmax5
BY7$TotalIDU <- BY7$Pmin0+BY7$Pmin1+BY7$Pmin2+BY7$Pmin3+BY7$Pmin4+BY7$Pmin5+BY7$Pmed0+BY7$Pmed1+BY7$Pmed2+BY7$Pmed3+BY7$Pmed4+BY7$Pmed5+BY7$Pmax0+BY7$Pmax1+BY7$Pmax2+BY7$Pmax3+BY7$Pmax4+BY7$Pmax5
BY8$TotalIDU <- BY8$Pmin0+BY8$Pmin1+BY8$Pmin2+BY8$Pmin3+BY8$Pmin4+BY8$Pmin5+BY8$Pmed0+BY8$Pmed1+BY8$Pmed2+BY8$Pmed3+BY8$Pmed4+BY8$Pmed5+BY8$Pmax0+BY8$Pmax1+BY8$Pmax2+BY8$Pmax3+BY8$Pmax4+BY8$Pmax5
BY9$TotalIDU <- BY9$Pmin0+BY9$Pmin1+BY9$Pmin2+BY9$Pmin3+BY9$Pmin4+BY9$Pmin5+BY9$Pmed0+BY9$Pmed1+BY9$Pmed2+BY9$Pmed3+BY9$Pmed4+BY9$Pmed5+BY9$Pmax0+BY9$Pmax1+BY9$Pmax2+BY9$Pmax3+BY9$Pmax4+BY9$Pmax5
BY10$TotalIDU <- BY10$Pmin0+BY10$Pmin1+BY10$Pmin2+BY10$Pmin3+BY10$Pmin4+BY10$Pmin5+BY10$Pmed0+BY10$Pmed1+BY10$Pmed2+BY10$Pmed3+BY10$Pmed4+BY10$Pmed5+BY10$Pmax0+BY10$Pmax1+BY10$Pmax2+BY10$Pmax3+BY10$Pmax4+BY10$Pmax5
BY11$TotalIDU <- BY11$Pmin0+BY11$Pmin1+BY11$Pmin2+BY11$Pmin3+BY11$Pmin4+BY11$Pmin5+BY11$Pmed0+BY11$Pmed1+BY11$Pmed2+BY11$Pmed3+BY11$Pmed4+BY11$Pmed5+BY11$Pmax0+BY11$Pmax1+BY11$Pmax2+BY11$Pmax3+BY11$Pmax4+BY11$Pmax5
BY12$TotalIDU <- BY12$Pmin0+BY12$Pmin1+BY12$Pmin2+BY12$Pmin3+BY12$Pmin4+BY12$Pmin5+BY12$Pmed0+BY12$Pmed1+BY12$Pmed2+BY12$Pmed3+BY12$Pmed4+BY12$Pmed5+BY12$Pmax0+BY12$Pmax1+BY12$Pmax2+BY12$Pmax3+BY12$Pmax4+BY12$Pmax5
BY13$TotalIDU <- BY13$Pmin0+BY13$Pmin1+BY13$Pmin2+BY13$Pmin3+BY13$Pmin4+BY13$Pmin5+BY13$Pmed0+BY13$Pmed1+BY13$Pmed2+BY13$Pmed3+BY13$Pmed4+BY13$Pmed5+BY13$Pmax0+BY13$Pmax1+BY13$Pmax2+BY13$Pmax3+BY13$Pmax4+BY13$Pmax5
BY14$TotalIDU <- BY14$Pmin0+BY14$Pmin1+BY14$Pmin2+BY14$Pmin3+BY14$Pmin4+BY14$Pmin5+BY14$Pmed0+BY14$Pmed1+BY14$Pmed2+BY14$Pmed3+BY14$Pmed4+BY14$Pmed5+BY14$Pmax0+BY14$Pmax1+BY14$Pmax2+BY14$Pmax3+BY14$Pmax4+BY14$Pmax5
BY15$TotalIDU <- BY15$Pmin0+BY15$Pmin1+BY15$Pmin2+BY15$Pmin3+BY15$Pmin4+BY15$Pmin5+BY15$Pmed0+BY15$Pmed1+BY15$Pmed2+BY15$Pmed3+BY15$Pmed4+BY15$Pmed5+BY15$Pmax0+BY15$Pmax1+BY15$Pmax2+BY15$Pmax3+BY15$Pmax4+BY15$Pmax5
BY16$TotalIDU <- BY16$Pmin0+BY16$Pmin1+BY16$Pmin2+BY16$Pmin3+BY16$Pmin4+BY16$Pmin5+BY16$Pmed0+BY16$Pmed1+BY16$Pmed2+BY16$Pmed3+BY16$Pmed4+BY16$Pmed5+BY16$Pmax0+BY16$Pmax1+BY16$Pmax2+BY16$Pmax3+BY16$Pmax4+BY16$Pmax5
BY17$TotalIDU <- BY17$Pmin0+BY17$Pmin1+BY17$Pmin2+BY17$Pmin3+BY17$Pmin4+BY17$Pmin5+BY17$Pmed0+BY17$Pmed1+BY17$Pmed2+BY17$Pmed3+BY17$Pmed4+BY17$Pmed5+BY17$Pmax0+BY17$Pmax1+BY17$Pmax2+BY17$Pmax3+BY17$Pmax4+BY17$Pmax5
BY18$TotalIDU <- BY18$Pmin0+BY18$Pmin1+BY18$Pmin2+BY18$Pmin3+BY18$Pmin4+BY18$Pmin5+BY18$Pmed0+BY18$Pmed1+BY18$Pmed2+BY18$Pmed3+BY18$Pmed4+BY18$Pmed5+BY18$Pmax0+BY18$Pmax1+BY18$Pmax2+BY18$Pmax3+BY18$Pmax4+BY18$Pmax5
BY19$TotalIDU <- BY19$Pmin0+BY19$Pmin1+BY19$Pmin2+BY19$Pmin3+BY19$Pmin4+BY19$Pmin5+BY19$Pmed0+BY19$Pmed1+BY19$Pmed2+BY19$Pmed3+BY19$Pmed4+BY19$Pmed5+BY19$Pmax0+BY19$Pmax1+BY19$Pmax2+BY19$Pmax3+BY19$Pmax4+BY19$Pmax5
BY20$TotalIDU <- BY20$Pmin0+BY20$Pmin1+BY20$Pmin2+BY20$Pmin3+BY20$Pmin4+BY20$Pmin5+BY20$Pmed0+BY20$Pmed1+BY20$Pmed2+BY20$Pmed3+BY20$Pmed4+BY20$Pmed5+BY20$Pmax0+BY20$Pmax1+BY20$Pmax2+BY20$Pmax3+BY20$Pmax4+BY20$Pmax5

BY1$TotalHCV <- BY1$PrisonHCV+BY1$COMMUNITYHCV
BY2$TotalHCV <- BY2$PrisonHCV+BY2$COMMUNITYHCV
BY3$TotalHCV <- BY3$PrisonHCV+BY3$COMMUNITYHCV
BY4$TotalHCV <- BY4$PrisonHCV+BY4$COMMUNITYHCV
BY5$TotalHCV <- BY5$PrisonHCV+BY5$COMMUNITYHCV
BY6$TotalHCV <- BY6$PrisonHCV+BY6$COMMUNITYHCV
BY7$TotalHCV <- BY7$PrisonHCV+BY7$COMMUNITYHCV
BY8$TotalHCV <- BY8$PrisonHCV+BY8$COMMUNITYHCV
BY9$TotalHCV <- BY9$PrisonHCV+BY9$COMMUNITYHCV
BY10$TotalHCV <- BY10$PrisonHCV+BY10$COMMUNITYHCV
BY11$TotalHCV <- BY11$PrisonHCV+BY11$COMMUNITYHCV
BY12$TotalHCV <- BY12$PrisonHCV+BY12$COMMUNITYHCV
BY13$TotalHCV <- BY13$PrisonHCV+BY13$COMMUNITYHCV
BY14$TotalHCV <- BY14$PrisonHCV+BY14$COMMUNITYHCV
BY15$TotalHCV <- BY15$PrisonHCV+BY15$COMMUNITYHCV
BY16$TotalHCV <- BY16$PrisonHCV+BY16$COMMUNITYHCV
BY17$TotalHCV <- BY17$PrisonHCV+BY17$COMMUNITYHCV
BY18$TotalHCV <- BY18$PrisonHCV+BY18$COMMUNITYHCV
BY19$TotalHCV <- BY19$PrisonHCV+BY19$COMMUNITYHCV
BY20$TotalHCV <- BY20$PrisonHCV+BY20$COMMUNITYHCV

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
CY16 <- NULL
CY17 <- NULL
CY18 <- NULL
CY19 <- NULL
CY20 <- NULL
for (var in 1:20)
{
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/DAA scenario/increase80/results/outOSTDAAd80_", var, ".csv", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "totalOST", "totalDAA", "totalClrDAA", "reinfected")
  
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
  CY16 <- rbind(CY16, tempFile[5476:5840,]) #YRS
  CY17 <- rbind(CY17, tempFile[5841:6205,]) #YRS
  CY18 <- rbind(CY18, tempFile[6206:6570,]) #YRS
  CY19 <- rbind(CY19, tempFile[6571:6935,]) #YRS
  CY20 <- rbind(CY20, tempFile[6936:7300,]) #YRS
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
CY12$PminTotal <- CY12$Pmin0+CY12$Pmin1+CY12$Pmin2+CY12$Pmin3+CY12$Pmin4+CY12$Pmin5+CY12$Pmin6+CY12$Pmin7+CY12$Pmin8+CY12$Pmin9+CY12$Pmin10+CY12$Pmin11
CY13$PminTotal <- CY13$Pmin0+CY13$Pmin1+CY13$Pmin2+CY13$Pmin3+CY13$Pmin4+CY13$Pmin5+CY13$Pmin6+CY13$Pmin7+CY13$Pmin8+CY13$Pmin9+CY13$Pmin10+CY13$Pmin11
CY14$PminTotal <- CY14$Pmin0+CY14$Pmin1+CY14$Pmin2+CY14$Pmin3+CY14$Pmin4+CY14$Pmin5+CY14$Pmin6+CY14$Pmin7+CY14$Pmin8+CY14$Pmin9+CY14$Pmin10+CY14$Pmin11
CY15$PminTotal <- CY15$Pmin0+CY15$Pmin1+CY15$Pmin2+CY15$Pmin3+CY15$Pmin4+CY15$Pmin5+CY15$Pmin6+CY15$Pmin7+CY15$Pmin8+CY15$Pmin9+CY15$Pmin10+CY15$Pmin11
CY16$PminTotal <- CY16$Pmin0+CY16$Pmin1+CY16$Pmin2+CY16$Pmin3+CY16$Pmin4+CY16$Pmin5+CY16$Pmin6+CY16$Pmin7+CY16$Pmin8+CY16$Pmin9+CY16$Pmin10+CY16$Pmin11
CY17$PminTotal <- CY17$Pmin0+CY17$Pmin1+CY17$Pmin2+CY17$Pmin3+CY17$Pmin4+CY17$Pmin5+CY17$Pmin6+CY17$Pmin7+CY17$Pmin8+CY17$Pmin9+CY17$Pmin10+CY17$Pmin11
CY18$PminTotal <- CY18$Pmin0+CY18$Pmin1+CY18$Pmin2+CY18$Pmin3+CY18$Pmin4+CY18$Pmin5+CY18$Pmin6+CY18$Pmin7+CY18$Pmin8+CY18$Pmin9+CY18$Pmin10+CY18$Pmin11
CY19$PminTotal <- CY19$Pmin0+CY19$Pmin1+CY19$Pmin2+CY19$Pmin3+CY19$Pmin4+CY19$Pmin5+CY19$Pmin6+CY19$Pmin7+CY19$Pmin8+CY19$Pmin9+CY19$Pmin10+CY19$Pmin11
CY20$PminTotal <- CY20$Pmin0+CY20$Pmin1+CY20$Pmin2+CY20$Pmin3+CY20$Pmin4+CY20$Pmin5+CY20$Pmin6+CY20$Pmin7+CY20$Pmin8+CY20$Pmin9+CY20$Pmin10+CY20$Pmin11

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
CY16$PmedTotal <- CY16$Pmed0+CY16$Pmed1+CY16$Pmed2+CY16$Pmed3+CY16$Pmed4+CY16$Pmed5+CY16$Pmed6+CY16$Pmed7+CY16$Pmed8+CY16$Pmed9+CY16$Pmed10+CY16$Pmed11
CY17$PmedTotal <- CY17$Pmed0+CY17$Pmed1+CY17$Pmed2+CY17$Pmed3+CY17$Pmed4+CY17$Pmed5+CY17$Pmed6+CY17$Pmed7+CY17$Pmed8+CY17$Pmed9+CY17$Pmed10+CY17$Pmed11
CY18$PmedTotal <- CY18$Pmed0+CY18$Pmed1+CY18$Pmed2+CY18$Pmed3+CY18$Pmed4+CY18$Pmed5+CY18$Pmed6+CY18$Pmed7+CY18$Pmed8+CY18$Pmed9+CY18$Pmed10+CY18$Pmed11
CY19$PmedTotal <- CY19$Pmed0+CY19$Pmed1+CY19$Pmed2+CY19$Pmed3+CY19$Pmed4+CY19$Pmed5+CY19$Pmed6+CY19$Pmed7+CY19$Pmed8+CY19$Pmed9+CY19$Pmed10+CY19$Pmed11
CY20$PmedTotal <- CY20$Pmed0+CY20$Pmed1+CY20$Pmed2+CY20$Pmed3+CY20$Pmed4+CY20$Pmed5+CY20$Pmed6+CY20$Pmed7+CY20$Pmed8+CY20$Pmed9+CY20$Pmed10+CY20$Pmed11

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
CY16$PmaxTotal <- CY16$Pmax0+CY16$Pmax1+CY16$Pmax2+CY16$Pmax3+CY16$Pmax4+CY16$Pmax5+CY16$Pmax6+CY16$Pmax7+CY16$Pmax8+CY16$Pmax9+CY16$Pmax10+CY16$Pmax11
CY17$PmaxTotal <- CY17$Pmax0+CY17$Pmax1+CY17$Pmax2+CY17$Pmax3+CY17$Pmax4+CY17$Pmax5+CY17$Pmax6+CY17$Pmax7+CY17$Pmax8+CY17$Pmax9+CY17$Pmax10+CY17$Pmax11
CY18$PmaxTotal <- CY18$Pmax0+CY18$Pmax1+CY18$Pmax2+CY18$Pmax3+CY18$Pmax4+CY18$Pmax5+CY18$Pmax6+CY18$Pmax7+CY18$Pmax8+CY18$Pmax9+CY18$Pmax10+CY18$Pmax11
CY19$PmaxTotal <- CY19$Pmax0+CY19$Pmax1+CY19$Pmax2+CY19$Pmax3+CY19$Pmax4+CY19$Pmax5+CY19$Pmax6+CY19$Pmax7+CY19$Pmax8+CY19$Pmax9+CY19$Pmax10+CY19$Pmax11
CY20$PmaxTotal <- CY20$Pmax0+CY20$Pmax1+CY20$Pmax2+CY20$Pmax3+CY20$Pmax4+CY20$Pmax5+CY20$Pmax6+CY20$Pmax7+CY20$Pmax8+CY20$Pmax9+CY20$Pmax10+CY20$Pmax11

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
CY16$TotalIDU <- CY16$Pmin0+CY16$Pmin1+CY16$Pmin2+CY16$Pmin3+CY16$Pmin4+CY16$Pmin5+CY16$Pmed0+CY16$Pmed1+CY16$Pmed2+CY16$Pmed3+CY16$Pmed4+CY16$Pmed5+CY16$Pmax0+CY16$Pmax1+CY16$Pmax2+CY16$Pmax3+CY16$Pmax4+CY16$Pmax5
CY17$TotalIDU <- CY17$Pmin0+CY17$Pmin1+CY17$Pmin2+CY17$Pmin3+CY17$Pmin4+CY17$Pmin5+CY17$Pmed0+CY17$Pmed1+CY17$Pmed2+CY17$Pmed3+CY17$Pmed4+CY17$Pmed5+CY17$Pmax0+CY17$Pmax1+CY17$Pmax2+CY17$Pmax3+CY17$Pmax4+CY17$Pmax5
CY18$TotalIDU <- CY18$Pmin0+CY18$Pmin1+CY18$Pmin2+CY18$Pmin3+CY18$Pmin4+CY18$Pmin5+CY18$Pmed0+CY18$Pmed1+CY18$Pmed2+CY18$Pmed3+CY18$Pmed4+CY18$Pmed5+CY18$Pmax0+CY18$Pmax1+CY18$Pmax2+CY18$Pmax3+CY18$Pmax4+CY18$Pmax5
CY19$TotalIDU <- CY19$Pmin0+CY19$Pmin1+CY19$Pmin2+CY19$Pmin3+CY19$Pmin4+CY19$Pmin5+CY19$Pmed0+CY19$Pmed1+CY19$Pmed2+CY19$Pmed3+CY19$Pmed4+CY19$Pmed5+CY19$Pmax0+CY19$Pmax1+CY19$Pmax2+CY19$Pmax3+CY19$Pmax4+CY19$Pmax5
CY20$TotalIDU <- CY20$Pmin0+CY20$Pmin1+CY20$Pmin2+CY20$Pmin3+CY20$Pmin4+CY20$Pmin5+CY20$Pmed0+CY20$Pmed1+CY20$Pmed2+CY20$Pmed3+CY20$Pmed4+CY20$Pmed5+CY20$Pmax0+CY20$Pmax1+CY20$Pmax2+CY20$Pmax3+CY20$Pmax4+CY20$Pmax5

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
CY16$TotalHCV <- CY16$PrisonHCV+CY16$COMMUNITYHCV
CY17$TotalHCV <- CY17$PrisonHCV+CY17$COMMUNITYHCV
CY18$TotalHCV <- CY18$PrisonHCV+CY18$COMMUNITYHCV
CY19$TotalHCV <- CY19$PrisonHCV+CY19$COMMUNITYHCV
CY20$TotalHCV <- CY20$PrisonHCV+CY20$COMMUNITYHCV

#TotalIDU incidence and prevalence
HCV <- data.frame("IncidenceIDU"=c(
((mean(Y7$NewCases)/mean(Y7$TotalIDU))*100)*365,
((mean(Y8$NewCases)/mean(Y8$TotalIDU))*100)*365,
((mean(Y9$NewCases)/mean(Y9$TotalIDU))*100)*365,
((mean(Y10$NewCases)/mean(Y10$TotalIDU))*100)*365,
((mean(Y11$NewCases)/mean(Y11$TotalIDU))*100)*365, 
((mean(Y12$NewCases)/mean(Y12$TotalIDU))*100)*365, 
((mean(Y13$NewCases)/mean(Y13$TotalIDU))*100)*365, 
((mean(Y14$NewCases)/mean(Y14$TotalIDU))*100)*365, 
((mean(Y15$NewCases)/mean(Y15$TotalIDU))*100)*365, 
((mean(Y16$NewCases)/mean(Y16$TotalIDU))*100)*365, 
((mean(Y17$NewCases)/mean(Y17$TotalIDU))*100)*365, 
((mean(Y18$NewCases)/mean(Y18$TotalIDU))*100)*365, 
((mean(Y19$NewCases)/mean(Y19$TotalIDU))*100)*365, 
((mean(Y20$NewCases)/mean(Y20$TotalIDU))*100)*365))
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
(1.96*((((mean(Y16$NewCases)/mean(Y16$TotalIDU))^2)*365)*((((var(Y16$NewCases)/mean(Y16$NewCases))^2))*365+(((var(Y16$TotalIDU)/mean(Y16$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y17$NewCases)/mean(Y17$TotalIDU))^2)*365)*((((var(Y17$NewCases)/mean(Y17$NewCases))^2))*365+(((var(Y17$TotalIDU)/mean(Y17$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y18$NewCases)/mean(Y18$TotalIDU))^2)*365)*((((var(Y18$NewCases)/mean(Y18$NewCases))^2))*365+(((var(Y18$TotalIDU)/mean(Y18$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y19$NewCases)/mean(Y19$TotalIDU))^2)*365)*((((var(Y19$NewCases)/mean(Y19$NewCases))^2))*365+(((var(Y19$TotalIDU)/mean(Y19$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y20$NewCases)/mean(Y20$TotalIDU))^2)*365)*((((var(Y20$NewCases)/mean(Y20$NewCases))^2))*365+(((var(Y20$TotalIDU)/mean(Y20$TotalIDU))^2))*365)/sqrt(50*365)))*100
)
HCV$IncidenceIDUCIFloor <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0)
HCV$IncidenceIDUCICeiling <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0)

HCV$IncidencePop <- c(
((mean(Y7$NewCases)/mean(Y7$TotalPrisonPop))*100)*365, 
((mean(Y8$NewCases)/mean(Y8$TotalPrisonPop))*100)*365, 
((mean(Y9$NewCases)/mean(Y9$TotalPrisonPop))*100)*365, 
((mean(Y10$NewCases)/mean(Y10$TotalPrisonPop))*100)*365, 
((mean(Y11$NewCases)/mean(Y11$TotalPrisonPop))*100)*365, 
((mean(Y12$NewCases)/mean(Y12$TotalPrisonPop))*100)*365, 
((mean(Y13$NewCases)/mean(Y13$TotalPrisonPop))*100)*365, 
((mean(Y14$NewCases)/mean(Y14$TotalPrisonPop))*100)*365, 
((mean(Y15$NewCases)/mean(Y15$TotalPrisonPop))*100)*365,
((mean(Y16$NewCases)/mean(Y16$TotalPrisonPop))*100)*365, 
((mean(Y17$NewCases)/mean(Y17$TotalPrisonPop))*100)*365, 
((mean(Y18$NewCases)/mean(Y18$TotalPrisonPop))*100)*365, 
((mean(Y19$NewCases)/mean(Y19$TotalPrisonPop))*100)*365, 
((mean(Y20$NewCases)/mean(Y20$TotalPrisonPop))*100)*365)
HCV$IncidencePopCI <- c(
(1.96*((((mean(Y7$NewCases)/mean(Y7$TotalPrisonPop))^2)*365)*((((var(Y7$NewCases)/mean(Y7$NewCases))^2))*365+(((var(Y7$TotalPrisonPop)/mean(Y7$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y8$NewCases)/mean(Y8$TotalPrisonPop))^2)*365)*((((var(Y8$NewCases)/mean(Y8$NewCases))^2))*365+(((var(Y8$TotalPrisonPop)/mean(Y8$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y9$NewCases)/mean(Y9$TotalPrisonPop))^2)*365)*((((var(Y9$NewCases)/mean(Y9$NewCases))^2))*365+(((var(Y9$TotalPrisonPop)/mean(Y9$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y10$NewCases)/mean(Y10$TotalPrisonPop))^2)*365)*((((var(Y10$NewCases)/mean(Y10$NewCases))^2))*365+(((var(Y10$TotalPrisonPop)/mean(Y10$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y11$NewCases)/mean(Y11$TotalPrisonPop))^2)*365)*((((var(Y11$NewCases)/mean(Y11$NewCases))^2))*365+(((var(Y11$TotalPrisonPop)/mean(Y11$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y12$NewCases)/mean(Y12$TotalPrisonPop))^2)*365)*((((var(Y12$NewCases)/mean(Y12$NewCases))^2))*365+(((var(Y12$TotalPrisonPop)/mean(Y12$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y13$NewCases)/mean(Y13$TotalPrisonPop))^2)*365)*((((var(Y13$NewCases)/mean(Y13$NewCases))^2))*365+(((var(Y13$TotalPrisonPop)/mean(Y13$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y14$NewCases)/mean(Y14$TotalPrisonPop))^2)*365)*((((var(Y14$NewCases)/mean(Y14$NewCases))^2))*365+(((var(Y14$TotalPrisonPop)/mean(Y14$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y15$NewCases)/mean(Y15$TotalPrisonPop))^2)*365)*((((var(Y15$NewCases)/mean(Y15$NewCases))^2))*365+(((var(Y15$TotalPrisonPop)/mean(Y15$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y16$NewCases)/mean(Y16$TotalPrisonPop))^2)*365)*((((var(Y16$NewCases)/mean(Y16$NewCases))^2))*365+(((var(Y16$TotalPrisonPop)/mean(Y16$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y17$NewCases)/mean(Y17$TotalPrisonPop))^2)*365)*((((var(Y17$NewCases)/mean(Y17$NewCases))^2))*365+(((var(Y17$TotalPrisonPop)/mean(Y17$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y18$NewCases)/mean(Y18$TotalPrisonPop))^2)*365)*((((var(Y18$NewCases)/mean(Y18$NewCases))^2))*365+(((var(Y18$TotalPrisonPop)/mean(Y18$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y19$NewCases)/mean(Y19$TotalPrisonPop))^2)*365)*((((var(Y19$NewCases)/mean(Y19$NewCases))^2))*365+(((var(Y19$TotalPrisonPop)/mean(Y19$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(Y20$NewCases)/mean(Y20$TotalPrisonPop))^2)*365)*((((var(Y20$NewCases)/mean(Y20$NewCases))^2))*365+(((var(Y20$TotalPrisonPop)/mean(Y20$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100
)
HCV$IncidencePopCIFloor <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0)
HCV$IncidencePopCICeiling <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0)

HCV$PrevalencePrisIDU <- c(
((mean(Y7$PrisonHCV)/mean(Y7$TotalIDU))*100),
((mean(Y8$PrisonHCV)/mean(Y8$TotalIDU))*100),
((mean(Y9$PrisonHCV)/mean(Y9$TotalIDU))*100),
((mean(Y10$PrisonHCV)/mean(Y10$TotalIDU))*100),
((mean(Y11$PrisonHCV)/mean(Y11$TotalIDU))*100),
((mean(Y12$PrisonHCV)/mean(Y12$TotalIDU))*100),
((mean(Y13$PrisonHCV)/mean(Y13$TotalIDU))*100),
((mean(Y14$PrisonHCV)/mean(Y14$TotalIDU))*100),
((mean(Y15$PrisonHCV)/mean(Y15$TotalIDU))*100),
((mean(Y16$PrisonHCV)/mean(Y16$TotalIDU))*100),
((mean(Y17$PrisonHCV)/mean(Y17$TotalIDU))*100),
((mean(Y18$PrisonHCV)/mean(Y18$TotalIDU))*100),
((mean(Y19$PrisonHCV)/mean(Y19$TotalIDU))*100),
((mean(Y20$PrisonHCV)/mean(Y20$TotalIDU))*100)
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
((mean(Y15$COMMUNITYHCV)/mean(Y15$TotalIDU))*100),
((mean(Y16$COMMUNITYHCV)/mean(Y16$TotalIDU))*100),
((mean(Y17$COMMUNITYHCV)/mean(Y17$TotalIDU))*100),
((mean(Y18$COMMUNITYHCV)/mean(Y18$TotalIDU))*100),
((mean(Y19$COMMUNITYHCV)/mean(Y19$TotalIDU))*100),
((mean(Y20$COMMUNITYHCV)/mean(Y20$TotalIDU))*100)
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
((mean(Y15$TotalHCV)/mean(Y15$TotalIDU))*100),
((mean(Y16$TotalHCV)/mean(Y16$TotalIDU))*100),
((mean(Y17$TotalHCV)/mean(Y17$TotalIDU))*100),
((mean(Y18$TotalHCV)/mean(Y18$TotalIDU))*100),
((mean(Y19$TotalHCV)/mean(Y19$TotalIDU))*100),
((mean(Y20$TotalHCV)/mean(Y20$TotalIDU))*100),
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
((mean(Y15$PrisonHCV)/mean(Y15$TotalPrisonPop))*100),
((mean(Y16$PrisonHCV)/mean(Y16$TotalPrisonPop))*100),
((mean(Y17$PrisonHCV)/mean(Y17$TotalPrisonPop))*100),
((mean(Y18$PrisonHCV)/mean(Y18$TotalPrisonPop))*100),
((mean(Y19$PrisonHCV)/mean(Y19$TotalPrisonPop))*100),
((mean(Y20$PrisonHCV)/mean(Y20$TotalPrisonPop))*100)
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
((mean(Y15$COMMUNITYHCV)/mean(Y15$TotalPrisonPop))*100),
((mean(Y16$COMMUNITYHCV)/mean(Y16$TotalPrisonPop))*100),
((mean(Y17$COMMUNITYHCV)/mean(Y17$TotalPrisonPop))*100),
((mean(Y18$COMMUNITYHCV)/mean(Y18$TotalPrisonPop))*100),
((mean(Y19$COMMUNITYHCV)/mean(Y19$TotalPrisonPop))*100),
((mean(Y20$COMMUNITYHCV)/mean(Y20$TotalPrisonPop))*100)
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
((mean(Y15$TotalHCV)/mean(Y15$TotalPrisonPop))*100),
((mean(Y16$TotalHCV)/mean(Y16$TotalPrisonPop))*100),
((mean(Y17$TotalHCV)/mean(Y17$TotalPrisonPop))*100),
((mean(Y18$TotalHCV)/mean(Y18$TotalPrisonPop))*100),
((mean(Y19$TotalHCV)/mean(Y19$TotalPrisonPop))*100),
((mean(Y20$TotalHCV)/mean(Y20$TotalPrisonPop))*100)
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
((quantile(Y15$PrisonHCV, 0.25)/mean(Y15$TotalIDU))*100),
((quantile(Y16$PrisonHCV, 0.25)/mean(Y16$TotalIDU))*100),
((quantile(Y17$PrisonHCV, 0.25)/mean(Y17$TotalIDU))*100),
((quantile(Y18$PrisonHCV, 0.25)/mean(Y18$TotalIDU))*100),
((quantile(Y19$PrisonHCV, 0.25)/mean(Y19$TotalIDU))*100),
((quantile(Y20$PrisonHCV, 0.25)/mean(Y20$TotalIDU))*100)
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
((quantile(Y15$PrisonHCV, 0.75)/mean(Y15$TotalIDU))*100),
((quantile(Y16$PrisonHCV, 0.75)/mean(Y16$TotalIDU))*100),
((quantile(Y17$PrisonHCV, 0.75)/mean(Y17$TotalIDU))*100),
((quantile(Y18$PrisonHCV, 0.75)/mean(Y18$TotalIDU))*100),
((quantile(Y19$PrisonHCV, 0.75)/mean(Y19$TotalIDU))*100),
((quantile(Y20$PrisonHCV, 0.75)/mean(Y20$TotalIDU))*100)
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
((quantile(Y15$PrisonHCV, 0.25)/mean(Y15$TotalPrisonPop))*100),
((quantile(Y16$PrisonHCV, 0.25)/mean(Y16$TotalPrisonPop))*100),
((quantile(Y17$PrisonHCV, 0.25)/mean(Y17$TotalPrisonPop))*100),
((quantile(Y18$PrisonHCV, 0.25)/mean(Y18$TotalPrisonPop))*100),
((quantile(Y19$PrisonHCV, 0.25)/mean(Y19$TotalPrisonPop))*100),
((quantile(Y20$PrisonHCV, 0.25)/mean(Y20$TotalPrisonPop))*100)
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
((quantile(Y15$PrisonHCV, 0.75)/mean(Y15$TotalPrisonPop))*100),
((quantile(Y16$PrisonHCV, 0.75)/mean(Y16$TotalPrisonPop))*100),
((quantile(Y17$PrisonHCV, 0.75)/mean(Y17$TotalPrisonPop))*100),
((quantile(Y18$PrisonHCV, 0.75)/mean(Y18$TotalPrisonPop))*100),
((quantile(Y19$PrisonHCV, 0.75)/mean(Y19$TotalPrisonPop))*100),
((quantile(Y20$PrisonHCV, 0.75)/mean(Y20$TotalPrisonPop))*100)
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
((quantile(Y15$COMMUNITYHCV, 0.25)/mean(Y15$TotalIDU))*100),
((quantile(Y16$COMMUNITYHCV, 0.25)/mean(Y16$TotalIDU))*100),
((quantile(Y17$COMMUNITYHCV, 0.25)/mean(Y17$TotalIDU))*100),
((quantile(Y18$COMMUNITYHCV, 0.25)/mean(Y18$TotalIDU))*100),
((quantile(Y19$COMMUNITYHCV, 0.25)/mean(Y19$TotalIDU))*100),
((quantile(Y20$COMMUNITYHCV, 0.25)/mean(Y20$TotalIDU))*100)
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
((quantile(Y15$COMMUNITYHCV, 0.75)/mean(Y15$TotalIDU))*100),
((quantile(Y16$COMMUNITYHCV, 0.75)/mean(Y16$TotalIDU))*100),
((quantile(Y17$COMMUNITYHCV, 0.75)/mean(Y17$TotalIDU))*100),
((quantile(Y18$COMMUNITYHCV, 0.75)/mean(Y18$TotalIDU))*100),
((quantile(Y19$COMMUNITYHCV, 0.75)/mean(Y19$TotalIDU))*100),
((quantile(Y20$COMMUNITYHCV, 0.75)/mean(Y20$TotalIDU))*100)
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
((quantile(Y15$COMMUNITYHCV, 0.25)/mean(Y15$TotalPrisonPop))*100),
((quantile(Y16$COMMUNITYHCV, 0.25)/mean(Y16$TotalPrisonPop))*100),
((quantile(Y17$COMMUNITYHCV, 0.25)/mean(Y17$TotalPrisonPop))*100),
((quantile(Y18$COMMUNITYHCV, 0.25)/mean(Y18$TotalPrisonPop))*100),
((quantile(Y19$COMMUNITYHCV, 0.25)/mean(Y19$TotalPrisonPop))*100),
((quantile(Y20$COMMUNITYHCV, 0.25)/mean(Y20$TotalPrisonPop))*100)
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
((quantile(Y15$COMMUNITYHCV, 0.75)/mean(Y15$TotalPrisonPop))*100),
((quantile(Y16$COMMUNITYHCV, 0.75)/mean(Y16$TotalPrisonPop))*100),
((quantile(Y17$COMMUNITYHCV, 0.75)/mean(Y17$TotalPrisonPop))*100),
((quantile(Y18$COMMUNITYHCV, 0.75)/mean(Y18$TotalPrisonPop))*100),
((quantile(Y19$COMMUNITYHCV, 0.75)/mean(Y19$TotalPrisonPop))*100),
((quantile(Y20$COMMUNITYHCV, 0.75)/mean(Y20$TotalPrisonPop))*100)
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
((quantile(Y15$TotalHCV, 0.25)/mean(Y15$TotalIDU))*100),
((quantile(Y16$TotalHCV, 0.25)/mean(Y16$TotalIDU))*100),
((quantile(Y17$TotalHCV, 0.25)/mean(Y17$TotalIDU))*100),
((quantile(Y18$TotalHCV, 0.25)/mean(Y18$TotalIDU))*100),
((quantile(Y19$TotalHCV, 0.25)/mean(Y19$TotalIDU))*100),
((quantile(Y20$TotalHCV, 0.25)/mean(Y20$TotalIDU))*100)
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
((quantile(Y15$TotalHCV, 0.75)/mean(Y15$TotalIDU))*100),
((quantile(Y16$TotalHCV, 0.75)/mean(Y16$TotalIDU))*100),
((quantile(Y17$TotalHCV, 0.75)/mean(Y17$TotalIDU))*100),
((quantile(Y18$TotalHCV, 0.75)/mean(Y18$TotalIDU))*100),
((quantile(Y19$TotalHCV, 0.75)/mean(Y19$TotalIDU))*100),
((quantile(Y20$TotalHCV, 0.75)/mean(Y20$TotalIDU))*100)
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
((quantile(Y15$TotalHCV, 0.25)/mean(Y15$TotalPrisonPop))*100),
((quantile(Y16$TotalHCV, 0.25)/mean(Y16$TotalPrisonPop))*100),
((quantile(Y17$TotalHCV, 0.25)/mean(Y17$TotalPrisonPop))*100),
((quantile(Y18$TotalHCV, 0.25)/mean(Y18$TotalPrisonPop))*100),
((quantile(Y19$TotalHCV, 0.25)/mean(Y19$TotalPrisonPop))*100),
((quantile(Y20$TotalHCV, 0.25)/mean(Y20$TotalPrisonPop))*100)
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
((quantile(Y15$TotalHCV, 0.75)/mean(Y15$TotalPrisonPop))*100),
((quantile(Y16$TotalHCV, 0.75)/mean(Y16$TotalPrisonPop))*100),
((quantile(Y17$TotalHCV, 0.75)/mean(Y17$TotalPrisonPop))*100),
((quantile(Y18$TotalHCV, 0.75)/mean(Y18$TotalPrisonPop))*100),
((quantile(Y19$TotalHCV, 0.75)/mean(Y19$TotalPrisonPop))*100),
((quantile(Y20$TotalHCV, 0.75)/mean(Y20$TotalPrisonPop))*100)
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
mean(Y15$TotalPrisonPop),
mean(Y16$TotalPrisonPop),
mean(Y17$TotalPrisonPop),
mean(Y18$TotalPrisonPop),
mean(Y19$TotalPrisonPop),
mean(Y20$TotalPrisonPop)
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
median(Y15$TotalPrisonPop)-quantile(Y15$TotalPrisonPop, 0.25),
median(Y16$TotalPrisonPop)-quantile(Y16$TotalPrisonPop, 0.25),
median(Y17$TotalPrisonPop)-quantile(Y17$TotalPrisonPop, 0.25),
median(Y18$TotalPrisonPop)-quantile(Y18$TotalPrisonPop, 0.25),
median(Y19$TotalPrisonPop)-quantile(Y19$TotalPrisonPop, 0.25),
median(Y20$TotalPrisonPop)-quantile(Y20$TotalPrisonPop, 0.25)
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
quantile(Y15$TotalPrisonPop, 0.75)-median(Y15$TotalPrisonPop),
quantile(Y16$TotalPrisonPop, 0.75)-median(Y16$TotalPrisonPop),
quantile(Y17$TotalPrisonPop, 0.75)-median(Y17$TotalPrisonPop),
quantile(Y18$TotalPrisonPop, 0.75)-median(Y18$TotalPrisonPop),
quantile(Y19$TotalPrisonPop, 0.75)-median(Y19$TotalPrisonPop),
quantile(Y20$TotalPrisonPop, 0.75)-median(Y20$TotalPrisonPop)
)

HCV$Year <- c("2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025")

##B
#TotalIDU incidence and prevalence
HCVB <- data.frame("IncidenceIDU"=c(
  ((mean(BY7$NewCases)/mean(BY7$TotalIDU))*100)*365,
  ((mean(BY8$NewCases)/mean(BY8$TotalIDU))*100)*365,
  ((mean(BY9$NewCases)/mean(BY9$TotalIDU))*100)*365,
  ((mean(BY10$NewCases)/mean(BY10$TotalIDU))*100)*365,
  ((mean(BY11$NewCases)/mean(BY11$TotalIDU))*100)*365, 
  ((mean(BY12$NewCases)/mean(BY12$TotalIDU))*100)*365, 
  ((mean(BY13$NewCases)/mean(BY13$TotalIDU))*100)*365, 
  ((mean(BY14$NewCases)/mean(BY14$TotalIDU))*100)*365, 
  ((mean(BY15$NewCases)/mean(BY15$TotalIDU))*100)*365, 
  ((mean(BY16$NewCases)/mean(BY16$TotalIDU))*100)*365, 
  ((mean(BY17$NewCases)/mean(BY17$TotalIDU))*100)*365, 
  ((mean(BY18$NewCases)/mean(BY18$TotalIDU))*100)*365, 
  ((mean(BY19$NewCases)/mean(BY19$TotalIDU))*100)*365, 
  ((mean(BY20$NewCases)/mean(BY20$TotalIDU))*100)*365))
HCVB$IncidenceIDUCI <- c(
  (1.96*((((mean(BY7$NewCases)/mean(BY7$TotalIDU))^2)*365)*((((var(BY7$NewCases)/mean(BY7$NewCases))^2))*365+(((var(BY7$TotalIDU)/mean(BY7$TotalIDU))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY8$NewCases)/mean(BY8$TotalIDU))^2)*365)*((((var(BY8$NewCases)/mean(BY8$NewCases))^2))*365+(((var(BY8$TotalIDU)/mean(BY8$TotalIDU))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY9$NewCases)/mean(BY9$TotalIDU))^2)*365)*((((var(BY9$NewCases)/mean(BY9$NewCases))^2))*365+(((var(BY9$TotalIDU)/mean(BY9$TotalIDU))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY10$NewCases)/mean(BY10$TotalIDU))^2)*365)*((((var(BY10$NewCases)/mean(BY10$NewCases))^2))*365+(((var(BY10$TotalIDU)/mean(BY10$TotalIDU))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY11$NewCases)/mean(BY11$TotalIDU))^2)*365)*((((var(BY11$NewCases)/mean(BY11$NewCases))^2))*365+(((var(BY11$TotalIDU)/mean(BY11$TotalIDU))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY12$NewCases)/mean(BY12$TotalIDU))^2)*365)*((((var(BY12$NewCases)/mean(BY12$NewCases))^2))*365+(((var(BY12$TotalIDU)/mean(BY12$TotalIDU))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY13$NewCases)/mean(BY13$TotalIDU))^2)*365)*((((var(BY13$NewCases)/mean(BY13$NewCases))^2))*365+(((var(BY13$TotalIDU)/mean(BY13$TotalIDU))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY14$NewCases)/mean(BY14$TotalIDU))^2)*365)*((((var(BY14$NewCases)/mean(BY14$NewCases))^2))*365+(((var(BY14$TotalIDU)/mean(BY14$TotalIDU))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY15$NewCases)/mean(BY15$TotalIDU))^2)*365)*((((var(BY15$NewCases)/mean(BY15$NewCases))^2))*365+(((var(BY15$TotalIDU)/mean(BY15$TotalIDU))^2))*365)/sqrt(50*365)))*100
  (1.96*((((mean(BY16$NewCases)/mean(BY16$TotalIDU))^2)*365)*((((var(BY16$NewCases)/mean(BY16$NewCases))^2))*365+(((var(BY16$TotalIDU)/mean(BY16$TotalIDU))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY17$NewCases)/mean(BY17$TotalIDU))^2)*365)*((((var(BY17$NewCases)/mean(BY17$NewCases))^2))*365+(((var(BY17$TotalIDU)/mean(BY17$TotalIDU))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY18$NewCases)/mean(BY18$TotalIDU))^2)*365)*((((var(BY18$NewCases)/mean(BY18$NewCases))^2))*365+(((var(BY18$TotalIDU)/mean(BY18$TotalIDU))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY19$NewCases)/mean(BY19$TotalIDU))^2)*365)*((((var(BY19$NewCases)/mean(BY19$NewCases))^2))*365+(((var(BY19$TotalIDU)/mean(BY19$TotalIDU))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY20$NewCases)/mean(BY20$TotalIDU))^2)*365)*((((var(BY20$NewCases)/mean(BY20$NewCases))^2))*365+(((var(BY20$TotalIDU)/mean(BY20$TotalIDU))^2))*365)/sqrt(50*365)))*100
)
HCVB$IncidenceIDUCIFloor <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0)
HCVB$IncidenceIDUCICeiling <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0)

HCVB$IncidencePop <- c(
  ((mean(BY7$NewCases)/mean(BY7$TotalPrisonPop))*100)*365, 
  ((mean(BY8$NewCases)/mean(BY8$TotalPrisonPop))*100)*365, 
  ((mean(BY9$NewCases)/mean(BY9$TotalPrisonPop))*100)*365, 
  ((mean(BY10$NewCases)/mean(BY10$TotalPrisonPop))*100)*365, 
  ((mean(BY11$NewCases)/mean(BY11$TotalPrisonPop))*100)*365, 
  ((mean(BY12$NewCases)/mean(BY12$TotalPrisonPop))*100)*365, 
  ((mean(BY13$NewCases)/mean(BY13$TotalPrisonPop))*100)*365, 
  ((mean(BY14$NewCases)/mean(BY14$TotalPrisonPop))*100)*365, 
  ((mean(BY15$NewCases)/mean(BY15$TotalPrisonPop))*100)*365,
  ((mean(BY16$NewCases)/mean(BY16$TotalPrisonPop))*100)*365, 
  ((mean(BY17$NewCases)/mean(BY17$TotalPrisonPop))*100)*365, 
  ((mean(BY18$NewCases)/mean(BY18$TotalPrisonPop))*100)*365, 
  ((mean(BY19$NewCases)/mean(BY19$TotalPrisonPop))*100)*365, 
  ((mean(BY20$NewCases)/mean(BY20$TotalPrisonPop))*100)*365)
HCVB$IncidencePopCI <- c(
  (1.96*((((mean(BY7$NewCases)/mean(BY7$TotalPrisonPop))^2)*365)*((((var(BY7$NewCases)/mean(BY7$NewCases))^2))*365+(((var(BY7$TotalPrisonPop)/mean(BY7$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY8$NewCases)/mean(BY8$TotalPrisonPop))^2)*365)*((((var(BY8$NewCases)/mean(BY8$NewCases))^2))*365+(((var(BY8$TotalPrisonPop)/mean(BY8$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY9$NewCases)/mean(BY9$TotalPrisonPop))^2)*365)*((((var(BY9$NewCases)/mean(BY9$NewCases))^2))*365+(((var(BY9$TotalPrisonPop)/mean(BY9$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY10$NewCases)/mean(BY10$TotalPrisonPop))^2)*365)*((((var(BY10$NewCases)/mean(BY10$NewCases))^2))*365+(((var(BY10$TotalPrisonPop)/mean(BY10$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY11$NewCases)/mean(BY11$TotalPrisonPop))^2)*365)*((((var(BY11$NewCases)/mean(BY11$NewCases))^2))*365+(((var(BY11$TotalPrisonPop)/mean(BY11$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY12$NewCases)/mean(BY12$TotalPrisonPop))^2)*365)*((((var(BY12$NewCases)/mean(BY12$NewCases))^2))*365+(((var(BY12$TotalPrisonPop)/mean(BY12$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY13$NewCases)/mean(BY13$TotalPrisonPop))^2)*365)*((((var(BY13$NewCases)/mean(BY13$NewCases))^2))*365+(((var(BY13$TotalPrisonPop)/mean(BY13$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY14$NewCases)/mean(BY14$TotalPrisonPop))^2)*365)*((((var(BY14$NewCases)/mean(BY14$NewCases))^2))*365+(((var(BY14$TotalPrisonPop)/mean(BY14$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY15$NewCases)/mean(BY15$TotalPrisonPop))^2)*365)*((((var(BY15$NewCases)/mean(BY15$NewCases))^2))*365+(((var(BY15$TotalPrisonPop)/mean(BY15$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY16$NewCases)/mean(BY16$TotalPrisonPop))^2)*365)*((((var(BY16$NewCases)/mean(BY16$NewCases))^2))*365+(((var(BY16$TotalPrisonPop)/mean(BY16$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY17$NewCases)/mean(BY17$TotalPrisonPop))^2)*365)*((((var(BY17$NewCases)/mean(BY17$NewCases))^2))*365+(((var(BY17$TotalPrisonPop)/mean(BY17$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY18$NewCases)/mean(BY18$TotalPrisonPop))^2)*365)*((((var(BY18$NewCases)/mean(BY18$NewCases))^2))*365+(((var(BY18$TotalPrisonPop)/mean(BY18$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY19$NewCases)/mean(BY19$TotalPrisonPop))^2)*365)*((((var(BY19$NewCases)/mean(BY19$NewCases))^2))*365+(((var(BY19$TotalPrisonPop)/mean(BY19$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(BY20$NewCases)/mean(BY20$TotalPrisonPop))^2)*365)*((((var(BY20$NewCases)/mean(BY20$NewCases))^2))*365+(((var(BY20$TotalPrisonPop)/mean(BY20$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100
)
HCVB$IncidencePopCIFloor <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0)
HCVB$IncidencePopCICeiling <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0)

HCVB$PrevalencePrisIDU <- c(
  ((mean(BY7$PrisonHCV)/mean(BY7$TotalIDU))*100),
  ((mean(BY8$PrisonHCV)/mean(BY8$TotalIDU))*100),
  ((mean(BY9$PrisonHCV)/mean(BY9$TotalIDU))*100),
  ((mean(BY10$PrisonHCV)/mean(BY10$TotalIDU))*100),
  ((mean(BY11$PrisonHCV)/mean(BY11$TotalIDU))*100),
  ((mean(BY12$PrisonHCV)/mean(BY12$TotalIDU))*100),
  ((mean(BY13$PrisonHCV)/mean(BY13$TotalIDU))*100),
  ((mean(BY14$PrisonHCV)/mean(BY14$TotalIDU))*100),
  ((mean(BY15$PrisonHCV)/mean(BY15$TotalIDU))*100),
  ((mean(BY16$PrisonHCV)/mean(BY16$TotalIDU))*100),
  ((mean(BY17$PrisonHCV)/mean(BY17$TotalIDU))*100),
  ((mean(BY18$PrisonHCV)/mean(BY18$TotalIDU))*100),
  ((mean(BY19$PrisonHCV)/mean(BY19$TotalIDU))*100),
  ((mean(BY20$PrisonHCV)/mean(BY20$TotalIDU))*100)
)

HCVB$PrevalenceComIDU <- c(
  ((mean(BY7$COMMUNITYHCV)/mean(BY7$TotalIDU))*100),
  ((mean(BY8$COMMUNITYHCV)/mean(BY8$TotalIDU))*100),
  ((mean(BY9$COMMUNITYHCV)/mean(BY9$TotalIDU))*100),
  ((mean(BY10$COMMUNITYHCV)/mean(BY10$TotalIDU))*100),
  ((mean(BY11$COMMUNITYHCV)/mean(BY11$TotalIDU))*100),
  ((mean(BY12$COMMUNITYHCV)/mean(BY12$TotalIDU))*100),
  ((mean(BY13$COMMUNITYHCV)/mean(BY13$TotalIDU))*100),
  ((mean(BY14$COMMUNITYHCV)/mean(BY14$TotalIDU))*100),
  ((mean(BY15$COMMUNITYHCV)/mean(BY15$TotalIDU))*100),
  ((mean(BY16$COMMUNITYHCV)/mean(BY16$TotalIDU))*100),
  ((mean(BY17$COMMUNITYHCV)/mean(BY17$TotalIDU))*100),
  ((mean(BY18$COMMUNITYHCV)/mean(BY18$TotalIDU))*100),
  ((mean(BY19$COMMUNITYHCV)/mean(BY19$TotalIDU))*100),
  ((mean(BY20$COMMUNITYHCV)/mean(BY20$TotalIDU))*100)
)

HCVB$PrevalenceAllIDU <- c(
  ((mean(BY7$TotalHCV)/mean(BY7$TotalIDU))*100),
  ((mean(BY8$TotalHCV)/mean(BY8$TotalIDU))*100),
  ((mean(BY9$TotalHCV)/mean(BY9$TotalIDU))*100),
  ((mean(BY10$TotalHCV)/mean(BY10$TotalIDU))*100),
  ((mean(BY11$TotalHCV)/mean(BY11$TotalIDU))*100),
  ((mean(BY12$TotalHCV)/mean(BY12$TotalIDU))*100),
  ((mean(BY13$TotalHCV)/mean(BY13$TotalIDU))*100),
  ((mean(BY14$TotalHCV)/mean(BY14$TotalIDU))*100),
  ((mean(BY15$TotalHCV)/mean(BY15$TotalIDU))*100),
  ((mean(BY16$TotalHCV)/mean(BY16$TotalIDU))*100),
  ((mean(BY17$TotalHCV)/mean(BY17$TotalIDU))*100),
  ((mean(BY18$TotalHCV)/mean(BY18$TotalIDU))*100),
  ((mean(BY19$TotalHCV)/mean(BY19$TotalIDU))*100),
  ((mean(BY20$TotalHCV)/mean(BY20$TotalIDU))*100),
)

HCVB$PrevalencePrisTotal <- c(
  ((mean(BY7$PrisonHCV)/mean(BY7$TotalPrisonPop))*100),
  ((mean(BY8$PrisonHCV)/mean(BY8$TotalPrisonPop))*100),
  ((mean(BY9$PrisonHCV)/mean(BY9$TotalPrisonPop))*100),
  ((mean(BY10$PrisonHCV)/mean(BY10$TotalPrisonPop))*100),
  ((mean(BY11$PrisonHCV)/mean(BY11$TotalPrisonPop))*100),
  ((mean(BY12$PrisonHCV)/mean(BY12$TotalPrisonPop))*100),
  ((mean(BY13$PrisonHCV)/mean(BY13$TotalPrisonPop))*100),
  ((mean(BY14$PrisonHCV)/mean(BY14$TotalPrisonPop))*100),
  ((mean(BY15$PrisonHCV)/mean(BY15$TotalPrisonPop))*100),
  ((mean(BY16$PrisonHCV)/mean(BY16$TotalPrisonPop))*100),
  ((mean(BY17$PrisonHCV)/mean(BY17$TotalPrisonPop))*100),
  ((mean(BY18$PrisonHCV)/mean(BY18$TotalPrisonPop))*100),
  ((mean(BY19$PrisonHCV)/mean(BY19$TotalPrisonPop))*100),
  ((mean(BY20$PrisonHCV)/mean(BY20$TotalPrisonPop))*100)
)

HCVB$PrevalenceComTotal <- c(
  ((mean(BY7$COMMUNITYHCV)/mean(BY7$TotalPrisonPop))*100),
  ((mean(BY8$COMMUNITYHCV)/mean(BY8$TotalPrisonPop))*100),
  ((mean(BY9$COMMUNITYHCV)/mean(BY9$TotalPrisonPop))*100),
  ((mean(BY10$COMMUNITYHCV)/mean(BY10$TotalPrisonPop))*100),
  ((mean(BY11$COMMUNITYHCV)/mean(BY11$TotalPrisonPop))*100),
  ((mean(BY12$COMMUNITYHCV)/mean(BY12$TotalPrisonPop))*100),
  ((mean(BY13$COMMUNITYHCV)/mean(BY13$TotalPrisonPop))*100),
  ((mean(BY14$COMMUNITYHCV)/mean(BY14$TotalPrisonPop))*100),
  ((mean(BY15$COMMUNITYHCV)/mean(BY15$TotalPrisonPop))*100),
  ((mean(BY16$COMMUNITYHCV)/mean(BY16$TotalPrisonPop))*100),
  ((mean(BY17$COMMUNITYHCV)/mean(BY17$TotalPrisonPop))*100),
  ((mean(BY18$COMMUNITYHCV)/mean(BY18$TotalPrisonPop))*100),
  ((mean(BY19$COMMUNITYHCV)/mean(BY19$TotalPrisonPop))*100),
  ((mean(BY20$COMMUNITYHCV)/mean(BY20$TotalPrisonPop))*100)
)

HCVB$PrevalenceAllTotal <- c(
  ((mean(BY7$TotalHCV)/mean(BY7$TotalPrisonPop))*100),
  ((mean(BY8$TotalHCV)/mean(BY8$TotalPrisonPop))*100),
  ((mean(BY9$TotalHCV)/mean(BY9$TotalPrisonPop))*100),
  ((mean(BY10$TotalHCV)/mean(BY10$TotalPrisonPop))*100),
  ((mean(BY11$TotalHCV)/mean(BY11$TotalPrisonPop))*100),
  ((mean(BY12$TotalHCV)/mean(BY12$TotalPrisonPop))*100),
  ((mean(BY13$TotalHCV)/mean(BY13$TotalPrisonPop))*100),
  ((mean(BY14$TotalHCV)/mean(BY14$TotalPrisonPop))*100),
  ((mean(BY15$TotalHCV)/mean(BY15$TotalPrisonPop))*100),
  ((mean(BY16$TotalHCV)/mean(BY16$TotalPrisonPop))*100),
  ((mean(BY17$TotalHCV)/mean(BY17$TotalPrisonPop))*100),
  ((mean(BY18$TotalHCV)/mean(BY18$TotalPrisonPop))*100),
  ((mean(BY19$TotalHCV)/mean(BY19$TotalPrisonPop))*100),
  ((mean(BY20$TotalHCV)/mean(BY20$TotalPrisonPop))*100)
)

HCVB$PrevalencePrisonIDUFloor <- c(
  ((quantile(BY7$PrisonHCV, 0.25)/mean(BY7$TotalIDU))*100),
  ((quantile(BY8$PrisonHCV, 0.25)/mean(BY8$TotalIDU))*100),
  ((quantile(BY9$PrisonHCV, 0.25)/mean(BY9$TotalIDU))*100),
  ((quantile(BY10$PrisonHCV, 0.25)/mean(BY10$TotalIDU))*100),
  ((quantile(BY11$PrisonHCV, 0.25)/mean(BY11$TotalIDU))*100),
  ((quantile(BY12$PrisonHCV, 0.25)/mean(BY12$TotalIDU))*100),
  ((quantile(BY13$PrisonHCV, 0.25)/mean(BY13$TotalIDU))*100),
  ((quantile(BY14$PrisonHCV, 0.25)/mean(BY14$TotalIDU))*100),
  ((quantile(BY15$PrisonHCV, 0.25)/mean(BY15$TotalIDU))*100),
  ((quantile(BY16$PrisonHCV, 0.25)/mean(BY16$TotalIDU))*100),
  ((quantile(BY17$PrisonHCV, 0.25)/mean(BY17$TotalIDU))*100),
  ((quantile(BY18$PrisonHCV, 0.25)/mean(BY18$TotalIDU))*100),
  ((quantile(BY19$PrisonHCV, 0.25)/mean(BY19$TotalIDU))*100),
  ((quantile(BY20$PrisonHCV, 0.25)/mean(BY20$TotalIDU))*100)
)

HCVB$PrevalencePrisonIDUCeiling <- c(
  ((quantile(BY7$PrisonHCV, 0.75)/mean(BY7$TotalIDU))*100),
  ((quantile(BY8$PrisonHCV, 0.75)/mean(BY8$TotalIDU))*100),
  ((quantile(BY9$PrisonHCV, 0.75)/mean(BY9$TotalIDU))*100),
  ((quantile(BY10$PrisonHCV, 0.75)/mean(BY10$TotalIDU))*100),
  ((quantile(BY11$PrisonHCV, 0.75)/mean(BY11$TotalIDU))*100),
  ((quantile(BY12$PrisonHCV, 0.75)/mean(BY12$TotalIDU))*100),
  ((quantile(BY13$PrisonHCV, 0.75)/mean(BY13$TotalIDU))*100),
  ((quantile(BY14$PrisonHCV, 0.75)/mean(BY14$TotalIDU))*100),
  ((quantile(BY15$PrisonHCV, 0.75)/mean(BY15$TotalIDU))*100),
  ((quantile(BY16$PrisonHCV, 0.75)/mean(BY16$TotalIDU))*100),
  ((quantile(BY17$PrisonHCV, 0.75)/mean(BY17$TotalIDU))*100),
  ((quantile(BY18$PrisonHCV, 0.75)/mean(BY18$TotalIDU))*100),
  ((quantile(BY19$PrisonHCV, 0.75)/mean(BY19$TotalIDU))*100),
  ((quantile(BY20$PrisonHCV, 0.75)/mean(BY20$TotalIDU))*100)
)

HCVB$PrevalencePrisonTotalFloor <- c(
  ((quantile(BY7$PrisonHCV, 0.25)/mean(BY7$TotalPrisonPop))*100),
  ((quantile(BY8$PrisonHCV, 0.25)/mean(BY8$TotalPrisonPop))*100),
  ((quantile(BY9$PrisonHCV, 0.25)/mean(BY9$TotalPrisonPop))*100),
  ((quantile(BY10$PrisonHCV, 0.25)/mean(BY10$TotalPrisonPop))*100),
  ((quantile(BY11$PrisonHCV, 0.25)/mean(BY11$TotalPrisonPop))*100),
  ((quantile(BY12$PrisonHCV, 0.25)/mean(BY12$TotalPrisonPop))*100),
  ((quantile(BY13$PrisonHCV, 0.25)/mean(BY13$TotalPrisonPop))*100),
  ((quantile(BY14$PrisonHCV, 0.25)/mean(BY14$TotalPrisonPop))*100),
  ((quantile(BY15$PrisonHCV, 0.25)/mean(BY15$TotalPrisonPop))*100),
  ((quantile(BY16$PrisonHCV, 0.25)/mean(BY16$TotalPrisonPop))*100),
  ((quantile(BY17$PrisonHCV, 0.25)/mean(BY17$TotalPrisonPop))*100),
  ((quantile(BY18$PrisonHCV, 0.25)/mean(BY18$TotalPrisonPop))*100),
  ((quantile(BY19$PrisonHCV, 0.25)/mean(BY19$TotalPrisonPop))*100),
  ((quantile(BY20$PrisonHCV, 0.25)/mean(BY20$TotalPrisonPop))*100)
)

HCVB$PrevalencePrisonTotalCeiling <- c(
  ((quantile(BY7$PrisonHCV, 0.75)/mean(BY7$TotalPrisonPop))*100),
  ((quantile(BY8$PrisonHCV, 0.75)/mean(BY8$TotalPrisonPop))*100),
  ((quantile(BY9$PrisonHCV, 0.75)/mean(BY9$TotalPrisonPop))*100),
  ((quantile(BY10$PrisonHCV, 0.75)/mean(BY10$TotalPrisonPop))*100),
  ((quantile(BY11$PrisonHCV, 0.75)/mean(BY11$TotalPrisonPop))*100),
  ((quantile(BY12$PrisonHCV, 0.75)/mean(BY12$TotalPrisonPop))*100),
  ((quantile(BY13$PrisonHCV, 0.75)/mean(BY13$TotalPrisonPop))*100),
  ((quantile(BY14$PrisonHCV, 0.75)/mean(BY14$TotalPrisonPop))*100),
  ((quantile(BY15$PrisonHCV, 0.75)/mean(BY15$TotalPrisonPop))*100),
  ((quantile(BY16$PrisonHCV, 0.75)/mean(BY16$TotalPrisonPop))*100),
  ((quantile(BY17$PrisonHCV, 0.75)/mean(BY17$TotalPrisonPop))*100),
  ((quantile(BY18$PrisonHCV, 0.75)/mean(BY18$TotalPrisonPop))*100),
  ((quantile(BY19$PrisonHCV, 0.75)/mean(BY19$TotalPrisonPop))*100),
  ((quantile(BY20$PrisonHCV, 0.75)/mean(BY20$TotalPrisonPop))*100)
)

HCVB$PrevalenceComIDUFloor <- c(
  ((quantile(BY7$COMMUNITYHCV, 0.25)/mean(BY7$TotalIDU))*100),
  ((quantile(BY8$COMMUNITYHCV, 0.25)/mean(BY8$TotalIDU))*100),
  ((quantile(BY9$COMMUNITYHCV, 0.25)/mean(BY9$TotalIDU))*100),
  ((quantile(BY10$COMMUNITYHCV, 0.25)/mean(BY10$TotalIDU))*100),
  ((quantile(BY11$COMMUNITYHCV, 0.25)/mean(BY11$TotalIDU))*100),
  ((quantile(BY12$COMMUNITYHCV, 0.25)/mean(BY12$TotalIDU))*100),
  ((quantile(BY13$COMMUNITYHCV, 0.25)/mean(BY13$TotalIDU))*100),
  ((quantile(BY14$COMMUNITYHCV, 0.25)/mean(BY14$TotalIDU))*100),
  ((quantile(BY15$COMMUNITYHCV, 0.25)/mean(BY15$TotalIDU))*100),
  ((quantile(BY16$COMMUNITYHCV, 0.25)/mean(BY16$TotalIDU))*100),
  ((quantile(BY17$COMMUNITYHCV, 0.25)/mean(BY17$TotalIDU))*100),
  ((quantile(BY18$COMMUNITYHCV, 0.25)/mean(BY18$TotalIDU))*100),
  ((quantile(BY19$COMMUNITYHCV, 0.25)/mean(BY19$TotalIDU))*100),
  ((quantile(BY20$COMMUNITYHCV, 0.25)/mean(BY20$TotalIDU))*100)
)
HCVB$PrevalenceComIDUCeiling <- c(
  ((quantile(BY7$COMMUNITYHCV, 0.75)/mean(BY7$TotalIDU))*100),
  ((quantile(BY8$COMMUNITYHCV, 0.75)/mean(BY8$TotalIDU))*100),
  ((quantile(BY9$COMMUNITYHCV, 0.75)/mean(BY9$TotalIDU))*100),
  ((quantile(BY10$COMMUNITYHCV, 0.75)/mean(BY10$TotalIDU))*100),
  ((quantile(BY11$COMMUNITYHCV, 0.75)/mean(BY11$TotalIDU))*100),
  ((quantile(BY12$COMMUNITYHCV, 0.75)/mean(BY12$TotalIDU))*100),
  ((quantile(BY13$COMMUNITYHCV, 0.75)/mean(BY13$TotalIDU))*100),
  ((quantile(BY14$COMMUNITYHCV, 0.75)/mean(BY14$TotalIDU))*100),
  ((quantile(BY15$COMMUNITYHCV, 0.75)/mean(BY15$TotalIDU))*100),
  ((quantile(BY16$COMMUNITYHCV, 0.75)/mean(BY16$TotalIDU))*100),
  ((quantile(BY17$COMMUNITYHCV, 0.75)/mean(BY17$TotalIDU))*100),
  ((quantile(BY18$COMMUNITYHCV, 0.75)/mean(BY18$TotalIDU))*100),
  ((quantile(BY19$COMMUNITYHCV, 0.75)/mean(BY19$TotalIDU))*100),
  ((quantile(BY20$COMMUNITYHCV, 0.75)/mean(BY20$TotalIDU))*100)
)

HCVB$PrevalenceComTotalFloor <- c(
  ((quantile(BY7$COMMUNITYHCV, 0.25)/mean(BY7$TotalPrisonPop))*100),
  ((quantile(BY8$COMMUNITYHCV, 0.25)/mean(BY8$TotalPrisonPop))*100),
  ((quantile(BY9$COMMUNITYHCV, 0.25)/mean(BY9$TotalPrisonPop))*100),
  ((quantile(BY10$COMMUNITYHCV, 0.25)/mean(BY10$TotalPrisonPop))*100),
  ((quantile(BY11$COMMUNITYHCV, 0.25)/mean(BY11$TotalPrisonPop))*100),
  ((quantile(BY12$COMMUNITYHCV, 0.25)/mean(BY12$TotalPrisonPop))*100),
  ((quantile(BY13$COMMUNITYHCV, 0.25)/mean(BY13$TotalPrisonPop))*100),
  ((quantile(BY14$COMMUNITYHCV, 0.25)/mean(BY14$TotalPrisonPop))*100),
  ((quantile(BY15$COMMUNITYHCV, 0.25)/mean(BY15$TotalPrisonPop))*100),
  ((quantile(BY16$COMMUNITYHCV, 0.25)/mean(BY16$TotalPrisonPop))*100),
  ((quantile(BY17$COMMUNITYHCV, 0.25)/mean(BY17$TotalPrisonPop))*100),
  ((quantile(BY18$COMMUNITYHCV, 0.25)/mean(BY18$TotalPrisonPop))*100),
  ((quantile(BY19$COMMUNITYHCV, 0.25)/mean(BY19$TotalPrisonPop))*100),
  ((quantile(BY20$COMMUNITYHCV, 0.25)/mean(BY20$TotalPrisonPop))*100)
)

HCVB$PrevalenceComTotalCeiling <- c(
  ((quantile(BY7$COMMUNITYHCV, 0.75)/mean(BY7$TotalPrisonPop))*100),
  ((quantile(BY8$COMMUNITYHCV, 0.75)/mean(BY8$TotalPrisonPop))*100),
  ((quantile(BY9$COMMUNITYHCV, 0.75)/mean(BY9$TotalPrisonPop))*100),
  ((quantile(BY10$COMMUNITYHCV, 0.75)/mean(BY10$TotalPrisonPop))*100),
  ((quantile(BY11$COMMUNITYHCV, 0.75)/mean(BY11$TotalPrisonPop))*100),
  ((quantile(BY12$COMMUNITYHCV, 0.75)/mean(BY12$TotalPrisonPop))*100),
  ((quantile(BY13$COMMUNITYHCV, 0.75)/mean(BY13$TotalPrisonPop))*100),
  ((quantile(BY14$COMMUNITYHCV, 0.75)/mean(BY14$TotalPrisonPop))*100),
  ((quantile(BY15$COMMUNITYHCV, 0.75)/mean(BY15$TotalPrisonPop))*100),
  ((quantile(BY16$COMMUNITYHCV, 0.75)/mean(BY16$TotalPrisonPop))*100),
  ((quantile(BY17$COMMUNITYHCV, 0.75)/mean(BY17$TotalPrisonPop))*100),
  ((quantile(BY18$COMMUNITYHCV, 0.75)/mean(BY18$TotalPrisonPop))*100),
  ((quantile(BY19$COMMUNITYHCV, 0.75)/mean(BY19$TotalPrisonPop))*100),
  ((quantile(BY20$COMMUNITYHCV, 0.75)/mean(BY20$TotalPrisonPop))*100)
)

HCVB$PrevalenceAllIDUFloor <- c(
  ((quantile(BY7$TotalHCV, 0.25)/mean(BY7$TotalIDU))*100),
  ((quantile(BY8$TotalHCV, 0.25)/mean(BY8$TotalIDU))*100),
  ((quantile(BY9$TotalHCV, 0.25)/mean(BY9$TotalIDU))*100),
  ((quantile(BY10$TotalHCV, 0.25)/mean(BY10$TotalIDU))*100),
  ((quantile(BY11$TotalHCV, 0.25)/mean(BY11$TotalIDU))*100),
  ((quantile(BY12$TotalHCV, 0.25)/mean(BY12$TotalIDU))*100),
  ((quantile(BY13$TotalHCV, 0.25)/mean(BY13$TotalIDU))*100),
  ((quantile(BY14$TotalHCV, 0.25)/mean(BY14$TotalIDU))*100),
  ((quantile(BY15$TotalHCV, 0.25)/mean(BY15$TotalIDU))*100),
  ((quantile(BY16$TotalHCV, 0.25)/mean(BY16$TotalIDU))*100),
  ((quantile(BY17$TotalHCV, 0.25)/mean(BY17$TotalIDU))*100),
  ((quantile(BY18$TotalHCV, 0.25)/mean(BY18$TotalIDU))*100),
  ((quantile(BY19$TotalHCV, 0.25)/mean(BY19$TotalIDU))*100),
  ((quantile(BY20$TotalHCV, 0.25)/mean(BY20$TotalIDU))*100)
)

HCVB$PrevalenceAllIDUCeiling <- c(
  ((quantile(BY7$TotalHCV, 0.75)/mean(BY7$TotalIDU))*100),
  ((quantile(BY8$TotalHCV, 0.75)/mean(BY8$TotalIDU))*100),
  ((quantile(BY9$TotalHCV, 0.75)/mean(BY9$TotalIDU))*100),
  ((quantile(BY10$TotalHCV, 0.75)/mean(BY10$TotalIDU))*100),
  ((quantile(BY11$TotalHCV, 0.75)/mean(BY11$TotalIDU))*100),
  ((quantile(BY12$TotalHCV, 0.75)/mean(BY12$TotalIDU))*100),
  ((quantile(BY13$TotalHCV, 0.75)/mean(BY13$TotalIDU))*100),
  ((quantile(BY14$TotalHCV, 0.75)/mean(BY14$TotalIDU))*100),
  ((quantile(BY15$TotalHCV, 0.75)/mean(BY15$TotalIDU))*100),
  ((quantile(BY16$TotalHCV, 0.75)/mean(BY16$TotalIDU))*100),
  ((quantile(BY17$TotalHCV, 0.75)/mean(BY17$TotalIDU))*100),
  ((quantile(BY18$TotalHCV, 0.75)/mean(BY18$TotalIDU))*100),
  ((quantile(BY19$TotalHCV, 0.75)/mean(BY19$TotalIDU))*100),
  ((quantile(BY20$TotalHCV, 0.75)/mean(BY20$TotalIDU))*100)
)

HCVB$PrevalenceAllTotalFloor <- c(
  ((quantile(BY7$TotalHCV, 0.25)/mean(BY7$TotalPrisonPop))*100),
  ((quantile(BY8$TotalHCV, 0.25)/mean(BY8$TotalPrisonPop))*100),
  ((quantile(BY9$TotalHCV, 0.25)/mean(BY9$TotalPrisonPop))*100),
  ((quantile(BY10$TotalHCV, 0.25)/mean(BY10$TotalPrisonPop))*100),
  ((quantile(BY11$TotalHCV, 0.25)/mean(BY11$TotalPrisonPop))*100),
  ((quantile(BY12$TotalHCV, 0.25)/mean(BY12$TotalPrisonPop))*100),
  ((quantile(BY13$TotalHCV, 0.25)/mean(BY13$TotalPrisonPop))*100),
  ((quantile(BY14$TotalHCV, 0.25)/mean(BY14$TotalPrisonPop))*100),
  ((quantile(BY15$TotalHCV, 0.25)/mean(BY15$TotalPrisonPop))*100),
  ((quantile(BY16$TotalHCV, 0.25)/mean(BY16$TotalPrisonPop))*100),
  ((quantile(BY17$TotalHCV, 0.25)/mean(BY17$TotalPrisonPop))*100),
  ((quantile(BY18$TotalHCV, 0.25)/mean(BY18$TotalPrisonPop))*100),
  ((quantile(BY19$TotalHCV, 0.25)/mean(BY19$TotalPrisonPop))*100),
  ((quantile(BY20$TotalHCV, 0.25)/mean(BY20$TotalPrisonPop))*100)
)

HCVB$PrevalenceAllTotalCeiling <- c(
  ((quantile(BY7$TotalHCV, 0.75)/mean(BY7$TotalPrisonPop))*100),
  ((quantile(BY8$TotalHCV, 0.75)/mean(BY8$TotalPrisonPop))*100),
  ((quantile(BY9$TotalHCV, 0.75)/mean(BY9$TotalPrisonPop))*100),
  ((quantile(BY10$TotalHCV, 0.75)/mean(BY10$TotalPrisonPop))*100),
  ((quantile(BY11$TotalHCV, 0.75)/mean(BY11$TotalPrisonPop))*100),
  ((quantile(BY12$TotalHCV, 0.75)/mean(BY12$TotalPrisonPop))*100),
  ((quantile(BY13$TotalHCV, 0.75)/mean(BY13$TotalPrisonPop))*100),
  ((quantile(BY14$TotalHCV, 0.75)/mean(BY14$TotalPrisonPop))*100),
  ((quantile(BY15$TotalHCV, 0.75)/mean(BY15$TotalPrisonPop))*100),
  ((quantile(BY16$TotalHCV, 0.75)/mean(BY16$TotalPrisonPop))*100),
  ((quantile(BY17$TotalHCV, 0.75)/mean(BY17$TotalPrisonPop))*100),
  ((quantile(BY18$TotalHCV, 0.75)/mean(BY18$TotalPrisonPop))*100),
  ((quantile(BY19$TotalHCV, 0.75)/mean(BY19$TotalPrisonPop))*100),
  ((quantile(BY20$TotalHCV, 0.75)/mean(BY20$TotalPrisonPop))*100)
)

HCVB$Population <- c(
  mean(BY7$TotalPrisonPop),
  mean(BY8$TotalPrisonPop),
  mean(BY9$TotalPrisonPop),
  mean(BY10$TotalPrisonPop),
  mean(BY11$TotalPrisonPop),
  mean(BY12$TotalPrisonPop),
  mean(BY13$TotalPrisonPop),
  mean(BY14$TotalPrisonPop),
  mean(BY15$TotalPrisonPop),
  mean(BY16$TotalPrisonPop),
  mean(BY17$TotalPrisonPop),
  mean(BY18$TotalPrisonPop),
  mean(BY19$TotalPrisonPop),
  mean(BY20$TotalPrisonPop)
)

HCVB$PopulationFloor <- c(
  median(BY7$TotalPrisonPop)-quantile(BY7$TotalPrisonPop, 0.25),
  median(BY8$TotalPrisonPop)-quantile(BY8$TotalPrisonPop, 0.25),
  median(BY9$TotalPrisonPop)-quantile(BY9$TotalPrisonPop, 0.25),
  median(BY10$TotalPrisonPop)-quantile(BY10$TotalPrisonPop, 0.25),
  median(BY11$TotalPrisonPop)-quantile(BY11$TotalPrisonPop, 0.25),
  median(BY12$TotalPrisonPop)-quantile(BY12$TotalPrisonPop, 0.25),
  median(BY13$TotalPrisonPop)-quantile(BY13$TotalPrisonPop, 0.25),
  median(BY14$TotalPrisonPop)-quantile(BY14$TotalPrisonPop, 0.25),
  median(BY15$TotalPrisonPop)-quantile(BY15$TotalPrisonPop, 0.25),
  median(BY16$TotalPrisonPop)-quantile(BY16$TotalPrisonPop, 0.25),
  median(BY17$TotalPrisonPop)-quantile(BY17$TotalPrisonPop, 0.25),
  median(BY18$TotalPrisonPop)-quantile(BY18$TotalPrisonPop, 0.25),
  median(BY19$TotalPrisonPop)-quantile(BY19$TotalPrisonPop, 0.25),
  median(BY20$TotalPrisonPop)-quantile(BY20$TotalPrisonPop, 0.25)
)

HCVB$PopulationCeiling <- c(
  quantile(BY7$TotalPrisonPop, 0.75)-median(BY7$TotalPrisonPop),
  quantile(BY8$TotalPrisonPop, 0.75)-median(BY8$TotalPrisonPop),
  quantile(BY9$TotalPrisonPop, 0.75)-median(BY9$TotalPrisonPop),
  quantile(BY10$TotalPrisonPop, 0.75)-median(BY10$TotalPrisonPop),
  quantile(BY11$TotalPrisonPop, 0.75)-median(BY11$TotalPrisonPop),
  quantile(BY12$TotalPrisonPop, 0.75)-median(BY12$TotalPrisonPop),
  quantile(BY13$TotalPrisonPop, 0.75)-median(BY13$TotalPrisonPop),
  quantile(BY14$TotalPrisonPop, 0.75)-median(BY14$TotalPrisonPop),
  quantile(BY15$TotalPrisonPop, 0.75)-median(BY15$TotalPrisonPop),
  quantile(BY16$TotalPrisonPop, 0.75)-median(BY16$TotalPrisonPop),
  quantile(BY17$TotalPrisonPop, 0.75)-median(BY17$TotalPrisonPop),
  quantile(BY18$TotalPrisonPop, 0.75)-median(BY18$TotalPrisonPop),
  quantile(BY19$TotalPrisonPop, 0.75)-median(BY19$TotalPrisonPop),
  quantile(BY20$TotalPrisonPop, 0.75)-median(BY20$TotalPrisonPop)
)

HCVB$Year <- c("2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025")

##C
#TotalIDU incidence and prevalence
HCVC <- data.frame("IncidenceIDU"=c(
  ((mean(CY7$NewCases)/mean(CY7$TotalIDU))*100)*365,
  ((mean(CY8$NewCases)/mean(CY8$TotalIDU))*100)*365,
  ((mean(CY9$NewCases)/mean(CY9$TotalIDU))*100)*365,
  ((mean(CY10$NewCases)/mean(CY10$TotalIDU))*100)*365,
  ((mean(CY11$NewCases)/mean(CY11$TotalIDU))*100)*365, 
  ((mean(CY12$NewCases)/mean(CY12$TotalIDU))*100)*365, 
  ((mean(CY13$NewCases)/mean(CY13$TotalIDU))*100)*365, 
  ((mean(CY14$NewCases)/mean(CY14$TotalIDU))*100)*365, 
  ((mean(CY15$NewCases)/mean(CY15$TotalIDU))*100)*365, 
  ((mean(CY16$NewCases)/mean(CY16$TotalIDU))*100)*365, 
  ((mean(CY17$NewCases)/mean(CY17$TotalIDU))*100)*365, 
  ((mean(CY18$NewCases)/mean(CY18$TotalIDU))*100)*365, 
  ((mean(CY19$NewCases)/mean(CY19$TotalIDU))*100)*365, 
  ((mean(CY20$NewCases)/mean(CY20$TotalIDU))*100)*365))
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
  (1.96*((((mean(CY16$NewCases)/mean(CY16$TotalIDU))^2)*365)*((((var(CY16$NewCases)/mean(CY16$NewCases))^2))*365+(((var(CY16$TotalIDU)/mean(CY16$TotalIDU))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(CY17$NewCases)/mean(CY17$TotalIDU))^2)*365)*((((var(CY17$NewCases)/mean(CY17$NewCases))^2))*365+(((var(CY17$TotalIDU)/mean(CY17$TotalIDU))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(CY18$NewCases)/mean(CY18$TotalIDU))^2)*365)*((((var(CY18$NewCases)/mean(CY18$NewCases))^2))*365+(((var(CY18$TotalIDU)/mean(CY18$TotalIDU))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(CY19$NewCases)/mean(CY19$TotalIDU))^2)*365)*((((var(CY19$NewCases)/mean(CY19$NewCases))^2))*365+(((var(CY19$TotalIDU)/mean(CY19$TotalIDU))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(CY20$NewCases)/mean(CY20$TotalIDU))^2)*365)*((((var(CY20$NewCases)/mean(CY20$NewCases))^2))*365+(((var(CY20$TotalIDU)/mean(CY20$TotalIDU))^2))*365)/sqrt(50*365)))*100
)
HCVC$IncidenceIDUCIFloor <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0)
HCVC$IncidenceIDUCICeiling <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0)

HCVC$IncidencePop <- c(
  ((mean(CY7$NewCases)/mean(CY7$TotalPrisonPop))*100)*365, 
  ((mean(CY8$NewCases)/mean(CY8$TotalPrisonPop))*100)*365, 
  ((mean(CY9$NewCases)/mean(CY9$TotalPrisonPop))*100)*365, 
  ((mean(CY10$NewCases)/mean(CY10$TotalPrisonPop))*100)*365, 
  ((mean(CY11$NewCases)/mean(CY11$TotalPrisonPop))*100)*365, 
  ((mean(CY12$NewCases)/mean(CY12$TotalPrisonPop))*100)*365, 
  ((mean(CY13$NewCases)/mean(CY13$TotalPrisonPop))*100)*365, 
  ((mean(CY14$NewCases)/mean(CY14$TotalPrisonPop))*100)*365, 
  ((mean(CY15$NewCases)/mean(CY15$TotalPrisonPop))*100)*365,
  ((mean(CY16$NewCases)/mean(CY16$TotalPrisonPop))*100)*365, 
  ((mean(CY17$NewCases)/mean(CY17$TotalPrisonPop))*100)*365, 
  ((mean(CY18$NewCases)/mean(CY18$TotalPrisonPop))*100)*365, 
  ((mean(CY19$NewCases)/mean(CY19$TotalPrisonPop))*100)*365, 
  ((mean(CY20$NewCases)/mean(CY20$TotalPrisonPop))*100)*365)
HCVC$IncidencePopCI <- c(
  (1.96*((((mean(CY7$NewCases)/mean(CY7$TotalPrisonPop))^2)*365)*((((var(CY7$NewCases)/mean(CY7$NewCases))^2))*365+(((var(CY7$TotalPrisonPop)/mean(CY7$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(CY8$NewCases)/mean(CY8$TotalPrisonPop))^2)*365)*((((var(CY8$NewCases)/mean(CY8$NewCases))^2))*365+(((var(CY8$TotalPrisonPop)/mean(CY8$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(CY9$NewCases)/mean(CY9$TotalPrisonPop))^2)*365)*((((var(CY9$NewCases)/mean(CY9$NewCases))^2))*365+(((var(CY9$TotalPrisonPop)/mean(CY9$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(CY10$NewCases)/mean(CY10$TotalPrisonPop))^2)*365)*((((var(CY10$NewCases)/mean(CY10$NewCases))^2))*365+(((var(CY10$TotalPrisonPop)/mean(CY10$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(CY11$NewCases)/mean(CY11$TotalPrisonPop))^2)*365)*((((var(CY11$NewCases)/mean(CY11$NewCases))^2))*365+(((var(CY11$TotalPrisonPop)/mean(CY11$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(CY12$NewCases)/mean(CY12$TotalPrisonPop))^2)*365)*((((var(CY12$NewCases)/mean(CY12$NewCases))^2))*365+(((var(CY12$TotalPrisonPop)/mean(CY12$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(CY13$NewCases)/mean(CY13$TotalPrisonPop))^2)*365)*((((var(CY13$NewCases)/mean(CY13$NewCases))^2))*365+(((var(CY13$TotalPrisonPop)/mean(CY13$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(CY14$NewCases)/mean(CY14$TotalPrisonPop))^2)*365)*((((var(CY14$NewCases)/mean(CY14$NewCases))^2))*365+(((var(CY14$TotalPrisonPop)/mean(CY14$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(CY15$NewCases)/mean(CY15$TotalPrisonPop))^2)*365)*((((var(CY15$NewCases)/mean(CY15$NewCases))^2))*365+(((var(CY15$TotalPrisonPop)/mean(CY15$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(CY16$NewCases)/mean(CY16$TotalPrisonPop))^2)*365)*((((var(CY16$NewCases)/mean(CY16$NewCases))^2))*365+(((var(CY16$TotalPrisonPop)/mean(CY16$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(CY17$NewCases)/mean(CY17$TotalPrisonPop))^2)*365)*((((var(CY17$NewCases)/mean(CY17$NewCases))^2))*365+(((var(CY17$TotalPrisonPop)/mean(CY17$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(CY18$NewCases)/mean(CY18$TotalPrisonPop))^2)*365)*((((var(CY18$NewCases)/mean(CY18$NewCases))^2))*365+(((var(CY18$TotalPrisonPop)/mean(CY18$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(CY19$NewCases)/mean(CY19$TotalPrisonPop))^2)*365)*((((var(CY19$NewCases)/mean(CY19$NewCases))^2))*365+(((var(CY19$TotalPrisonPop)/mean(CY19$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
  (1.96*((((mean(CY20$NewCases)/mean(CY20$TotalPrisonPop))^2)*365)*((((var(CY20$NewCases)/mean(CY20$NewCases))^2))*365+(((var(CY20$TotalPrisonPop)/mean(CY20$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100
)
HCVC$IncidencePopCIFloor <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0)
HCVC$IncidencePopCICeiling <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0)

HCVC$PrevalencePrisIDU <- c(
  ((mean(CY7$PrisonHCV)/mean(CY7$TotalIDU))*100),
  ((mean(CY8$PrisonHCV)/mean(CY8$TotalIDU))*100),
  ((mean(CY9$PrisonHCV)/mean(CY9$TotalIDU))*100),
  ((mean(CY10$PrisonHCV)/mean(CY10$TotalIDU))*100),
  ((mean(CY11$PrisonHCV)/mean(CY11$TotalIDU))*100),
  ((mean(CY12$PrisonHCV)/mean(CY12$TotalIDU))*100),
  ((mean(CY13$PrisonHCV)/mean(CY13$TotalIDU))*100),
  ((mean(CY14$PrisonHCV)/mean(CY14$TotalIDU))*100),
  ((mean(CY15$PrisonHCV)/mean(CY15$TotalIDU))*100),
  ((mean(CY16$PrisonHCV)/mean(CY16$TotalIDU))*100),
  ((mean(CY17$PrisonHCV)/mean(CY17$TotalIDU))*100),
  ((mean(CY18$PrisonHCV)/mean(CY18$TotalIDU))*100),
  ((mean(CY19$PrisonHCV)/mean(CY19$TotalIDU))*100),
  ((mean(CY20$PrisonHCV)/mean(CY20$TotalIDU))*100)
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
  ((mean(CY15$COMMUNITYHCV)/mean(CY15$TotalIDU))*100),
  ((mean(CY16$COMMUNITYHCV)/mean(CY16$TotalIDU))*100),
  ((mean(CY17$COMMUNITYHCV)/mean(CY17$TotalIDU))*100),
  ((mean(CY18$COMMUNITYHCV)/mean(CY18$TotalIDU))*100),
  ((mean(CY19$COMMUNITYHCV)/mean(CY19$TotalIDU))*100),
  ((mean(CY20$COMMUNITYHCV)/mean(CY20$TotalIDU))*100)
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
  ((mean(CY15$TotalHCV)/mean(CY15$TotalIDU))*100),
  ((mean(CY16$TotalHCV)/mean(CY16$TotalIDU))*100),
  ((mean(CY17$TotalHCV)/mean(CY17$TotalIDU))*100),
  ((mean(CY18$TotalHCV)/mean(CY18$TotalIDU))*100),
  ((mean(CY19$TotalHCV)/mean(CY19$TotalIDU))*100),
  ((mean(CY20$TotalHCV)/mean(CY20$TotalIDU))*100),
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
  ((mean(CY15$PrisonHCV)/mean(CY15$TotalPrisonPop))*100),
  ((mean(CY16$PrisonHCV)/mean(CY16$TotalPrisonPop))*100),
  ((mean(CY17$PrisonHCV)/mean(CY17$TotalPrisonPop))*100),
  ((mean(CY18$PrisonHCV)/mean(CY18$TotalPrisonPop))*100),
  ((mean(CY19$PrisonHCV)/mean(CY19$TotalPrisonPop))*100),
  ((mean(CY20$PrisonHCV)/mean(CY20$TotalPrisonPop))*100)
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
  ((mean(CY15$COMMUNITYHCV)/mean(CY15$TotalPrisonPop))*100),
  ((mean(CY16$COMMUNITYHCV)/mean(CY16$TotalPrisonPop))*100),
  ((mean(CY17$COMMUNITYHCV)/mean(CY17$TotalPrisonPop))*100),
  ((mean(CY18$COMMUNITYHCV)/mean(CY18$TotalPrisonPop))*100),
  ((mean(CY19$COMMUNITYHCV)/mean(CY19$TotalPrisonPop))*100),
  ((mean(CY20$COMMUNITYHCV)/mean(CY20$TotalPrisonPop))*100)
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
  ((mean(CY15$TotalHCV)/mean(CY15$TotalPrisonPop))*100),
  ((mean(CY16$TotalHCV)/mean(CY16$TotalPrisonPop))*100),
  ((mean(CY17$TotalHCV)/mean(CY17$TotalPrisonPop))*100),
  ((mean(CY18$TotalHCV)/mean(CY18$TotalPrisonPop))*100),
  ((mean(CY19$TotalHCV)/mean(CY19$TotalPrisonPop))*100),
  ((mean(CY20$TotalHCV)/mean(CY20$TotalPrisonPop))*100)
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
  ((quantile(CY15$PrisonHCV, 0.25)/mean(CY15$TotalIDU))*100),
  ((quantile(CY16$PrisonHCV, 0.25)/mean(CY16$TotalIDU))*100),
  ((quantile(CY17$PrisonHCV, 0.25)/mean(CY17$TotalIDU))*100),
  ((quantile(CY18$PrisonHCV, 0.25)/mean(CY18$TotalIDU))*100),
  ((quantile(CY19$PrisonHCV, 0.25)/mean(CY19$TotalIDU))*100),
  ((quantile(CY20$PrisonHCV, 0.25)/mean(CY20$TotalIDU))*100)
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
  ((quantile(CY15$PrisonHCV, 0.75)/mean(CY15$TotalIDU))*100),
  ((quantile(CY16$PrisonHCV, 0.75)/mean(CY16$TotalIDU))*100),
  ((quantile(CY17$PrisonHCV, 0.75)/mean(CY17$TotalIDU))*100),
  ((quantile(CY18$PrisonHCV, 0.75)/mean(CY18$TotalIDU))*100),
  ((quantile(CY19$PrisonHCV, 0.75)/mean(CY19$TotalIDU))*100),
  ((quantile(CY20$PrisonHCV, 0.75)/mean(CY20$TotalIDU))*100)
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
  ((quantile(CY15$PrisonHCV, 0.25)/mean(CY15$TotalPrisonPop))*100),
  ((quantile(CY16$PrisonHCV, 0.25)/mean(CY16$TotalPrisonPop))*100),
  ((quantile(CY17$PrisonHCV, 0.25)/mean(CY17$TotalPrisonPop))*100),
  ((quantile(CY18$PrisonHCV, 0.25)/mean(CY18$TotalPrisonPop))*100),
  ((quantile(CY19$PrisonHCV, 0.25)/mean(CY19$TotalPrisonPop))*100),
  ((quantile(CY20$PrisonHCV, 0.25)/mean(CY20$TotalPrisonPop))*100)
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
  ((quantile(CY15$PrisonHCV, 0.75)/mean(CY15$TotalPrisonPop))*100),
  ((quantile(CY16$PrisonHCV, 0.75)/mean(CY16$TotalPrisonPop))*100),
  ((quantile(CY17$PrisonHCV, 0.75)/mean(CY17$TotalPrisonPop))*100),
  ((quantile(CY18$PrisonHCV, 0.75)/mean(CY18$TotalPrisonPop))*100),
  ((quantile(CY19$PrisonHCV, 0.75)/mean(CY19$TotalPrisonPop))*100),
  ((quantile(CY20$PrisonHCV, 0.75)/mean(CY20$TotalPrisonPop))*100)
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
  ((quantile(CY15$COMMUNITYHCV, 0.25)/mean(CY15$TotalIDU))*100),
  ((quantile(CY16$COMMUNITYHCV, 0.25)/mean(CY16$TotalIDU))*100),
  ((quantile(CY17$COMMUNITYHCV, 0.25)/mean(CY17$TotalIDU))*100),
  ((quantile(CY18$COMMUNITYHCV, 0.25)/mean(CY18$TotalIDU))*100),
  ((quantile(CY19$COMMUNITYHCV, 0.25)/mean(CY19$TotalIDU))*100),
  ((quantile(CY20$COMMUNITYHCV, 0.25)/mean(CY20$TotalIDU))*100)
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
  ((quantile(CY15$COMMUNITYHCV, 0.75)/mean(CY15$TotalIDU))*100),
  ((quantile(CY16$COMMUNITYHCV, 0.75)/mean(CY16$TotalIDU))*100),
  ((quantile(CY17$COMMUNITYHCV, 0.75)/mean(CY17$TotalIDU))*100),
  ((quantile(CY18$COMMUNITYHCV, 0.75)/mean(CY18$TotalIDU))*100),
  ((quantile(CY19$COMMUNITYHCV, 0.75)/mean(CY19$TotalIDU))*100),
  ((quantile(CY20$COMMUNITYHCV, 0.75)/mean(CY20$TotalIDU))*100)
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
  ((quantile(CY15$COMMUNITYHCV, 0.25)/mean(CY15$TotalPrisonPop))*100),
  ((quantile(CY16$COMMUNITYHCV, 0.25)/mean(CY16$TotalPrisonPop))*100),
  ((quantile(CY17$COMMUNITYHCV, 0.25)/mean(CY17$TotalPrisonPop))*100),
  ((quantile(CY18$COMMUNITYHCV, 0.25)/mean(CY18$TotalPrisonPop))*100),
  ((quantile(CY19$COMMUNITYHCV, 0.25)/mean(CY19$TotalPrisonPop))*100),
  ((quantile(CY20$COMMUNITYHCV, 0.25)/mean(CY20$TotalPrisonPop))*100)
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
  ((quantile(CY15$COMMUNITYHCV, 0.75)/mean(CY15$TotalPrisonPop))*100),
  ((quantile(CY16$COMMUNITYHCV, 0.75)/mean(CY16$TotalPrisonPop))*100),
  ((quantile(CY17$COMMUNITYHCV, 0.75)/mean(CY17$TotalPrisonPop))*100),
  ((quantile(CY18$COMMUNITYHCV, 0.75)/mean(CY18$TotalPrisonPop))*100),
  ((quantile(CY19$COMMUNITYHCV, 0.75)/mean(CY19$TotalPrisonPop))*100),
  ((quantile(CY20$COMMUNITYHCV, 0.75)/mean(CY20$TotalPrisonPop))*100)
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
  ((quantile(CY15$TotalHCV, 0.25)/mean(CY15$TotalIDU))*100),
  ((quantile(CY16$TotalHCV, 0.25)/mean(CY16$TotalIDU))*100),
  ((quantile(CY17$TotalHCV, 0.25)/mean(CY17$TotalIDU))*100),
  ((quantile(CY18$TotalHCV, 0.25)/mean(CY18$TotalIDU))*100),
  ((quantile(CY19$TotalHCV, 0.25)/mean(CY19$TotalIDU))*100),
  ((quantile(CY20$TotalHCV, 0.25)/mean(CY20$TotalIDU))*100)
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
  ((quantile(CY15$TotalHCV, 0.75)/mean(CY15$TotalIDU))*100),
  ((quantile(CY16$TotalHCV, 0.75)/mean(CY16$TotalIDU))*100),
  ((quantile(CY17$TotalHCV, 0.75)/mean(CY17$TotalIDU))*100),
  ((quantile(CY18$TotalHCV, 0.75)/mean(CY18$TotalIDU))*100),
  ((quantile(CY19$TotalHCV, 0.75)/mean(CY19$TotalIDU))*100),
  ((quantile(CY20$TotalHCV, 0.75)/mean(CY20$TotalIDU))*100)
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
  ((quantile(CY15$TotalHCV, 0.25)/mean(CY15$TotalPrisonPop))*100),
  ((quantile(CY16$TotalHCV, 0.25)/mean(CY16$TotalPrisonPop))*100),
  ((quantile(CY17$TotalHCV, 0.25)/mean(CY17$TotalPrisonPop))*100),
  ((quantile(CY18$TotalHCV, 0.25)/mean(CY18$TotalPrisonPop))*100),
  ((quantile(CY19$TotalHCV, 0.25)/mean(CY19$TotalPrisonPop))*100),
  ((quantile(CY20$TotalHCV, 0.25)/mean(CY20$TotalPrisonPop))*100)
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
  ((quantile(CY15$TotalHCV, 0.75)/mean(CY15$TotalPrisonPop))*100),
  ((quantile(CY16$TotalHCV, 0.75)/mean(CY16$TotalPrisonPop))*100),
  ((quantile(CY17$TotalHCV, 0.75)/mean(CY17$TotalPrisonPop))*100),
  ((quantile(CY18$TotalHCV, 0.75)/mean(CY18$TotalPrisonPop))*100),
  ((quantile(CY19$TotalHCV, 0.75)/mean(CY19$TotalPrisonPop))*100),
  ((quantile(CY20$TotalHCV, 0.75)/mean(CY20$TotalPrisonPop))*100)
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
  mean(CY15$TotalPrisonPop),
  mean(CY16$TotalPrisonPop),
  mean(CY17$TotalPrisonPop),
  mean(CY18$TotalPrisonPop),
  mean(CY19$TotalPrisonPop),
  mean(CY20$TotalPrisonPop)
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
  median(CY15$TotalPrisonPop)-quantile(CY15$TotalPrisonPop, 0.25),
  median(CY16$TotalPrisonPop)-quantile(CY16$TotalPrisonPop, 0.25),
  median(CY17$TotalPrisonPop)-quantile(CY17$TotalPrisonPop, 0.25),
  median(CY18$TotalPrisonPop)-quantile(CY18$TotalPrisonPop, 0.25),
  median(CY19$TotalPrisonPop)-quantile(CY19$TotalPrisonPop, 0.25),
  median(CY20$TotalPrisonPop)-quantile(CY20$TotalPrisonPop, 0.25)
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
  quantile(CY15$TotalPrisonPop, 0.75)-median(CY15$TotalPrisonPop),
  quantile(CY16$TotalPrisonPop, 0.75)-median(CY16$TotalPrisonPop),
  quantile(CY17$TotalPrisonPop, 0.75)-median(CY17$TotalPrisonPop),
  quantile(CY18$TotalPrisonPop, 0.75)-median(CY18$TotalPrisonPop),
  quantile(CY19$TotalPrisonPop, 0.75)-median(CY19$TotalPrisonPop),
  quantile(CY20$TotalPrisonPop, 0.75)-median(CY20$TotalPrisonPop)
)

HCVC$Year <- c("2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025")


#Incidence
HCV$Description <- c("no change")
HCVC$Description <- c("decrease proportion of people infected with HCV at prison reception (26%)")
HCVD$Description <- c("decrease proportion of people infected with HCV at prison reception (50%)")
HCVE$Description <- c("increase proportion of people infected with HCV at prison reception (26%)")
HCVF$Description <- c("increase proportion of people infected with HCV at prison reception (50%)")
#HCVG$Description <- c("increase influx (20%)")
#HCVH$Description <- c("increase influx (50%)")

EPI <- rbind(HCV, HCVC)
EPI <- rbind(EPI, HCVE)
EPI <- rbind(EPI, HCVD)
EPI <- rbind(EPI, HCVF)
#EPI <- rbind(EPI, HCVG)
#EPI <- rbind(EPI, HCVH)

EPI$IncidenceIDUFloor <- ifelse(EPI$IncidenceIDU-EPI$IncidenceIDUCI<0, 0, EPI$IncidenceIDU-EPI$IncidenceIDUCI)
EPI$IncidencePopFloor <- ifelse(EPI$IncidencePop-EPI$IncidencePopCI<0, 0, EPI$IncidencePop-EPI$IncidencePopCI)

PlotA <- ggplot(data=EPI, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description, shape=Description)) + geom_errorbar(aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI, col=Description),  width=.1) + ylim(5, 15)+ ylab("HCV incidence among PWID") + geom_line(size=0.4) + geom_point(size=4) + geom_vline(xintercept=3, linetype=2, size=0.2) +  scale_shape_manual(values=c(2, 7, 8, 10, 1)) + scale_linetype_manual(values=c("dotdash", "longdash", "twodash", "dotdash", "solid")) + scale_color_manual(values=c("#8E44AD", "#009933", "#F39C12", "#003366", "#7B241C")) + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=15), axis.title.x = element_text(size=15, face="bold"), axis.title.y = element_text(size=15, face="bold"),  panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.title=element_blank(), legend.key = element_blank(), legend.position = "none")
PlotA
#+ ylim(0, 30) , legend.position = "none" + ylim(5, 15) 
#scale_linetype_manual(values=c("dotted", "twodash", "dotdash", "longdash", "solid")) + 

#Incidence
PlotB <- ggplot(data=EPI, aes(x=Year, y=IncidencePop, group=Description, col=Description, linetype=Description, shape=Description)) + geom_errorbar(aes(ymin=IncidencePop-IncidencePopCI, ymax=IncidencePop+IncidencePopCI, col=Description), width=.1) + ylim(1, 3) + ylab("HCV incidence among overall population") + geom_line(size=0.4) + geom_point(size=4) + geom_vline(xintercept=3, linetype=2, size=0.2) +  scale_shape_manual(values=c(2, 7, 8, 10, 1)) + scale_linetype_manual(values=c("dotdash", "longdash", "twodash", "dotdash", "solid")) + scale_color_manual(values=c("#8E44AD", "#009933", "#F39C12", "#003366", "#7B241C")) + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=14), axis.title.x = element_text(size=15, face="bold"), axis.title.y = element_text(size=15, face="bold"),  panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.title=element_blank(), legend.key = element_blank(), legend.position = "none")
PlotB
#+ ylim(0, 10) + ylim(1, 3) 

get_legend<-function(myggplot){
  tmp <- ggplot_gtable(ggplot_build(myggplot))
  leg <- which(sapply(tmp$grobs, function(x) x$name) == "guide-box")
  legend <- tmp$grobs[[leg]]
  return(legend)
}

legend <- get_legend(PlotA)
grid.newpage()
grid.arrange(arrangeGrob(PlotA, PlotB))

PlotF <- ggplot(data=EPI, aes(x=Year, y=PrevalencePrisIDU, group=Description, col=Description, linetype=Description, shape=Description)) + geom_errorbar(aes(ymin=PrevalencePrisonIDUFloor, ymax=PrevalencePrisonIDUCeiling, col=Description), width=.1)  + ylim(0, 3.5)+ ylab(" ") +  scale_shape_manual(values=c(2, 7, 8, 10, 1))+ scale_linetype_manual(values=c("dotdash", "longdash", "twodash", "dotdash", "solid")) + scale_color_manual(values=c("#8E44AD", "#009933", "#F39C12", "#003366", "#7B241C"))  + geom_line(size=0.4) + geom_vline(xintercept=3, linetype=2, size=0.2) + geom_point(size=4) + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=14), axis.title.x = element_text(size=15, face="bold"), axis.title.y = element_text(size=15, face="bold"), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.title=element_blank(), legend.key = element_blank(), legend.position = "none")
PlotF

PlotG <- ggplot(data=EPI, aes(x=Year, y=PrevalenceComIDU, group=Description, col=Description, linetype=Description, shape=Description)) + geom_errorbar(aes(ymin=PrevalenceComIDUFloor, ymax=PrevalenceComIDUCeiling, col=Description), width=.1)  + ylim(0, 2.5)+ ylab(" ") +  scale_shape_manual(values=c(2, 7, 8, 10, 1))+ scale_linetype_manual(values=c("dotdash", "longdash", "twodash", "dotdash", "solid")) + scale_color_manual(values=c("#8E44AD", "#009933", "#F39C12", "#003366", "#7B241C"))  + geom_line(size=0.4) + geom_vline(xintercept=3, linetype=2, size=0.2) + geom_point(size=4) + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=14), axis.title.x = element_text(size=15, face="bold"), axis.title.y = element_text(size=15, face="bold"), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.title=element_blank(), legend.key = element_blank(), legend.position = "none")
PlotG

PlotH <- ggplot(data=EPI, aes(x=Year, y=PrevalenceAllIDU, group=Description, col=Description, linetype=Description, shape=Description)) + geom_errorbar(aes(ymin=PrevalenceAllIDUFloor, ymax=PrevalenceAllIDUCeiling, col=Description), width=.1)  + ylim(0, 4)+ ylab(" ") +  scale_shape_manual(values=c(2, 7, 8, 10, 1))+ scale_linetype_manual(values=c("dotdash", "longdash", "twodash", "dotdash", "solid")) + scale_color_manual(values=c("#8E44AD", "#009933", "#F39C12", "#003366", "#7B241C"))  + geom_line(size=0.4) + geom_vline(xintercept=3, linetype=2, size=0.2) + geom_point(size=4) + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=14), axis.title.x = element_text(size=15, face="bold"), axis.title.y = element_text(size=15, face="bold"), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.title=element_blank(), legend.key = element_blank(), legend.position = "none")
PlotH

#Total 
PlotI <- ggplot(data=EPI, aes(x=Year, y=PrevalencePrisTotal, group=Description, col=Description, linetype=Description, shape=Description)) + geom_errorbar(aes(ymin=PrevalencePrisonTotalFloor, ymax=PrevalencePrisonTotalCeiling, col=Description), width=.1)  + ylim(0, .5)+ ylab(" ") +  scale_shape_manual(values=c(2, 7, 8, 10, 1))+ scale_linetype_manual(values=c("dotdash", "longdash", "twodash", "dotdash", "solid")) + scale_color_manual(values=c("#8E44AD", "#009933", "#F39C12", "#003366", "#7B241C"))  + geom_line(size=0.4) + geom_vline(xintercept=3, linetype=2, size=0.2) + geom_point(size=4) + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=14), axis.title.x = element_text(size=15, face="bold"), axis.title.y = element_text(size=15, face="bold"), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.title=element_blank(), legend.key = element_blank(), legend.position = "none")
PlotI

PlotJ <- ggplot(data=EPI, aes(x=Year, y=PrevalenceComTotal, group=Description, col=Description, linetype=Description, shape=Description)) + geom_errorbar(aes(ymin=PrevalenceComTotalFloor, ymax=PrevalenceComTotalCeiling, col=Description), width=.1)  + ylim(0, .5)+ ylab(" ") +  scale_shape_manual(values=c(2, 7, 8, 10, 1))+ scale_linetype_manual(values=c("dotdash", "longdash", "twodash", "dotdash", "solid")) + scale_color_manual(values=c("#8E44AD", "#009933", "#F39C12", "#003366", "#7B241C"))  + geom_line(size=0.4) + geom_vline(xintercept=3, linetype=2, size=0.2) + geom_point(size=4) + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=14), axis.title.x = element_text(size=15, face="bold"), axis.title.y = element_text(size=15, face="bold"), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.title=element_blank(), legend.key = element_blank(), legend.position = "none")
PlotJ

PlotK <- ggplot(data=EPI, aes(x=Year, y=PrevalenceAllTotal, group=Description, col=Description, linetype=Description, shape=Description)) + geom_errorbar(aes(ymin=PrevalenceAllTotalFloor, ymax=PrevalenceAllTotalCeiling, col=Description), width=.1)  + ylim(0, 1)+ ylab(" ") +  scale_shape_manual(values=c(2, 7, 8, 10, 1))+ scale_linetype_manual(values=c("dotdash", "longdash", "twodash", "dotdash", "solid")) + scale_color_manual(values=c("#8E44AD", "#009933", "#F39C12", "#003366", "#7B241C"))  + geom_line(size=0.4) + geom_vline(xintercept=3, linetype=2, size=0.2) + geom_point(size=4) + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=14), axis.title.x = element_text(size=15, face="bold"), axis.title.y = element_text(size=15, face="bold"), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.title=element_blank(), legend.key = element_blank(), legend.position = "none")
PlotK

grid.newpage()
grid.arrange(arrangeGrob(PlotF, PlotG), arrangeGrob(PlotI, PlotJ), ncol=2)

