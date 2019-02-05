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
for (var in 1:25)
{
fileName <- paste("~/Dropbox/HCV Model/HCV New Model/HCV Model/calibration/Final Calibration Sets/Movement Rates Sensitivity/Probability/Pure Adjusted Med Efflux/out", var, ".csv", sep="")
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


#Incidence
summary(CY1$NewCases) #CY1
summary(CY2$NewCases) #CY2
summary(CY3$NewCases) #CY3
summary(CY4$NewCases) #CY4
summary(CY5$NewCases) #CY5
summary(CY6$NewCases) #CY6
summary(CY7$NewCases) #CY7
summary(CY8$NewCases) #CY8
summary(CY9$NewCases) #CY9
summary(CY10$NewCases) #CY10

#Prevalence
summary(CY1$PrisonHCV) #CY1
summary(CY2$PrisonHCV) #CY1
summary(CY3$PrisonHCV) #CY1
summary(CY4$PrisonHCV) #CY1
summary(CY5$PrisonHCV) #CY1
summary(CY6$PrisonHCV) #CY1
summary(CY7$PrisonHCV) #CY1
summary(CY8$PrisonHCV) #CY1
summary(CY9$PrisonHCV) #CY1
summary(CY10$PrisonHCV) #CY1

#CY1
mean(CY1$NewCases)
mean(CY1$TotalPrisonPop)
mean(CY1$TotalIDU)
(mean(CY1$NewCases)/mean(CY1$TotalIDU))*100 #Incidence
(mean(CY1$PrisonHCV)/mean(CY1$TotalIDU))*100 #Prevalence
(mean(CY1$TotalHCV)/mean(CY1$TotalIDU))*100 #prevalence including people from com
#totalPop
(mean(CY1$NewCases)/mean(CY1$TotalPrisonPop))*100 #incidence 
(mean(CY1$PrisonHCV)/mean(CY1$TotalPrisonPop))*100 #prevalence prison HCv only
(mean(CY1$TotalHCV)/mean(CY1$TotalPrisonPop))*100 #including people from community



#TotalIDU incidence and prevalence
HCV <- data.frame("IncidenceIDU"=c(
((mean(CY1$NewCases)/mean(CY1$TotalIDU))*100)*365,
((mean(CY2$NewCases)/mean(CY2$TotalIDU))*100)*365, 
((mean(CY3$NewCases)/mean(CY3$TotalIDU))*100)*365, 
((mean(CY4$NewCases)/mean(CY4$TotalIDU))*100)*365, 
((mean(CY5$NewCases)/mean(CY5$TotalIDU))*100)*365, 
((mean(CY6$NewCases)/mean(CY6$TotalIDU))*100)*365, 
((mean(CY7$NewCases)/mean(CY7$TotalIDU))*100)*365, 
((mean(CY8$NewCases)/mean(CY8$TotalIDU))*100)*365, 
((mean(CY9$NewCases)/mean(CY9$TotalIDU))*100)*365
))
HCV$IncidenceIDUCI <- c( 
(1.96*((((mean(CY1$NewCases)/mean(CY1$TotalIDU))^2)*365)*((((var(CY1$NewCases)/mean(CY1$NewCases))^2))*365+(((var(CY1$TotalIDU)/mean(CY1$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY2$NewCases)/mean(CY2$TotalIDU))^2)*365)*((((var(CY2$NewCases)/mean(CY2$NewCases))^2))*365+(((var(CY2$TotalIDU)/mean(CY2$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY3$NewCases)/mean(CY3$TotalIDU))^2)*365)*((((var(CY3$NewCases)/mean(CY3$NewCases))^2))*365+(((var(CY3$TotalIDU)/mean(CY3$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY4$NewCases)/mean(CY4$TotalIDU))^2)*365)*((((var(CY4$NewCases)/mean(CY4$NewCases))^2))*365+(((var(CY4$TotalIDU)/mean(CY4$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY5$NewCases)/mean(CY5$TotalIDU))^2)*365)*((((var(CY5$NewCases)/mean(CY5$NewCases))^2))*365+(((var(CY5$TotalIDU)/mean(CY5$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY6$NewCases)/mean(CY6$TotalIDU))^2)*365)*((((var(CY6$NewCases)/mean(CY6$NewCases))^2))*365+(((var(CY6$TotalIDU)/mean(CY6$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY7$NewCases)/mean(CY7$TotalIDU))^2)*365)*((((var(CY7$NewCases)/mean(CY7$NewCases))^2))*365+(((var(CY7$TotalIDU)/mean(CY7$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY8$NewCases)/mean(CY8$TotalIDU))^2)*365)*((((var(CY8$NewCases)/mean(CY8$NewCases))^2))*365+(((var(CY8$TotalIDU)/mean(CY8$TotalIDU))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY9$NewCases)/mean(CY9$TotalIDU))^2)*365)*((((var(CY9$NewCases)/mean(CY9$NewCases))^2))*365+(((var(CY9$TotalIDU)/mean(CY9$TotalIDU))^2))*365)/sqrt(50*365)))*100
)
HCV$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
HCV$Description <- c("simulated incidence")

#HCV$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
#HCV$Description <- c("simulated incidence")
#HCVEvan <- data.frame("IncidenceIDU"=c(
12.07, 12.07, 12.07, 9.74, 9.74, 13.3, 13.3, 13.3, 13.3
))
#HCVEvan$IncidenceIDUCI <- c( 
12.07-8.89, 12.07-8.89, 12.07-8.89, 9.74-6.81, 9.74-6.81, 13.3-8.64, 13.3-8.64, 13.3-8.64, 13.3-8.64
)
#HCVEvan$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
##HCVEvan$Description <- c("HITS-p incidence")

HCVEvan <- data.frame("IncidenceIDU"=c(12.07, 9.74, 13.3))
HCVEvan$IncidenceIDUCI <- c( 12.07-8.89, 9.74-6.81, 13.3-8.64)
HCVEvan$Year <- c("2007", "2010", "2012")
HCVEvan$Description <- c("HITS-p incidence")

#Incidence <- rbind(HCV, HCVEvan)

HCVI <- data.frame("IncidencePop"=c(
((mean(CY1$NewCases)/mean(CY1$TotalPrisonPop))*100)*365, 
((mean(CY2$NewCases)/mean(CY2$TotalPrisonPop))*100)*365, 
((mean(CY3$NewCases)/mean(CY3$TotalPrisonPop))*100)*365, 
((mean(CY4$NewCases)/mean(CY4$TotalPrisonPop))*100)*365, 
((mean(CY5$NewCases)/mean(CY5$TotalPrisonPop))*100)*365, 
((mean(CY6$NewCases)/mean(CY6$TotalPrisonPop))*100)*365, 
((mean(CY7$NewCases)/mean(CY7$TotalPrisonPop))*100)*365, 
((mean(CY8$NewCases)/mean(CY8$TotalPrisonPop))*100)*365, 
((mean(CY9$NewCases)/mean(CY9$TotalPrisonPop))*100)*365
))
HCVI$IncidencePopCI <- c(
(1.96*((((mean(CY1$NewCases)/mean(CY1$TotalPrisonPop))^2)*365)*((((var(CY1$NewCases)/mean(CY1$NewCases))^2))*365+(((var(CY1$TotalPrisonPop)/mean(CY1$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY2$NewCases)/mean(CY2$TotalPrisonPop))^2)*365)*((((var(CY2$NewCases)/mean(CY2$NewCases))^2))*365+(((var(CY2$TotalPrisonPop)/mean(CY2$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY3$NewCases)/mean(CY3$TotalPrisonPop))^2)*365)*((((var(CY3$NewCases)/mean(CY3$NewCases))^2))*365+(((var(CY3$TotalPrisonPop)/mean(CY3$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY4$NewCases)/mean(CY4$TotalPrisonPop))^2)*365)*((((var(CY4$NewCases)/mean(CY4$NewCases))^2))*365+(((var(CY4$TotalPrisonPop)/mean(CY4$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY5$NewCases)/mean(CY5$TotalPrisonPop))^2)*365)*((((var(CY5$NewCases)/mean(CY5$NewCases))^2))*365+(((var(CY5$TotalPrisonPop)/mean(CY5$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY6$NewCases)/mean(CY6$TotalPrisonPop))^2)*365)*((((var(CY6$NewCases)/mean(CY6$NewCases))^2))*365+(((var(CY6$TotalPrisonPop)/mean(CY6$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY7$NewCases)/mean(CY7$TotalPrisonPop))^2)*365)*((((var(CY7$NewCases)/mean(CY7$NewCases))^2))*365+(((var(CY7$TotalPrisonPop)/mean(CY7$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY8$NewCases)/mean(CY8$TotalPrisonPop))^2)*365)*((((var(CY8$NewCases)/mean(CY8$NewCases))^2))*365+(((var(CY8$TotalPrisonPop)/mean(CY8$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100,
(1.96*((((mean(CY9$NewCases)/mean(CY9$TotalPrisonPop))^2)*365)*((((var(CY9$NewCases)/mean(CY9$NewCases))^2))*365+(((var(CY9$TotalPrisonPop)/mean(CY9$TotalPrisonPop))^2))*365)/sqrt(50*365)))*100
)  
HCVI$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")


#Incidence
PlotA <- ggplot(data=HCV, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0, 20)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid")) +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_point(data=HCVEvan, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4) + geom_errorbar(data=HCVEvan, mapping=aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI), colour="black", width=.1) 
PlotA
#+ ylim(0, 30)
#, legend.position="none"


#Incidence
PlotB <- ggplot(data=HCVI, aes(x=Year, y=IncidencePop, group=1)) + geom_errorbar(aes(ymin=IncidencePop-IncidencePopCI, ymax=IncidencePop+IncidencePopCI), colour="black", width=.1) + ylim(0, 2.5) +  ylab("HCV incidence among overall population")+ geom_line() + geom_point(size=4) + ggtitle(" ") + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank())
#PlotB
#+ ylim(0, 10)
#geom_hline(yintercept = 14.08, linetype="dotted") + annotate("rect", xmin = -Inf, xmax = Inf, ymin = 9.96, ymax = 19.32, fill = "gray", alpha = .5, color = NA) + ylim(0, 30)  + ggtitle("HCV incidence among total prison population") + 

get_legend<-function(myggplot){
  tmp <- ggplot_gtable(ggplot_build(myggplot))
  leg <- which(sapply(tmp$grobs, function(x) x$name) == "guide-box")
  legend <- tmp$grobs[[leg]]
  return(legend)
}

legend <- get_legend(PlotA)
grid.newpage()
grid.arrange(arrangeGrob(PlotA, PlotB), legend, ncol=2, widths=c(1.4, .6))
#grid.text("A", x=0.05, y=0.96, gp=gpar(fontsize=20, fontfamily="Arial"))
#grid.text("B", x=0.05, y=0.465, gp=gpar(fontsize=20, fontfamily="Arial"))

HCVPrisonIDU <- data.frame("Prevalence"=c(
((mean(CY1$PrisonHCV)/mean(CY1$TotalIDU))*100),
((mean(CY2$PrisonHCV)/mean(CY2$TotalIDU))*100),
((mean(CY3$PrisonHCV)/mean(CY3$TotalIDU))*100),
((mean(CY4$PrisonHCV)/mean(CY4$TotalIDU))*100),
((mean(CY5$PrisonHCV)/mean(CY5$TotalIDU))*100),
((mean(CY6$PrisonHCV)/mean(CY6$TotalIDU))*100),
((mean(CY7$PrisonHCV)/mean(CY7$TotalIDU))*100),
((mean(CY8$PrisonHCV)/mean(CY8$TotalIDU))*100),
((mean(CY9$PrisonHCV)/mean(CY9$TotalIDU))*100)
))
HCVPrisonIDU$PrevalenceFloor <- c(
((quantile(CY1$PrisonHCV, 0.25)/mean(CY1$TotalIDU))*100),
((quantile(CY2$PrisonHCV, 0.25)/mean(CY2$TotalIDU))*100),
((quantile(CY3$PrisonHCV, 0.25)/mean(CY3$TotalIDU))*100),
((quantile(CY4$PrisonHCV, 0.25)/mean(CY4$TotalIDU))*100),
((quantile(CY5$PrisonHCV, 0.25)/mean(CY5$TotalIDU))*100),
((quantile(CY6$PrisonHCV, 0.25)/mean(CY6$TotalIDU))*100),
((quantile(CY7$PrisonHCV, 0.25)/mean(CY7$TotalIDU))*100),
((quantile(CY8$PrisonHCV, 0.25)/mean(CY8$TotalIDU))*100),
((quantile(CY9$PrisonHCV, 0.25)/mean(CY9$TotalIDU))*100)
)
HCVPrisonIDU$PrevalenceCeiling <- c(
((quantile(CY1$PrisonHCV, 0.75)/mean(CY1$TotalIDU))*100),
((quantile(CY2$PrisonHCV, 0.75)/mean(CY2$TotalIDU))*100),
((quantile(CY3$PrisonHCV, 0.75)/mean(CY3$TotalIDU))*100),
((quantile(CY4$PrisonHCV, 0.75)/mean(CY4$TotalIDU))*100),
((quantile(CY5$PrisonHCV, 0.75)/mean(CY5$TotalIDU))*100),
((quantile(CY6$PrisonHCV, 0.75)/mean(CY6$TotalIDU))*100),
((quantile(CY7$PrisonHCV, 0.75)/mean(CY7$TotalIDU))*100),
((quantile(CY8$PrisonHCV, 0.75)/mean(CY8$TotalIDU))*100),
((quantile(CY9$PrisonHCV, 0.75)/mean(CY9$TotalIDU))*100)
)
HCVPrisonIDU$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
HCVPrisonIDU$Description <- c("cases infected in prison")

HCVComIDU <- data.frame("Prevalence"=c(
((mean(CY1$COMMUNITYHCV)/mean(CY1$TotalIDU))*100),
((mean(CY2$COMMUNITYHCV)/mean(CY2$TotalIDU))*100),
((mean(CY3$COMMUNITYHCV)/mean(CY3$TotalIDU))*100),
((mean(CY4$COMMUNITYHCV)/mean(CY4$TotalIDU))*100),
((mean(CY5$COMMUNITYHCV)/mean(CY5$TotalIDU))*100),
((mean(CY6$COMMUNITYHCV)/mean(CY6$TotalIDU))*100),
((mean(CY7$COMMUNITYHCV)/mean(CY7$TotalIDU))*100),
((mean(CY8$COMMUNITYHCV)/mean(CY8$TotalIDU))*100),
((mean(CY9$COMMUNITYHCV)/mean(CY9$TotalIDU))*100)
))
HCVComIDU$PrevalenceFloor <- c(
((quantile(CY1$COMMUNITYHCV, 0.25)/mean(CY1$TotalIDU))*100),
((quantile(CY2$COMMUNITYHCV, 0.25)/mean(CY2$TotalIDU))*100),
((quantile(CY3$COMMUNITYHCV, 0.25)/mean(CY3$TotalIDU))*100),
((quantile(CY4$COMMUNITYHCV, 0.25)/mean(CY4$TotalIDU))*100),
((quantile(CY5$COMMUNITYHCV, 0.25)/mean(CY5$TotalIDU))*100),
((quantile(CY6$COMMUNITYHCV, 0.25)/mean(CY6$TotalIDU))*100),
((quantile(CY7$COMMUNITYHCV, 0.25)/mean(CY7$TotalIDU))*100),
((quantile(CY8$COMMUNITYHCV, 0.25)/mean(CY8$TotalIDU))*100),
((quantile(CY9$COMMUNITYHCV, 0.25)/mean(CY9$TotalIDU))*100)
)
HCVComIDU$PrevalenceCeiling <- c(
((quantile(CY1$COMMUNITYHCV, 0.75)/mean(CY1$TotalIDU))*100),
((quantile(CY2$COMMUNITYHCV, 0.75)/mean(CY2$TotalIDU))*100),
((quantile(CY3$COMMUNITYHCV, 0.75)/mean(CY3$TotalIDU))*100),
((quantile(CY4$COMMUNITYHCV, 0.75)/mean(CY4$TotalIDU))*100),
((quantile(CY5$COMMUNITYHCV, 0.75)/mean(CY5$TotalIDU))*100),
((quantile(CY6$COMMUNITYHCV, 0.75)/mean(CY6$TotalIDU))*100),
((quantile(CY7$COMMUNITYHCV, 0.75)/mean(CY7$TotalIDU))*100),
((quantile(CY8$COMMUNITYHCV, 0.75)/mean(CY8$TotalIDU))*100),
((quantile(CY9$COMMUNITYHCV, 0.75)/mean(CY9$TotalIDU))*100)
)
HCVComIDU$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
HCVComIDU$Description <- c("cases infected in community")

HCVAllIDU <- data.frame("Prevalence"=c(
((mean(CY1$TotalHCV)/mean(CY1$TotalIDU))*100),
((mean(CY2$TotalHCV)/mean(CY2$TotalIDU))*100),
((mean(CY3$TotalHCV)/mean(CY3$TotalIDU))*100),
((mean(CY4$TotalHCV)/mean(CY4$TotalIDU))*100),
((mean(CY5$TotalHCV)/mean(CY5$TotalIDU))*100),
((mean(CY6$TotalHCV)/mean(CY6$TotalIDU))*100),
((mean(CY7$TotalHCV)/mean(CY7$TotalIDU))*100),
((mean(CY8$TotalHCV)/mean(CY8$TotalIDU))*100),
((mean(CY9$TotalHCV)/mean(CY9$TotalIDU))*100)
))
HCVAllIDU$PrevalenceFloor <- c(
((quantile(CY1$TotalHCV, 0.25)/mean(CY1$TotalIDU))*100),
((quantile(CY2$TotalHCV, 0.25)/mean(CY2$TotalIDU))*100),
((quantile(CY3$TotalHCV, 0.25)/mean(CY3$TotalIDU))*100),
((quantile(CY4$TotalHCV, 0.25)/mean(CY4$TotalIDU))*100),
((quantile(CY5$TotalHCV, 0.25)/mean(CY5$TotalIDU))*100),
((quantile(CY6$TotalHCV, 0.25)/mean(CY6$TotalIDU))*100),
((quantile(CY7$TotalHCV, 0.25)/mean(CY7$TotalIDU))*100),
((quantile(CY8$TotalHCV, 0.25)/mean(CY8$TotalIDU))*100),
((quantile(CY9$TotalHCV, 0.25)/mean(CY9$TotalIDU))*100)
)
HCVAllIDU$PrevalenceCeiling <- c(
((quantile(CY1$TotalHCV, 0.75)/mean(CY1$TotalIDU))*100),
((quantile(CY2$TotalHCV, 0.75)/mean(CY2$TotalIDU))*100),
((quantile(CY3$TotalHCV, 0.75)/mean(CY3$TotalIDU))*100),
((quantile(CY4$TotalHCV, 0.75)/mean(CY4$TotalIDU))*100),
((quantile(CY5$TotalHCV, 0.75)/mean(CY5$TotalIDU))*100),
((quantile(CY6$TotalHCV, 0.75)/mean(CY6$TotalIDU))*100),
((quantile(CY7$TotalHCV, 0.75)/mean(CY7$TotalIDU))*100),
((quantile(CY8$TotalHCV, 0.75)/mean(CY8$TotalIDU))*100),
((quantile(CY9$TotalHCV, 0.75)/mean(CY9$TotalIDU))*100)
)
HCVAllIDU$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
HCVAllIDU$Description <- c("all infected cases")

HCVPrisonTotal <- data.frame("Prevalence"=c(
((mean(CY1$PrisonHCV)/mean(CY1$TotalPrisonPop))*100),
((mean(CY2$PrisonHCV)/mean(CY2$TotalPrisonPop))*100),
((mean(CY3$PrisonHCV)/mean(CY3$TotalPrisonPop))*100),
((mean(CY4$PrisonHCV)/mean(CY4$TotalPrisonPop))*100),
((mean(CY5$PrisonHCV)/mean(CY5$TotalPrisonPop))*100),
((mean(CY6$PrisonHCV)/mean(CY6$TotalPrisonPop))*100),
((mean(CY7$PrisonHCV)/mean(CY7$TotalPrisonPop))*100),
((mean(CY8$PrisonHCV)/mean(CY8$TotalPrisonPop))*100),
((mean(CY9$PrisonHCV)/mean(CY9$TotalPrisonPop))*100)
))
HCVPrisonTotal$PrevalenceFloor <- c(
((quantile(CY1$PrisonHCV, 0.25)/mean(CY1$TotalPrisonPop))*100),
((quantile(CY2$PrisonHCV, 0.25)/mean(CY2$TotalPrisonPop))*100),
((quantile(CY3$PrisonHCV, 0.25)/mean(CY3$TotalPrisonPop))*100),
((quantile(CY4$PrisonHCV, 0.25)/mean(CY4$TotalPrisonPop))*100),
((quantile(CY5$PrisonHCV, 0.25)/mean(CY5$TotalPrisonPop))*100),
((quantile(CY6$PrisonHCV, 0.25)/mean(CY6$TotalPrisonPop))*100),
((quantile(CY7$PrisonHCV, 0.25)/mean(CY7$TotalPrisonPop))*100),
((quantile(CY8$PrisonHCV, 0.25)/mean(CY8$TotalPrisonPop))*100),
((quantile(CY9$PrisonHCV, 0.25)/mean(CY9$TotalPrisonPop))*100)
)
HCVPrisonTotal$PrevalenceCeiling <- c(
((quantile(CY1$PrisonHCV, 0.75)/mean(CY1$TotalPrisonPop))*100),
((quantile(CY2$PrisonHCV, 0.75)/mean(CY2$TotalPrisonPop))*100),
((quantile(CY3$PrisonHCV, 0.75)/mean(CY3$TotalPrisonPop))*100),
((quantile(CY4$PrisonHCV, 0.75)/mean(CY4$TotalPrisonPop))*100),
((quantile(CY5$PrisonHCV, 0.75)/mean(CY5$TotalPrisonPop))*100),
((quantile(CY6$PrisonHCV, 0.75)/mean(CY6$TotalPrisonPop))*100),
((quantile(CY7$PrisonHCV, 0.75)/mean(CY7$TotalPrisonPop))*100),
((quantile(CY8$PrisonHCV, 0.75)/mean(CY8$TotalPrisonPop))*100),
((quantile(CY9$PrisonHCV, 0.75)/mean(CY9$TotalPrisonPop))*100)
)
HCVPrisonTotal$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
HCVPrisonTotal$Description <- c("cases infected in prison")

HCVComTotal <- data.frame("Prevalence"=c(
((mean(CY1$COMMUNITYHCV)/mean(CY1$TotalPrisonPop))*100),
((mean(CY2$COMMUNITYHCV)/mean(CY2$TotalPrisonPop))*100),
((mean(CY3$COMMUNITYHCV)/mean(CY3$TotalPrisonPop))*100),
((mean(CY4$COMMUNITYHCV)/mean(CY4$TotalPrisonPop))*100),
((mean(CY5$COMMUNITYHCV)/mean(CY5$TotalPrisonPop))*100),
((mean(CY6$COMMUNITYHCV)/mean(CY6$TotalPrisonPop))*100),
((mean(CY7$COMMUNITYHCV)/mean(CY7$TotalPrisonPop))*100),
((mean(CY8$COMMUNITYHCV)/mean(CY8$TotalPrisonPop))*100),
((mean(CY9$COMMUNITYHCV)/mean(CY9$TotalPrisonPop))*100)
))
HCVComTotal$PrevalenceFloor <- c(
((quantile(CY1$COMMUNITYHCV, 0.25)/mean(CY1$TotalPrisonPop))*100),
((quantile(CY2$COMMUNITYHCV, 0.25)/mean(CY2$TotalPrisonPop))*100),
((quantile(CY3$COMMUNITYHCV, 0.25)/mean(CY3$TotalPrisonPop))*100),
((quantile(CY4$COMMUNITYHCV, 0.25)/mean(CY4$TotalPrisonPop))*100),
((quantile(CY5$COMMUNITYHCV, 0.25)/mean(CY5$TotalPrisonPop))*100),
((quantile(CY6$COMMUNITYHCV, 0.25)/mean(CY6$TotalPrisonPop))*100),
((quantile(CY7$COMMUNITYHCV, 0.25)/mean(CY7$TotalPrisonPop))*100),
((quantile(CY8$COMMUNITYHCV, 0.25)/mean(CY8$TotalPrisonPop))*100),
((quantile(CY9$COMMUNITYHCV, 0.25)/mean(CY9$TotalPrisonPop))*100)
)
HCVComTotal$PrevalenceCeiling <- c(
((quantile(CY1$COMMUNITYHCV, 0.75)/mean(CY1$TotalPrisonPop))*100),
((quantile(CY2$COMMUNITYHCV, 0.75)/mean(CY2$TotalPrisonPop))*100),
((quantile(CY3$COMMUNITYHCV, 0.75)/mean(CY3$TotalPrisonPop))*100),
((quantile(CY4$COMMUNITYHCV, 0.75)/mean(CY4$TotalPrisonPop))*100),
((quantile(CY5$COMMUNITYHCV, 0.75)/mean(CY5$TotalPrisonPop))*100),
((quantile(CY6$COMMUNITYHCV, 0.75)/mean(CY6$TotalPrisonPop))*100),
((quantile(CY7$COMMUNITYHCV, 0.75)/mean(CY7$TotalPrisonPop))*100),
((quantile(CY8$COMMUNITYHCV, 0.75)/mean(CY8$TotalPrisonPop))*100),
((quantile(CY9$COMMUNITYHCV, 0.75)/mean(CY9$TotalPrisonPop))*100)
)
HCVComTotal$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
HCVComTotal$Description <- c("cases infected in community")

HCVAllTotal <- data.frame("Prevalence"=c(
((mean(CY1$TotalHCV)/mean(CY1$TotalPrisonPop))*100),
((mean(CY2$TotalHCV)/mean(CY2$TotalPrisonPop))*100),
((mean(CY3$TotalHCV)/mean(CY3$TotalPrisonPop))*100),
((mean(CY4$TotalHCV)/mean(CY4$TotalPrisonPop))*100),
((mean(CY5$TotalHCV)/mean(CY5$TotalPrisonPop))*100),
((mean(CY6$TotalHCV)/mean(CY6$TotalPrisonPop))*100),
((mean(CY7$TotalHCV)/mean(CY7$TotalPrisonPop))*100),
((mean(CY8$TotalHCV)/mean(CY8$TotalPrisonPop))*100),
((mean(CY9$TotalHCV)/mean(CY9$TotalPrisonPop))*100)
))
HCVAllTotal$PrevalenceFloor <- c(
((quantile(CY1$TotalHCV, 0.25)/mean(CY1$TotalPrisonPop))*100),
((quantile(CY2$TotalHCV, 0.25)/mean(CY2$TotalPrisonPop))*100),
((quantile(CY3$TotalHCV, 0.25)/mean(CY3$TotalPrisonPop))*100),
((quantile(CY4$TotalHCV, 0.25)/mean(CY4$TotalPrisonPop))*100),
((quantile(CY5$TotalHCV, 0.25)/mean(CY5$TotalPrisonPop))*100),
((quantile(CY6$TotalHCV, 0.25)/mean(CY6$TotalPrisonPop))*100),
((quantile(CY7$TotalHCV, 0.25)/mean(CY7$TotalPrisonPop))*100),
((quantile(CY8$TotalHCV, 0.25)/mean(CY8$TotalPrisonPop))*100),
((quantile(CY9$TotalHCV, 0.25)/mean(CY9$TotalPrisonPop))*100)
)
HCVAllTotal$PrevalenceCeiling <- c(
((quantile(CY1$TotalHCV, 0.75)/mean(CY1$TotalPrisonPop))*100),
((quantile(CY2$TotalHCV, 0.75)/mean(CY2$TotalPrisonPop))*100),
((quantile(CY3$TotalHCV, 0.75)/mean(CY3$TotalPrisonPop))*100),
((quantile(CY4$TotalHCV, 0.75)/mean(CY4$TotalPrisonPop))*100),
((quantile(CY5$TotalHCV, 0.75)/mean(CY5$TotalPrisonPop))*100),
((quantile(CY6$TotalHCV, 0.75)/mean(CY6$TotalPrisonPop))*100),
((quantile(CY7$TotalHCV, 0.75)/mean(CY7$TotalPrisonPop))*100),
((quantile(CY8$TotalHCV, 0.75)/mean(CY8$TotalPrisonPop))*100),
((quantile(CY9$TotalHCV, 0.75)/mean(CY9$TotalPrisonPop))*100)
)
HCVAllTotal$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014")
HCVAllTotal$Description <- c("all infected cases")

PrevalenceIDU <- rbind(HCVPrisonIDU, HCVComIDU, HCVAllIDU)
PrevalenceTotal <- rbind(HCVPrisonTotal, HCVComTotal, HCVAllTotal)

#Prevalence 
PlotC <- ggplot(data=PrevalenceIDU, aes(x=Year, y=Prevalence, group=Description, col=Description, linetype=Description, shape=Description)) + geom_errorbar(aes(ymin=PrevalenceFloor, ymax=PrevalenceCeiling, col=Description), colour="black", width=.1)  + ylim(0, 4) + ylab("HCV prevalence among PWID") +  scale_shape_manual(values=c(16, 1, 2)) + scale_linetype_manual(values=c("solid", "twodash", "dashed")) + scale_color_manual(values=c("#A93226", "#0B5345", "#8E44AD")) + geom_line() + geom_point(size=4) + ggtitle(" ") + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=15), axis.title.x = element_text(size=15, face="bold"), axis.title.y = element_text(size=15, face="bold"),  panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.title=element_blank(), legend.key = element_blank(), legend.position = "none")
PlotC

PlotD <- ggplot(data=PrevalenceTotal, aes(x=Year, y=Prevalence, group=Description, col=Description, linetype=Description, shape=Description)) + geom_errorbar(aes(ymin=PrevalenceFloor, ymax=PrevalenceCeiling, col=Description), colour="black", width=.1)  + ylim(0, 1) + ylab("overall") +  scale_shape_manual(values=c(16, 1, 2)) + scale_linetype_manual(values=c("solid", "twodash", "dashed")) + scale_color_manual(values=c("#A93226", "#0B5345", "#8E44AD")) + geom_line() + geom_point(size=4) + ggtitle(" ") + theme_bw() + theme(panel.border = element_blank(), text = element_text(size=15), axis.title.x = element_text(size=15, face="bold"), axis.title.y = element_text(size=15, face="bold"),  panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.title=element_blank(), legend.key = element_blank(), legend.position = "none")
#+ ylab("HCV prevalence among overall population") 
PlotD

grid.newpage()
grid.arrange(arrangeGrob(PlotC, PlotD))


#grid.arrange(PlotA, PlotB, ncol=2, nrow=1)
#grid.arrange(PlotB, PlotD, PlotA, PlotC, ncol=2, nrow=2)
#grid.text("A", x=0.03, y=0.96, gp=gpar(fontsize=20, fontfamily="Arial"))
#grid.text("B", x=0.03, y=0.47, gp=gpar(fontsize=20, fontfamily="Arial"))
#grid.text("C", x=0.55, y=0.96, gp=gpar(fontsize=20, fontfamily="Arial"))
#grid.text("D", x=0.55, y=0.47, gp=gpar(fontsize=20, fontfamily="Arial"))

grid.newpage()
grid.draw(rbind(ggplotGrob(PlotB), ggplotGrob(PlotA), ncol=2, size="last", heights=c(1, 2)))
grid.draw(rbind(ggplotGrob(PlotD), ggplotGrob(PlotC), size="last"))

