library(ggplot2)
library(gridExtra)
library(grid)
library(lattice)
library(cowplot)

#Load 50 files
pMinA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMedA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMaxA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointTotalA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pReinfectedA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesSumA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalIDUA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPrisonHCVA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pOpdA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUSumA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pClrDA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalDAAA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOSTA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVRNAA <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointHCVabA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVabA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]

pMinB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMedB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMaxB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointTotalB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pReinfectedB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesSumB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalIDUB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPrisonHCVB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pOpdB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUSumB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pClrDB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalDAAB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOSTB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVRNAB <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointHCVabB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVabB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]

pMinC <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMedC <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMaxC <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalC <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointTotalC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pReinfectedC <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesC <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesSumC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalIDUC <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPrisonHCVC <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pOpdC <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUC <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUSumC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pClrDC <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalDAAC <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOSTC <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeC <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVRNAC <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointHCVabC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVabC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]

for (var in 1:10)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/Testing/results/outSQ_", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "HCVe", "NewEntry", "HCVab", "AveStay")
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCVAb", "ReleasedHCVRNA", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "OpdNotOST", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "OSTremaining", "HCVeRNA", "HCVeAb", "NewEntry", "HCVab", "HCVRNA", "AveStay")
  
  Y6 <- tempFile[1:365,]
  Y7 <- tempFile[366:730,]
  Y8 <- tempFile[731:1095,]
  Y9 <- tempFile[1096:1460,]
  Y10 <- tempFile[1461:1825,]
  Y11 <- tempFile[1826:2190,]
  Y12 <- tempFile[2191:2555,]
  Y13 <- tempFile[2556:2920,]
  Y14 <- tempFile[2921:3285,]
  Y15 <- tempFile[3286:3650,]
  Y16 <- tempFile[3651:4015,]
  Y17 <- tempFile[4016:4380,]
  Y18 <- tempFile[4381:4745,]
  Y19 <- tempFile[4746:5110,]
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
  pMinTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pMinTmp[1,] <- 0
  pMinTmp$y6[1] <- mean(Y6$Pmin0+Y6$Pmin1+Y6$Pmin2+Y6$Pmin3+Y6$Pmin4+Y6$Pmin5+Y6$Pmin6+Y6$Pmin7+Y6$Pmin8+Y6$Pmin9+Y6$Pmin10+Y6$Pmin11)
  pMinTmp$y7[1] <- mean(Y7$Pmin0+Y7$Pmin1+Y7$Pmin2+Y7$Pmin3+Y7$Pmin4+Y7$Pmin5+Y7$Pmin6+Y7$Pmin7+Y7$Pmin8+Y7$Pmin9+Y7$Pmin10+Y7$Pmin11)
  pMinTmp$y8[1] <- mean(Y8$Pmin0+Y8$Pmin1+Y8$Pmin2+Y8$Pmin3+Y8$Pmin4+Y8$Pmin5+Y8$Pmin6+Y8$Pmin7+Y8$Pmin8+Y8$Pmin9+Y8$Pmin10+Y8$Pmin11)
  pMinTmp$y9[1] <- mean(Y9$Pmin0+Y9$Pmin1+Y9$Pmin2+Y9$Pmin3+Y9$Pmin4+Y9$Pmin5+Y9$Pmin6+Y9$Pmin7+Y9$Pmin8+Y9$Pmin9+Y9$Pmin10+Y9$Pmin11)
  pMinTmp$y10[1] <- mean(Y10$Pmin0+Y10$Pmin1+Y10$Pmin2+Y10$Pmin3+Y10$Pmin4+Y10$Pmin5+Y10$Pmin6+Y10$Pmin7+Y10$Pmin8+Y10$Pmin9+Y10$Pmin10+Y10$Pmin11)
  pMinTmp$y11[1] <- mean(Y11$Pmin0+Y11$Pmin1+Y11$Pmin2+Y11$Pmin3+Y11$Pmin4+Y11$Pmin5+Y11$Pmin6+Y11$Pmin7+Y11$Pmin8+Y11$Pmin9+Y11$Pmin10+Y11$Pmin11)
  pMinTmp$y12[1] <- mean(Y12$Pmin0+Y12$Pmin1+Y12$Pmin2+Y12$Pmin3+Y12$Pmin4+Y12$Pmin5+Y12$Pmin6+Y12$Pmin7+Y12$Pmin8+Y12$Pmin9+Y12$Pmin10+Y12$Pmin11)
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
  
  pMedTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pMedTmp[1,] <- 0
  pMedTmp$y6[1] <- mean(Y6$Pmed0+Y6$Pmed1+Y6$Pmed2+Y6$Pmed3+Y6$Pmed4+Y6$Pmed5+Y6$Pmed6+Y6$Pmed7+Y6$Pmed8+Y6$Pmed9+Y6$Pmed10+Y6$Pmed11)
  pMedTmp$y7[1] <- mean(Y7$Pmed0+Y7$Pmed1+Y7$Pmed2+Y7$Pmed3+Y7$Pmed4+Y7$Pmed5+Y7$Pmed6+Y7$Pmed7+Y7$Pmed8+Y7$Pmed9+Y7$Pmed10+Y7$Pmed11)
  pMedTmp$y8[1] <- mean(Y8$Pmed0+Y8$Pmed1+Y8$Pmed2+Y8$Pmed3+Y8$Pmed4+Y8$Pmed5+Y8$Pmed6+Y8$Pmed7+Y8$Pmed8+Y8$Pmed9+Y8$Pmed10+Y8$Pmed11)
  pMedTmp$y9[1] <- mean(Y9$Pmed0+Y9$Pmed1+Y9$Pmed2+Y9$Pmed3+Y9$Pmed4+Y9$Pmed5+Y9$Pmed6+Y9$Pmed7+Y9$Pmed8+Y9$Pmed9+Y9$Pmed10+Y9$Pmed11)
  pMedTmp$y10[1] <- mean(Y10$Pmed0+Y10$Pmed1+Y10$Pmed2+Y10$Pmed3+Y10$Pmed4+Y10$Pmed5+Y10$Pmed6+Y10$Pmed7+Y10$Pmed8+Y10$Pmed9+Y10$Pmed10+Y10$Pmed11)
  pMedTmp$y11[1] <- mean(Y11$Pmed0+Y11$Pmed1+Y11$Pmed2+Y11$Pmed3+Y11$Pmed4+Y11$Pmed5+Y11$Pmed6+Y11$Pmed7+Y11$Pmed8+Y11$Pmed9+Y11$Pmed10+Y11$Pmed11)
  pMedTmp$y12[1] <- mean(Y12$Pmed0+Y12$Pmed1+Y12$Pmed2+Y12$Pmed3+Y12$Pmed4+Y12$Pmed5+Y12$Pmed6+Y12$Pmed7+Y12$Pmed8+Y12$Pmed9+Y12$Pmed10+Y12$Pmed11)
  pMedTmp$y13[1] <- mean(Y13$Pmed0+Y13$Pmed1+Y13$Pmed2+Y13$Pmed3+Y13$Pmed4+Y13$Pmed5+Y13$Pmed6+Y13$Pmed7+Y13$Pmed8+Y13$Pmed9+Y13$Pmed10+Y13$Pmed11)
  pMedTmp$y14[1] <- mean(Y14$Pmed0+Y14$Pmed1+Y14$Pmed2+Y14$Pmed3+Y14$Pmed4+Y14$Pmed5+Y14$Pmed6+Y14$Pmed7+Y14$Pmed8+Y14$Pmed9+Y14$Pmed10+Y14$Pmed11)
  pMedTmp$y15[1] <- mean(Y15$Pmed0+Y15$Pmed1+Y15$Pmed2+Y15$Pmed3+Y15$Pmed4+Y15$Pmed5+Y15$Pmed6+Y15$Pmed7+Y15$Pmed8+Y15$Pmed9+Y15$Pmed10+Y15$Pmed11)
  pMedTmp$y16[1] <- mean(Y16$Pmed0+Y16$Pmed1+Y16$Pmed2+Y16$Pmed3+Y16$Pmed4+Y16$Pmed5+Y16$Pmed6+Y16$Pmed7+Y16$Pmed8+Y16$Pmed9+Y16$Pmed10+Y16$Pmed11)
  pMedTmp$y17[1] <- mean(Y17$Pmed0+Y17$Pmed1+Y17$Pmed2+Y17$Pmed3+Y17$Pmed4+Y17$Pmed5+Y17$Pmed6+Y17$Pmed7+Y17$Pmed8+Y17$Pmed9+Y17$Pmed10+Y17$Pmed11)
  pMedTmp$y18[1] <- mean(Y18$Pmed0+Y18$Pmed1+Y18$Pmed2+Y18$Pmed3+Y18$Pmed4+Y18$Pmed5+Y18$Pmed6+Y18$Pmed7+Y18$Pmed8+Y18$Pmed9+Y18$Pmed10+Y18$Pmed11)
  pMedTmp$y19[1] <- mean(Y19$Pmed0+Y19$Pmed1+Y19$Pmed2+Y19$Pmed3+Y19$Pmed4+Y19$Pmed5+Y19$Pmed6+Y19$Pmed7+Y19$Pmed8+Y19$Pmed9+Y19$Pmed10+Y19$Pmed11)
  pMedTmp$y20[1] <- mean(Y20$Pmed0+Y20$Pmed1+Y20$Pmed2+Y20$Pmed3+Y20$Pmed4+Y20$Pmed5+Y20$Pmed6+Y20$Pmed7+Y20$Pmed8+Y20$Pmed9+Y20$Pmed10+Y20$Pmed11)
  pMedTmp$y21[1] <- mean(Y21$Pmed0+Y21$Pmed1+Y21$Pmed2+Y21$Pmed3+Y21$Pmed4+Y21$Pmed5+Y21$Pmed6+Y21$Pmed7+Y21$Pmed8+Y21$Pmed9+Y21$Pmed10+Y21$Pmed11)
  pMedTmp$y22[1] <- mean(Y22$Pmed0+Y22$Pmed1+Y22$Pmed2+Y22$Pmed3+Y22$Pmed4+Y22$Pmed5+Y22$Pmed6+Y22$Pmed7+Y22$Pmed8+Y22$Pmed9+Y22$Pmed10+Y22$Pmed11)
  pMedTmp$y23[1] <- mean(Y23$Pmed0+Y23$Pmed1+Y23$Pmed2+Y23$Pmed3+Y23$Pmed4+Y23$Pmed5+Y23$Pmed6+Y23$Pmed7+Y23$Pmed8+Y23$Pmed9+Y23$Pmed10+Y23$Pmed11)
  pMedTmp$y24[1] <- mean(Y24$Pmed0+Y24$Pmed1+Y24$Pmed2+Y24$Pmed3+Y24$Pmed4+Y24$Pmed5+Y24$Pmed6+Y24$Pmed7+Y24$Pmed8+Y24$Pmed9+Y24$Pmed10+Y24$Pmed11)
  pMedTmp$y25[1] <- mean(Y25$Pmed0+Y25$Pmed1+Y25$Pmed2+Y25$Pmed3+Y25$Pmed4+Y25$Pmed5+Y25$Pmed6+Y25$Pmed7+Y25$Pmed8+Y25$Pmed9+Y25$Pmed10+Y25$Pmed11)
  pMedTmp$y26[1] <- mean(Y26$Pmed0+Y26$Pmed1+Y26$Pmed2+Y26$Pmed3+Y26$Pmed4+Y26$Pmed5+Y26$Pmed6+Y26$Pmed7+Y26$Pmed8+Y26$Pmed9+Y26$Pmed10+Y26$Pmed11)
  pMedTmp$y27[1] <- mean(Y27$Pmed0+Y27$Pmed1+Y27$Pmed2+Y27$Pmed3+Y27$Pmed4+Y27$Pmed5+Y27$Pmed6+Y27$Pmed7+Y27$Pmed8+Y27$Pmed9+Y27$Pmed10+Y27$Pmed11)
  pMedTmp$y28[1] <- mean(Y28$Pmed0+Y28$Pmed1+Y28$Pmed2+Y28$Pmed3+Y28$Pmed4+Y28$Pmed5+Y28$Pmed6+Y28$Pmed7+Y28$Pmed8+Y28$Pmed9+Y28$Pmed10+Y28$Pmed11)
  pMedTmp$y29[1] <- mean(Y29$Pmed0+Y29$Pmed1+Y29$Pmed2+Y29$Pmed3+Y29$Pmed4+Y29$Pmed5+Y29$Pmed6+Y29$Pmed7+Y29$Pmed8+Y29$Pmed9+Y29$Pmed10+Y29$Pmed11)
  pMedTmp$y30[1] <- mean(Y30$Pmed0+Y30$Pmed1+Y30$Pmed2+Y30$Pmed3+Y30$Pmed4+Y30$Pmed5+Y30$Pmed6+Y30$Pmed7+Y30$Pmed8+Y30$Pmed9+Y30$Pmed10+Y30$Pmed11)
  pMedA <- rbind(pMedA, pMedTmp)
  
  pMaxTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pMaxTmp[1,] <- 0
  pMaxTmp$y6[1] <- mean(Y6$Pmax0+Y6$Pmax1+Y6$Pmax2+Y6$Pmax3+Y6$Pmax4+Y6$Pmax5+Y6$Pmax6+Y6$Pmax7+Y6$Pmax8+Y6$Pmax9+Y6$Pmax10+Y6$Pmax11)
  pMaxTmp$y7[1] <- mean(Y7$Pmax0+Y7$Pmax1+Y7$Pmax2+Y7$Pmax3+Y7$Pmax4+Y7$Pmax5+Y7$Pmax6+Y7$Pmax7+Y7$Pmax8+Y7$Pmax9+Y7$Pmax10+Y7$Pmax11)
  pMaxTmp$y8[1] <- mean(Y8$Pmax0+Y8$Pmax1+Y8$Pmax2+Y8$Pmax3+Y8$Pmax4+Y8$Pmax5+Y8$Pmax6+Y8$Pmax7+Y8$Pmax8+Y8$Pmax9+Y8$Pmax10+Y8$Pmax11)
  pMaxTmp$y9[1] <- mean(Y9$Pmax0+Y9$Pmax1+Y9$Pmax2+Y9$Pmax3+Y9$Pmax4+Y9$Pmax5+Y9$Pmax6+Y9$Pmax7+Y9$Pmax8+Y9$Pmax9+Y9$Pmax10+Y9$Pmax11)
  pMaxTmp$y10[1] <- mean(Y10$Pmax0+Y10$Pmax1+Y10$Pmax2+Y10$Pmax3+Y10$Pmax4+Y10$Pmax5+Y10$Pmax6+Y10$Pmax7+Y10$Pmax8+Y10$Pmax9+Y10$Pmax10+Y10$Pmax11)
  pMaxTmp$y11[1] <- mean(Y11$Pmax0+Y11$Pmax1+Y11$Pmax2+Y11$Pmax3+Y11$Pmax4+Y11$Pmax5+Y11$Pmax6+Y11$Pmax7+Y11$Pmax8+Y11$Pmax9+Y11$Pmax10+Y11$Pmax11)
  pMaxTmp$y12[1] <- mean(Y12$Pmax0+Y12$Pmax1+Y12$Pmax2+Y12$Pmax3+Y12$Pmax4+Y12$Pmax5+Y12$Pmax6+Y12$Pmax7+Y12$Pmax8+Y12$Pmax9+Y12$Pmax10+Y12$Pmax11)
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
  
  pTotalTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pTotalTmp[1,] <- 0
  pTotalTmp$y6[1] <- mean(Y6$TotalPrisonPop)
  pTotalTmp$y7[1] <- mean(Y7$TotalPrisonPop)
  pTotalTmp$y8[1] <- mean(Y8$TotalPrisonPop)
  pTotalTmp$y9[1] <- mean(Y9$TotalPrisonPop)
  pTotalTmp$y10[1] <- mean(Y10$TotalPrisonPop)
  pTotalTmp$y11[1] <- mean(Y11$TotalPrisonPop)
  pTotalTmp$y12[1] <- mean(Y12$TotalPrisonPop)
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
  
  pPointTotalTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pPointTotalTmp[1,] <- 0
  pPointTotalTmp$y6[1] <- Y6$TotalPrisonPop[365]
  pPointTotalTmp$y7[1] <- Y7$TotalPrisonPop[365]
  pPointTotalTmp$y8[1] <- Y8$TotalPrisonPop[365]
  pPointTotalTmp$y9[1] <- Y9$TotalPrisonPop[365]
  pPointTotalTmp$y10[1] <- Y10$TotalPrisonPop[365]
  pPointTotalTmp$y11[1] <- Y11$TotalPrisonPop[365]
  pPointTotalTmp$y12[1] <- Y12$TotalPrisonPop[365]
  pPointTotalTmp$y13[1] <- Y13$TotalPrisonPop[365]
  pPointTotalTmp$y14[1] <- Y14$TotalPrisonPop[365]
  pPointTotalTmp$y15[1] <- Y15$TotalPrisonPop[365]
  pPointTotalTmp$y16[1] <- Y16$TotalPrisonPop[365]
  pPointTotalTmp$y17[1] <- Y17$TotalPrisonPop[365]
  pPointTotalTmp$y18[1] <- Y18$TotalPrisonPop[365]
  pPointTotalTmp$y19[1] <- Y19$TotalPrisonPop[365]
  pPointTotalTmp$y20[1] <- Y20$TotalPrisonPop[365]
  pPointTotalTmp$y21[1] <- Y21$TotalPrisonPop[365]
  pPointTotalTmp$y22[1] <- Y22$TotalPrisonPop[365]
  pPointTotalTmp$y23[1] <- Y23$TotalPrisonPop[365]
  pPointTotalTmp$y24[1] <- Y24$TotalPrisonPop[365]
  pPointTotalTmp$y25[1] <- Y25$TotalPrisonPop[365]
  pPointTotalTmp$y26[1] <- Y26$TotalPrisonPop[365]
  pPointTotalTmp$y27[1] <- Y27$TotalPrisonPop[365]
  pPointTotalTmp$y28[1] <- Y28$TotalPrisonPop[365]
  pPointTotalTmp$y29[1] <- Y29$TotalPrisonPop[365]
  pPointTotalTmp$y30[1] <- Y30$TotalPrisonPop[365]
  pPointTotalA <- rbind(pPointTotalA, pPointTotalTmp)
  
  pReTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pReTmp[1,] <- 0
  pReTmp$y6[1] <- mean(Y6$reinfected)
  pReTmp$y7[1] <- mean(Y7$reinfected)
  pReTmp$y8[1] <- mean(Y8$reinfected)
  pReTmp$y9[1] <- mean(Y9$reinfected)
  pReTmp$y10[1] <- mean(Y10$reinfected)
  pReTmp$y11[1] <- mean(Y11$reinfected)
  pReTmp$y12[1] <- mean(Y12$reinfected)
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
  
  pNcTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pNcTmp[1,] <- 0
  pNcTmp$y6[1] <- mean(Y6$NewCases)
  pNcTmp$y7[1] <- mean(Y7$NewCases)
  pNcTmp$y8[1] <- mean(Y8$NewCases)
  pNcTmp$y9[1] <- mean(Y9$NewCases)
  pNcTmp$y10[1] <- mean(Y10$NewCases)
  pNcTmp$y11[1] <- mean(Y11$NewCases)
  pNcTmp$y12[1] <- mean(Y12$NewCases)
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
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pNcTmp[1,] <- 0
  pNcTmp$y6[1] <- sum(Y6$NewCases)
  pNcTmp$y7[1] <- sum(Y7$NewCases)
  pNcTmp$y8[1] <- sum(Y8$NewCases)
  pNcTmp$y9[1] <- sum(Y9$NewCases)
  pNcTmp$y10[1] <- sum(Y10$NewCases)
  pNcTmp$y11[1] <- sum(Y11$NewCases)
  pNcTmp$y12[1] <- sum(Y12$NewCases)
  pNcTmp$y13[1] <- sum(Y13$NewCases)
  pNcTmp$y14[1] <- sum(Y14$NewCases)
  pNcTmp$y15[1] <- sum(Y15$NewCases)
  pNcTmp$y16[1] <- sum(Y16$NewCases)
  pNcTmp$y17[1] <- sum(Y17$NewCases)
  pNcTmp$y18[1] <- sum(Y18$NewCases)
  pNcTmp$y19[1] <- sum(Y19$NewCases)
  pNcTmp$y20[1] <- sum(Y20$NewCases)
  pNcTmp$y21[1] <- sum(Y21$NewCases)
  pNcTmp$y22[1] <- sum(Y22$NewCases)
  pNcTmp$y23[1] <- sum(Y23$NewCases)
  pNcTmp$y24[1] <- sum(Y24$NewCases)
  pNcTmp$y25[1] <- sum(Y25$NewCases)
  pNcTmp$y26[1] <- sum(Y26$NewCases)
  pNcTmp$y27[1] <- sum(Y27$NewCases)
  pNcTmp$y28[1] <- sum(Y28$NewCases)
  pNcTmp$y29[1] <- sum(Y29$NewCases)
  pNcTmp$y30[1] <- sum(Y30$NewCases)
  pNewCasesSumA <- rbind(pNewCasesSumA, pNcTmp)
  
  pIDUTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pIDUTmp[1,] <- 0
  pIDUTmp$y6[1] <- mean(Y6$Pmin0+Y6$Pmin1+Y6$Pmin2+Y6$Pmin3+Y6$Pmin4+Y6$Pmin5+Y6$Pmed0+Y6$Pmed1+Y6$Pmed2+Y6$Pmed3+Y6$Pmed4+Y6$Pmed5+Y6$Pmax0+Y6$Pmax1+Y6$Pmax2+Y6$Pmax3+Y6$Pmax4+Y6$Pmax5)
  pIDUTmp$y7[1] <- mean(Y7$Pmin0+Y7$Pmin1+Y7$Pmin2+Y7$Pmin3+Y7$Pmin4+Y7$Pmin5+Y7$Pmed0+Y7$Pmed1+Y7$Pmed2+Y7$Pmed3+Y7$Pmed4+Y7$Pmed5+Y7$Pmax0+Y7$Pmax1+Y7$Pmax2+Y7$Pmax3+Y7$Pmax4+Y7$Pmax5)
  pIDUTmp$y8[1] <- mean(Y8$Pmin0+Y8$Pmin1+Y8$Pmin2+Y8$Pmin3+Y8$Pmin4+Y8$Pmin5+Y8$Pmed0+Y8$Pmed1+Y8$Pmed2+Y8$Pmed3+Y8$Pmed4+Y8$Pmed5+Y8$Pmax0+Y8$Pmax1+Y8$Pmax2+Y8$Pmax3+Y8$Pmax4+Y8$Pmax5)
  pIDUTmp$y9[1] <- mean(Y9$Pmin0+Y9$Pmin1+Y9$Pmin2+Y9$Pmin3+Y9$Pmin4+Y9$Pmin5+Y9$Pmed0+Y9$Pmed1+Y9$Pmed2+Y9$Pmed3+Y9$Pmed4+Y9$Pmed5+Y9$Pmax0+Y9$Pmax1+Y9$Pmax2+Y9$Pmax3+Y9$Pmax4+Y9$Pmax5)
  pIDUTmp$y10[1] <- mean(Y10$Pmin0+Y10$Pmin1+Y10$Pmin2+Y10$Pmin3+Y10$Pmin4+Y10$Pmin5+Y10$Pmed0+Y10$Pmed1+Y10$Pmed2+Y10$Pmed3+Y10$Pmed4+Y10$Pmed5+Y10$Pmax0+Y10$Pmax1+Y10$Pmax2+Y10$Pmax3+Y10$Pmax4+Y10$Pmax5)
  pIDUTmp$y11[1] <- mean(Y11$Pmin0+Y11$Pmin1+Y11$Pmin2+Y11$Pmin3+Y11$Pmin4+Y11$Pmin5+Y11$Pmed0+Y11$Pmed1+Y11$Pmed2+Y11$Pmed3+Y11$Pmed4+Y11$Pmed5+Y11$Pmax0+Y11$Pmax1+Y11$Pmax2+Y11$Pmax3+Y11$Pmax4+Y11$Pmax5)
  pIDUTmp$y12[1] <- mean(Y12$Pmin0+Y12$Pmin1+Y12$Pmin2+Y12$Pmin3+Y12$Pmin4+Y12$Pmin5+Y12$Pmed0+Y12$Pmed1+Y12$Pmed2+Y12$Pmed3+Y12$Pmed4+Y12$Pmed5+Y12$Pmax0+Y12$Pmax1+Y12$Pmax2+Y12$Pmax3+Y12$Pmax4+Y12$Pmax5)
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
  
  pPrisonTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pPrisonTmp[1,] <- 0
  pPrisonTmp$y6[1] <- mean(Y6$PrisonHCV)
  pPrisonTmp$y7[1] <- mean(Y7$PrisonHCV)
  pPrisonTmp$y8[1] <- mean(Y8$PrisonHCV)
  pPrisonTmp$y9[1] <- mean(Y9$PrisonHCV)
  pPrisonTmp$y10[1] <- mean(Y10$PrisonHCV)
  pPrisonTmp$y11[1] <- mean(Y11$PrisonHCV)
  pPrisonTmp$y12[1] <- mean(Y12$PrisonHCV)
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
  
  pOpdTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pOpdTmp[1,] <- 0
  pOpdTmp$y6[1] <- mean(Y6$OPD)
  pOpdTmp$y7[1] <- mean(Y7$OPD)
  pOpdTmp$y8[1] <- mean(Y8$OPD)
  pOpdTmp$y9[1] <- mean(Y9$OPD)
  pOpdTmp$y10[1] <- mean(Y10$OPD)
  pOpdTmp$y11[1] <- mean(Y11$OPD)
  pOpdTmp$y12[1] <- mean(Y12$OPD)
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
  
  pEverTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pEverTmp[1,] <- 0
  pEverTmp$y6[1] <- mean(Y6$everIDU)
  pEverTmp$y7[1] <- mean(Y7$everIDU)
  pEverTmp$y8[1] <- mean(Y8$everIDU)
  pEverTmp$y9[1] <- mean(Y9$everIDU)
  pEverTmp$y10[1] <- mean(Y10$everIDU)
  pEverTmp$y11[1] <- mean(Y11$everIDU)
  pEverTmp$y12[1] <- mean(Y12$everIDU)
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
  
  pEverSumTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pEverSumTmp[1,] <- 0
  pEverSumTmp$y6[1] <- sum(Y6$everIDU)
  pEverSumTmp$y7[1] <- sum(Y7$everIDU)
  pEverSumTmp$y8[1] <- sum(Y8$everIDU)
  pEverSumTmp$y9[1] <- sum(Y9$everIDU)
  pEverSumTmp$y10[1] <- sum(Y10$everIDU)
  pEverSumTmp$y11[1] <- sum(Y11$everIDU)
  pEverSumTmp$y12[1] <- sum(Y12$everIDU)
  pEverSumTmp$y13[1] <- sum(Y13$everIDU)
  pEverSumTmp$y14[1] <- sum(Y14$everIDU)
  pEverSumTmp$y15[1] <- sum(Y15$everIDU)
  pEverSumTmp$y16[1] <- sum(Y16$everIDU)
  pEverSumTmp$y17[1] <- sum(Y17$everIDU)
  pEverSumTmp$y18[1] <- sum(Y18$everIDU)
  pEverSumTmp$y19[1] <- sum(Y19$everIDU)
  pEverSumTmp$y20[1] <- sum(Y20$everIDU)
  pEverSumTmp$y21[1] <- sum(Y21$everIDU)
  pEverSumTmp$y22[1] <- sum(Y22$everIDU)
  pEverSumTmp$y23[1] <- sum(Y23$everIDU)
  pEverSumTmp$y24[1] <- sum(Y24$everIDU)
  pEverSumTmp$y25[1] <- sum(Y25$everIDU)
  pEverSumTmp$y26[1] <- sum(Y26$everIDU)
  pEverSumTmp$y27[1] <- sum(Y27$everIDU)
  pEverSumTmp$y28[1] <- sum(Y28$everIDU)
  pEverSumTmp$y29[1] <- sum(Y29$everIDU)
  pEverSumTmp$y30[1] <- sum(Y30$everIDU)
  pEverIDUSumA <- rbind(pEverIDUSumA, pEverSumTmp)
  
  pClrTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pClrTmp[1,] <- 0
  pClrTmp$y6[1] <- mean(Y6$totalClrDAA)
  pClrTmp$y7[1] <- mean(Y7$totalClrDAA)
  pClrTmp$y8[1] <- mean(Y8$totalClrDAA)
  pClrTmp$y9[1] <- mean(Y9$totalClrDAA)
  pClrTmp$y10[1] <- mean(Y10$totalClrDAA)
  pClrTmp$y11[1] <- mean(Y11$totalClrDAA)
  pClrTmp$y12[1] <- mean(Y12$totalClrDAA)
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
  
  ptDAATmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptDAATmp[1,] <- 0
  ptDAATmp$y6[1] <- mean(Y6$totalDAA)
  ptDAATmp$y7[1] <- mean(Y7$totalDAA)
  ptDAATmp$y8[1] <- mean(Y8$totalDAA)
  ptDAATmp$y9[1] <- mean(Y9$totalDAA)
  ptDAATmp$y10[1] <- mean(Y10$totalDAA)
  ptDAATmp$y11[1] <- mean(Y11$totalDAA)
  ptDAATmp$y12[1] <- mean(Y12$totalDAA)
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
  
  ptOSTTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptOSTTmp[1,] <- 0
  ptOSTTmp$y6[1] <- mean(Y6$totalOST)
  ptOSTTmp$y7[1] <- mean(Y7$totalOST)
  ptOSTTmp$y8[1] <- mean(Y8$totalOST)
  ptOSTTmp$y9[1] <- mean(Y9$totalOST)
  ptOSTTmp$y10[1] <- mean(Y10$totalOST)
  ptOSTTmp$y11[1] <- mean(Y11$totalOST)
  ptOSTTmp$y12[1] <- mean(Y12$totalOST)
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
  
#  ptHCVeTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
#  ptHCVeTmp[1,] <- 0
#  ptHCVeTmp$y6[1] <- mean(Y6$HCVe)
#  ptHCVeTmp$y7[1] <- mean(Y7$HCVe)
#  ptHCVeTmp$y8[1] <- mean(Y8$HCVe)
#  ptHCVeTmp$y9[1] <- mean(Y9$HCVe)
#  ptHCVeTmp$y10[1] <- mean(Y10$HCVe)
#  ptHCVeTmp$y11[1] <- mean(Y11$HCVe)
#  ptHCVeTmp$y12[1] <- mean(Y12$HCVe)
#  ptHCVeTmp$y13[1] <- mean(Y13$HCVe)
#  ptHCVeTmp$y14[1] <- mean(Y14$HCVe)
#  ptHCVeTmp$y15[1] <- mean(Y15$HCVe)
#  ptHCVeTmp$y16[1] <- mean(Y16$HCVe)
#  ptHCVeTmp$y17[1] <- mean(Y17$HCVe)
#  ptHCVeTmp$y18[1] <- mean(Y18$HCVe)
#  ptHCVeTmp$y19[1] <- mean(Y19$HCVe)
#  ptHCVeTmp$y20[1] <- mean(Y20$HCVe)
#  ptHCVeTmp$y21[1] <- mean(Y21$HCVe)
#  ptHCVeTmp$y22[1] <- mean(Y22$HCVe)
#  ptHCVeTmp$y23[1] <- mean(Y23$HCVe)
#  ptHCVeTmp$y24[1] <- mean(Y24$HCVe)
#  ptHCVeTmp$y25[1] <- mean(Y25$HCVe)
#  ptHCVeTmp$y26[1] <- mean(Y26$HCVe)
#  ptHCVeTmp$y27[1] <- mean(Y27$HCVe)
#  ptHCVeTmp$y28[1] <- mean(Y28$HCVe)
#  ptHCVeTmp$y29[1] <- mean(Y29$HCVe)
#  ptHCVeTmp$y30[1] <- mean(Y30$HCVe)
#  pTotalHCVeA <- rbind(pTotalHCVeA, ptHCVeTmp)
  
  ptHCVTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptHCVTmp[1,] <- 0
  ptHCVTmp$y6[1] <- mean(Y6$Pmin0+Y6$Pmin1+Y6$Pmin6+Y6$Pmin7+Y6$Pmed0+Y6$Pmed1+Y6$Pmed6+Y6$Pmed7+Y6$Pmax0+Y6$Pmax1+Y6$Pmax6+Y6$Pmax7)
  ptHCVTmp$y7[1] <- mean(Y7$Pmin0+Y7$Pmin1+Y7$Pmin6+Y7$Pmin7+Y7$Pmed0+Y7$Pmed1+Y7$Pmed6+Y7$Pmed7+Y7$Pmax0+Y7$Pmax1+Y7$Pmax6+Y7$Pmax7)
  ptHCVTmp$y8[1] <- mean(Y8$Pmin0+Y8$Pmin1+Y8$Pmin6+Y8$Pmin7+Y8$Pmed0+Y8$Pmed1+Y8$Pmed6+Y8$Pmed7+Y8$Pmax0+Y8$Pmax1+Y8$Pmax6+Y8$Pmax7)
  ptHCVTmp$y9[1] <- mean(Y9$Pmin0+Y9$Pmin1+Y9$Pmin6+Y9$Pmin7+Y9$Pmed0+Y9$Pmed1+Y9$Pmed6+Y9$Pmed7+Y9$Pmax0+Y9$Pmax1+Y9$Pmax6+Y9$Pmax7)
  ptHCVTmp$y10[1] <- mean(Y10$Pmin0+Y10$Pmin1+Y10$Pmin6+Y10$Pmin7+Y10$Pmed0+Y10$Pmed1+Y10$Pmed6+Y10$Pmed7+Y10$Pmax0+Y10$Pmax1+Y10$Pmax6+Y10$Pmax7)
  ptHCVTmp$y11[1] <- mean(Y11$Pmin0+Y11$Pmin1+Y11$Pmin6+Y11$Pmin7+Y11$Pmed0+Y11$Pmed1+Y11$Pmed6+Y11$Pmed7+Y11$Pmax0+Y11$Pmax1+Y11$Pmax6+Y11$Pmax7)
  ptHCVTmp$y12[1] <- mean(Y12$Pmin0+Y12$Pmin1+Y12$Pmin6+Y12$Pmin7+Y12$Pmed0+Y12$Pmed1+Y12$Pmed6+Y12$Pmed7+Y12$Pmax0+Y12$Pmax1+Y12$Pmax6+Y12$Pmax7)
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
  pTotalHCVRNAA <- rbind(pTotalHCVRNAA, ptHCVTmp)
  
  ptHCVabTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptHCVabTmp[1,] <- 0
  ptHCVabTmp$y6[1] <- mean(Y6$Pmin0+Y6$Pmin1+Y6$Pmin2+Y6$Pmin4+Y6$Pmin6+Y6$Pmin7+Y6$Pmin8+Y6$Pmin10+Y6$Pmed0+Y6$Pmed1+Y6$Pmed2+Y6$Pmed4+Y6$Pmed6+Y6$Pmed7+Y6$Pmed8+Y6$Pmed10+Y6$Pmax0+Y6$Pmax1+Y6$Pmax2+Y6$Pmax4+Y6$Pmax6+Y6$Pmax7+Y6$Pmax8+Y6$Pmax10)
  ptHCVabTmp$y7[1] <- mean(Y7$Pmin0+Y7$Pmin1+Y7$Pmin2+Y7$Pmin4+Y7$Pmin6+Y7$Pmin7+Y7$Pmin8+Y7$Pmin10+Y7$Pmed0+Y7$Pmed1+Y7$Pmed2+Y7$Pmed4+Y7$Pmed6+Y7$Pmed7+Y7$Pmed8+Y7$Pmed10+Y7$Pmax0+Y7$Pmax1+Y7$Pmax2+Y7$Pmax4+Y7$Pmax6+Y7$Pmax7+Y7$Pmax8+Y7$Pmax10)
  ptHCVabTmp$y8[1] <- mean(Y8$Pmin0+Y8$Pmin1+Y8$Pmin2+Y8$Pmin4+Y8$Pmin6+Y8$Pmin7+Y8$Pmin8+Y8$Pmin10+Y8$Pmed0+Y8$Pmed1+Y8$Pmed2+Y8$Pmed4+Y8$Pmed6+Y8$Pmed7+Y8$Pmed8+Y8$Pmed10+Y8$Pmax0+Y8$Pmax1+Y8$Pmax2+Y8$Pmax4+Y8$Pmax6+Y8$Pmax7+Y8$Pmax8+Y8$Pmax10)
  ptHCVabTmp$y9[1] <- mean(Y9$Pmin0+Y9$Pmin1+Y9$Pmin2+Y9$Pmin4+Y9$Pmin6+Y9$Pmin7+Y9$Pmin8+Y9$Pmin10+Y9$Pmed0+Y9$Pmed1+Y9$Pmed2+Y9$Pmed4+Y9$Pmed6+Y9$Pmed7+Y9$Pmed8+Y9$Pmed10+Y9$Pmax0+Y9$Pmax1+Y9$Pmax2+Y9$Pmax4+Y9$Pmax6+Y9$Pmax7+Y9$Pmax8+Y9$Pmax10)
  ptHCVabTmp$y10[1] <- mean(Y10$Pmin0+Y10$Pmin1+Y10$Pmin2+Y10$Pmin4+Y10$Pmin6+Y10$Pmin7+Y10$Pmin8+Y10$Pmin10+Y10$Pmed0+Y10$Pmed1+Y10$Pmed2+Y10$Pmed4+Y10$Pmed6+Y10$Pmed7+Y10$Pmed8+Y10$Pmed10+Y10$Pmax0+Y10$Pmax1+Y10$Pmax2+Y10$Pmax4+Y10$Pmax6+Y10$Pmax7+Y10$Pmax8+Y10$Pmax10)
  ptHCVabTmp$y11[1] <- mean(Y11$Pmin0+Y11$Pmin1+Y11$Pmin2+Y11$Pmin4+Y11$Pmin6+Y11$Pmin7+Y11$Pmin8+Y11$Pmin10+Y11$Pmed0+Y11$Pmed1+Y11$Pmed2+Y11$Pmed4+Y11$Pmed6+Y11$Pmed7+Y11$Pmed8+Y11$Pmed10+Y11$Pmax0+Y11$Pmax1+Y11$Pmax2+Y11$Pmax4+Y11$Pmax6+Y11$Pmax7+Y11$Pmax8+Y11$Pmax10)
  ptHCVabTmp$y12[1] <- mean(Y12$Pmin0+Y12$Pmin1+Y12$Pmin2+Y12$Pmin4+Y12$Pmin6+Y12$Pmin7+Y12$Pmin8+Y12$Pmin10+Y12$Pmed0+Y12$Pmed1+Y12$Pmed2+Y12$Pmed4+Y12$Pmed6+Y12$Pmed7+Y12$Pmed8+Y12$Pmed10+Y12$Pmax0+Y12$Pmax1+Y12$Pmax2+Y12$Pmax4+Y12$Pmax6+Y12$Pmax7+Y12$Pmax8+Y12$Pmax10)
  ptHCVabTmp$y13[1] <- mean(Y13$Pmin0+Y13$Pmin1+Y13$Pmin2+Y13$Pmin4+Y13$Pmin6+Y13$Pmin7+Y13$Pmin8+Y13$Pmin10+Y13$Pmed0+Y13$Pmed1+Y13$Pmed2+Y13$Pmed4+Y13$Pmed6+Y13$Pmed7+Y13$Pmed8+Y13$Pmed10+Y13$Pmax0+Y13$Pmax1+Y13$Pmax2+Y13$Pmax4+Y13$Pmax6+Y13$Pmax7+Y13$Pmax8+Y13$Pmax10)
  ptHCVabTmp$y14[1] <- mean(Y14$Pmin0+Y14$Pmin1+Y14$Pmin2+Y14$Pmin4+Y14$Pmin6+Y14$Pmin7+Y14$Pmin8+Y14$Pmin10+Y14$Pmed0+Y14$Pmed1+Y14$Pmed2+Y14$Pmed4+Y14$Pmed6+Y14$Pmed7+Y14$Pmed8+Y14$Pmed10+Y14$Pmax0+Y14$Pmax1+Y14$Pmax2+Y14$Pmax4+Y14$Pmax6+Y14$Pmax7+Y14$Pmax8+Y14$Pmax10)
  ptHCVabTmp$y15[1] <- mean(Y15$Pmin0+Y15$Pmin1+Y15$Pmin2+Y15$Pmin4+Y15$Pmin6+Y15$Pmin7+Y15$Pmin8+Y15$Pmin10+Y15$Pmed0+Y15$Pmed1+Y15$Pmed2+Y15$Pmed4+Y15$Pmed6+Y15$Pmed7+Y15$Pmed8+Y15$Pmed10+Y15$Pmax0+Y15$Pmax1+Y15$Pmax2+Y15$Pmax4+Y15$Pmax6+Y15$Pmax7+Y15$Pmax8+Y15$Pmax10)
  ptHCVabTmp$y16[1] <- mean(Y16$Pmin0+Y16$Pmin1+Y16$Pmin2+Y16$Pmin4+Y16$Pmin6+Y16$Pmin7+Y16$Pmin8+Y16$Pmin10+Y16$Pmed0+Y16$Pmed1+Y16$Pmed2+Y16$Pmed4+Y16$Pmed6+Y16$Pmed7+Y16$Pmed8+Y16$Pmed10+Y16$Pmax0+Y16$Pmax1+Y16$Pmax2+Y16$Pmax4+Y16$Pmax6+Y16$Pmax7+Y16$Pmax8+Y16$Pmax10)
  ptHCVabTmp$y17[1] <- mean(Y17$Pmin0+Y17$Pmin1+Y17$Pmin2+Y17$Pmin4+Y17$Pmin6+Y17$Pmin7+Y17$Pmin8+Y17$Pmin10+Y17$Pmed0+Y17$Pmed1+Y17$Pmed2+Y17$Pmed4+Y17$Pmed6+Y17$Pmed7+Y17$Pmed8+Y17$Pmed10+Y17$Pmax0+Y17$Pmax1+Y17$Pmax2+Y17$Pmax4+Y17$Pmax6+Y17$Pmax7+Y17$Pmax8+Y17$Pmax10)
  ptHCVabTmp$y18[1] <- mean(Y18$Pmin0+Y18$Pmin1+Y18$Pmin2+Y18$Pmin4+Y18$Pmin6+Y18$Pmin7+Y18$Pmin8+Y18$Pmin10+Y18$Pmed0+Y18$Pmed1+Y18$Pmed2+Y18$Pmed4+Y18$Pmed6+Y18$Pmed7+Y18$Pmed8+Y18$Pmed10+Y18$Pmax0+Y18$Pmax1+Y18$Pmax2+Y18$Pmax4+Y18$Pmax6+Y18$Pmax7+Y18$Pmax8+Y18$Pmax10)
  ptHCVabTmp$y19[1] <- mean(Y19$Pmin0+Y19$Pmin1+Y19$Pmin2+Y19$Pmin4+Y19$Pmin6+Y19$Pmin7+Y19$Pmin8+Y19$Pmin10+Y19$Pmed0+Y19$Pmed1+Y19$Pmed2+Y19$Pmed4+Y19$Pmed6+Y19$Pmed7+Y19$Pmed8+Y19$Pmed10+Y19$Pmax0+Y19$Pmax1+Y19$Pmax2+Y19$Pmax4+Y19$Pmax6+Y19$Pmax7+Y19$Pmax8+Y19$Pmax10)
  ptHCVabTmp$y20[1] <- mean(Y20$Pmin0+Y20$Pmin1+Y20$Pmin2+Y20$Pmin4+Y20$Pmin6+Y20$Pmin7+Y20$Pmin8+Y20$Pmin10+Y20$Pmed0+Y20$Pmed1+Y20$Pmed2+Y20$Pmed4+Y20$Pmed6+Y20$Pmed7+Y20$Pmed8+Y20$Pmed10+Y20$Pmax0+Y20$Pmax1+Y20$Pmax2+Y20$Pmax4+Y20$Pmax6+Y20$Pmax7+Y20$Pmax8+Y20$Pmax10)
  ptHCVabTmp$y21[1] <- mean(Y21$Pmin0+Y21$Pmin1+Y21$Pmin2+Y21$Pmin4+Y21$Pmin6+Y21$Pmin7+Y21$Pmin8+Y21$Pmin10+Y21$Pmed0+Y21$Pmed1+Y21$Pmed2+Y21$Pmed4+Y21$Pmed6+Y21$Pmed7+Y21$Pmed8+Y21$Pmed10+Y21$Pmax0+Y21$Pmax1+Y21$Pmax2+Y21$Pmax4+Y21$Pmax6+Y21$Pmax7+Y21$Pmax8+Y21$Pmax10)
  ptHCVabTmp$y22[1] <- mean(Y22$Pmin0+Y22$Pmin1+Y22$Pmin2+Y22$Pmin4+Y22$Pmin6+Y22$Pmin7+Y22$Pmin8+Y22$Pmin10+Y22$Pmed0+Y22$Pmed1+Y22$Pmed2+Y22$Pmed4+Y22$Pmed6+Y22$Pmed7+Y22$Pmed8+Y22$Pmed10+Y22$Pmax0+Y22$Pmax1+Y22$Pmax2+Y22$Pmax4+Y22$Pmax6+Y22$Pmax7+Y22$Pmax8+Y22$Pmax10)
  ptHCVabTmp$y23[1] <- mean(Y23$Pmin0+Y23$Pmin1+Y23$Pmin2+Y23$Pmin4+Y23$Pmin6+Y23$Pmin7+Y23$Pmin8+Y23$Pmin10+Y23$Pmed0+Y23$Pmed1+Y23$Pmed2+Y23$Pmed4+Y23$Pmed6+Y23$Pmed7+Y23$Pmed8+Y23$Pmed10+Y23$Pmax0+Y23$Pmax1+Y23$Pmax2+Y23$Pmax4+Y23$Pmax6+Y23$Pmax7+Y23$Pmax8+Y23$Pmax10)
  ptHCVabTmp$y24[1] <- mean(Y24$Pmin0+Y24$Pmin1+Y24$Pmin2+Y24$Pmin4+Y24$Pmin6+Y24$Pmin7+Y24$Pmin8+Y24$Pmin10+Y24$Pmed0+Y24$Pmed1+Y24$Pmed2+Y24$Pmed4+Y24$Pmed6+Y24$Pmed7+Y24$Pmed8+Y24$Pmed10+Y24$Pmax0+Y24$Pmax1+Y24$Pmax2+Y24$Pmax4+Y24$Pmax6+Y24$Pmax7+Y24$Pmax8+Y24$Pmax10)
  ptHCVabTmp$y25[1] <- mean(Y25$Pmin0+Y25$Pmin1+Y25$Pmin2+Y25$Pmin4+Y25$Pmin6+Y25$Pmin7+Y25$Pmin8+Y25$Pmin10+Y25$Pmed0+Y25$Pmed1+Y25$Pmed2+Y25$Pmed4+Y25$Pmed6+Y25$Pmed7+Y25$Pmed8+Y25$Pmed10+Y25$Pmax0+Y25$Pmax1+Y25$Pmax2+Y25$Pmax4+Y25$Pmax6+Y25$Pmax7+Y25$Pmax8+Y25$Pmax10)
  ptHCVabTmp$y26[1] <- mean(Y26$Pmin0+Y26$Pmin1+Y26$Pmin2+Y26$Pmin4+Y26$Pmin6+Y26$Pmin7+Y26$Pmin8+Y26$Pmin10+Y26$Pmed0+Y26$Pmed1+Y26$Pmed2+Y26$Pmed4+Y26$Pmed6+Y26$Pmed7+Y26$Pmed8+Y26$Pmed10+Y26$Pmax0+Y26$Pmax1+Y26$Pmax2+Y26$Pmax4+Y26$Pmax6+Y26$Pmax7+Y26$Pmax8+Y26$Pmax10)
  ptHCVabTmp$y27[1] <- mean(Y27$Pmin0+Y27$Pmin1+Y27$Pmin2+Y27$Pmin4+Y27$Pmin6+Y27$Pmin7+Y27$Pmin8+Y27$Pmin10+Y27$Pmed0+Y27$Pmed1+Y27$Pmed2+Y27$Pmed4+Y27$Pmed6+Y27$Pmed7+Y27$Pmed8+Y27$Pmed10+Y27$Pmax0+Y27$Pmax1+Y27$Pmax2+Y27$Pmax4+Y27$Pmax6+Y27$Pmax7+Y27$Pmax8+Y27$Pmax10)
  ptHCVabTmp$y28[1] <- mean(Y28$Pmin0+Y28$Pmin1+Y28$Pmin2+Y28$Pmin4+Y28$Pmin6+Y28$Pmin7+Y28$Pmin8+Y28$Pmin10+Y28$Pmed0+Y28$Pmed1+Y28$Pmed2+Y28$Pmed4+Y28$Pmed6+Y28$Pmed7+Y28$Pmed8+Y28$Pmed10+Y28$Pmax0+Y28$Pmax1+Y28$Pmax2+Y28$Pmax4+Y28$Pmax6+Y28$Pmax7+Y28$Pmax8+Y28$Pmax10)
  ptHCVabTmp$y29[1] <- mean(Y29$Pmin0+Y29$Pmin1+Y29$Pmin2+Y29$Pmin4+Y29$Pmin6+Y29$Pmin7+Y29$Pmin8+Y29$Pmin10+Y29$Pmed0+Y29$Pmed1+Y29$Pmed2+Y29$Pmed4+Y29$Pmed6+Y29$Pmed7+Y29$Pmed8+Y29$Pmed10+Y29$Pmax0+Y29$Pmax1+Y29$Pmax2+Y29$Pmax4+Y29$Pmax6+Y29$Pmax7+Y29$Pmax8+Y29$Pmax10)
  ptHCVabTmp$y30[1] <- mean(Y30$Pmin0+Y30$Pmin1+Y30$Pmin2+Y30$Pmin4+Y30$Pmin6+Y30$Pmin7+Y30$Pmin8+Y30$Pmin10+Y30$Pmed0+Y30$Pmed1+Y30$Pmed2+Y30$Pmed4+Y30$Pmed6+Y30$Pmed7+Y30$Pmed8+Y30$Pmed10+Y30$Pmax0+Y30$Pmax1+Y30$Pmax2+Y30$Pmax4+Y30$Pmax6+Y30$Pmax7+Y30$Pmax8+Y30$Pmax10)
  pTotalHCVabA <- rbind(pTotalHCVabA, ptHCVabTmp)
  
  pPointHCVabTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pPointHCVabTmp[1,] <- 0
  pPointHCVabTmp$y6[1] <- Y6$HCVab[365]
  pPointHCVabTmp$y7[1] <- Y7$HCVab[365]
  pPointHCVabTmp$y8[1] <- Y8$HCVab[365]
  pPointHCVabTmp$y9[1] <- Y9$HCVab[365]
  pPointHCVabTmp$y10[1] <- Y10$HCVab[365]
  pPointHCVabTmp$y11[1] <- Y11$HCVab[365]
  pPointHCVabTmp$y12[1] <- Y12$HCVab[365]
  pPointHCVabTmp$y13[1] <- Y13$HCVab[365]
  pPointHCVabTmp$y14[1] <- Y14$HCVab[365]
  pPointHCVabTmp$y15[1] <- Y15$HCVab[365]
  pPointHCVabTmp$y16[1] <- Y16$HCVab[365]
  pPointHCVabTmp$y17[1] <- Y17$HCVab[365]
  pPointHCVabTmp$y18[1] <- Y18$HCVab[365]
  pPointHCVabTmp$y19[1] <- Y19$HCVab[365]
  pPointHCVabTmp$y20[1] <- Y20$HCVab[365]
  pPointHCVabTmp$y21[1] <- Y21$HCVab[365]
  pPointHCVabTmp$y22[1] <- Y22$HCVab[365]
  pPointHCVabTmp$y23[1] <- Y23$HCVab[365]
  pPointHCVabTmp$y24[1] <- Y24$HCVab[365]
  pPointHCVabTmp$y25[1] <- Y25$HCVab[365]
  pPointHCVabTmp$y26[1] <- Y26$HCVab[365]
  pPointHCVabTmp$y27[1] <- Y27$HCVab[365]
  pPointHCVabTmp$y28[1] <- Y28$HCVab[365]
  pPointHCVabTmp$y29[1] <- Y29$HCVab[365]
  pPointHCVabTmp$y30[1] <- Y30$HCVab[365]
  pPointHCVabA <- rbind(pPointHCVabA, pPointHCVabTmp)
}

for (var in 1:10)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/Testing/results/outDint_", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "HCVe", "NewEntry", "HCVab", "AveStay")
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCVAb", "ReleasedHCVRNA", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "OpdNotOST", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "OSTremaining", "HCVeRNA", "HCVeAb", "NewEntry", "HCVab", "HCVRNA", "AveStay")
  
  Y6 <- tempFile[1:365,]
  Y7 <- tempFile[366:730,]
  Y8 <- tempFile[731:1095,]
  Y9 <- tempFile[1096:1460,]
  Y10 <- tempFile[1461:1825,]
  Y11 <- tempFile[1826:2190,]
  Y12 <- tempFile[2191:2555,]
  Y13 <- tempFile[2556:2920,]
  Y14 <- tempFile[2921:3285,]
  Y15 <- tempFile[3286:3650,]
  Y16 <- tempFile[3651:4015,]
  Y17 <- tempFile[4016:4380,]
  Y18 <- tempFile[4381:4745,]
  Y19 <- tempFile[4746:5110,]
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
  pMinTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pMinTmp[1,] <- 0
  pMinTmp$y6[1] <- mean(Y6$Pmin0+Y6$Pmin1+Y6$Pmin2+Y6$Pmin3+Y6$Pmin4+Y6$Pmin5+Y6$Pmin6+Y6$Pmin7+Y6$Pmin8+Y6$Pmin9+Y6$Pmin10+Y6$Pmin11)
  pMinTmp$y7[1] <- mean(Y7$Pmin0+Y7$Pmin1+Y7$Pmin2+Y7$Pmin3+Y7$Pmin4+Y7$Pmin5+Y7$Pmin6+Y7$Pmin7+Y7$Pmin8+Y7$Pmin9+Y7$Pmin10+Y7$Pmin11)
  pMinTmp$y8[1] <- mean(Y8$Pmin0+Y8$Pmin1+Y8$Pmin2+Y8$Pmin3+Y8$Pmin4+Y8$Pmin5+Y8$Pmin6+Y8$Pmin7+Y8$Pmin8+Y8$Pmin9+Y8$Pmin10+Y8$Pmin11)
  pMinTmp$y9[1] <- mean(Y9$Pmin0+Y9$Pmin1+Y9$Pmin2+Y9$Pmin3+Y9$Pmin4+Y9$Pmin5+Y9$Pmin6+Y9$Pmin7+Y9$Pmin8+Y9$Pmin9+Y9$Pmin10+Y9$Pmin11)
  pMinTmp$y10[1] <- mean(Y10$Pmin0+Y10$Pmin1+Y10$Pmin2+Y10$Pmin3+Y10$Pmin4+Y10$Pmin5+Y10$Pmin6+Y10$Pmin7+Y10$Pmin8+Y10$Pmin9+Y10$Pmin10+Y10$Pmin11)
  pMinTmp$y11[1] <- mean(Y11$Pmin0+Y11$Pmin1+Y11$Pmin2+Y11$Pmin3+Y11$Pmin4+Y11$Pmin5+Y11$Pmin6+Y11$Pmin7+Y11$Pmin8+Y11$Pmin9+Y11$Pmin10+Y11$Pmin11)
  pMinTmp$y12[1] <- mean(Y12$Pmin0+Y12$Pmin1+Y12$Pmin2+Y12$Pmin3+Y12$Pmin4+Y12$Pmin5+Y12$Pmin6+Y12$Pmin7+Y12$Pmin8+Y12$Pmin9+Y12$Pmin10+Y12$Pmin11)
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
  
  pMedTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pMedTmp[1,] <- 0
  pMedTmp$y6[1] <- mean(Y6$Pmed0+Y6$Pmed1+Y6$Pmed2+Y6$Pmed3+Y6$Pmed4+Y6$Pmed5+Y6$Pmed6+Y6$Pmed7+Y6$Pmed8+Y6$Pmed9+Y6$Pmed10+Y6$Pmed11)
  pMedTmp$y7[1] <- mean(Y7$Pmed0+Y7$Pmed1+Y7$Pmed2+Y7$Pmed3+Y7$Pmed4+Y7$Pmed5+Y7$Pmed6+Y7$Pmed7+Y7$Pmed8+Y7$Pmed9+Y7$Pmed10+Y7$Pmed11)
  pMedTmp$y8[1] <- mean(Y8$Pmed0+Y8$Pmed1+Y8$Pmed2+Y8$Pmed3+Y8$Pmed4+Y8$Pmed5+Y8$Pmed6+Y8$Pmed7+Y8$Pmed8+Y8$Pmed9+Y8$Pmed10+Y8$Pmed11)
  pMedTmp$y9[1] <- mean(Y9$Pmed0+Y9$Pmed1+Y9$Pmed2+Y9$Pmed3+Y9$Pmed4+Y9$Pmed5+Y9$Pmed6+Y9$Pmed7+Y9$Pmed8+Y9$Pmed9+Y9$Pmed10+Y9$Pmed11)
  pMedTmp$y10[1] <- mean(Y10$Pmed0+Y10$Pmed1+Y10$Pmed2+Y10$Pmed3+Y10$Pmed4+Y10$Pmed5+Y10$Pmed6+Y10$Pmed7+Y10$Pmed8+Y10$Pmed9+Y10$Pmed10+Y10$Pmed11)
  pMedTmp$y11[1] <- mean(Y11$Pmed0+Y11$Pmed1+Y11$Pmed2+Y11$Pmed3+Y11$Pmed4+Y11$Pmed5+Y11$Pmed6+Y11$Pmed7+Y11$Pmed8+Y11$Pmed9+Y11$Pmed10+Y11$Pmed11)
  pMedTmp$y12[1] <- mean(Y12$Pmed0+Y12$Pmed1+Y12$Pmed2+Y12$Pmed3+Y12$Pmed4+Y12$Pmed5+Y12$Pmed6+Y12$Pmed7+Y12$Pmed8+Y12$Pmed9+Y12$Pmed10+Y12$Pmed11)
  pMedTmp$y13[1] <- mean(Y13$Pmed0+Y13$Pmed1+Y13$Pmed2+Y13$Pmed3+Y13$Pmed4+Y13$Pmed5+Y13$Pmed6+Y13$Pmed7+Y13$Pmed8+Y13$Pmed9+Y13$Pmed10+Y13$Pmed11)
  pMedTmp$y14[1] <- mean(Y14$Pmed0+Y14$Pmed1+Y14$Pmed2+Y14$Pmed3+Y14$Pmed4+Y14$Pmed5+Y14$Pmed6+Y14$Pmed7+Y14$Pmed8+Y14$Pmed9+Y14$Pmed10+Y14$Pmed11)
  pMedTmp$y15[1] <- mean(Y15$Pmed0+Y15$Pmed1+Y15$Pmed2+Y15$Pmed3+Y15$Pmed4+Y15$Pmed5+Y15$Pmed6+Y15$Pmed7+Y15$Pmed8+Y15$Pmed9+Y15$Pmed10+Y15$Pmed11)
  pMedTmp$y16[1] <- mean(Y16$Pmed0+Y16$Pmed1+Y16$Pmed2+Y16$Pmed3+Y16$Pmed4+Y16$Pmed5+Y16$Pmed6+Y16$Pmed7+Y16$Pmed8+Y16$Pmed9+Y16$Pmed10+Y16$Pmed11)
  pMedTmp$y17[1] <- mean(Y17$Pmed0+Y17$Pmed1+Y17$Pmed2+Y17$Pmed3+Y17$Pmed4+Y17$Pmed5+Y17$Pmed6+Y17$Pmed7+Y17$Pmed8+Y17$Pmed9+Y17$Pmed10+Y17$Pmed11)
  pMedTmp$y18[1] <- mean(Y18$Pmed0+Y18$Pmed1+Y18$Pmed2+Y18$Pmed3+Y18$Pmed4+Y18$Pmed5+Y18$Pmed6+Y18$Pmed7+Y18$Pmed8+Y18$Pmed9+Y18$Pmed10+Y18$Pmed11)
  pMedTmp$y19[1] <- mean(Y19$Pmed0+Y19$Pmed1+Y19$Pmed2+Y19$Pmed3+Y19$Pmed4+Y19$Pmed5+Y19$Pmed6+Y19$Pmed7+Y19$Pmed8+Y19$Pmed9+Y19$Pmed10+Y19$Pmed11)
  pMedTmp$y20[1] <- mean(Y20$Pmed0+Y20$Pmed1+Y20$Pmed2+Y20$Pmed3+Y20$Pmed4+Y20$Pmed5+Y20$Pmed6+Y20$Pmed7+Y20$Pmed8+Y20$Pmed9+Y20$Pmed10+Y20$Pmed11)
  pMedTmp$y21[1] <- mean(Y21$Pmed0+Y21$Pmed1+Y21$Pmed2+Y21$Pmed3+Y21$Pmed4+Y21$Pmed5+Y21$Pmed6+Y21$Pmed7+Y21$Pmed8+Y21$Pmed9+Y21$Pmed10+Y21$Pmed11)
  pMedTmp$y22[1] <- mean(Y22$Pmed0+Y22$Pmed1+Y22$Pmed2+Y22$Pmed3+Y22$Pmed4+Y22$Pmed5+Y22$Pmed6+Y22$Pmed7+Y22$Pmed8+Y22$Pmed9+Y22$Pmed10+Y22$Pmed11)
  pMedTmp$y23[1] <- mean(Y23$Pmed0+Y23$Pmed1+Y23$Pmed2+Y23$Pmed3+Y23$Pmed4+Y23$Pmed5+Y23$Pmed6+Y23$Pmed7+Y23$Pmed8+Y23$Pmed9+Y23$Pmed10+Y23$Pmed11)
  pMedTmp$y24[1] <- mean(Y24$Pmed0+Y24$Pmed1+Y24$Pmed2+Y24$Pmed3+Y24$Pmed4+Y24$Pmed5+Y24$Pmed6+Y24$Pmed7+Y24$Pmed8+Y24$Pmed9+Y24$Pmed10+Y24$Pmed11)
  pMedTmp$y25[1] <- mean(Y25$Pmed0+Y25$Pmed1+Y25$Pmed2+Y25$Pmed3+Y25$Pmed4+Y25$Pmed5+Y25$Pmed6+Y25$Pmed7+Y25$Pmed8+Y25$Pmed9+Y25$Pmed10+Y25$Pmed11)
  pMedTmp$y26[1] <- mean(Y26$Pmed0+Y26$Pmed1+Y26$Pmed2+Y26$Pmed3+Y26$Pmed4+Y26$Pmed5+Y26$Pmed6+Y26$Pmed7+Y26$Pmed8+Y26$Pmed9+Y26$Pmed10+Y26$Pmed11)
  pMedTmp$y27[1] <- mean(Y27$Pmed0+Y27$Pmed1+Y27$Pmed2+Y27$Pmed3+Y27$Pmed4+Y27$Pmed5+Y27$Pmed6+Y27$Pmed7+Y27$Pmed8+Y27$Pmed9+Y27$Pmed10+Y27$Pmed11)
  pMedTmp$y28[1] <- mean(Y28$Pmed0+Y28$Pmed1+Y28$Pmed2+Y28$Pmed3+Y28$Pmed4+Y28$Pmed5+Y28$Pmed6+Y28$Pmed7+Y28$Pmed8+Y28$Pmed9+Y28$Pmed10+Y28$Pmed11)
  pMedTmp$y29[1] <- mean(Y29$Pmed0+Y29$Pmed1+Y29$Pmed2+Y29$Pmed3+Y29$Pmed4+Y29$Pmed5+Y29$Pmed6+Y29$Pmed7+Y29$Pmed8+Y29$Pmed9+Y29$Pmed10+Y29$Pmed11)
  pMedTmp$y30[1] <- mean(Y30$Pmed0+Y30$Pmed1+Y30$Pmed2+Y30$Pmed3+Y30$Pmed4+Y30$Pmed5+Y30$Pmed6+Y30$Pmed7+Y30$Pmed8+Y30$Pmed9+Y30$Pmed10+Y30$Pmed11)
  pMedB <- rbind(pMedB, pMedTmp)
  
  pMaxTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pMaxTmp[1,] <- 0
  pMaxTmp$y6[1] <- mean(Y6$Pmax0+Y6$Pmax1+Y6$Pmax2+Y6$Pmax3+Y6$Pmax4+Y6$Pmax5+Y6$Pmax6+Y6$Pmax7+Y6$Pmax8+Y6$Pmax9+Y6$Pmax10+Y6$Pmax11)
  pMaxTmp$y7[1] <- mean(Y7$Pmax0+Y7$Pmax1+Y7$Pmax2+Y7$Pmax3+Y7$Pmax4+Y7$Pmax5+Y7$Pmax6+Y7$Pmax7+Y7$Pmax8+Y7$Pmax9+Y7$Pmax10+Y7$Pmax11)
  pMaxTmp$y8[1] <- mean(Y8$Pmax0+Y8$Pmax1+Y8$Pmax2+Y8$Pmax3+Y8$Pmax4+Y8$Pmax5+Y8$Pmax6+Y8$Pmax7+Y8$Pmax8+Y8$Pmax9+Y8$Pmax10+Y8$Pmax11)
  pMaxTmp$y9[1] <- mean(Y9$Pmax0+Y9$Pmax1+Y9$Pmax2+Y9$Pmax3+Y9$Pmax4+Y9$Pmax5+Y9$Pmax6+Y9$Pmax7+Y9$Pmax8+Y9$Pmax9+Y9$Pmax10+Y9$Pmax11)
  pMaxTmp$y10[1] <- mean(Y10$Pmax0+Y10$Pmax1+Y10$Pmax2+Y10$Pmax3+Y10$Pmax4+Y10$Pmax5+Y10$Pmax6+Y10$Pmax7+Y10$Pmax8+Y10$Pmax9+Y10$Pmax10+Y10$Pmax11)
  pMaxTmp$y11[1] <- mean(Y11$Pmax0+Y11$Pmax1+Y11$Pmax2+Y11$Pmax3+Y11$Pmax4+Y11$Pmax5+Y11$Pmax6+Y11$Pmax7+Y11$Pmax8+Y11$Pmax9+Y11$Pmax10+Y11$Pmax11)
  pMaxTmp$y12[1] <- mean(Y12$Pmax0+Y12$Pmax1+Y12$Pmax2+Y12$Pmax3+Y12$Pmax4+Y12$Pmax5+Y12$Pmax6+Y12$Pmax7+Y12$Pmax8+Y12$Pmax9+Y12$Pmax10+Y12$Pmax11)
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
  
  pTotalTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pTotalTmp[1,] <- 0
  pTotalTmp$y6[1] <- mean(Y6$TotalPrisonPop)
  pTotalTmp$y7[1] <- mean(Y7$TotalPrisonPop)
  pTotalTmp$y8[1] <- mean(Y8$TotalPrisonPop)
  pTotalTmp$y9[1] <- mean(Y9$TotalPrisonPop)
  pTotalTmp$y10[1] <- mean(Y10$TotalPrisonPop)
  pTotalTmp$y11[1] <- mean(Y11$TotalPrisonPop)
  pTotalTmp$y12[1] <- mean(Y12$TotalPrisonPop)
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
 
  pPointTotalTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pPointTotalTmp[1,] <- 0
  pPointTotalTmp$y6[1] <- Y6$TotalPrisonPop[365]
  pPointTotalTmp$y7[1] <- Y7$TotalPrisonPop[365]
  pPointTotalTmp$y8[1] <- Y8$TotalPrisonPop[365]
  pPointTotalTmp$y9[1] <- Y9$TotalPrisonPop[365]
  pPointTotalTmp$y10[1] <- Y10$TotalPrisonPop[365]
  pPointTotalTmp$y11[1] <- Y11$TotalPrisonPop[365]
  pPointTotalTmp$y12[1] <- Y12$TotalPrisonPop[365]
  pPointTotalTmp$y13[1] <- Y13$TotalPrisonPop[365]
  pPointTotalTmp$y14[1] <- Y14$TotalPrisonPop[365]
  pPointTotalTmp$y15[1] <- Y15$TotalPrisonPop[365]
  pPointTotalTmp$y16[1] <- Y16$TotalPrisonPop[365]
  pPointTotalTmp$y17[1] <- Y17$TotalPrisonPop[365]
  pPointTotalTmp$y18[1] <- Y18$TotalPrisonPop[365]
  pPointTotalTmp$y19[1] <- Y19$TotalPrisonPop[365]
  pPointTotalTmp$y20[1] <- Y20$TotalPrisonPop[365]
  pPointTotalTmp$y21[1] <- Y21$TotalPrisonPop[365]
  pPointTotalTmp$y22[1] <- Y22$TotalPrisonPop[365]
  pPointTotalTmp$y23[1] <- Y23$TotalPrisonPop[365]
  pPointTotalTmp$y24[1] <- Y24$TotalPrisonPop[365]
  pPointTotalTmp$y25[1] <- Y25$TotalPrisonPop[365]
  pPointTotalTmp$y26[1] <- Y26$TotalPrisonPop[365]
  pPointTotalTmp$y27[1] <- Y27$TotalPrisonPop[365]
  pPointTotalTmp$y28[1] <- Y28$TotalPrisonPop[365]
  pPointTotalTmp$y29[1] <- Y29$TotalPrisonPop[365]
  pPointTotalTmp$y30[1] <- Y30$TotalPrisonPop[365]
  pPointTotalB <- rbind(pPointTotalB, pPointTotalTmp)
   
  pReTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pReTmp[1,] <- 0
  pReTmp$y6[1] <- mean(Y6$reinfected)
  pReTmp$y7[1] <- mean(Y7$reinfected)
  pReTmp$y8[1] <- mean(Y8$reinfected)
  pReTmp$y9[1] <- mean(Y9$reinfected)
  pReTmp$y10[1] <- mean(Y10$reinfected)
  pReTmp$y11[1] <- mean(Y11$reinfected)
  pReTmp$y12[1] <- mean(Y12$reinfected)
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
  
  pNcTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pNcTmp[1,] <- 0
  pNcTmp$y6[1] <- mean(Y6$NewCases)
  pNcTmp$y7[1] <- mean(Y7$NewCases)
  pNcTmp$y8[1] <- mean(Y8$NewCases)
  pNcTmp$y9[1] <- mean(Y9$NewCases)
  pNcTmp$y10[1] <- mean(Y10$NewCases)
  pNcTmp$y11[1] <- mean(Y11$NewCases)
  pNcTmp$y12[1] <- mean(Y12$NewCases)
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
 
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pNcTmp[1,] <- 0
  pNcTmp$y6[1] <- sum(Y6$NewCases)
  pNcTmp$y7[1] <- sum(Y7$NewCases)
  pNcTmp$y8[1] <- sum(Y8$NewCases)
  pNcTmp$y9[1] <- sum(Y9$NewCases)
  pNcTmp$y10[1] <- sum(Y10$NewCases)
  pNcTmp$y11[1] <- sum(Y11$NewCases)
  pNcTmp$y12[1] <- sum(Y12$NewCases)
  pNcTmp$y13[1] <- sum(Y13$NewCases)
  pNcTmp$y14[1] <- sum(Y14$NewCases)
  pNcTmp$y15[1] <- sum(Y15$NewCases)
  pNcTmp$y16[1] <- sum(Y16$NewCases)
  pNcTmp$y17[1] <- sum(Y17$NewCases)
  pNcTmp$y18[1] <- sum(Y18$NewCases)
  pNcTmp$y19[1] <- sum(Y19$NewCases)
  pNcTmp$y20[1] <- sum(Y20$NewCases)
  pNcTmp$y21[1] <- sum(Y21$NewCases)
  pNcTmp$y22[1] <- sum(Y22$NewCases)
  pNcTmp$y23[1] <- sum(Y23$NewCases)
  pNcTmp$y24[1] <- sum(Y24$NewCases)
  pNcTmp$y25[1] <- sum(Y25$NewCases)
  pNcTmp$y26[1] <- sum(Y26$NewCases)
  pNcTmp$y27[1] <- sum(Y27$NewCases)
  pNcTmp$y28[1] <- sum(Y28$NewCases)
  pNcTmp$y29[1] <- sum(Y29$NewCases)
  pNcTmp$y30[1] <- sum(Y30$NewCases)
  pNewCasesSumB <- rbind(pNewCasesSumB, pNcTmp)
   
  pIDUTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pIDUTmp[1,] <- 0
  pIDUTmp$y6[1] <- mean(Y6$Pmin0+Y6$Pmin1+Y6$Pmin2+Y6$Pmin3+Y6$Pmin4+Y6$Pmin5+Y6$Pmed0+Y6$Pmed1+Y6$Pmed2+Y6$Pmed3+Y6$Pmed4+Y6$Pmed5+Y6$Pmax0+Y6$Pmax1+Y6$Pmax2+Y6$Pmax3+Y6$Pmax4+Y6$Pmax5)
  pIDUTmp$y7[1] <- mean(Y7$Pmin0+Y7$Pmin1+Y7$Pmin2+Y7$Pmin3+Y7$Pmin4+Y7$Pmin5+Y7$Pmed0+Y7$Pmed1+Y7$Pmed2+Y7$Pmed3+Y7$Pmed4+Y7$Pmed5+Y7$Pmax0+Y7$Pmax1+Y7$Pmax2+Y7$Pmax3+Y7$Pmax4+Y7$Pmax5)
  pIDUTmp$y8[1] <- mean(Y8$Pmin0+Y8$Pmin1+Y8$Pmin2+Y8$Pmin3+Y8$Pmin4+Y8$Pmin5+Y8$Pmed0+Y8$Pmed1+Y8$Pmed2+Y8$Pmed3+Y8$Pmed4+Y8$Pmed5+Y8$Pmax0+Y8$Pmax1+Y8$Pmax2+Y8$Pmax3+Y8$Pmax4+Y8$Pmax5)
  pIDUTmp$y9[1] <- mean(Y9$Pmin0+Y9$Pmin1+Y9$Pmin2+Y9$Pmin3+Y9$Pmin4+Y9$Pmin5+Y9$Pmed0+Y9$Pmed1+Y9$Pmed2+Y9$Pmed3+Y9$Pmed4+Y9$Pmed5+Y9$Pmax0+Y9$Pmax1+Y9$Pmax2+Y9$Pmax3+Y9$Pmax4+Y9$Pmax5)
  pIDUTmp$y10[1] <- mean(Y10$Pmin0+Y10$Pmin1+Y10$Pmin2+Y10$Pmin3+Y10$Pmin4+Y10$Pmin5+Y10$Pmed0+Y10$Pmed1+Y10$Pmed2+Y10$Pmed3+Y10$Pmed4+Y10$Pmed5+Y10$Pmax0+Y10$Pmax1+Y10$Pmax2+Y10$Pmax3+Y10$Pmax4+Y10$Pmax5)
  pIDUTmp$y11[1] <- mean(Y11$Pmin0+Y11$Pmin1+Y11$Pmin2+Y11$Pmin3+Y11$Pmin4+Y11$Pmin5+Y11$Pmed0+Y11$Pmed1+Y11$Pmed2+Y11$Pmed3+Y11$Pmed4+Y11$Pmed5+Y11$Pmax0+Y11$Pmax1+Y11$Pmax2+Y11$Pmax3+Y11$Pmax4+Y11$Pmax5)
  pIDUTmp$y12[1] <- mean(Y12$Pmin0+Y12$Pmin1+Y12$Pmin2+Y12$Pmin3+Y12$Pmin4+Y12$Pmin5+Y12$Pmed0+Y12$Pmed1+Y12$Pmed2+Y12$Pmed3+Y12$Pmed4+Y12$Pmed5+Y12$Pmax0+Y12$Pmax1+Y12$Pmax2+Y12$Pmax3+Y12$Pmax4+Y12$Pmax5)
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
  
  pPrisonTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pPrisonTmp[1,] <- 0
  pPrisonTmp$y6[1] <- mean(Y6$PrisonHCV)
  pPrisonTmp$y7[1] <- mean(Y7$PrisonHCV)
  pPrisonTmp$y8[1] <- mean(Y8$PrisonHCV)
  pPrisonTmp$y9[1] <- mean(Y9$PrisonHCV)
  pPrisonTmp$y10[1] <- mean(Y10$PrisonHCV)
  pPrisonTmp$y11[1] <- mean(Y11$PrisonHCV)
  pPrisonTmp$y12[1] <- mean(Y12$PrisonHCV)
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
  
  pOpdTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pOpdTmp[1,] <- 0
  pOpdTmp$y6[1] <- mean(Y6$OPD)
  pOpdTmp$y7[1] <- mean(Y7$OPD)
  pOpdTmp$y8[1] <- mean(Y8$OPD)
  pOpdTmp$y9[1] <- mean(Y9$OPD)
  pOpdTmp$y10[1] <- mean(Y10$OPD)
  pOpdTmp$y11[1] <- mean(Y11$OPD)
  pOpdTmp$y12[1] <- mean(Y12$OPD)
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
  
  pEverTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pEverTmp[1,] <- 0
  pEverTmp$y6[1] <- mean(Y6$everIDU)
  pEverTmp$y7[1] <- mean(Y7$everIDU)
  pEverTmp$y8[1] <- mean(Y8$everIDU)
  pEverTmp$y9[1] <- mean(Y9$everIDU)
  pEverTmp$y10[1] <- mean(Y10$everIDU)
  pEverTmp$y11[1] <- mean(Y11$everIDU)
  pEverTmp$y12[1] <- mean(Y12$everIDU)
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
  
  pEverSumTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pEverSumTmp[1,] <- 0
  pEverSumTmp$y6[1] <- sum(Y6$everIDU)
  pEverSumTmp$y7[1] <- sum(Y7$everIDU)
  pEverSumTmp$y8[1] <- sum(Y8$everIDU)
  pEverSumTmp$y9[1] <- sum(Y9$everIDU)
  pEverSumTmp$y10[1] <- sum(Y10$everIDU)
  pEverSumTmp$y11[1] <- sum(Y11$everIDU)
  pEverSumTmp$y12[1] <- sum(Y12$everIDU)
  pEverSumTmp$y13[1] <- sum(Y13$everIDU)
  pEverSumTmp$y14[1] <- sum(Y14$everIDU)
  pEverSumTmp$y15[1] <- sum(Y15$everIDU)
  pEverSumTmp$y16[1] <- sum(Y16$everIDU)
  pEverSumTmp$y17[1] <- sum(Y17$everIDU)
  pEverSumTmp$y18[1] <- sum(Y18$everIDU)
  pEverSumTmp$y19[1] <- sum(Y19$everIDU)
  pEverSumTmp$y20[1] <- sum(Y20$everIDU)
  pEverSumTmp$y21[1] <- sum(Y21$everIDU)
  pEverSumTmp$y22[1] <- sum(Y22$everIDU)
  pEverSumTmp$y23[1] <- sum(Y23$everIDU)
  pEverSumTmp$y24[1] <- sum(Y24$everIDU)
  pEverSumTmp$y25[1] <- sum(Y25$everIDU)
  pEverSumTmp$y26[1] <- sum(Y26$everIDU)
  pEverSumTmp$y27[1] <- sum(Y27$everIDU)
  pEverSumTmp$y28[1] <- sum(Y28$everIDU)
  pEverSumTmp$y29[1] <- sum(Y29$everIDU)
  pEverSumTmp$y30[1] <- sum(Y30$everIDU)
  pEverIDUSumB <- rbind(pEverIDUSumB, pEverSumTmp)
  
  pClrTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pClrTmp[1,] <- 0
  pClrTmp$y6[1] <- mean(Y6$totalClrDAA)
  pClrTmp$y7[1] <- mean(Y7$totalClrDAA)
  pClrTmp$y8[1] <- mean(Y8$totalClrDAA)
  pClrTmp$y9[1] <- mean(Y9$totalClrDAA)
  pClrTmp$y10[1] <- mean(Y10$totalClrDAA)
  pClrTmp$y11[1] <- mean(Y11$totalClrDAA)
  pClrTmp$y12[1] <- mean(Y12$totalClrDAA)
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
  
  ptDAATmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptDAATmp[1,] <- 0
  ptDAATmp$y6[1] <- mean(Y6$totalDAA)
  ptDAATmp$y7[1] <- mean(Y7$totalDAA)
  ptDAATmp$y8[1] <- mean(Y8$totalDAA)
  ptDAATmp$y9[1] <- mean(Y9$totalDAA)
  ptDAATmp$y10[1] <- mean(Y10$totalDAA)
  ptDAATmp$y11[1] <- mean(Y11$totalDAA)
  ptDAATmp$y12[1] <- mean(Y12$totalDAA)
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
  
  ptOSTTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptOSTTmp[1,] <- 0
  ptOSTTmp$y6[1] <- mean(Y6$totalOST)
  ptOSTTmp$y7[1] <- mean(Y7$totalOST)
  ptOSTTmp$y8[1] <- mean(Y8$totalOST)
  ptOSTTmp$y9[1] <- mean(Y9$totalOST)
  ptOSTTmp$y10[1] <- mean(Y10$totalOST)
  ptOSTTmp$y11[1] <- mean(Y11$totalOST)
  ptOSTTmp$y12[1] <- mean(Y12$totalOST)
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
  
#  ptHCVeTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
#  ptHCVeTmp[1,] <- 0
#  ptHCVeTmp$y6[1] <- mean(Y6$HCVe)
#  ptHCVeTmp$y7[1] <- mean(Y7$HCVe)
#  ptHCVeTmp$y8[1] <- mean(Y8$HCVe)
#  ptHCVeTmp$y9[1] <- mean(Y9$HCVe)
#  ptHCVeTmp$y10[1] <- mean(Y10$HCVe)
#  ptHCVeTmp$y11[1] <- mean(Y11$HCVe)
#  ptHCVeTmp$y12[1] <- mean(Y12$HCVe)
#  ptHCVeTmp$y13[1] <- mean(Y13$HCVe)
#  ptHCVeTmp$y14[1] <- mean(Y14$HCVe)
#  ptHCVeTmp$y15[1] <- mean(Y15$HCVe)
#  ptHCVeTmp$y16[1] <- mean(Y16$HCVe)
#  ptHCVeTmp$y17[1] <- mean(Y17$HCVe)
#  ptHCVeTmp$y18[1] <- mean(Y18$HCVe)
#  ptHCVeTmp$y19[1] <- mean(Y19$HCVe)
#  ptHCVeTmp$y20[1] <- mean(Y20$HCVe)
#  ptHCVeTmp$y21[1] <- mean(Y21$HCVe)
#  ptHCVeTmp$y22[1] <- mean(Y22$HCVe)
#  ptHCVeTmp$y23[1] <- mean(Y23$HCVe)
#  ptHCVeTmp$y24[1] <- mean(Y24$HCVe)
#  ptHCVeTmp$y25[1] <- mean(Y25$HCVe)
#  ptHCVeTmp$y26[1] <- mean(Y26$HCVe)
#  ptHCVeTmp$y27[1] <- mean(Y27$HCVe)
#  ptHCVeTmp$y28[1] <- mean(Y28$HCVe)
#  ptHCVeTmp$y29[1] <- mean(Y29$HCVe)
#  ptHCVeTmp$y30[1] <- mean(Y30$HCVe)
#  pTotalHCVeB <- rbind(pTotalHCVeB, ptHCVeTmp)
  
  ptHCVTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptHCVTmp[1,] <- 0
  ptHCVTmp$y6[1] <- mean(Y6$Pmin0+Y6$Pmin1+Y6$Pmin6+Y6$Pmin7+Y6$Pmed0+Y6$Pmed1+Y6$Pmed6+Y6$Pmed7+Y6$Pmax0+Y6$Pmax1+Y6$Pmax6+Y6$Pmax7)
  ptHCVTmp$y7[1] <- mean(Y7$Pmin0+Y7$Pmin1+Y7$Pmin6+Y7$Pmin7+Y7$Pmed0+Y7$Pmed1+Y7$Pmed6+Y7$Pmed7+Y7$Pmax0+Y7$Pmax1+Y7$Pmax6+Y7$Pmax7)
  ptHCVTmp$y8[1] <- mean(Y8$Pmin0+Y8$Pmin1+Y8$Pmin6+Y8$Pmin7+Y8$Pmed0+Y8$Pmed1+Y8$Pmed6+Y8$Pmed7+Y8$Pmax0+Y8$Pmax1+Y8$Pmax6+Y8$Pmax7)
  ptHCVTmp$y9[1] <- mean(Y9$Pmin0+Y9$Pmin1+Y9$Pmin6+Y9$Pmin7+Y9$Pmed0+Y9$Pmed1+Y9$Pmed6+Y9$Pmed7+Y9$Pmax0+Y9$Pmax1+Y9$Pmax6+Y9$Pmax7)
  ptHCVTmp$y10[1] <- mean(Y10$Pmin0+Y10$Pmin1+Y10$Pmin6+Y10$Pmin7+Y10$Pmed0+Y10$Pmed1+Y10$Pmed6+Y10$Pmed7+Y10$Pmax0+Y10$Pmax1+Y10$Pmax6+Y10$Pmax7)
  ptHCVTmp$y11[1] <- mean(Y11$Pmin0+Y11$Pmin1+Y11$Pmin6+Y11$Pmin7+Y11$Pmed0+Y11$Pmed1+Y11$Pmed6+Y11$Pmed7+Y11$Pmax0+Y11$Pmax1+Y11$Pmax6+Y11$Pmax7)
  ptHCVTmp$y12[1] <- mean(Y12$Pmin0+Y12$Pmin1+Y12$Pmin6+Y12$Pmin7+Y12$Pmed0+Y12$Pmed1+Y12$Pmed6+Y12$Pmed7+Y12$Pmax0+Y12$Pmax1+Y12$Pmax6+Y12$Pmax7)
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
  pTotalHCVRNAB <- rbind(pTotalHCVRNAB, ptHCVTmp)

  ptHCVabTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptHCVabTmp[1,] <- 0
  ptHCVabTmp$y6[1] <- mean(Y6$Pmin0+Y6$Pmin1+Y6$Pmin2+Y6$Pmin4+Y6$Pmin6+Y6$Pmin7+Y6$Pmin8+Y6$Pmin10+Y6$Pmed0+Y6$Pmed1+Y6$Pmed2+Y6$Pmed4+Y6$Pmed6+Y6$Pmed7+Y6$Pmed8+Y6$Pmed10+Y6$Pmax0+Y6$Pmax1+Y6$Pmax2+Y6$Pmax4+Y6$Pmax6+Y6$Pmax7+Y6$Pmax8+Y6$Pmax10)
  ptHCVabTmp$y7[1] <- mean(Y7$Pmin0+Y7$Pmin1+Y7$Pmin2+Y7$Pmin4+Y7$Pmin6+Y7$Pmin7+Y7$Pmin8+Y7$Pmin10+Y7$Pmed0+Y7$Pmed1+Y7$Pmed2+Y7$Pmed4+Y7$Pmed6+Y7$Pmed7+Y7$Pmed8+Y7$Pmed10+Y7$Pmax0+Y7$Pmax1+Y7$Pmax2+Y7$Pmax4+Y7$Pmax6+Y7$Pmax7+Y7$Pmax8+Y7$Pmax10)
  ptHCVabTmp$y8[1] <- mean(Y8$Pmin0+Y8$Pmin1+Y8$Pmin2+Y8$Pmin4+Y8$Pmin6+Y8$Pmin7+Y8$Pmin8+Y8$Pmin10+Y8$Pmed0+Y8$Pmed1+Y8$Pmed2+Y8$Pmed4+Y8$Pmed6+Y8$Pmed7+Y8$Pmed8+Y8$Pmed10+Y8$Pmax0+Y8$Pmax1+Y8$Pmax2+Y8$Pmax4+Y8$Pmax6+Y8$Pmax7+Y8$Pmax8+Y8$Pmax10)
  ptHCVabTmp$y9[1] <- mean(Y9$Pmin0+Y9$Pmin1+Y9$Pmin2+Y9$Pmin4+Y9$Pmin6+Y9$Pmin7+Y9$Pmin8+Y9$Pmin10+Y9$Pmed0+Y9$Pmed1+Y9$Pmed2+Y9$Pmed4+Y9$Pmed6+Y9$Pmed7+Y9$Pmed8+Y9$Pmed10+Y9$Pmax0+Y9$Pmax1+Y9$Pmax2+Y9$Pmax4+Y9$Pmax6+Y9$Pmax7+Y9$Pmax8+Y9$Pmax10)
  ptHCVabTmp$y10[1] <- mean(Y10$Pmin0+Y10$Pmin1+Y10$Pmin2+Y10$Pmin4+Y10$Pmin6+Y10$Pmin7+Y10$Pmin8+Y10$Pmin10+Y10$Pmed0+Y10$Pmed1+Y10$Pmed2+Y10$Pmed4+Y10$Pmed6+Y10$Pmed7+Y10$Pmed8+Y10$Pmed10+Y10$Pmax0+Y10$Pmax1+Y10$Pmax2+Y10$Pmax4+Y10$Pmax6+Y10$Pmax7+Y10$Pmax8+Y10$Pmax10)
  ptHCVabTmp$y11[1] <- mean(Y11$Pmin0+Y11$Pmin1+Y11$Pmin2+Y11$Pmin4+Y11$Pmin6+Y11$Pmin7+Y11$Pmin8+Y11$Pmin10+Y11$Pmed0+Y11$Pmed1+Y11$Pmed2+Y11$Pmed4+Y11$Pmed6+Y11$Pmed7+Y11$Pmed8+Y11$Pmed10+Y11$Pmax0+Y11$Pmax1+Y11$Pmax2+Y11$Pmax4+Y11$Pmax6+Y11$Pmax7+Y11$Pmax8+Y11$Pmax10)
  ptHCVabTmp$y12[1] <- mean(Y12$Pmin0+Y12$Pmin1+Y12$Pmin2+Y12$Pmin4+Y12$Pmin6+Y12$Pmin7+Y12$Pmin8+Y12$Pmin10+Y12$Pmed0+Y12$Pmed1+Y12$Pmed2+Y12$Pmed4+Y12$Pmed6+Y12$Pmed7+Y12$Pmed8+Y12$Pmed10+Y12$Pmax0+Y12$Pmax1+Y12$Pmax2+Y12$Pmax4+Y12$Pmax6+Y12$Pmax7+Y12$Pmax8+Y12$Pmax10)
  ptHCVabTmp$y13[1] <- mean(Y13$Pmin0+Y13$Pmin1+Y13$Pmin2+Y13$Pmin4+Y13$Pmin6+Y13$Pmin7+Y13$Pmin8+Y13$Pmin10+Y13$Pmed0+Y13$Pmed1+Y13$Pmed2+Y13$Pmed4+Y13$Pmed6+Y13$Pmed7+Y13$Pmed8+Y13$Pmed10+Y13$Pmax0+Y13$Pmax1+Y13$Pmax2+Y13$Pmax4+Y13$Pmax6+Y13$Pmax7+Y13$Pmax8+Y13$Pmax10)
  ptHCVabTmp$y14[1] <- mean(Y14$Pmin0+Y14$Pmin1+Y14$Pmin2+Y14$Pmin4+Y14$Pmin6+Y14$Pmin7+Y14$Pmin8+Y14$Pmin10+Y14$Pmed0+Y14$Pmed1+Y14$Pmed2+Y14$Pmed4+Y14$Pmed6+Y14$Pmed7+Y14$Pmed8+Y14$Pmed10+Y14$Pmax0+Y14$Pmax1+Y14$Pmax2+Y14$Pmax4+Y14$Pmax6+Y14$Pmax7+Y14$Pmax8+Y14$Pmax10)
  ptHCVabTmp$y15[1] <- mean(Y15$Pmin0+Y15$Pmin1+Y15$Pmin2+Y15$Pmin4+Y15$Pmin6+Y15$Pmin7+Y15$Pmin8+Y15$Pmin10+Y15$Pmed0+Y15$Pmed1+Y15$Pmed2+Y15$Pmed4+Y15$Pmed6+Y15$Pmed7+Y15$Pmed8+Y15$Pmed10+Y15$Pmax0+Y15$Pmax1+Y15$Pmax2+Y15$Pmax4+Y15$Pmax6+Y15$Pmax7+Y15$Pmax8+Y15$Pmax10)
  ptHCVabTmp$y16[1] <- mean(Y16$Pmin0+Y16$Pmin1+Y16$Pmin2+Y16$Pmin4+Y16$Pmin6+Y16$Pmin7+Y16$Pmin8+Y16$Pmin10+Y16$Pmed0+Y16$Pmed1+Y16$Pmed2+Y16$Pmed4+Y16$Pmed6+Y16$Pmed7+Y16$Pmed8+Y16$Pmed10+Y16$Pmax0+Y16$Pmax1+Y16$Pmax2+Y16$Pmax4+Y16$Pmax6+Y16$Pmax7+Y16$Pmax8+Y16$Pmax10)
  ptHCVabTmp$y17[1] <- mean(Y17$Pmin0+Y17$Pmin1+Y17$Pmin2+Y17$Pmin4+Y17$Pmin6+Y17$Pmin7+Y17$Pmin8+Y17$Pmin10+Y17$Pmed0+Y17$Pmed1+Y17$Pmed2+Y17$Pmed4+Y17$Pmed6+Y17$Pmed7+Y17$Pmed8+Y17$Pmed10+Y17$Pmax0+Y17$Pmax1+Y17$Pmax2+Y17$Pmax4+Y17$Pmax6+Y17$Pmax7+Y17$Pmax8+Y17$Pmax10)
  ptHCVabTmp$y18[1] <- mean(Y18$Pmin0+Y18$Pmin1+Y18$Pmin2+Y18$Pmin4+Y18$Pmin6+Y18$Pmin7+Y18$Pmin8+Y18$Pmin10+Y18$Pmed0+Y18$Pmed1+Y18$Pmed2+Y18$Pmed4+Y18$Pmed6+Y18$Pmed7+Y18$Pmed8+Y18$Pmed10+Y18$Pmax0+Y18$Pmax1+Y18$Pmax2+Y18$Pmax4+Y18$Pmax6+Y18$Pmax7+Y18$Pmax8+Y18$Pmax10)
  ptHCVabTmp$y19[1] <- mean(Y19$Pmin0+Y19$Pmin1+Y19$Pmin2+Y19$Pmin4+Y19$Pmin6+Y19$Pmin7+Y19$Pmin8+Y19$Pmin10+Y19$Pmed0+Y19$Pmed1+Y19$Pmed2+Y19$Pmed4+Y19$Pmed6+Y19$Pmed7+Y19$Pmed8+Y19$Pmed10+Y19$Pmax0+Y19$Pmax1+Y19$Pmax2+Y19$Pmax4+Y19$Pmax6+Y19$Pmax7+Y19$Pmax8+Y19$Pmax10)
  ptHCVabTmp$y20[1] <- mean(Y20$Pmin0+Y20$Pmin1+Y20$Pmin2+Y20$Pmin4+Y20$Pmin6+Y20$Pmin7+Y20$Pmin8+Y20$Pmin10+Y20$Pmed0+Y20$Pmed1+Y20$Pmed2+Y20$Pmed4+Y20$Pmed6+Y20$Pmed7+Y20$Pmed8+Y20$Pmed10+Y20$Pmax0+Y20$Pmax1+Y20$Pmax2+Y20$Pmax4+Y20$Pmax6+Y20$Pmax7+Y20$Pmax8+Y20$Pmax10)
  ptHCVabTmp$y21[1] <- mean(Y21$Pmin0+Y21$Pmin1+Y21$Pmin2+Y21$Pmin4+Y21$Pmin6+Y21$Pmin7+Y21$Pmin8+Y21$Pmin10+Y21$Pmed0+Y21$Pmed1+Y21$Pmed2+Y21$Pmed4+Y21$Pmed6+Y21$Pmed7+Y21$Pmed8+Y21$Pmed10+Y21$Pmax0+Y21$Pmax1+Y21$Pmax2+Y21$Pmax4+Y21$Pmax6+Y21$Pmax7+Y21$Pmax8+Y21$Pmax10)
  ptHCVabTmp$y22[1] <- mean(Y22$Pmin0+Y22$Pmin1+Y22$Pmin2+Y22$Pmin4+Y22$Pmin6+Y22$Pmin7+Y22$Pmin8+Y22$Pmin10+Y22$Pmed0+Y22$Pmed1+Y22$Pmed2+Y22$Pmed4+Y22$Pmed6+Y22$Pmed7+Y22$Pmed8+Y22$Pmed10+Y22$Pmax0+Y22$Pmax1+Y22$Pmax2+Y22$Pmax4+Y22$Pmax6+Y22$Pmax7+Y22$Pmax8+Y22$Pmax10)
  ptHCVabTmp$y23[1] <- mean(Y23$Pmin0+Y23$Pmin1+Y23$Pmin2+Y23$Pmin4+Y23$Pmin6+Y23$Pmin7+Y23$Pmin8+Y23$Pmin10+Y23$Pmed0+Y23$Pmed1+Y23$Pmed2+Y23$Pmed4+Y23$Pmed6+Y23$Pmed7+Y23$Pmed8+Y23$Pmed10+Y23$Pmax0+Y23$Pmax1+Y23$Pmax2+Y23$Pmax4+Y23$Pmax6+Y23$Pmax7+Y23$Pmax8+Y23$Pmax10)
  ptHCVabTmp$y24[1] <- mean(Y24$Pmin0+Y24$Pmin1+Y24$Pmin2+Y24$Pmin4+Y24$Pmin6+Y24$Pmin7+Y24$Pmin8+Y24$Pmin10+Y24$Pmed0+Y24$Pmed1+Y24$Pmed2+Y24$Pmed4+Y24$Pmed6+Y24$Pmed7+Y24$Pmed8+Y24$Pmed10+Y24$Pmax0+Y24$Pmax1+Y24$Pmax2+Y24$Pmax4+Y24$Pmax6+Y24$Pmax7+Y24$Pmax8+Y24$Pmax10)
  ptHCVabTmp$y25[1] <- mean(Y25$Pmin0+Y25$Pmin1+Y25$Pmin2+Y25$Pmin4+Y25$Pmin6+Y25$Pmin7+Y25$Pmin8+Y25$Pmin10+Y25$Pmed0+Y25$Pmed1+Y25$Pmed2+Y25$Pmed4+Y25$Pmed6+Y25$Pmed7+Y25$Pmed8+Y25$Pmed10+Y25$Pmax0+Y25$Pmax1+Y25$Pmax2+Y25$Pmax4+Y25$Pmax6+Y25$Pmax7+Y25$Pmax8+Y25$Pmax10)
  ptHCVabTmp$y26[1] <- mean(Y26$Pmin0+Y26$Pmin1+Y26$Pmin2+Y26$Pmin4+Y26$Pmin6+Y26$Pmin7+Y26$Pmin8+Y26$Pmin10+Y26$Pmed0+Y26$Pmed1+Y26$Pmed2+Y26$Pmed4+Y26$Pmed6+Y26$Pmed7+Y26$Pmed8+Y26$Pmed10+Y26$Pmax0+Y26$Pmax1+Y26$Pmax2+Y26$Pmax4+Y26$Pmax6+Y26$Pmax7+Y26$Pmax8+Y26$Pmax10)
  ptHCVabTmp$y27[1] <- mean(Y27$Pmin0+Y27$Pmin1+Y27$Pmin2+Y27$Pmin4+Y27$Pmin6+Y27$Pmin7+Y27$Pmin8+Y27$Pmin10+Y27$Pmed0+Y27$Pmed1+Y27$Pmed2+Y27$Pmed4+Y27$Pmed6+Y27$Pmed7+Y27$Pmed8+Y27$Pmed10+Y27$Pmax0+Y27$Pmax1+Y27$Pmax2+Y27$Pmax4+Y27$Pmax6+Y27$Pmax7+Y27$Pmax8+Y27$Pmax10)
  ptHCVabTmp$y28[1] <- mean(Y28$Pmin0+Y28$Pmin1+Y28$Pmin2+Y28$Pmin4+Y28$Pmin6+Y28$Pmin7+Y28$Pmin8+Y28$Pmin10+Y28$Pmed0+Y28$Pmed1+Y28$Pmed2+Y28$Pmed4+Y28$Pmed6+Y28$Pmed7+Y28$Pmed8+Y28$Pmed10+Y28$Pmax0+Y28$Pmax1+Y28$Pmax2+Y28$Pmax4+Y28$Pmax6+Y28$Pmax7+Y28$Pmax8+Y28$Pmax10)
  ptHCVabTmp$y29[1] <- mean(Y29$Pmin0+Y29$Pmin1+Y29$Pmin2+Y29$Pmin4+Y29$Pmin6+Y29$Pmin7+Y29$Pmin8+Y29$Pmin10+Y29$Pmed0+Y29$Pmed1+Y29$Pmed2+Y29$Pmed4+Y29$Pmed6+Y29$Pmed7+Y29$Pmed8+Y29$Pmed10+Y29$Pmax0+Y29$Pmax1+Y29$Pmax2+Y29$Pmax4+Y29$Pmax6+Y29$Pmax7+Y29$Pmax8+Y29$Pmax10)
  ptHCVabTmp$y30[1] <- mean(Y30$Pmin0+Y30$Pmin1+Y30$Pmin2+Y30$Pmin4+Y30$Pmin6+Y30$Pmin7+Y30$Pmin8+Y30$Pmin10+Y30$Pmed0+Y30$Pmed1+Y30$Pmed2+Y30$Pmed4+Y30$Pmed6+Y30$Pmed7+Y30$Pmed8+Y30$Pmed10+Y30$Pmax0+Y30$Pmax1+Y30$Pmax2+Y30$Pmax4+Y30$Pmax6+Y30$Pmax7+Y30$Pmax8+Y30$Pmax10)
  pTotalHCVabB <- rbind(pTotalHCVabB, ptHCVabTmp)
    
  pPointHCVabTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pPointHCVabTmp[1,] <- 0
  pPointHCVabTmp$y6[1] <- Y6$HCVab[365]
  pPointHCVabTmp$y7[1] <- Y7$HCVab[365]
  pPointHCVabTmp$y8[1] <- Y8$HCVab[365]
  pPointHCVabTmp$y9[1] <- Y9$HCVab[365]
  pPointHCVabTmp$y10[1] <- Y10$HCVab[365]
  pPointHCVabTmp$y11[1] <- Y11$HCVab[365]
  pPointHCVabTmp$y12[1] <- Y12$HCVab[365]
  pPointHCVabTmp$y13[1] <- Y13$HCVab[365]
  pPointHCVabTmp$y14[1] <- Y14$HCVab[365]
  pPointHCVabTmp$y15[1] <- Y15$HCVab[365]
  pPointHCVabTmp$y16[1] <- Y16$HCVab[365]
  pPointHCVabTmp$y17[1] <- Y17$HCVab[365]
  pPointHCVabTmp$y18[1] <- Y18$HCVab[365]
  pPointHCVabTmp$y19[1] <- Y19$HCVab[365]
  pPointHCVabTmp$y20[1] <- Y20$HCVab[365]
  pPointHCVabTmp$y21[1] <- Y21$HCVab[365]
  pPointHCVabTmp$y22[1] <- Y22$HCVab[365]
  pPointHCVabTmp$y23[1] <- Y23$HCVab[365]
  pPointHCVabTmp$y24[1] <- Y24$HCVab[365]
  pPointHCVabTmp$y25[1] <- Y25$HCVab[365]
  pPointHCVabTmp$y26[1] <- Y26$HCVab[365]
  pPointHCVabTmp$y27[1] <- Y27$HCVab[365]
  pPointHCVabTmp$y28[1] <- Y28$HCVab[365]
  pPointHCVabTmp$y29[1] <- Y29$HCVab[365]
  pPointHCVabTmp$y30[1] <- Y30$HCVab[365]
  pPointHCVabB <- rbind(pPointHCVabB, pPointHCVabTmp)
}

for (var in 1:10)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/Testing/results/outDopt_", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "HCVe", "NewEntry", "HCVab", "AveStay")
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCVAb", "ReleasedHCVRNA", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "OpdNotOST", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "OSTremaining", "HCVeRNA", "HCVeAb", "NewEntry", "HCVab", "HCVRNA", "AveStay")
  
  Y6 <- tempFile[1:365,]
  Y7 <- tempFile[366:730,]
  Y8 <- tempFile[731:1095,]
  Y9 <- tempFile[1096:1460,]
  Y10 <- tempFile[1461:1825,]
  Y11 <- tempFile[1826:2190,]
  Y12 <- tempFile[2191:2555,]
  Y13 <- tempFile[2556:2920,]
  Y14 <- tempFile[2921:3285,]
  Y15 <- tempFile[3286:3650,]
  Y16 <- tempFile[3651:4015,]
  Y17 <- tempFile[4016:4380,]
  Y18 <- tempFile[4381:4745,]
  Y19 <- tempFile[4746:5110,]
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
  pMinTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pMinTmp[1,] <- 0
  pMinTmp$y6[1] <- mean(Y6$Pmin0+Y6$Pmin1+Y6$Pmin2+Y6$Pmin3+Y6$Pmin4+Y6$Pmin5+Y6$Pmin6+Y6$Pmin7+Y6$Pmin8+Y6$Pmin9+Y6$Pmin10+Y6$Pmin11)
  pMinTmp$y7[1] <- mean(Y7$Pmin0+Y7$Pmin1+Y7$Pmin2+Y7$Pmin3+Y7$Pmin4+Y7$Pmin5+Y7$Pmin6+Y7$Pmin7+Y7$Pmin8+Y7$Pmin9+Y7$Pmin10+Y7$Pmin11)
  pMinTmp$y8[1] <- mean(Y8$Pmin0+Y8$Pmin1+Y8$Pmin2+Y8$Pmin3+Y8$Pmin4+Y8$Pmin5+Y8$Pmin6+Y8$Pmin7+Y8$Pmin8+Y8$Pmin9+Y8$Pmin10+Y8$Pmin11)
  pMinTmp$y9[1] <- mean(Y9$Pmin0+Y9$Pmin1+Y9$Pmin2+Y9$Pmin3+Y9$Pmin4+Y9$Pmin5+Y9$Pmin6+Y9$Pmin7+Y9$Pmin8+Y9$Pmin9+Y9$Pmin10+Y9$Pmin11)
  pMinTmp$y10[1] <- mean(Y10$Pmin0+Y10$Pmin1+Y10$Pmin2+Y10$Pmin3+Y10$Pmin4+Y10$Pmin5+Y10$Pmin6+Y10$Pmin7+Y10$Pmin8+Y10$Pmin9+Y10$Pmin10+Y10$Pmin11)
  pMinTmp$y11[1] <- mean(Y11$Pmin0+Y11$Pmin1+Y11$Pmin2+Y11$Pmin3+Y11$Pmin4+Y11$Pmin5+Y11$Pmin6+Y11$Pmin7+Y11$Pmin8+Y11$Pmin9+Y11$Pmin10+Y11$Pmin11)
  pMinTmp$y12[1] <- mean(Y12$Pmin0+Y12$Pmin1+Y12$Pmin2+Y12$Pmin3+Y12$Pmin4+Y12$Pmin5+Y12$Pmin6+Y12$Pmin7+Y12$Pmin8+Y12$Pmin9+Y12$Pmin10+Y12$Pmin11)
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
  pMinC <- rbind(pMinC, pMinTmp)
  
  pMedTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pMedTmp[1,] <- 0
  pMedTmp$y6[1] <- mean(Y6$Pmed0+Y6$Pmed1+Y6$Pmed2+Y6$Pmed3+Y6$Pmed4+Y6$Pmed5+Y6$Pmed6+Y6$Pmed7+Y6$Pmed8+Y6$Pmed9+Y6$Pmed10+Y6$Pmed11)
  pMedTmp$y7[1] <- mean(Y7$Pmed0+Y7$Pmed1+Y7$Pmed2+Y7$Pmed3+Y7$Pmed4+Y7$Pmed5+Y7$Pmed6+Y7$Pmed7+Y7$Pmed8+Y7$Pmed9+Y7$Pmed10+Y7$Pmed11)
  pMedTmp$y8[1] <- mean(Y8$Pmed0+Y8$Pmed1+Y8$Pmed2+Y8$Pmed3+Y8$Pmed4+Y8$Pmed5+Y8$Pmed6+Y8$Pmed7+Y8$Pmed8+Y8$Pmed9+Y8$Pmed10+Y8$Pmed11)
  pMedTmp$y9[1] <- mean(Y9$Pmed0+Y9$Pmed1+Y9$Pmed2+Y9$Pmed3+Y9$Pmed4+Y9$Pmed5+Y9$Pmed6+Y9$Pmed7+Y9$Pmed8+Y9$Pmed9+Y9$Pmed10+Y9$Pmed11)
  pMedTmp$y10[1] <- mean(Y10$Pmed0+Y10$Pmed1+Y10$Pmed2+Y10$Pmed3+Y10$Pmed4+Y10$Pmed5+Y10$Pmed6+Y10$Pmed7+Y10$Pmed8+Y10$Pmed9+Y10$Pmed10+Y10$Pmed11)
  pMedTmp$y11[1] <- mean(Y11$Pmed0+Y11$Pmed1+Y11$Pmed2+Y11$Pmed3+Y11$Pmed4+Y11$Pmed5+Y11$Pmed6+Y11$Pmed7+Y11$Pmed8+Y11$Pmed9+Y11$Pmed10+Y11$Pmed11)
  pMedTmp$y12[1] <- mean(Y12$Pmed0+Y12$Pmed1+Y12$Pmed2+Y12$Pmed3+Y12$Pmed4+Y12$Pmed5+Y12$Pmed6+Y12$Pmed7+Y12$Pmed8+Y12$Pmed9+Y12$Pmed10+Y12$Pmed11)
  pMedTmp$y13[1] <- mean(Y13$Pmed0+Y13$Pmed1+Y13$Pmed2+Y13$Pmed3+Y13$Pmed4+Y13$Pmed5+Y13$Pmed6+Y13$Pmed7+Y13$Pmed8+Y13$Pmed9+Y13$Pmed10+Y13$Pmed11)
  pMedTmp$y14[1] <- mean(Y14$Pmed0+Y14$Pmed1+Y14$Pmed2+Y14$Pmed3+Y14$Pmed4+Y14$Pmed5+Y14$Pmed6+Y14$Pmed7+Y14$Pmed8+Y14$Pmed9+Y14$Pmed10+Y14$Pmed11)
  pMedTmp$y15[1] <- mean(Y15$Pmed0+Y15$Pmed1+Y15$Pmed2+Y15$Pmed3+Y15$Pmed4+Y15$Pmed5+Y15$Pmed6+Y15$Pmed7+Y15$Pmed8+Y15$Pmed9+Y15$Pmed10+Y15$Pmed11)
  pMedTmp$y16[1] <- mean(Y16$Pmed0+Y16$Pmed1+Y16$Pmed2+Y16$Pmed3+Y16$Pmed4+Y16$Pmed5+Y16$Pmed6+Y16$Pmed7+Y16$Pmed8+Y16$Pmed9+Y16$Pmed10+Y16$Pmed11)
  pMedTmp$y17[1] <- mean(Y17$Pmed0+Y17$Pmed1+Y17$Pmed2+Y17$Pmed3+Y17$Pmed4+Y17$Pmed5+Y17$Pmed6+Y17$Pmed7+Y17$Pmed8+Y17$Pmed9+Y17$Pmed10+Y17$Pmed11)
  pMedTmp$y18[1] <- mean(Y18$Pmed0+Y18$Pmed1+Y18$Pmed2+Y18$Pmed3+Y18$Pmed4+Y18$Pmed5+Y18$Pmed6+Y18$Pmed7+Y18$Pmed8+Y18$Pmed9+Y18$Pmed10+Y18$Pmed11)
  pMedTmp$y19[1] <- mean(Y19$Pmed0+Y19$Pmed1+Y19$Pmed2+Y19$Pmed3+Y19$Pmed4+Y19$Pmed5+Y19$Pmed6+Y19$Pmed7+Y19$Pmed8+Y19$Pmed9+Y19$Pmed10+Y19$Pmed11)
  pMedTmp$y20[1] <- mean(Y20$Pmed0+Y20$Pmed1+Y20$Pmed2+Y20$Pmed3+Y20$Pmed4+Y20$Pmed5+Y20$Pmed6+Y20$Pmed7+Y20$Pmed8+Y20$Pmed9+Y20$Pmed10+Y20$Pmed11)
  pMedTmp$y21[1] <- mean(Y21$Pmed0+Y21$Pmed1+Y21$Pmed2+Y21$Pmed3+Y21$Pmed4+Y21$Pmed5+Y21$Pmed6+Y21$Pmed7+Y21$Pmed8+Y21$Pmed9+Y21$Pmed10+Y21$Pmed11)
  pMedTmp$y22[1] <- mean(Y22$Pmed0+Y22$Pmed1+Y22$Pmed2+Y22$Pmed3+Y22$Pmed4+Y22$Pmed5+Y22$Pmed6+Y22$Pmed7+Y22$Pmed8+Y22$Pmed9+Y22$Pmed10+Y22$Pmed11)
  pMedTmp$y23[1] <- mean(Y23$Pmed0+Y23$Pmed1+Y23$Pmed2+Y23$Pmed3+Y23$Pmed4+Y23$Pmed5+Y23$Pmed6+Y23$Pmed7+Y23$Pmed8+Y23$Pmed9+Y23$Pmed10+Y23$Pmed11)
  pMedTmp$y24[1] <- mean(Y24$Pmed0+Y24$Pmed1+Y24$Pmed2+Y24$Pmed3+Y24$Pmed4+Y24$Pmed5+Y24$Pmed6+Y24$Pmed7+Y24$Pmed8+Y24$Pmed9+Y24$Pmed10+Y24$Pmed11)
  pMedTmp$y25[1] <- mean(Y25$Pmed0+Y25$Pmed1+Y25$Pmed2+Y25$Pmed3+Y25$Pmed4+Y25$Pmed5+Y25$Pmed6+Y25$Pmed7+Y25$Pmed8+Y25$Pmed9+Y25$Pmed10+Y25$Pmed11)
  pMedTmp$y26[1] <- mean(Y26$Pmed0+Y26$Pmed1+Y26$Pmed2+Y26$Pmed3+Y26$Pmed4+Y26$Pmed5+Y26$Pmed6+Y26$Pmed7+Y26$Pmed8+Y26$Pmed9+Y26$Pmed10+Y26$Pmed11)
  pMedTmp$y27[1] <- mean(Y27$Pmed0+Y27$Pmed1+Y27$Pmed2+Y27$Pmed3+Y27$Pmed4+Y27$Pmed5+Y27$Pmed6+Y27$Pmed7+Y27$Pmed8+Y27$Pmed9+Y27$Pmed10+Y27$Pmed11)
  pMedTmp$y28[1] <- mean(Y28$Pmed0+Y28$Pmed1+Y28$Pmed2+Y28$Pmed3+Y28$Pmed4+Y28$Pmed5+Y28$Pmed6+Y28$Pmed7+Y28$Pmed8+Y28$Pmed9+Y28$Pmed10+Y28$Pmed11)
  pMedTmp$y29[1] <- mean(Y29$Pmed0+Y29$Pmed1+Y29$Pmed2+Y29$Pmed3+Y29$Pmed4+Y29$Pmed5+Y29$Pmed6+Y29$Pmed7+Y29$Pmed8+Y29$Pmed9+Y29$Pmed10+Y29$Pmed11)
  pMedTmp$y30[1] <- mean(Y30$Pmed0+Y30$Pmed1+Y30$Pmed2+Y30$Pmed3+Y30$Pmed4+Y30$Pmed5+Y30$Pmed6+Y30$Pmed7+Y30$Pmed8+Y30$Pmed9+Y30$Pmed10+Y30$Pmed11)
  pMedC <- rbind(pMedC, pMedTmp)
  
  pMaxTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pMaxTmp[1,] <- 0
  pMaxTmp$y6[1] <- mean(Y6$Pmax0+Y6$Pmax1+Y6$Pmax2+Y6$Pmax3+Y6$Pmax4+Y6$Pmax5+Y6$Pmax6+Y6$Pmax7+Y6$Pmax8+Y6$Pmax9+Y6$Pmax10+Y6$Pmax11)
  pMaxTmp$y7[1] <- mean(Y7$Pmax0+Y7$Pmax1+Y7$Pmax2+Y7$Pmax3+Y7$Pmax4+Y7$Pmax5+Y7$Pmax6+Y7$Pmax7+Y7$Pmax8+Y7$Pmax9+Y7$Pmax10+Y7$Pmax11)
  pMaxTmp$y8[1] <- mean(Y8$Pmax0+Y8$Pmax1+Y8$Pmax2+Y8$Pmax3+Y8$Pmax4+Y8$Pmax5+Y8$Pmax6+Y8$Pmax7+Y8$Pmax8+Y8$Pmax9+Y8$Pmax10+Y8$Pmax11)
  pMaxTmp$y9[1] <- mean(Y9$Pmax0+Y9$Pmax1+Y9$Pmax2+Y9$Pmax3+Y9$Pmax4+Y9$Pmax5+Y9$Pmax6+Y9$Pmax7+Y9$Pmax8+Y9$Pmax9+Y9$Pmax10+Y9$Pmax11)
  pMaxTmp$y10[1] <- mean(Y10$Pmax0+Y10$Pmax1+Y10$Pmax2+Y10$Pmax3+Y10$Pmax4+Y10$Pmax5+Y10$Pmax6+Y10$Pmax7+Y10$Pmax8+Y10$Pmax9+Y10$Pmax10+Y10$Pmax11)
  pMaxTmp$y11[1] <- mean(Y11$Pmax0+Y11$Pmax1+Y11$Pmax2+Y11$Pmax3+Y11$Pmax4+Y11$Pmax5+Y11$Pmax6+Y11$Pmax7+Y11$Pmax8+Y11$Pmax9+Y11$Pmax10+Y11$Pmax11)
  pMaxTmp$y12[1] <- mean(Y12$Pmax0+Y12$Pmax1+Y12$Pmax2+Y12$Pmax3+Y12$Pmax4+Y12$Pmax5+Y12$Pmax6+Y12$Pmax7+Y12$Pmax8+Y12$Pmax9+Y12$Pmax10+Y12$Pmax11)
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
  pMaxC <- rbind(pMaxC, pMaxTmp)
  
  pTotalTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pTotalTmp[1,] <- 0
  pTotalTmp$y6[1] <- mean(Y6$TotalPrisonPop)
  pTotalTmp$y7[1] <- mean(Y7$TotalPrisonPop)
  pTotalTmp$y8[1] <- mean(Y8$TotalPrisonPop)
  pTotalTmp$y9[1] <- mean(Y9$TotalPrisonPop)
  pTotalTmp$y10[1] <- mean(Y10$TotalPrisonPop)
  pTotalTmp$y11[1] <- mean(Y11$TotalPrisonPop)
  pTotalTmp$y12[1] <- mean(Y12$TotalPrisonPop)
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
  
  pPointTotalTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pPointTotalTmp[1,] <- 0
  pPointTotalTmp$y6[1] <- Y6$TotalPrisonPop[365]
  pPointTotalTmp$y7[1] <- Y7$TotalPrisonPop[365]
  pPointTotalTmp$y8[1] <- Y8$TotalPrisonPop[365]
  pPointTotalTmp$y9[1] <- Y9$TotalPrisonPop[365]
  pPointTotalTmp$y10[1] <- Y10$TotalPrisonPop[365]
  pPointTotalTmp$y11[1] <- Y11$TotalPrisonPop[365]
  pPointTotalTmp$y12[1] <- Y12$TotalPrisonPop[365]
  pPointTotalTmp$y13[1] <- Y13$TotalPrisonPop[365]
  pPointTotalTmp$y14[1] <- Y14$TotalPrisonPop[365]
  pPointTotalTmp$y15[1] <- Y15$TotalPrisonPop[365]
  pPointTotalTmp$y16[1] <- Y16$TotalPrisonPop[365]
  pPointTotalTmp$y17[1] <- Y17$TotalPrisonPop[365]
  pPointTotalTmp$y18[1] <- Y18$TotalPrisonPop[365]
  pPointTotalTmp$y19[1] <- Y19$TotalPrisonPop[365]
  pPointTotalTmp$y20[1] <- Y20$TotalPrisonPop[365]
  pPointTotalTmp$y21[1] <- Y21$TotalPrisonPop[365]
  pPointTotalTmp$y22[1] <- Y22$TotalPrisonPop[365]
  pPointTotalTmp$y23[1] <- Y23$TotalPrisonPop[365]
  pPointTotalTmp$y24[1] <- Y24$TotalPrisonPop[365]
  pPointTotalTmp$y25[1] <- Y25$TotalPrisonPop[365]
  pPointTotalTmp$y26[1] <- Y26$TotalPrisonPop[365]
  pPointTotalTmp$y27[1] <- Y27$TotalPrisonPop[365]
  pPointTotalTmp$y28[1] <- Y28$TotalPrisonPop[365]
  pPointTotalTmp$y29[1] <- Y29$TotalPrisonPop[365]
  pPointTotalTmp$y30[1] <- Y30$TotalPrisonPop[365]
  pPointTotalC <- rbind(pPointTotalC, pPointTotalTmp)
  
  pReTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pReTmp[1,] <- 0
  pReTmp$y6[1] <- mean(Y6$reinfected)
  pReTmp$y7[1] <- mean(Y7$reinfected)
  pReTmp$y8[1] <- mean(Y8$reinfected)
  pReTmp$y9[1] <- mean(Y9$reinfected)
  pReTmp$y10[1] <- mean(Y10$reinfected)
  pReTmp$y11[1] <- mean(Y11$reinfected)
  pReTmp$y12[1] <- mean(Y12$reinfected)
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
  
  pNcTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pNcTmp[1,] <- 0
  pNcTmp$y6[1] <- mean(Y6$NewCases)
  pNcTmp$y7[1] <- mean(Y7$NewCases)
  pNcTmp$y8[1] <- mean(Y8$NewCases)
  pNcTmp$y9[1] <- mean(Y9$NewCases)
  pNcTmp$y10[1] <- mean(Y10$NewCases)
  pNcTmp$y11[1] <- mean(Y11$NewCases)
  pNcTmp$y12[1] <- mean(Y12$NewCases)
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
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pNcTmp[1,] <- 0
  pNcTmp$y6[1] <- sum(Y6$NewCases)
  pNcTmp$y7[1] <- sum(Y7$NewCases)
  pNcTmp$y8[1] <- sum(Y8$NewCases)
  pNcTmp$y9[1] <- sum(Y9$NewCases)
  pNcTmp$y10[1] <- sum(Y10$NewCases)
  pNcTmp$y11[1] <- sum(Y11$NewCases)
  pNcTmp$y12[1] <- sum(Y12$NewCases)
  pNcTmp$y13[1] <- sum(Y13$NewCases)
  pNcTmp$y14[1] <- sum(Y14$NewCases)
  pNcTmp$y15[1] <- sum(Y15$NewCases)
  pNcTmp$y16[1] <- sum(Y16$NewCases)
  pNcTmp$y17[1] <- sum(Y17$NewCases)
  pNcTmp$y18[1] <- sum(Y18$NewCases)
  pNcTmp$y19[1] <- sum(Y19$NewCases)
  pNcTmp$y20[1] <- sum(Y20$NewCases)
  pNcTmp$y21[1] <- sum(Y21$NewCases)
  pNcTmp$y22[1] <- sum(Y22$NewCases)
  pNcTmp$y23[1] <- sum(Y23$NewCases)
  pNcTmp$y24[1] <- sum(Y24$NewCases)
  pNcTmp$y25[1] <- sum(Y25$NewCases)
  pNcTmp$y26[1] <- sum(Y26$NewCases)
  pNcTmp$y27[1] <- sum(Y27$NewCases)
  pNcTmp$y28[1] <- sum(Y28$NewCases)
  pNcTmp$y29[1] <- sum(Y29$NewCases)
  pNcTmp$y30[1] <- sum(Y30$NewCases)
  pNewCasesSumC <- rbind(pNewCasesSumC, pNcTmp)
  
  pIDUTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pIDUTmp[1,] <- 0
  pIDUTmp$y6[1] <- mean(Y6$Pmin0+Y6$Pmin1+Y6$Pmin2+Y6$Pmin3+Y6$Pmin4+Y6$Pmin5+Y6$Pmed0+Y6$Pmed1+Y6$Pmed2+Y6$Pmed3+Y6$Pmed4+Y6$Pmed5+Y6$Pmax0+Y6$Pmax1+Y6$Pmax2+Y6$Pmax3+Y6$Pmax4+Y6$Pmax5)
  pIDUTmp$y7[1] <- mean(Y7$Pmin0+Y7$Pmin1+Y7$Pmin2+Y7$Pmin3+Y7$Pmin4+Y7$Pmin5+Y7$Pmed0+Y7$Pmed1+Y7$Pmed2+Y7$Pmed3+Y7$Pmed4+Y7$Pmed5+Y7$Pmax0+Y7$Pmax1+Y7$Pmax2+Y7$Pmax3+Y7$Pmax4+Y7$Pmax5)
  pIDUTmp$y8[1] <- mean(Y8$Pmin0+Y8$Pmin1+Y8$Pmin2+Y8$Pmin3+Y8$Pmin4+Y8$Pmin5+Y8$Pmed0+Y8$Pmed1+Y8$Pmed2+Y8$Pmed3+Y8$Pmed4+Y8$Pmed5+Y8$Pmax0+Y8$Pmax1+Y8$Pmax2+Y8$Pmax3+Y8$Pmax4+Y8$Pmax5)
  pIDUTmp$y9[1] <- mean(Y9$Pmin0+Y9$Pmin1+Y9$Pmin2+Y9$Pmin3+Y9$Pmin4+Y9$Pmin5+Y9$Pmed0+Y9$Pmed1+Y9$Pmed2+Y9$Pmed3+Y9$Pmed4+Y9$Pmed5+Y9$Pmax0+Y9$Pmax1+Y9$Pmax2+Y9$Pmax3+Y9$Pmax4+Y9$Pmax5)
  pIDUTmp$y10[1] <- mean(Y10$Pmin0+Y10$Pmin1+Y10$Pmin2+Y10$Pmin3+Y10$Pmin4+Y10$Pmin5+Y10$Pmed0+Y10$Pmed1+Y10$Pmed2+Y10$Pmed3+Y10$Pmed4+Y10$Pmed5+Y10$Pmax0+Y10$Pmax1+Y10$Pmax2+Y10$Pmax3+Y10$Pmax4+Y10$Pmax5)
  pIDUTmp$y11[1] <- mean(Y11$Pmin0+Y11$Pmin1+Y11$Pmin2+Y11$Pmin3+Y11$Pmin4+Y11$Pmin5+Y11$Pmed0+Y11$Pmed1+Y11$Pmed2+Y11$Pmed3+Y11$Pmed4+Y11$Pmed5+Y11$Pmax0+Y11$Pmax1+Y11$Pmax2+Y11$Pmax3+Y11$Pmax4+Y11$Pmax5)
  pIDUTmp$y12[1] <- mean(Y12$Pmin0+Y12$Pmin1+Y12$Pmin2+Y12$Pmin3+Y12$Pmin4+Y12$Pmin5+Y12$Pmed0+Y12$Pmed1+Y12$Pmed2+Y12$Pmed3+Y12$Pmed4+Y12$Pmed5+Y12$Pmax0+Y12$Pmax1+Y12$Pmax2+Y12$Pmax3+Y12$Pmax4+Y12$Pmax5)
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
  
  pPrisonTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pPrisonTmp[1,] <- 0
  pPrisonTmp$y6[1] <- mean(Y6$PrisonHCV)
  pPrisonTmp$y7[1] <- mean(Y7$PrisonHCV)
  pPrisonTmp$y8[1] <- mean(Y8$PrisonHCV)
  pPrisonTmp$y9[1] <- mean(Y9$PrisonHCV)
  pPrisonTmp$y10[1] <- mean(Y10$PrisonHCV)
  pPrisonTmp$y11[1] <- mean(Y11$PrisonHCV)
  pPrisonTmp$y12[1] <- mean(Y12$PrisonHCV)
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
  
  pOpdTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pOpdTmp[1,] <- 0
  pOpdTmp$y6[1] <- mean(Y6$OPD)
  pOpdTmp$y7[1] <- mean(Y7$OPD)
  pOpdTmp$y8[1] <- mean(Y8$OPD)
  pOpdTmp$y9[1] <- mean(Y9$OPD)
  pOpdTmp$y10[1] <- mean(Y10$OPD)
  pOpdTmp$y11[1] <- mean(Y11$OPD)
  pOpdTmp$y12[1] <- mean(Y12$OPD)
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
  
  pEverTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pEverTmp[1,] <- 0
  pEverTmp$y6[1] <- mean(Y6$everIDU)
  pEverTmp$y7[1] <- mean(Y7$everIDU)
  pEverTmp$y8[1] <- mean(Y8$everIDU)
  pEverTmp$y9[1] <- mean(Y9$everIDU)
  pEverTmp$y10[1] <- mean(Y10$everIDU)
  pEverTmp$y11[1] <- mean(Y11$everIDU)
  pEverTmp$y12[1] <- mean(Y12$everIDU)
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
  
  pEverSumTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pEverSumTmp[1,] <- 0
  pEverSumTmp$y6[1] <- sum(Y6$everIDU)
  pEverSumTmp$y7[1] <- sum(Y7$everIDU)
  pEverSumTmp$y8[1] <- sum(Y8$everIDU)
  pEverSumTmp$y9[1] <- sum(Y9$everIDU)
  pEverSumTmp$y10[1] <- sum(Y10$everIDU)
  pEverSumTmp$y11[1] <- sum(Y11$everIDU)
  pEverSumTmp$y12[1] <- sum(Y12$everIDU)
  pEverSumTmp$y13[1] <- sum(Y13$everIDU)
  pEverSumTmp$y14[1] <- sum(Y14$everIDU)
  pEverSumTmp$y15[1] <- sum(Y15$everIDU)
  pEverSumTmp$y16[1] <- sum(Y16$everIDU)
  pEverSumTmp$y17[1] <- sum(Y17$everIDU)
  pEverSumTmp$y18[1] <- sum(Y18$everIDU)
  pEverSumTmp$y19[1] <- sum(Y19$everIDU)
  pEverSumTmp$y20[1] <- sum(Y20$everIDU)
  pEverSumTmp$y21[1] <- sum(Y21$everIDU)
  pEverSumTmp$y22[1] <- sum(Y22$everIDU)
  pEverSumTmp$y23[1] <- sum(Y23$everIDU)
  pEverSumTmp$y24[1] <- sum(Y24$everIDU)
  pEverSumTmp$y25[1] <- sum(Y25$everIDU)
  pEverSumTmp$y26[1] <- sum(Y26$everIDU)
  pEverSumTmp$y27[1] <- sum(Y27$everIDU)
  pEverSumTmp$y28[1] <- sum(Y28$everIDU)
  pEverSumTmp$y29[1] <- sum(Y29$everIDU)
  pEverSumTmp$y30[1] <- sum(Y30$everIDU)
  pEverIDUSumC <- rbind(pEverIDUSumC, pEverSumTmp)
  
  pClrTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  pClrTmp[1,] <- 0
  pClrTmp$y6[1] <- mean(Y6$totalClrDAA)
  pClrTmp$y7[1] <- mean(Y7$totalClrDAA)
  pClrTmp$y8[1] <- mean(Y8$totalClrDAA)
  pClrTmp$y9[1] <- mean(Y9$totalClrDAA)
  pClrTmp$y10[1] <- mean(Y10$totalClrDAA)
  pClrTmp$y11[1] <- mean(Y11$totalClrDAA)
  pClrTmp$y12[1] <- mean(Y12$totalClrDAA)
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
  
  ptDAATmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptDAATmp[1,] <- 0
  ptDAATmp$y6[1] <- mean(Y6$totalDAA)
  ptDAATmp$y7[1] <- mean(Y7$totalDAA)
  ptDAATmp$y8[1] <- mean(Y8$totalDAA)
  ptDAATmp$y9[1] <- mean(Y9$totalDAA)
  ptDAATmp$y10[1] <- mean(Y10$totalDAA)
  ptDAATmp$y11[1] <- mean(Y11$totalDAA)
  ptDAATmp$y12[1] <- mean(Y12$totalDAA)
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
  
  ptOSTTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptOSTTmp[1,] <- 0
  ptOSTTmp$y6[1] <- mean(Y6$totalOST)
  ptOSTTmp$y7[1] <- mean(Y7$totalOST)
  ptOSTTmp$y8[1] <- mean(Y8$totalOST)
  ptOSTTmp$y9[1] <- mean(Y9$totalOST)
  ptOSTTmp$y10[1] <- mean(Y10$totalOST)
  ptOSTTmp$y11[1] <- mean(Y11$totalOST)
  ptOSTTmp$y12[1] <- mean(Y12$totalOST)
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
  
#  ptHCVeTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
#  ptHCVeTmp[1,] <- 0
#  ptHCVeTmp$y6[1] <- mean(Y6$HCVe)
#  ptHCVeTmp$y7[1] <- mean(Y7$HCVe)
#  ptHCVeTmp$y8[1] <- mean(Y8$HCVe)
#  ptHCVeTmp$y9[1] <- mean(Y9$HCVe)
#  ptHCVeTmp$y10[1] <- mean(Y10$HCVe)
#  ptHCVeTmp$y11[1] <- mean(Y11$HCVe)
#  ptHCVeTmp$y12[1] <- mean(Y12$HCVe)
#  ptHCVeTmp$y13[1] <- mean(Y13$HCVe)
#  ptHCVeTmp$y14[1] <- mean(Y14$HCVe)
#  ptHCVeTmp$y15[1] <- mean(Y15$HCVe)
#  ptHCVeTmp$y16[1] <- mean(Y16$HCVe)
#  ptHCVeTmp$y17[1] <- mean(Y17$HCVe)
#  ptHCVeTmp$y18[1] <- mean(Y18$HCVe)
#  ptHCVeTmp$y19[1] <- mean(Y19$HCVe)
#  ptHCVeTmp$y20[1] <- mean(Y20$HCVe)
#  ptHCVeTmp$y21[1] <- mean(Y21$HCVe)
#  ptHCVeTmp$y22[1] <- mean(Y22$HCVe)
#  ptHCVeTmp$y23[1] <- mean(Y23$HCVe)
#  ptHCVeTmp$y24[1] <- mean(Y24$HCVe)
#  ptHCVeTmp$y25[1] <- mean(Y25$HCVe)
#  ptHCVeTmp$y26[1] <- mean(Y26$HCVe)
#  ptHCVeTmp$y27[1] <- mean(Y27$HCVe)
#  ptHCVeTmp$y28[1] <- mean(Y28$HCVe)
#  ptHCVeTmp$y29[1] <- mean(Y29$HCVe)
#  ptHCVeTmp$y30[1] <- mean(Y30$HCVe)
#  pTotalHCVeC <- rbind(pTotalHCVeC, ptHCVeTmp)
  
  ptHCVTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptHCVTmp[1,] <- 0
  ptHCVTmp$y6[1] <- mean(Y6$Pmin0+Y6$Pmin1+Y6$Pmin6+Y6$Pmin7+Y6$Pmed0+Y6$Pmed1+Y6$Pmed6+Y6$Pmed7+Y6$Pmax0+Y6$Pmax1+Y6$Pmax6+Y6$Pmax7)
  ptHCVTmp$y7[1] <- mean(Y7$Pmin0+Y7$Pmin1+Y7$Pmin6+Y7$Pmin7+Y7$Pmed0+Y7$Pmed1+Y7$Pmed6+Y7$Pmed7+Y7$Pmax0+Y7$Pmax1+Y7$Pmax6+Y7$Pmax7)
  ptHCVTmp$y8[1] <- mean(Y8$Pmin0+Y8$Pmin1+Y8$Pmin6+Y8$Pmin7+Y8$Pmed0+Y8$Pmed1+Y8$Pmed6+Y8$Pmed7+Y8$Pmax0+Y8$Pmax1+Y8$Pmax6+Y8$Pmax7)
  ptHCVTmp$y9[1] <- mean(Y9$Pmin0+Y9$Pmin1+Y9$Pmin6+Y9$Pmin7+Y9$Pmed0+Y9$Pmed1+Y9$Pmed6+Y9$Pmed7+Y9$Pmax0+Y9$Pmax1+Y9$Pmax6+Y9$Pmax7)
  ptHCVTmp$y10[1] <- mean(Y10$Pmin0+Y10$Pmin1+Y10$Pmin6+Y10$Pmin7+Y10$Pmed0+Y10$Pmed1+Y10$Pmed6+Y10$Pmed7+Y10$Pmax0+Y10$Pmax1+Y10$Pmax6+Y10$Pmax7)
  ptHCVTmp$y11[1] <- mean(Y11$Pmin0+Y11$Pmin1+Y11$Pmin6+Y11$Pmin7+Y11$Pmed0+Y11$Pmed1+Y11$Pmed6+Y11$Pmed7+Y11$Pmax0+Y11$Pmax1+Y11$Pmax6+Y11$Pmax7)
  ptHCVTmp$y12[1] <- mean(Y12$Pmin0+Y12$Pmin1+Y12$Pmin6+Y12$Pmin7+Y12$Pmed0+Y12$Pmed1+Y12$Pmed6+Y12$Pmed7+Y12$Pmax0+Y12$Pmax1+Y12$Pmax6+Y12$Pmax7)
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
  pTotalHCVRNAC <- rbind(pTotalHCVRNAC, ptHCVTmp)
  
  ptHCVabTmp <- data.frame(y06=NA, y07=NA, y08=NA, y09=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA)[numeric(0), ]
  ptHCVabTmp[1,] <- 0
  ptHCVabTmp$y6[1] <- mean(Y6$Pmin0+Y6$Pmin1+Y6$Pmin2+Y6$Pmin4+Y6$Pmin6+Y6$Pmin7+Y6$Pmin8+Y6$Pmin10+Y6$Pmed0+Y6$Pmed1+Y6$Pmed2+Y6$Pmed4+Y6$Pmed6+Y6$Pmed7+Y6$Pmed8+Y6$Pmed10+Y6$Pmax0+Y6$Pmax1+Y6$Pmax2+Y6$Pmax4+Y6$Pmax6+Y6$Pmax7+Y6$Pmax8+Y6$Pmax10)
  ptHCVabTmp$y7[1] <- mean(Y7$Pmin0+Y7$Pmin1+Y7$Pmin2+Y7$Pmin4+Y7$Pmin6+Y7$Pmin7+Y7$Pmin8+Y7$Pmin10+Y7$Pmed0+Y7$Pmed1+Y7$Pmed2+Y7$Pmed4+Y7$Pmed6+Y7$Pmed7+Y7$Pmed8+Y7$Pmed10+Y7$Pmax0+Y7$Pmax1+Y7$Pmax2+Y7$Pmax4+Y7$Pmax6+Y7$Pmax7+Y7$Pmax8+Y7$Pmax10)
  ptHCVabTmp$y8[1] <- mean(Y8$Pmin0+Y8$Pmin1+Y8$Pmin2+Y8$Pmin4+Y8$Pmin6+Y8$Pmin7+Y8$Pmin8+Y8$Pmin10+Y8$Pmed0+Y8$Pmed1+Y8$Pmed2+Y8$Pmed4+Y8$Pmed6+Y8$Pmed7+Y8$Pmed8+Y8$Pmed10+Y8$Pmax0+Y8$Pmax1+Y8$Pmax2+Y8$Pmax4+Y8$Pmax6+Y8$Pmax7+Y8$Pmax8+Y8$Pmax10)
  ptHCVabTmp$y9[1] <- mean(Y9$Pmin0+Y9$Pmin1+Y9$Pmin2+Y9$Pmin4+Y9$Pmin6+Y9$Pmin7+Y9$Pmin8+Y9$Pmin10+Y9$Pmed0+Y9$Pmed1+Y9$Pmed2+Y9$Pmed4+Y9$Pmed6+Y9$Pmed7+Y9$Pmed8+Y9$Pmed10+Y9$Pmax0+Y9$Pmax1+Y9$Pmax2+Y9$Pmax4+Y9$Pmax6+Y9$Pmax7+Y9$Pmax8+Y9$Pmax10)
  ptHCVabTmp$y10[1] <- mean(Y10$Pmin0+Y10$Pmin1+Y10$Pmin2+Y10$Pmin4+Y10$Pmin6+Y10$Pmin7+Y10$Pmin8+Y10$Pmin10+Y10$Pmed0+Y10$Pmed1+Y10$Pmed2+Y10$Pmed4+Y10$Pmed6+Y10$Pmed7+Y10$Pmed8+Y10$Pmed10+Y10$Pmax0+Y10$Pmax1+Y10$Pmax2+Y10$Pmax4+Y10$Pmax6+Y10$Pmax7+Y10$Pmax8+Y10$Pmax10)
  ptHCVabTmp$y11[1] <- mean(Y11$Pmin0+Y11$Pmin1+Y11$Pmin2+Y11$Pmin4+Y11$Pmin6+Y11$Pmin7+Y11$Pmin8+Y11$Pmin10+Y11$Pmed0+Y11$Pmed1+Y11$Pmed2+Y11$Pmed4+Y11$Pmed6+Y11$Pmed7+Y11$Pmed8+Y11$Pmed10+Y11$Pmax0+Y11$Pmax1+Y11$Pmax2+Y11$Pmax4+Y11$Pmax6+Y11$Pmax7+Y11$Pmax8+Y11$Pmax10)
  ptHCVabTmp$y12[1] <- mean(Y12$Pmin0+Y12$Pmin1+Y12$Pmin2+Y12$Pmin4+Y12$Pmin6+Y12$Pmin7+Y12$Pmin8+Y12$Pmin10+Y12$Pmed0+Y12$Pmed1+Y12$Pmed2+Y12$Pmed4+Y12$Pmed6+Y12$Pmed7+Y12$Pmed8+Y12$Pmed10+Y12$Pmax0+Y12$Pmax1+Y12$Pmax2+Y12$Pmax4+Y12$Pmax6+Y12$Pmax7+Y12$Pmax8+Y12$Pmax10)
  ptHCVabTmp$y13[1] <- mean(Y13$Pmin0+Y13$Pmin1+Y13$Pmin2+Y13$Pmin4+Y13$Pmin6+Y13$Pmin7+Y13$Pmin8+Y13$Pmin10+Y13$Pmed0+Y13$Pmed1+Y13$Pmed2+Y13$Pmed4+Y13$Pmed6+Y13$Pmed7+Y13$Pmed8+Y13$Pmed10+Y13$Pmax0+Y13$Pmax1+Y13$Pmax2+Y13$Pmax4+Y13$Pmax6+Y13$Pmax7+Y13$Pmax8+Y13$Pmax10)
  ptHCVabTmp$y14[1] <- mean(Y14$Pmin0+Y14$Pmin1+Y14$Pmin2+Y14$Pmin4+Y14$Pmin6+Y14$Pmin7+Y14$Pmin8+Y14$Pmin10+Y14$Pmed0+Y14$Pmed1+Y14$Pmed2+Y14$Pmed4+Y14$Pmed6+Y14$Pmed7+Y14$Pmed8+Y14$Pmed10+Y14$Pmax0+Y14$Pmax1+Y14$Pmax2+Y14$Pmax4+Y14$Pmax6+Y14$Pmax7+Y14$Pmax8+Y14$Pmax10)
  ptHCVabTmp$y15[1] <- mean(Y15$Pmin0+Y15$Pmin1+Y15$Pmin2+Y15$Pmin4+Y15$Pmin6+Y15$Pmin7+Y15$Pmin8+Y15$Pmin10+Y15$Pmed0+Y15$Pmed1+Y15$Pmed2+Y15$Pmed4+Y15$Pmed6+Y15$Pmed7+Y15$Pmed8+Y15$Pmed10+Y15$Pmax0+Y15$Pmax1+Y15$Pmax2+Y15$Pmax4+Y15$Pmax6+Y15$Pmax7+Y15$Pmax8+Y15$Pmax10)
  ptHCVabTmp$y16[1] <- mean(Y16$Pmin0+Y16$Pmin1+Y16$Pmin2+Y16$Pmin4+Y16$Pmin6+Y16$Pmin7+Y16$Pmin8+Y16$Pmin10+Y16$Pmed0+Y16$Pmed1+Y16$Pmed2+Y16$Pmed4+Y16$Pmed6+Y16$Pmed7+Y16$Pmed8+Y16$Pmed10+Y16$Pmax0+Y16$Pmax1+Y16$Pmax2+Y16$Pmax4+Y16$Pmax6+Y16$Pmax7+Y16$Pmax8+Y16$Pmax10)
  ptHCVabTmp$y17[1] <- mean(Y17$Pmin0+Y17$Pmin1+Y17$Pmin2+Y17$Pmin4+Y17$Pmin6+Y17$Pmin7+Y17$Pmin8+Y17$Pmin10+Y17$Pmed0+Y17$Pmed1+Y17$Pmed2+Y17$Pmed4+Y17$Pmed6+Y17$Pmed7+Y17$Pmed8+Y17$Pmed10+Y17$Pmax0+Y17$Pmax1+Y17$Pmax2+Y17$Pmax4+Y17$Pmax6+Y17$Pmax7+Y17$Pmax8+Y17$Pmax10)
  ptHCVabTmp$y18[1] <- mean(Y18$Pmin0+Y18$Pmin1+Y18$Pmin2+Y18$Pmin4+Y18$Pmin6+Y18$Pmin7+Y18$Pmin8+Y18$Pmin10+Y18$Pmed0+Y18$Pmed1+Y18$Pmed2+Y18$Pmed4+Y18$Pmed6+Y18$Pmed7+Y18$Pmed8+Y18$Pmed10+Y18$Pmax0+Y18$Pmax1+Y18$Pmax2+Y18$Pmax4+Y18$Pmax6+Y18$Pmax7+Y18$Pmax8+Y18$Pmax10)
  ptHCVabTmp$y19[1] <- mean(Y19$Pmin0+Y19$Pmin1+Y19$Pmin2+Y19$Pmin4+Y19$Pmin6+Y19$Pmin7+Y19$Pmin8+Y19$Pmin10+Y19$Pmed0+Y19$Pmed1+Y19$Pmed2+Y19$Pmed4+Y19$Pmed6+Y19$Pmed7+Y19$Pmed8+Y19$Pmed10+Y19$Pmax0+Y19$Pmax1+Y19$Pmax2+Y19$Pmax4+Y19$Pmax6+Y19$Pmax7+Y19$Pmax8+Y19$Pmax10)
  ptHCVabTmp$y20[1] <- mean(Y20$Pmin0+Y20$Pmin1+Y20$Pmin2+Y20$Pmin4+Y20$Pmin6+Y20$Pmin7+Y20$Pmin8+Y20$Pmin10+Y20$Pmed0+Y20$Pmed1+Y20$Pmed2+Y20$Pmed4+Y20$Pmed6+Y20$Pmed7+Y20$Pmed8+Y20$Pmed10+Y20$Pmax0+Y20$Pmax1+Y20$Pmax2+Y20$Pmax4+Y20$Pmax6+Y20$Pmax7+Y20$Pmax8+Y20$Pmax10)
  ptHCVabTmp$y21[1] <- mean(Y21$Pmin0+Y21$Pmin1+Y21$Pmin2+Y21$Pmin4+Y21$Pmin6+Y21$Pmin7+Y21$Pmin8+Y21$Pmin10+Y21$Pmed0+Y21$Pmed1+Y21$Pmed2+Y21$Pmed4+Y21$Pmed6+Y21$Pmed7+Y21$Pmed8+Y21$Pmed10+Y21$Pmax0+Y21$Pmax1+Y21$Pmax2+Y21$Pmax4+Y21$Pmax6+Y21$Pmax7+Y21$Pmax8+Y21$Pmax10)
  ptHCVabTmp$y22[1] <- mean(Y22$Pmin0+Y22$Pmin1+Y22$Pmin2+Y22$Pmin4+Y22$Pmin6+Y22$Pmin7+Y22$Pmin8+Y22$Pmin10+Y22$Pmed0+Y22$Pmed1+Y22$Pmed2+Y22$Pmed4+Y22$Pmed6+Y22$Pmed7+Y22$Pmed8+Y22$Pmed10+Y22$Pmax0+Y22$Pmax1+Y22$Pmax2+Y22$Pmax4+Y22$Pmax6+Y22$Pmax7+Y22$Pmax8+Y22$Pmax10)
  ptHCVabTmp$y23[1] <- mean(Y23$Pmin0+Y23$Pmin1+Y23$Pmin2+Y23$Pmin4+Y23$Pmin6+Y23$Pmin7+Y23$Pmin8+Y23$Pmin10+Y23$Pmed0+Y23$Pmed1+Y23$Pmed2+Y23$Pmed4+Y23$Pmed6+Y23$Pmed7+Y23$Pmed8+Y23$Pmed10+Y23$Pmax0+Y23$Pmax1+Y23$Pmax2+Y23$Pmax4+Y23$Pmax6+Y23$Pmax7+Y23$Pmax8+Y23$Pmax10)
  ptHCVabTmp$y24[1] <- mean(Y24$Pmin0+Y24$Pmin1+Y24$Pmin2+Y24$Pmin4+Y24$Pmin6+Y24$Pmin7+Y24$Pmin8+Y24$Pmin10+Y24$Pmed0+Y24$Pmed1+Y24$Pmed2+Y24$Pmed4+Y24$Pmed6+Y24$Pmed7+Y24$Pmed8+Y24$Pmed10+Y24$Pmax0+Y24$Pmax1+Y24$Pmax2+Y24$Pmax4+Y24$Pmax6+Y24$Pmax7+Y24$Pmax8+Y24$Pmax10)
  ptHCVabTmp$y25[1] <- mean(Y25$Pmin0+Y25$Pmin1+Y25$Pmin2+Y25$Pmin4+Y25$Pmin6+Y25$Pmin7+Y25$Pmin8+Y25$Pmin10+Y25$Pmed0+Y25$Pmed1+Y25$Pmed2+Y25$Pmed4+Y25$Pmed6+Y25$Pmed7+Y25$Pmed8+Y25$Pmed10+Y25$Pmax0+Y25$Pmax1+Y25$Pmax2+Y25$Pmax4+Y25$Pmax6+Y25$Pmax7+Y25$Pmax8+Y25$Pmax10)
  ptHCVabTmp$y26[1] <- mean(Y26$Pmin0+Y26$Pmin1+Y26$Pmin2+Y26$Pmin4+Y26$Pmin6+Y26$Pmin7+Y26$Pmin8+Y26$Pmin10+Y26$Pmed0+Y26$Pmed1+Y26$Pmed2+Y26$Pmed4+Y26$Pmed6+Y26$Pmed7+Y26$Pmed8+Y26$Pmed10+Y26$Pmax0+Y26$Pmax1+Y26$Pmax2+Y26$Pmax4+Y26$Pmax6+Y26$Pmax7+Y26$Pmax8+Y26$Pmax10)
  ptHCVabTmp$y27[1] <- mean(Y27$Pmin0+Y27$Pmin1+Y27$Pmin2+Y27$Pmin4+Y27$Pmin6+Y27$Pmin7+Y27$Pmin8+Y27$Pmin10+Y27$Pmed0+Y27$Pmed1+Y27$Pmed2+Y27$Pmed4+Y27$Pmed6+Y27$Pmed7+Y27$Pmed8+Y27$Pmed10+Y27$Pmax0+Y27$Pmax1+Y27$Pmax2+Y27$Pmax4+Y27$Pmax6+Y27$Pmax7+Y27$Pmax8+Y27$Pmax10)
  ptHCVabTmp$y28[1] <- mean(Y28$Pmin0+Y28$Pmin1+Y28$Pmin2+Y28$Pmin4+Y28$Pmin6+Y28$Pmin7+Y28$Pmin8+Y28$Pmin10+Y28$Pmed0+Y28$Pmed1+Y28$Pmed2+Y28$Pmed4+Y28$Pmed6+Y28$Pmed7+Y28$Pmed8+Y28$Pmed10+Y28$Pmax0+Y28$Pmax1+Y28$Pmax2+Y28$Pmax4+Y28$Pmax6+Y28$Pmax7+Y28$Pmax8+Y28$Pmax10)
  ptHCVabTmp$y29[1] <- mean(Y29$Pmin0+Y29$Pmin1+Y29$Pmin2+Y29$Pmin4+Y29$Pmin6+Y29$Pmin7+Y29$Pmin8+Y29$Pmin10+Y29$Pmed0+Y29$Pmed1+Y29$Pmed2+Y29$Pmed4+Y29$Pmed6+Y29$Pmed7+Y29$Pmed8+Y29$Pmed10+Y29$Pmax0+Y29$Pmax1+Y29$Pmax2+Y29$Pmax4+Y29$Pmax6+Y29$Pmax7+Y29$Pmax8+Y29$Pmax10)
  ptHCVabTmp$y30[1] <- mean(Y30$Pmin0+Y30$Pmin1+Y30$Pmin2+Y30$Pmin4+Y30$Pmin6+Y30$Pmin7+Y30$Pmin8+Y30$Pmin10+Y30$Pmed0+Y30$Pmed1+Y30$Pmed2+Y30$Pmed4+Y30$Pmed6+Y30$Pmed7+Y30$Pmed8+Y30$Pmed10+Y30$Pmax0+Y30$Pmax1+Y30$Pmax2+Y30$Pmax4+Y30$Pmax6+Y30$Pmax7+Y30$Pmax8+Y30$Pmax10)
  pTotalHCVabC <- rbind(pTotalHCVabC, ptHCVabTmp)
  
  pPointHCVabTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pPointHCVabTmp[1,] <- 0
  pPointHCVabTmp$y6[1] <- Y6$HCVab[365]
  pPointHCVabTmp$y7[1] <- Y7$HCVab[365]
  pPointHCVabTmp$y8[1] <- Y8$HCVab[365]
  pPointHCVabTmp$y9[1] <- Y9$HCVab[365]
  pPointHCVabTmp$y10[1] <- Y10$HCVab[365]
  pPointHCVabTmp$y11[1] <- Y11$HCVab[365]
  pPointHCVabTmp$y12[1] <- Y12$HCVab[365]
  pPointHCVabTmp$y13[1] <- Y13$HCVab[365]
  pPointHCVabTmp$y14[1] <- Y14$HCVab[365]
  pPointHCVabTmp$y15[1] <- Y15$HCVab[365]
  pPointHCVabTmp$y16[1] <- Y16$HCVab[365]
  pPointHCVabTmp$y17[1] <- Y17$HCVab[365]
  pPointHCVabTmp$y18[1] <- Y18$HCVab[365]
  pPointHCVabTmp$y19[1] <- Y19$HCVab[365]
  pPointHCVabTmp$y20[1] <- Y20$HCVab[365]
  pPointHCVabTmp$y21[1] <- Y21$HCVab[365]
  pPointHCVabTmp$y22[1] <- Y22$HCVab[365]
  pPointHCVabTmp$y23[1] <- Y23$HCVab[365]
  pPointHCVabTmp$y24[1] <- Y24$HCVab[365]
  pPointHCVabTmp$y25[1] <- Y25$HCVab[365]
  pPointHCVabTmp$y26[1] <- Y26$HCVab[365]
  pPointHCVabTmp$y27[1] <- Y27$HCVab[365]
  pPointHCVabTmp$y28[1] <- Y28$HCVab[365]
  pPointHCVabTmp$y29[1] <- Y29$HCVab[365]
  pPointHCVabTmp$y30[1] <- Y30$HCVab[365]
  pPointHCVabC <- rbind(pPointHCVabC, pPointHCVabTmp)
}

#Incidence and Prevalence
#TotalIDU incidence and prevalence
HCVA <- data.frame("IncidenceIDU"=c(((mean(pNewCasesA$y13)/mean(pEverIDUA$y13))*100)*365, ((mean(pNewCasesA$y14)/mean(pEverIDUA$y14))*100)*365, ((mean(pNewCasesA$y15)/mean(pEverIDUA$y15))*100)*365, ((mean(pNewCasesA$y16)/mean(pEverIDUA$y16))*100)*365, ((mean(pNewCasesA$y17)/mean(pEverIDUA$y17))*100)*365, ((mean(pNewCasesA$y18)/mean(pEverIDUA$y18))*100)*365, ((mean(pNewCasesA$y19)/mean(pEverIDUA$y19))*100)*365, ((mean(pNewCasesA$y20)/mean(pEverIDUA$y20))*100)*365, ((mean(pNewCasesA$y21)/mean(pEverIDUA$y21))*100)*365, ((mean(pNewCasesA$y22)/mean(pEverIDUA$y22))*100)*365, ((mean(pNewCasesA$y23)/mean(pEverIDUA$y23))*100)*365, ((mean(pNewCasesA$y24)/mean(pEverIDUA$y24))*100)*365, ((mean(pNewCasesA$y25)/mean(pEverIDUA$y25))*100)*365, ((mean(pNewCasesA$y26)/mean(pEverIDUA$y26))*100)*365, ((mean(pNewCasesA$y27)/mean(pEverIDUA$y27))*100)*365, ((mean(pNewCasesA$y28)/mean(pEverIDUA$y28))*100)*365, ((mean(pNewCasesA$y29)/mean(pEverIDUA$y29))*100)*365, ((mean(pNewCasesA$y30)/mean(pEverIDUA$y30))*100)*365))
HCVA$IncidenceFloor <- c(((min(pNewCasesA$y13)/mean(pEverIDUA$y13))*100)*365, ((min(pNewCasesA$y14)/mean(pEverIDUA$y14))*100)*365, ((min(pNewCasesA$y15)/mean(pEverIDUA$y15))*100)*365, ((min(pNewCasesA$y16)/mean(pEverIDUA$y16))*100)*365, ((min(pNewCasesA$y17)/mean(pEverIDUA$y17))*100)*365, ((min(pNewCasesA$y18)/mean(pEverIDUA$y18))*100)*365, ((min(pNewCasesA$y19)/mean(pEverIDUA$y19))*100)*365, ((min(pNewCasesA$y20)/mean(pEverIDUA$y20))*100)*365, ((min(pNewCasesA$y21)/mean(pEverIDUA$y21))*100)*365, ((min(pNewCasesA$y22)/mean(pEverIDUA$y22))*100)*365, ((min(pNewCasesA$y23)/mean(pEverIDUA$y23))*100)*365, ((min(pNewCasesA$y24)/mean(pEverIDUA$y24))*100)*365, ((min(pNewCasesA$y25)/mean(pEverIDUA$y25))*100)*365, ((min(pNewCasesA$y26)/mean(pEverIDUA$y26))*100)*365, ((min(pNewCasesA$y27)/mean(pEverIDUA$y27))*100)*365, ((min(pNewCasesA$y28)/mean(pEverIDUA$y28))*100)*365, ((min(pNewCasesA$y29)/mean(pEverIDUA$y29))*100)*365, ((min(pNewCasesA$y30)/mean(pEverIDUA$y30))*100)*365)
HCVA$IncidenceCeiling <- c(((max(pNewCasesA$y13)/mean(pEverIDUA$y13))*100)*365, ((max(pNewCasesA$y14)/mean(pEverIDUA$y14))*100)*365, ((max(pNewCasesA$y15)/mean(pEverIDUA$y15))*100)*365, ((max(pNewCasesA$y16)/mean(pEverIDUA$y16))*100)*365, ((max(pNewCasesA$y17)/mean(pEverIDUA$y17))*100)*365, ((max(pNewCasesA$y18)/mean(pEverIDUA$y18))*100)*365, ((max(pNewCasesA$y19)/mean(pEverIDUA$y19))*100)*365, ((max(pNewCasesA$y20)/mean(pEverIDUA$y20))*100)*365, ((max(pNewCasesA$y21)/mean(pEverIDUA$y21))*100)*365, ((max(pNewCasesA$y22)/mean(pEverIDUA$y22))*100)*365, ((max(pNewCasesA$y23)/mean(pEverIDUA$y23))*100)*365, ((max(pNewCasesA$y24)/mean(pEverIDUA$y24))*100)*365, ((max(pNewCasesA$y25)/mean(pEverIDUA$y25))*100)*365, ((max(pNewCasesA$y26)/mean(pEverIDUA$y26))*100)*365, ((max(pNewCasesA$y27)/mean(pEverIDUA$y27))*100)*365, ((max(pNewCasesA$y28)/mean(pEverIDUA$y28))*100)*365, ((max(pNewCasesA$y29)/mean(pEverIDUA$y29))*100)*365, ((max(pNewCasesA$y30)/mean(pEverIDUA$y30))*100)*365)
HCVA$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVA$Description <- c("Status quo")#c("OST improved and retained at 1400 opioid users per year")

HCVB <- data.frame("IncidenceIDU"=c(((mean(pNewCasesB$y13)/mean(pEverIDUB$y13))*100)*365, ((mean(pNewCasesB$y14)/mean(pEverIDUB$y14))*100)*365, ((mean(pNewCasesB$y15)/mean(pEverIDUB$y15))*100)*365, ((mean(pNewCasesB$y16)/mean(pEverIDUB$y16))*100)*365, ((mean(pNewCasesB$y17)/mean(pEverIDUB$y17))*100)*365, ((mean(pNewCasesB$y18)/mean(pEverIDUB$y18))*100)*365, ((mean(pNewCasesB$y19)/mean(pEverIDUB$y19))*100)*365, ((mean(pNewCasesB$y20)/mean(pEverIDUB$y20))*100)*365, ((mean(pNewCasesB$y21)/mean(pEverIDUB$y21))*100)*365, ((mean(pNewCasesB$y22)/mean(pEverIDUB$y22))*100)*365, ((mean(pNewCasesB$y23)/mean(pEverIDUB$y23))*100)*365, ((mean(pNewCasesB$y24)/mean(pEverIDUB$y24))*100)*365, ((mean(pNewCasesB$y25)/mean(pEverIDUB$y25))*100)*365, ((mean(pNewCasesB$y26)/mean(pEverIDUB$y26))*100)*365, ((mean(pNewCasesB$y27)/mean(pEverIDUB$y27))*100)*365, ((mean(pNewCasesB$y28)/mean(pEverIDUB$y28))*100)*365, ((mean(pNewCasesB$y29)/mean(pEverIDUB$y29))*100)*365, ((mean(pNewCasesB$y30)/mean(pEverIDUB$y30))*100)*365))
HCVB$IncidenceFloor <- c(((min(pNewCasesB$y13)/mean(pEverIDUB$y13))*100)*365, ((min(pNewCasesB$y14)/mean(pEverIDUB$y14))*100)*365, ((min(pNewCasesB$y15)/mean(pEverIDUB$y15))*100)*365, ((min(pNewCasesB$y16)/mean(pEverIDUB$y16))*100)*365, ((min(pNewCasesB$y17)/mean(pEverIDUB$y17))*100)*365, ((min(pNewCasesB$y18)/mean(pEverIDUB$y18))*100)*365, ((min(pNewCasesB$y19)/mean(pEverIDUB$y19))*100)*365, ((min(pNewCasesB$y20)/mean(pEverIDUB$y20))*100)*365, ((min(pNewCasesB$y21)/mean(pEverIDUB$y21))*100)*365, ((min(pNewCasesB$y22)/mean(pEverIDUB$y22))*100)*365, ((min(pNewCasesB$y23)/mean(pEverIDUB$y23))*100)*365, ((min(pNewCasesB$y24)/mean(pEverIDUB$y24))*100)*365, ((min(pNewCasesB$y25)/mean(pEverIDUB$y25))*100)*365, ((min(pNewCasesB$y26)/mean(pEverIDUB$y26))*100)*365, ((min(pNewCasesB$y27)/mean(pEverIDUB$y27))*100)*365, ((min(pNewCasesB$y28)/mean(pEverIDUB$y28))*100)*365, ((min(pNewCasesB$y29)/mean(pEverIDUB$y29))*100)*365, ((min(pNewCasesB$y30)/mean(pEverIDUB$y30))*100)*365)
HCVB$IncidenceCeiling <- c(((max(pNewCasesB$y13)/mean(pEverIDUB$y13))*100)*365, ((max(pNewCasesB$y14)/mean(pEverIDUB$y14))*100)*365, ((max(pNewCasesB$y15)/mean(pEverIDUB$y15))*100)*365, ((max(pNewCasesB$y16)/mean(pEverIDUB$y16))*100)*365, ((max(pNewCasesB$y17)/mean(pEverIDUB$y17))*100)*365, ((max(pNewCasesB$y18)/mean(pEverIDUB$y18))*100)*365, ((max(pNewCasesB$y19)/mean(pEverIDUB$y19))*100)*365, ((max(pNewCasesB$y20)/mean(pEverIDUB$y20))*100)*365, ((max(pNewCasesB$y21)/mean(pEverIDUB$y21))*100)*365, ((max(pNewCasesB$y22)/mean(pEverIDUB$y22))*100)*365, ((max(pNewCasesB$y23)/mean(pEverIDUB$y23))*100)*365, ((max(pNewCasesB$y24)/mean(pEverIDUB$y24))*100)*365, ((max(pNewCasesB$y25)/mean(pEverIDUB$y25))*100)*365, ((max(pNewCasesB$y26)/mean(pEverIDUB$y26))*100)*365, ((max(pNewCasesB$y27)/mean(pEverIDUB$y27))*100)*365, ((max(pNewCasesB$y28)/mean(pEverIDUB$y28))*100)*365, ((max(pNewCasesB$y29)/mean(pEverIDUB$y29))*100)*365, ((max(pNewCasesB$y30)/mean(pEverIDUB$y30))*100)*365)
HCVB$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVB$Description <- c("DAA: pessimistic scenario")#c("OST improved and increased to all PWID")

HCVC <- data.frame("IncidenceIDU"=c(((mean(pNewCasesC$y13)/mean(pEverIDUC$y13))*100)*365, ((mean(pNewCasesC$y14)/mean(pEverIDUC$y14))*100)*365, ((mean(pNewCasesC$y15)/mean(pEverIDUC$y15))*100)*365, ((mean(pNewCasesC$y16)/mean(pEverIDUC$y16))*100)*365, ((mean(pNewCasesC$y17)/mean(pEverIDUC$y17))*100)*365, ((mean(pNewCasesC$y18)/mean(pEverIDUC$y18))*100)*365, ((mean(pNewCasesC$y19)/mean(pEverIDUC$y19))*100)*365, ((mean(pNewCasesC$y20)/mean(pEverIDUC$y20))*100)*365, ((mean(pNewCasesC$y21)/mean(pEverIDUC$y21))*100)*365, ((mean(pNewCasesC$y22)/mean(pEverIDUC$y22))*100)*365, ((mean(pNewCasesC$y23)/mean(pEverIDUC$y23))*100)*365, ((mean(pNewCasesC$y24)/mean(pEverIDUC$y24))*100)*365, ((mean(pNewCasesC$y25)/mean(pEverIDUC$y25))*100)*365, ((mean(pNewCasesC$y26)/mean(pEverIDUC$y26))*100)*365, ((mean(pNewCasesC$y27)/mean(pEverIDUC$y27))*100)*365, ((mean(pNewCasesC$y28)/mean(pEverIDUC$y28))*100)*365, ((mean(pNewCasesC$y29)/mean(pEverIDUC$y29))*100)*365, ((mean(pNewCasesC$y30)/mean(pEverIDUC$y30))*100)*365))
HCVC$IncidenceFloor <- c(((min(pNewCasesC$y13)/mean(pEverIDUC$y13))*100)*365, ((min(pNewCasesC$y14)/mean(pEverIDUC$y14))*100)*365, ((min(pNewCasesC$y15)/mean(pEverIDUC$y15))*100)*365, ((min(pNewCasesC$y16)/mean(pEverIDUC$y16))*100)*365, ((min(pNewCasesC$y17)/mean(pEverIDUC$y17))*100)*365, ((min(pNewCasesC$y18)/mean(pEverIDUC$y18))*100)*365, ((min(pNewCasesC$y19)/mean(pEverIDUC$y19))*100)*365, ((min(pNewCasesC$y20)/mean(pEverIDUC$y20))*100)*365, ((min(pNewCasesC$y21)/mean(pEverIDUC$y21))*100)*365, ((min(pNewCasesC$y22)/mean(pEverIDUC$y22))*100)*365, ((min(pNewCasesC$y23)/mean(pEverIDUC$y23))*100)*365, ((min(pNewCasesC$y24)/mean(pEverIDUC$y24))*100)*365, ((min(pNewCasesC$y25)/mean(pEverIDUC$y25))*100)*365, ((min(pNewCasesC$y26)/mean(pEverIDUC$y26))*100)*365, ((min(pNewCasesC$y27)/mean(pEverIDUC$y27))*100)*365, ((min(pNewCasesC$y28)/mean(pEverIDUC$y28))*100)*365, ((min(pNewCasesC$y29)/mean(pEverIDUC$y29))*100)*365, ((min(pNewCasesC$y30)/mean(pEverIDUC$y30))*100)*365)
HCVC$IncidenceCeiling <- c(((max(pNewCasesC$y13)/mean(pEverIDUC$y13))*100)*365, ((max(pNewCasesC$y14)/mean(pEverIDUC$y14))*100)*365, ((max(pNewCasesC$y15)/mean(pEverIDUC$y15))*100)*365, ((max(pNewCasesC$y16)/mean(pEverIDUC$y16))*100)*365, ((max(pNewCasesC$y17)/mean(pEverIDUC$y17))*100)*365, ((max(pNewCasesC$y18)/mean(pEverIDUC$y18))*100)*365, ((max(pNewCasesC$y19)/mean(pEverIDUC$y19))*100)*365, ((max(pNewCasesC$y20)/mean(pEverIDUC$y20))*100)*365, ((max(pNewCasesC$y21)/mean(pEverIDUC$y21))*100)*365, ((max(pNewCasesC$y22)/mean(pEverIDUC$y22))*100)*365, ((max(pNewCasesC$y23)/mean(pEverIDUC$y23))*100)*365, ((max(pNewCasesC$y24)/mean(pEverIDUC$y24))*100)*365, ((max(pNewCasesC$y25)/mean(pEverIDUC$y25))*100)*365, ((max(pNewCasesC$y26)/mean(pEverIDUC$y26))*100)*365, ((max(pNewCasesC$y27)/mean(pEverIDUC$y27))*100)*365, ((max(pNewCasesC$y28)/mean(pEverIDUC$y28))*100)*365, ((max(pNewCasesC$y29)/mean(pEverIDUC$y29))*100)*365, ((max(pNewCasesC$y30)/mean(pEverIDUC$y30))*100)*365)
HCVC$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVC$Description <- c("DAA: optimistic scenario")#c("OST retained at 1400 opioid users per year without improvement")

HCVStopc <- data.frame("IncidenceIDU"=c(17.8))
HCVStopc$IncidenceIDUCI <- c(17.8)
HCVStopc$Year <- c("2015")
HCVStopc$Description <- c("2015 reported HCV incidence")

HCVEvan <- data.frame("IncidenceIDU"=c(13.3))
HCVEvan$IncidenceIDUCI <- c(13.3-8.64)
HCVEvan$Year <- c("2013")
HCVEvan$Description <- c("2013 reported HCV incidence")

HCVPrev <- data.frame("IncidenceIDU"=c(10))
HCVPrev$IncidenceFloor <- c(10)
HCVPrev$IncidenceCeiling <- c(10)
HCVPrev$Year <- c("2015")
HCVPrev$Description <- c("2015 IHS HCV Ab prevalence") #2015 Inmate Health Survey

#PlotE <- ggplot(data=HCV, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("Incidence of HCV\n among incarcerated PWID") + ylim(0, 20)  + geom_line() + geom_point(aes(shape=Description), size=3.5) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid")) + geom_point(data=HCVEvan, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=3.5) + geom_errorbar(data=HCVEvan, mapping=aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI), colour="black", width=.1) + ggtitle("A") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title=element_text(hjust = -0.12, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
#ggplot(data=HCV, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence\n among incarcerated PWID") + ylim(0, 50)  + geom_line() + geom_point(aes(shape=Description), size=3.5) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid")) + geom_point(data=HCVEvan, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=3.5) + geom_errorbar(data=HCVEvan, mapping=aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI), colour="black", width=.1) + ggtitle("") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title=element_text(hjust = -0.12, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))

incHCVIDU <- rbind(HCVA, HCVB, HCVC)
#PlotA <- ggplot(data=incHCVIDU, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=3.5) + scale_linetype_manual(values=c("solid","twodash","dotted", "longdash", "dotdash")) + scale_shape_manual(values=c(19, 15, 8, 17, 4))  + ylab("HCV incidence\n among PWID") + geom_vline(xintercept=c(9, 13), linetype="dotted") + scale_color_manual(values=c("#660000", "#006633", "#000000", "#003366", "#000000")) + ylim(0, 30) + geom_point(data=HCVEvan, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=3.5) + geom_errorbar(data=HCVEvan, mapping=aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI), colour="black", width=.1) + geom_point(data=HCVStopc, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=3.5) + ggtitle("A") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.05, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 90, hjust = 1))
PlotA <- ggplot(data=incHCVIDU, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=3.5) + scale_linetype_manual(values=c("dotted", "twodash", "solid", "longdash", "dotdash")) + scale_shape_manual(values=c(1, 2, 19, 17, 15))  + ylab("HCV incidence\n among PWID") + geom_vline(xintercept=c(5), linetype="dotted") + scale_color_manual(values=c("#000000", "#000000", "#660000", "#003366", "#006633")) + ylim(0, 25) + geom_point(data=HCVEvan, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=3.5) + geom_errorbar(data=HCVEvan, mapping=aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI), colour="black", width=.1) + geom_point(data=HCVStopc, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=3.5) + ggtitle("A") + theme_bw() + theme(legend.position="right", text=element_text(size=20), legend.title=element_blank(), plot.title = element_text(hjust = -0.05, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 40, hjust = 1))

##scale_color_manual(values=c("#000000", "#000000", "#000000")) +
#ggplot(data=AbRNA, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(color=Description, shape=Description), size=3.5) + scale_linetype_manual(values=c("solid","dotted")) + scale_color_manual(values=c("black", "black")) + ylab("Proportion") + ylab("Proportion") + ylim(0, 50) + ggtitle("") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.1, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
#ggplot(data=HCVA, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0, 20)  + geom_line() + geom_point(aes(shape=Description), size=3.5) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid", "dotted")) + geom_vline(xintercept=c(2, 6), linetype="dotted") +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_line(data=HCVB, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVB, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(data=HCVC, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVC, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ggtitle("Projected HCV incidence with DAA treatment") + theme(legend.position="right")

#PlotLegend <- ggplot(data=incHCVIDU, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=3.5) + scale_linetype_manual(values=c("dashed", "solid","twodash","dotted", "longdash", "dotdash")) + scale_shape_manual(values=c(3, 19, 15, 8, 17, 4))  + ylab("HCV incidence\n among PWID") + geom_vline(xintercept=c(9, 13), linetype="dotted") + scale_color_manual(values=c("#000000", "#660000", "#006633", "#000000", "#003366", "#000000")) + ylim(0, 30) + geom_point(data=HCVEvan, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=3.5) + geom_errorbar(data=HCVEvan, mapping=aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI), colour="black", width=.1) + geom_point(data=HCVStopc, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=3.5) + geom_point(data=HCVPrev, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=3.5) + ggtitle("A") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.05, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 90, hjust = 1))
PlotLegend <- ggplot(data=incHCVIDU, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=3.5) + scale_linetype_manual(values=c("dotted", "twodash", "solid", "longdash", "dotdash")) + scale_shape_manual(values=c(1, 2, 19, 17, 15))  + ylab("HCV incidence\n among PWID") + geom_vline(xintercept=c(5), linetype="dotted") + scale_color_manual(values=c("#000000", "#000000", "#660000", "#003366", "#006633")) + ylim(0, 25) + geom_point(data=HCVEvan, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=3.5) + geom_errorbar(data=HCVEvan, mapping=aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI), colour="black", width=.1) + geom_point(data=HCVStopc, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=3.5) + ggtitle("A") + theme_bw() + theme(legend.position="right", text=element_text(size=20), legend.title=element_blank(), plot.title = element_text(hjust = -0.05, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 40, hjust = 1))

#Annual New Cases
HCVA <- data.frame("IncidenceIDU"=c(mean(pNewCasesSumA$y13), mean(pNewCasesSumA$y14), mean(pNewCasesSumA$y15), mean(pNewCasesSumA$y16), mean(pNewCasesSumA$y17), mean(pNewCasesSumA$y18), mean(pNewCasesSumA$y19), mean(pNewCasesSumA$y20), mean(pNewCasesSumA$y21), mean(pNewCasesSumA$y22), mean(pNewCasesSumA$y23), mean(pNewCasesSumA$y24), mean(pNewCasesSumA$y25), mean(pNewCasesSumA$y26), mean(pNewCasesSumA$y27), mean(pNewCasesSumA$y28), mean(pNewCasesSumA$y29), mean(pNewCasesSumA$y30)))
HCVA$IncidenceFloor <- c(min(pNewCasesSumA$y13), min(pNewCasesSumA$y14), min(pNewCasesSumA$y15), min(pNewCasesSumA$y16), min(pNewCasesSumA$y17), min(pNewCasesSumA$y18), min(pNewCasesSumA$y19), min(pNewCasesSumA$y20), min(pNewCasesSumA$y21), min(pNewCasesSumA$y22), min(pNewCasesSumA$y23), min(pNewCasesSumA$y24), min(pNewCasesSumA$y25), min(pNewCasesSumA$y26), min(pNewCasesSumA$y27), min(pNewCasesSumA$y28), min(pNewCasesSumA$y29), min(pNewCasesSumA$y30))
HCVA$IncidenceCeiling <- c(max(pNewCasesSumA$y13), max(pNewCasesSumA$y14), max(pNewCasesSumA$y15), max(pNewCasesSumA$y16), max(pNewCasesSumA$y17), max(pNewCasesSumA$y18), max(pNewCasesSumA$y19), max(pNewCasesSumA$y20), max(pNewCasesSumA$y21), max(pNewCasesSumA$y22), max(pNewCasesSumA$y23), max(pNewCasesSumA$y24), max(pNewCasesSumA$y25), max(pNewCasesSumA$y26), max(pNewCasesSumA$y27), max(pNewCasesSumA$y28), max(pNewCasesSumA$y29), max(pNewCasesSumA$y30))
HCVA$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVA$Description <- c("Status quo")

HCVB <- data.frame("IncidenceIDU"=c(mean(pNewCasesSumB$y13), mean(pNewCasesSumB$y14), mean(pNewCasesSumB$y15), mean(pNewCasesSumB$y16), mean(pNewCasesSumB$y17), mean(pNewCasesSumB$y18), mean(pNewCasesSumB$y19), mean(pNewCasesSumB$y20), mean(pNewCasesSumB$y21), mean(pNewCasesSumB$y22), mean(pNewCasesSumB$y23), mean(pNewCasesSumB$y24), mean(pNewCasesSumB$y25), mean(pNewCasesSumB$y26), mean(pNewCasesSumB$y27), mean(pNewCasesSumB$y28), mean(pNewCasesSumB$y29), mean(pNewCasesSumB$y30)))
HCVB$IncidenceFloor <- c(min(pNewCasesSumB$y13), min(pNewCasesSumB$y14), min(pNewCasesSumB$y15), min(pNewCasesSumB$y16), min(pNewCasesSumB$y17), min(pNewCasesSumB$y18), min(pNewCasesSumB$y19), min(pNewCasesSumB$y20), min(pNewCasesSumB$y21), min(pNewCasesSumB$y22), min(pNewCasesSumB$y23), min(pNewCasesSumB$y24), min(pNewCasesSumB$y25), min(pNewCasesSumB$y26), min(pNewCasesSumB$y27), min(pNewCasesSumB$y28), min(pNewCasesSumB$y29), min(pNewCasesSumB$y30))
HCVB$IncidenceCeiling <- c(max(pNewCasesSumB$y13), max(pNewCasesSumB$y14), max(pNewCasesSumB$y15), max(pNewCasesSumB$y16), max(pNewCasesSumB$y17), max(pNewCasesSumB$y18), max(pNewCasesSumB$y19), max(pNewCasesSumB$y20), max(pNewCasesSumB$y21), max(pNewCasesSumB$y22), max(pNewCasesSumB$y23), max(pNewCasesSumB$y24), max(pNewCasesSumB$y25), max(pNewCasesSumB$y26), max(pNewCasesSumB$y27), max(pNewCasesSumB$y28), max(pNewCasesSumB$y29), max(pNewCasesSumB$y30))
HCVB$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVB$Description <- c("DAA: pessimistic scenario")

HCVC <- data.frame("IncidenceIDU"=c(mean(pNewCasesSumC$y13), mean(pNewCasesSumC$y14), mean(pNewCasesSumC$y15), mean(pNewCasesSumC$y16), mean(pNewCasesSumC$y17), mean(pNewCasesSumC$y18), mean(pNewCasesSumC$y19), mean(pNewCasesSumC$y20), mean(pNewCasesSumC$y21), mean(pNewCasesSumC$y22), mean(pNewCasesSumC$y23), mean(pNewCasesSumC$y24), mean(pNewCasesSumC$y25), mean(pNewCasesSumC$y26), mean(pNewCasesSumC$y27), mean(pNewCasesSumC$y28), mean(pNewCasesSumC$y29), mean(pNewCasesSumC$y30)))
HCVC$IncidenceFloor <- c(min(pNewCasesSumC$y13), min(pNewCasesSumC$y14), min(pNewCasesSumC$y15), min(pNewCasesSumC$y16), min(pNewCasesSumC$y17), min(pNewCasesSumC$y18), min(pNewCasesSumC$y19), min(pNewCasesSumC$y20), min(pNewCasesSumC$y21), min(pNewCasesSumC$y22), min(pNewCasesSumC$y23), min(pNewCasesSumC$y24), min(pNewCasesSumC$y25), min(pNewCasesSumC$y26), min(pNewCasesSumC$y27), min(pNewCasesSumC$y28), min(pNewCasesSumC$y29), min(pNewCasesSumC$y30))
HCVC$IncidenceCeiling <- c(max(pNewCasesSumC$y13), max(pNewCasesSumC$y14), max(pNewCasesSumC$y15), max(pNewCasesSumC$y16), max(pNewCasesSumC$y17), max(pNewCasesSumC$y18), max(pNewCasesSumC$y19), max(pNewCasesSumC$y20), max(pNewCasesSumC$y21), max(pNewCasesSumC$y22), max(pNewCasesSumC$y23), max(pNewCasesSumC$y24), max(pNewCasesSumC$y25), max(pNewCasesSumC$y26), max(pNewCasesSumC$y27), max(pNewCasesSumC$y28), max(pNewCasesSumC$y29), max(pNewCasesSumC$y30))
HCVC$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVC$Description <- c("DAA: optimistic scenario")

incHCVIDU <- rbind(HCVA, HCVB, HCVC)
PlotB <- ggplot(data=incHCVIDU, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=3.5) + scale_linetype_manual(values=c("solid", "longdash", "dotdash")) + scale_shape_manual(values=c(19, 17, 15)) + ylab("Annual new infections") + geom_vline(xintercept=c(5), linetype="dotted") + scale_color_manual(values=c("#660000", "#003366", "#006633")) + ylim(0, 2000) + ggtitle("B") + theme_bw() + theme(legend.position="right", text=element_text(size=20), legend.title=element_blank(), plot.title = element_text(hjust = -0.05, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 40, hjust = 1))

#Average HCV Ab
HCVA <- data.frame("IncidenceIDU"=c(mean(pTotalHCVabA$y13), mean(pTotalHCVabA$y14), mean(pTotalHCVabA$y15), mean(pTotalHCVabA$y16), mean(pTotalHCVabA$y17), mean(pTotalHCVabA$y18), mean(pTotalHCVabA$y19), mean(pTotalHCVabA$y20), mean(pTotalHCVabA$y21), mean(pTotalHCVabA$y22), mean(pTotalHCVabA$y23), mean(pTotalHCVabA$y24), mean(pTotalHCVabA$y25), mean(pTotalHCVabA$y26), mean(pTotalHCVabA$y27), mean(pTotalHCVabA$y28), mean(pTotalHCVabA$y29), mean(pTotalHCVabA$y30)))
HCVA$IncidenceFloor <- c(min(pTotalHCVabA$y13), min(pTotalHCVabA$y14), min(pTotalHCVabA$y15), min(pTotalHCVabA$y16), min(pTotalHCVabA$y17), min(pTotalHCVabA$y18), min(pTotalHCVabA$y19), min(pTotalHCVabA$y20), min(pTotalHCVabA$y21), min(pTotalHCVabA$y22), min(pTotalHCVabA$y23), min(pTotalHCVabA$y24), min(pTotalHCVabA$y25), min(pTotalHCVabA$y26), min(pTotalHCVabA$y27), min(pTotalHCVabA$y28), min(pTotalHCVabA$y29), min(pTotalHCVabA$y30))
HCVA$IncidenceCeiling <- c(max(pTotalHCVabA$y13), max(pTotalHCVabA$y14), max(pTotalHCVabA$y15), max(pTotalHCVabA$y16), max(pTotalHCVabA$y17), max(pTotalHCVabA$y18), max(pTotalHCVabA$y19), max(pTotalHCVabA$y20), max(pTotalHCVabA$y21), max(pTotalHCVabA$y22), max(pTotalHCVabA$y23), max(pTotalHCVabA$y24), max(pTotalHCVabA$y25), max(pTotalHCVabA$y26), max(pTotalHCVabA$y27), max(pTotalHCVabA$y28), max(pTotalHCVabA$y29), max(pTotalHCVabA$y30))
HCVA$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVA$Description <- c("Status quo")

HCVB <- data.frame("IncidenceIDU"=c(mean(pTotalHCVabB$y13), mean(pTotalHCVabB$y14), mean(pTotalHCVabB$y15), mean(pTotalHCVabB$y16), mean(pTotalHCVabB$y17), mean(pTotalHCVabB$y18), mean(pTotalHCVabB$y19), mean(pTotalHCVabB$y20), mean(pTotalHCVabB$y21), mean(pTotalHCVabB$y22), mean(pTotalHCVabB$y23), mean(pTotalHCVabB$y24), mean(pTotalHCVabB$y25), mean(pTotalHCVabB$y26), mean(pTotalHCVabB$y27), mean(pTotalHCVabB$y28), mean(pTotalHCVabB$y29), mean(pTotalHCVabB$y30)))
HCVB$IncidenceFloor <- c(min(pTotalHCVabB$y13), min(pTotalHCVabB$y14), min(pTotalHCVabB$y15), min(pTotalHCVabB$y16), min(pTotalHCVabB$y17), min(pTotalHCVabB$y18), min(pTotalHCVabB$y19), min(pTotalHCVabB$y20), min(pTotalHCVabB$y21), min(pTotalHCVabB$y22), min(pTotalHCVabB$y23), min(pTotalHCVabB$y24), min(pTotalHCVabB$y25), min(pTotalHCVabB$y26), min(pTotalHCVabB$y27), min(pTotalHCVabB$y28), min(pTotalHCVabB$y29), min(pTotalHCVabB$y30))
HCVB$IncidenceCeiling <- c(max(pTotalHCVabB$y13), max(pTotalHCVabB$y14), max(pTotalHCVabB$y15), max(pTotalHCVabB$y16), max(pTotalHCVabB$y17), max(pTotalHCVabB$y18), max(pTotalHCVabB$y19), max(pTotalHCVabB$y20), max(pTotalHCVabB$y21), max(pTotalHCVabB$y22), max(pTotalHCVabB$y23), max(pTotalHCVabB$y24), max(pTotalHCVabB$y25), max(pTotalHCVabB$y26), max(pTotalHCVabB$y27), max(pTotalHCVabB$y28), max(pTotalHCVabB$y29), max(pTotalHCVabB$y30))
HCVB$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVB$Description <- c("DAA: pessimistic scenario")

HCVC <- data.frame("IncidenceIDU"=c(mean(pTotalHCVabC$y13), mean(pTotalHCVabC$y14), mean(pTotalHCVabC$y15), mean(pTotalHCVabC$y16), mean(pTotalHCVabC$y17), mean(pTotalHCVabC$y18), mean(pTotalHCVabC$y19), mean(pTotalHCVabC$y20), mean(pTotalHCVabC$y21), mean(pTotalHCVabC$y22), mean(pTotalHCVabC$y23), mean(pTotalHCVabC$y24), mean(pTotalHCVabC$y25), mean(pTotalHCVabC$y26), mean(pTotalHCVabC$y27), mean(pTotalHCVabC$y28), mean(pTotalHCVabC$y29), mean(pTotalHCVabC$y30)))
HCVC$IncidenceFloor <- c(min(pTotalHCVabC$y13), min(pTotalHCVabC$y14), min(pTotalHCVabC$y15), min(pTotalHCVabC$y16), min(pTotalHCVabC$y17), min(pTotalHCVabC$y18), min(pTotalHCVabC$y19), min(pTotalHCVabC$y20), min(pTotalHCVabC$y21), min(pTotalHCVabC$y22), min(pTotalHCVabC$y23), min(pTotalHCVabC$y24), min(pTotalHCVabC$y25), min(pTotalHCVabC$y26), min(pTotalHCVabC$y27), min(pTotalHCVabC$y28), min(pTotalHCVabC$y29), min(pTotalHCVabC$y30))
HCVC$IncidenceCeiling <- c(max(pTotalHCVabC$y13), max(pTotalHCVabC$y14), max(pTotalHCVabC$y15), max(pTotalHCVabC$y16), max(pTotalHCVabC$y17), max(pTotalHCVabC$y18), max(pTotalHCVabC$y19), max(pTotalHCVabC$y20), max(pTotalHCVabC$y21), max(pTotalHCVabC$y22), max(pTotalHCVabC$y23), max(pTotalHCVabC$y24), max(pTotalHCVabC$y25), max(pTotalHCVabC$y26), max(pTotalHCVabC$y27), max(pTotalHCVabC$y28), max(pTotalHCVabC$y29), max(pTotalHCVabC$y30))
HCVC$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVC$Description <- c("DAA: optimistic scenario")

incHCVIDU <- rbind(HCVA, HCVB, HCVC)
PlotC <- ggplot(data=incHCVIDU, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=3.5) + scale_linetype_manual(values=c("solid", "longdash", "dotdash")) + scale_shape_manual(values=c(19, 17, 15)) + ylab("Average number of people with\n HCV Ab+") + geom_vline(xintercept=c(5), linetype="dotted") + scale_color_manual(values=c("#660000", "#003366", "#006633")) + ylim(0, 10000) + ggtitle("C") + theme_bw() + theme(legend.position="right", text=element_text(size=20), legend.title=element_blank(), plot.title = element_text(hjust = -0.05, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 40, hjust = 1))

#Average HCV RNA
HCVA <- data.frame("IncidenceIDU"=c(mean(pTotalHCVRNAA$y13), mean(pTotalHCVRNAA$y14), mean(pTotalHCVRNAA$y15), mean(pTotalHCVRNAA$y16), mean(pTotalHCVRNAA$y17), mean(pTotalHCVRNAA$y18), mean(pTotalHCVRNAA$y19), mean(pTotalHCVRNAA$y20), mean(pTotalHCVRNAA$y21), mean(pTotalHCVRNAA$y22), mean(pTotalHCVRNAA$y23), mean(pTotalHCVRNAA$y24), mean(pTotalHCVRNAA$y25), mean(pTotalHCVRNAA$y26), mean(pTotalHCVRNAA$y27), mean(pTotalHCVRNAA$y28), mean(pTotalHCVRNAA$y29), mean(pTotalHCVRNAA$y30)))
HCVA$IncidenceFloor <- c(min(pTotalHCVRNAA$y13), min(pTotalHCVRNAA$y14), min(pTotalHCVRNAA$y15), min(pTotalHCVRNAA$y16), min(pTotalHCVRNAA$y17), min(pTotalHCVRNAA$y18), min(pTotalHCVRNAA$y19), min(pTotalHCVRNAA$y20), min(pTotalHCVRNAA$y21), min(pTotalHCVRNAA$y22), min(pTotalHCVRNAA$y23), min(pTotalHCVRNAA$y24), min(pTotalHCVRNAA$y25), min(pTotalHCVRNAA$y26), min(pTotalHCVRNAA$y27), min(pTotalHCVRNAA$y28), min(pTotalHCVRNAA$y29), min(pTotalHCVRNAA$y30))
HCVA$IncidenceCeiling <- c(max(pTotalHCVRNAA$y13), max(pTotalHCVRNAA$y14), max(pTotalHCVRNAA$y15), max(pTotalHCVRNAA$y16), max(pTotalHCVRNAA$y17), max(pTotalHCVRNAA$y18), max(pTotalHCVRNAA$y19), max(pTotalHCVRNAA$y20), max(pTotalHCVRNAA$y21), max(pTotalHCVRNAA$y22), max(pTotalHCVRNAA$y23), max(pTotalHCVRNAA$y24), max(pTotalHCVRNAA$y25), max(pTotalHCVRNAA$y26), max(pTotalHCVRNAA$y27), max(pTotalHCVRNAA$y28), max(pTotalHCVRNAA$y29), max(pTotalHCVRNAA$y30))
HCVA$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVA$Description <- c("Status quo")

HCVB <- data.frame("IncidenceIDU"=c(mean(pTotalHCVRNAB$y13), mean(pTotalHCVRNAB$y14), mean(pTotalHCVRNAB$y15), mean(pTotalHCVRNAB$y16), mean(pTotalHCVRNAB$y17), mean(pTotalHCVRNAB$y18), mean(pTotalHCVRNAB$y19), mean(pTotalHCVRNAB$y20), mean(pTotalHCVRNAB$y21), mean(pTotalHCVRNAB$y22), mean(pTotalHCVRNAB$y23), mean(pTotalHCVRNAB$y24), mean(pTotalHCVRNAB$y25), mean(pTotalHCVRNAB$y26), mean(pTotalHCVRNAB$y27), mean(pTotalHCVRNAB$y28), mean(pTotalHCVRNAB$y29), mean(pTotalHCVRNAB$y30)))
HCVB$IncidenceFloor <- c(min(pTotalHCVRNAB$y13), min(pTotalHCVRNAB$y14), min(pTotalHCVRNAB$y15), min(pTotalHCVRNAB$y16), min(pTotalHCVRNAB$y17), min(pTotalHCVRNAB$y18), min(pTotalHCVRNAB$y19), min(pTotalHCVRNAB$y20), min(pTotalHCVRNAB$y21), min(pTotalHCVRNAB$y22), min(pTotalHCVRNAB$y23), min(pTotalHCVRNAB$y24), min(pTotalHCVRNAB$y25), min(pTotalHCVRNAB$y26), min(pTotalHCVRNAB$y27), min(pTotalHCVRNAB$y28), min(pTotalHCVRNAB$y29), min(pTotalHCVRNAB$y30))
HCVB$IncidenceCeiling <- c(max(pTotalHCVRNAB$y13), max(pTotalHCVRNAB$y14), max(pTotalHCVRNAB$y15), max(pTotalHCVRNAB$y16), max(pTotalHCVRNAB$y17), max(pTotalHCVRNAB$y18), max(pTotalHCVRNAB$y19), max(pTotalHCVRNAB$y20), max(pTotalHCVRNAB$y21), max(pTotalHCVRNAB$y22), max(pTotalHCVRNAB$y23), max(pTotalHCVRNAB$y24), max(pTotalHCVRNAB$y25), max(pTotalHCVRNAB$y26), max(pTotalHCVRNAB$y27), max(pTotalHCVRNAB$y28), max(pTotalHCVRNAB$y29), max(pTotalHCVRNAB$y30))
HCVB$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVB$Description <- c("DAA: pessimistic scenario")

HCVC <- data.frame("IncidenceIDU"=c(mean(pTotalHCVRNAC$y13), mean(pTotalHCVRNAC$y14), mean(pTotalHCVRNAC$y15), mean(pTotalHCVRNAC$y16), mean(pTotalHCVRNAC$y17), mean(pTotalHCVRNAC$y18), mean(pTotalHCVRNAC$y19), mean(pTotalHCVRNAC$y20), mean(pTotalHCVRNAC$y21), mean(pTotalHCVRNAC$y22), mean(pTotalHCVRNAC$y23), mean(pTotalHCVRNAC$y24), mean(pTotalHCVRNAC$y25), mean(pTotalHCVRNAC$y26), mean(pTotalHCVRNAC$y27), mean(pTotalHCVRNAC$y28), mean(pTotalHCVRNAC$y29), mean(pTotalHCVRNAC$y30)))
HCVC$IncidenceFloor <- c(min(pTotalHCVRNAC$y13), min(pTotalHCVRNAC$y14), min(pTotalHCVRNAC$y15), min(pTotalHCVRNAC$y16), min(pTotalHCVRNAC$y17), min(pTotalHCVRNAC$y18), min(pTotalHCVRNAC$y19), min(pTotalHCVRNAC$y20), min(pTotalHCVRNAC$y21), min(pTotalHCVRNAC$y22), min(pTotalHCVRNAC$y23), min(pTotalHCVRNAC$y24), min(pTotalHCVRNAC$y25), min(pTotalHCVRNAC$y26), min(pTotalHCVRNAC$y27), min(pTotalHCVRNAC$y28), min(pTotalHCVRNAC$y29), min(pTotalHCVRNAC$y30))
HCVC$IncidenceCeiling <- c(max(pTotalHCVRNAC$y13), max(pTotalHCVRNAC$y14), max(pTotalHCVRNAC$y15), max(pTotalHCVRNAC$y16), max(pTotalHCVRNAC$y17), max(pTotalHCVRNAC$y18), max(pTotalHCVRNAC$y19), max(pTotalHCVRNAC$y20), max(pTotalHCVRNAC$y21), max(pTotalHCVRNAC$y22), max(pTotalHCVRNAC$y23), max(pTotalHCVRNAC$y24), max(pTotalHCVRNAC$y25), max(pTotalHCVRNAC$y26), max(pTotalHCVRNAC$y27), max(pTotalHCVRNAC$y28), max(pTotalHCVRNAC$y29), max(pTotalHCVRNAC$y30))
HCVC$Year <- c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVC$Description <- c("DAA: optimistic scenario")

incHCVIDU <- rbind(HCVA, HCVB, HCVC)
PlotD <- ggplot(data=incHCVIDU, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=3.5) + scale_linetype_manual(values=c("solid", "longdash", "dotdash")) + scale_shape_manual(values=c(19, 17, 15)) + ylab("Average number of people with\n HCV RNA+") + geom_vline(xintercept=c(5), linetype="dotted") + scale_color_manual(values=c("#660000", "#003366", "#006633")) + ylim(0, 10000) + ggtitle("D") + theme_bw() + theme(legend.position="right", text=element_text(size=20), legend.title=element_blank(), plot.title = element_text(hjust = -0.05, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 40, hjust = 1))

legend <- get_legend(PlotLegend)
grid.newpage()
#grid.arrange(arrangeGrob(PlotA, PlotB))
#popPlots <- rbind (ggplotGrob(PlotA), ggplotGrob(PlotB), size="first")
ggdraw() + draw_plot(plot_grid(PlotA + theme(legend.position='none'), PlotB + theme(legend.position='none'), PlotC + theme(legend.position='none'), PlotD + theme(legend.position='none'), ncol=2, nrow=2, align='hv'), width=0.9) + draw_plot(legend, x=0.62, y=0.15, width=0.1, height=0.5)

##Fix prevalence plots
HCVAp <- data.frame("IncidenceIDU"=c(((mean(pTotalHCVabA$y6)/mean(pTotalA$y6))*100), ((mean(pTotalHCVabA$y7)/mean(pTotalA$y7))*100), ((mean(pTotalHCVabA$y8)/mean(pTotalA$y8))*100), ((mean(pTotalHCVabA$y9)/mean(pTotalA$y9))*100), ((mean(pTotalHCVabA$y10)/mean(pTotalA$y10))*100), ((mean(pTotalHCVabA$y11)/mean(pTotalA$y11))*100), ((mean(pTotalHCVabA$y12)/mean(pTotalA$y12))*100), ((mean(pTotalHCVabA$y13)/mean(pTotalA$y13))*100), ((mean(pTotalHCVabA$y14)/mean(pTotalA$y14))*100) , ((mean(pTotalHCVabA$y15)/mean(pTotalA$y15))*100) , ((mean(pTotalHCVabA$y16)/mean(pTotalA$y16))*100) , ((mean(pTotalHCVabA$y17)/mean(pTotalA$y17))*100) , ((mean(pTotalHCVabA$y18)/mean(pTotalA$y18))*100) , ((mean(pTotalHCVabA$y19)/mean(pTotalA$y19))*100) , ((mean(pTotalHCVabA$y20)/mean(pTotalA$y20))*100) , ((mean(pTotalHCVabA$y21)/mean(pTotalA$y21))*100) , ((mean(pTotalHCVabA$y22)/mean(pTotalA$y22))*100) , ((mean(pTotalHCVabA$y23)/mean(pTotalA$y23))*100) , ((mean(pTotalHCVabA$y24)/mean(pTotalA$y24))*100) , ((mean(pTotalHCVabA$y25)/mean(pTotalA$y25))*100) , ((mean(pTotalHCVabA$y26)/mean(pTotalA$y26))*100), ((mean(pTotalHCVabA$y27)/mean(pTotalA$y27))*100), ((mean(pTotalHCVabA$y28)/mean(pTotalA$y28))*100), ((mean(pTotalHCVabA$y29)/mean(pTotalA$y29))*100), ((mean(pTotalHCVabA$y30)/mean(pTotalA$y30))*100) ))
HCVAp$IncidenceFloor <- c(((min(pTotalHCVabA$y6)/mean(pTotalA$y6))*100), ((min(pTotalHCVabA$y7)/mean(pTotalA$y7))*100), ((min(pTotalHCVabA$y8)/mean(pTotalA$y8))*100), ((min(pTotalHCVabA$y9)/mean(pTotalA$y9))*100), ((min(pTotalHCVabA$y10)/mean(pTotalA$y10))*100), ((min(pTotalHCVabA$y11)/mean(pTotalA$y11))*100), ((min(pTotalHCVabA$y12)/mean(pTotalA$y12))*100), ((min(pTotalHCVabA$y13)/mean(pTotalA$y13))*100), ((min(pTotalHCVabA$y14)/mean(pTotalA$y14))*100) , ((min(pTotalHCVabA$y15)/mean(pTotalA$y15))*100) , ((min(pTotalHCVabA$y16)/mean(pTotalA$y16))*100) , ((min(pTotalHCVabA$y17)/mean(pTotalA$y17))*100) , ((min(pTotalHCVabA$y18)/mean(pTotalA$y18))*100) , ((min(pTotalHCVabA$y19)/mean(pTotalA$y19))*100) , ((min(pTotalHCVabA$y20)/mean(pTotalA$y20))*100) , ((min(pTotalHCVabA$y21)/mean(pTotalA$y21))*100) , ((min(pTotalHCVabA$y22)/mean(pTotalA$y22))*100) , ((min(pTotalHCVabA$y23)/mean(pTotalA$y23))*100) , ((min(pTotalHCVabA$y24)/mean(pTotalA$y24))*100) , ((min(pTotalHCVabA$y25)/mean(pTotalA$y25))*100) , ((min(pTotalHCVabA$y26)/mean(pTotalA$y26))*100), ((min(pTotalHCVabA$y27)/mean(pTotalA$y27))*100), ((min(pTotalHCVabA$y28)/mean(pTotalA$y28))*100), ((min(pTotalHCVabA$y29)/mean(pTotalA$y29))*100), ((min(pTotalHCVabA$y30)/mean(pTotalA$y30))*100) )
HCVAp$IncidenceCeiling <- c(((max(pTotalHCVabA$y6)/mean(pTotalA$y6))*100), ((max(pTotalHCVabA$y7)/mean(pTotalA$y7))*100), ((max(pTotalHCVabA$y8)/mean(pTotalA$y8))*100), ((max(pTotalHCVabA$y9)/mean(pTotalA$y9))*100), ((max(pTotalHCVabA$y10)/mean(pTotalA$y10))*100), ((max(pTotalHCVabA$y11)/mean(pTotalA$y11))*100), ((max(pTotalHCVabA$y12)/mean(pTotalA$y12))*100), ((max(pTotalHCVabA$y13)/mean(pTotalA$y13))*100), ((max(pTotalHCVabA$y14)/mean(pTotalA$y14))*100) , ((max(pTotalHCVabA$y15)/mean(pTotalA$y15))*100) , ((max(pTotalHCVabA$y16)/mean(pTotalA$y16))*100) , ((max(pTotalHCVabA$y17)/mean(pTotalA$y17))*100) , ((max(pTotalHCVabA$y18)/mean(pTotalA$y18))*100) , ((max(pTotalHCVabA$y19)/mean(pTotalA$y19))*100) , ((max(pTotalHCVabA$y20)/mean(pTotalA$y20))*100) , ((max(pTotalHCVabA$y21)/mean(pTotalA$y21))*100) , ((max(pTotalHCVabA$y22)/mean(pTotalA$y22))*100) , ((max(pTotalHCVabA$y23)/mean(pTotalA$y23))*100) , ((max(pTotalHCVabA$y24)/mean(pTotalA$y24))*100) , ((max(pTotalHCVabA$y25)/mean(pTotalA$y25))*100) , ((max(pTotalHCVabA$y26)/mean(pTotalA$y26))*100), ((max(pTotalHCVabA$y27)/mean(pTotalA$y27))*100), ((max(pTotalHCVabA$y28)/mean(pTotalA$y28))*100), ((max(pTotalHCVabA$y29)/mean(pTotalA$y29))*100), ((max(pTotalHCVabA$y30)/mean(pTotalA$y30))*100) )
HCVAp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVAp$Description <- c("DAA intermediate scenario")#c("maintained number of DAA treatments")

HCVBp <- data.frame("IncidenceIDU"=c(((mean(pTotalHCVabB$y6)/mean(pTotalB$y6))*100), ((mean(pTotalHCVabB$y7)/mean(pTotalB$y7))*100), ((mean(pTotalHCVabB$y8)/mean(pTotalB$y8))*100), ((mean(pTotalHCVabB$y9)/mean(pTotalB$y9))*100), ((mean(pTotalHCVabB$y10)/mean(pTotalB$y10))*100), ((mean(pTotalHCVabB$y11)/mean(pTotalB$y11))*100), ((mean(pTotalHCVabB$y12)/mean(pTotalB$y12))*100), ((mean(pTotalHCVabB$y13)/mean(pTotalB$y13))*100), ((mean(pTotalHCVabB$y14)/mean(pTotalB$y14))*100) , ((mean(pTotalHCVabB$y15)/mean(pTotalB$y15))*100) , ((mean(pTotalHCVabB$y16)/mean(pTotalB$y16))*100) , ((mean(pTotalHCVabB$y17)/mean(pTotalB$y17))*100) , ((mean(pTotalHCVabB$y18)/mean(pTotalB$y18))*100) , ((mean(pTotalHCVabB$y19)/mean(pTotalB$y19))*100) , ((mean(pTotalHCVabB$y20)/mean(pTotalB$y20))*100) , ((mean(pTotalHCVabB$y21)/mean(pTotalB$y21))*100) , ((mean(pTotalHCVabB$y22)/mean(pTotalB$y22))*100) , ((mean(pTotalHCVabB$y23)/mean(pTotalB$y23))*100) , ((mean(pTotalHCVabB$y24)/mean(pTotalB$y24))*100) , ((mean(pTotalHCVabB$y25)/mean(pTotalB$y25))*100) , ((mean(pTotalHCVabB$y26)/mean(pTotalB$y26))*100), ((mean(pTotalHCVabB$y27)/mean(pTotalB$y27))*100), ((mean(pTotalHCVabB$y28)/mean(pTotalB$y28))*100), ((mean(pTotalHCVabB$y29)/mean(pTotalB$y29))*100), ((mean(pTotalHCVabB$y30)/mean(pTotalB$y30))*100) ))
HCVBp$IncidenceFloor <- c(((min(pTotalHCVabB$y6)/mean(pTotalB$y6))*100), ((min(pTotalHCVabB$y7)/mean(pTotalB$y7))*100), ((min(pTotalHCVabB$y8)/mean(pTotalB$y8))*100), ((min(pTotalHCVabB$y9)/mean(pTotalB$y9))*100), ((min(pTotalHCVabB$y10)/mean(pTotalB$y10))*100), ((min(pTotalHCVabB$y11)/mean(pTotalB$y11))*100), ((min(pTotalHCVabB$y12)/mean(pTotalB$y12))*100), ((min(pTotalHCVabB$y13)/mean(pTotalB$y13))*100), ((min(pTotalHCVabB$y14)/mean(pTotalB$y14))*100) , ((min(pTotalHCVabB$y15)/mean(pTotalB$y15))*100) , ((min(pTotalHCVabB$y16)/mean(pTotalB$y16))*100) , ((min(pTotalHCVabB$y17)/mean(pTotalB$y17))*100) , ((min(pTotalHCVabB$y18)/mean(pTotalB$y18))*100) , ((min(pTotalHCVabB$y19)/mean(pTotalB$y19))*100) , ((min(pTotalHCVabB$y20)/mean(pTotalB$y20))*100) , ((min(pTotalHCVabB$y21)/mean(pTotalB$y21))*100) , ((min(pTotalHCVabB$y22)/mean(pTotalB$y22))*100) , ((min(pTotalHCVabB$y23)/mean(pTotalB$y23))*100) , ((min(pTotalHCVabB$y24)/mean(pTotalB$y24))*100) , ((min(pTotalHCVabB$y25)/mean(pTotalB$y25))*100) , ((min(pTotalHCVabB$y26)/mean(pTotalB$y26))*100), ((min(pTotalHCVabB$y27)/mean(pTotalB$y27))*100), ((min(pTotalHCVabB$y28)/mean(pTotalB$y28))*100), ((min(pTotalHCVabB$y29)/mean(pTotalB$y29))*100), ((min(pTotalHCVabB$y30)/mean(pTotalB$y30))*100)  )
HCVBp$IncidenceCeiling <- c(((max(pTotalHCVabB$y6)/mean(pTotalB$y6))*100), ((max(pTotalHCVabB$y7)/mean(pTotalB$y7))*100), ((max(pTotalHCVabB$y8)/mean(pTotalB$y8))*100), ((max(pTotalHCVabB$y9)/mean(pTotalB$y9))*100), ((max(pTotalHCVabB$y10)/mean(pTotalB$y10))*100), ((max(pTotalHCVabB$y11)/mean(pTotalB$y11))*100), ((max(pTotalHCVabB$y12)/mean(pTotalB$y12))*100), ((max(pTotalHCVabB$y13)/mean(pTotalB$y13))*100), ((max(pTotalHCVabB$y14)/mean(pTotalB$y14))*100) , ((max(pTotalHCVabB$y15)/mean(pTotalB$y15))*100) , ((max(pTotalHCVabB$y16)/mean(pTotalB$y16))*100) , ((max(pTotalHCVabB$y17)/mean(pTotalB$y17))*100) , ((max(pTotalHCVabB$y18)/mean(pTotalB$y18))*100) , ((max(pTotalHCVabB$y19)/mean(pTotalB$y19))*100) , ((max(pTotalHCVabB$y20)/mean(pTotalB$y20))*100) , ((max(pTotalHCVabB$y21)/mean(pTotalB$y21))*100) , ((max(pTotalHCVabB$y22)/mean(pTotalB$y22))*100) , ((max(pTotalHCVabB$y23)/mean(pTotalB$y23))*100) , ((max(pTotalHCVabB$y24)/mean(pTotalB$y24))*100) , ((max(pTotalHCVabB$y25)/mean(pTotalB$y25))*100) , ((max(pTotalHCVabB$y26)/mean(pTotalB$y26))*100), ((max(pTotalHCVabB$y27)/mean(pTotalB$y27))*100), ((max(pTotalHCVabB$y28)/mean(pTotalB$y28))*100), ((max(pTotalHCVabB$y29)/mean(pTotalB$y29))*100), ((max(pTotalHCVabB$y30)/mean(pTotalB$y30))*100) )
HCVBp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVBp$Description <- c("DAA optimistic scenario")#c("DAA treatments increased to 5000 per year")

HCVCp <- data.frame("IncidenceIDU"=c(((mean(pTotalHCVabC$y6)/mean(pTotalC$y6))*100), ((mean(pTotalHCVabC$y7)/mean(pTotalC$y7))*100), ((mean(pTotalHCVabC$y8)/mean(pTotalC$y8))*100), ((mean(pTotalHCVabC$y9)/mean(pTotalC$y9))*100), ((mean(pTotalHCVabC$y10)/mean(pTotalC$y10))*100), ((mean(pTotalHCVabC$y11)/mean(pTotalC$y11))*100), ((mean(pTotalHCVabC$y12)/mean(pTotalC$y12))*100), ((mean(pTotalHCVabC$y13)/mean(pTotalC$y13))*100), ((mean(pTotalHCVabC$y14)/mean(pTotalC$y14))*100) , ((mean(pTotalHCVabC$y15)/mean(pTotalC$y15))*100) , ((mean(pTotalHCVabC$y16)/mean(pTotalC$y16))*100) , ((mean(pTotalHCVabC$y17)/mean(pTotalC$y17))*100) , ((mean(pTotalHCVabC$y18)/mean(pTotalC$y18))*100) , ((mean(pTotalHCVabC$y19)/mean(pTotalC$y19))*100) , ((mean(pTotalHCVabC$y20)/mean(pTotalC$y20))*100) , ((mean(pTotalHCVabC$y21)/mean(pTotalC$y21))*100) , ((mean(pTotalHCVabC$y22)/mean(pTotalC$y22))*100) , ((mean(pTotalHCVabC$y23)/mean(pTotalC$y23))*100) , ((mean(pTotalHCVabC$y24)/mean(pTotalC$y24))*100) , ((mean(pTotalHCVabC$y25)/mean(pTotalC$y25))*100) , ((mean(pTotalHCVabC$y26)/mean(pTotalC$y26))*100), ((mean(pTotalHCVabC$y27)/mean(pTotalC$y27))*100), ((mean(pTotalHCVabC$y28)/mean(pTotalC$y28))*100), ((mean(pTotalHCVabC$y29)/mean(pTotalC$y29))*100), ((mean(pTotalHCVabC$y30)/mean(pTotalC$y30))*100) ))
HCVCp$IncidenceFloor <- c(((min(pTotalHCVabC$y6)/mean(pTotalC$y6))*100), ((min(pTotalHCVabC$y7)/mean(pTotalC$y7))*100), ((min(pTotalHCVabC$y8)/mean(pTotalC$y8))*100), ((min(pTotalHCVabC$y9)/mean(pTotalC$y9))*100), ((min(pTotalHCVabC$y10)/mean(pTotalC$y10))*100), ((min(pTotalHCVabC$y11)/mean(pTotalC$y11))*100), ((min(pTotalHCVabC$y12)/mean(pTotalC$y12))*100), ((min(pTotalHCVabC$y13)/mean(pTotalC$y13))*100), ((min(pTotalHCVabC$y14)/mean(pTotalC$y14))*100) , ((min(pTotalHCVabC$y15)/mean(pTotalC$y15))*100) , ((min(pTotalHCVabC$y16)/mean(pTotalC$y16))*100) , ((min(pTotalHCVabC$y17)/mean(pTotalC$y17))*100) , ((min(pTotalHCVabC$y18)/mean(pTotalC$y18))*100) , ((min(pTotalHCVabC$y19)/mean(pTotalC$y19))*100) , ((min(pTotalHCVabC$y20)/mean(pTotalC$y20))*100) , ((min(pTotalHCVabC$y21)/mean(pTotalC$y21))*100) , ((min(pTotalHCVabC$y22)/mean(pTotalC$y22))*100) , ((min(pTotalHCVabC$y23)/mean(pTotalC$y23))*100) , ((min(pTotalHCVabC$y24)/mean(pTotalC$y24))*100) , ((min(pTotalHCVabC$y25)/mean(pTotalC$y25))*100) , ((min(pTotalHCVabC$y26)/mean(pTotalC$y26))*100), ((min(pTotalHCVabC$y27)/mean(pTotalC$y27))*100), ((min(pTotalHCVabC$y28)/mean(pTotalC$y28))*100), ((min(pTotalHCVabC$y29)/mean(pTotalC$y29))*100), ((min(pTotalHCVabC$y30)/mean(pTotalC$y30))*100) )
HCVCp$IncidenceCeiling <- c(((max(pTotalHCVabC$y6)/mean(pTotalC$y6))*100), ((max(pTotalHCVabC$y7)/mean(pTotalC$y7))*100), ((max(pTotalHCVabC$y8)/mean(pTotalC$y8))*100), ((max(pTotalHCVabC$y9)/mean(pTotalC$y9))*100), ((max(pTotalHCVabC$y10)/mean(pTotalC$y10))*100), ((max(pTotalHCVabC$y11)/mean(pTotalC$y11))*100), ((max(pTotalHCVabC$y12)/mean(pTotalC$y12))*100), ((max(pTotalHCVabC$y13)/mean(pTotalC$y13))*100), ((max(pTotalHCVabC$y14)/mean(pTotalC$y14))*100) , ((max(pTotalHCVabC$y15)/mean(pTotalC$y15))*100) , ((max(pTotalHCVabC$y16)/mean(pTotalC$y16))*100) , ((max(pTotalHCVabC$y17)/mean(pTotalC$y17))*100) , ((max(pTotalHCVabC$y18)/mean(pTotalC$y18))*100) , ((max(pTotalHCVabC$y19)/mean(pTotalC$y19))*100) , ((max(pTotalHCVabC$y20)/mean(pTotalC$y20))*100) , ((max(pTotalHCVabC$y21)/mean(pTotalC$y21))*100) , ((max(pTotalHCVabC$y22)/mean(pTotalC$y22))*100) , ((max(pTotalHCVabC$y23)/mean(pTotalC$y23))*100) , ((max(pTotalHCVabC$y24)/mean(pTotalC$y24))*100) , ((max(pTotalHCVabC$y25)/mean(pTotalC$y25))*100) , ((max(pTotalHCVabC$y26)/mean(pTotalC$y26))*100), ((max(pTotalHCVabC$y27)/mean(pTotalC$y27))*100), ((max(pTotalHCVabC$y28)/mean(pTotalC$y28))*100), ((max(pTotalHCVabC$y29)/mean(pTotalC$y29))*100), ((max(pTotalHCVabC$y30)/mean(pTotalC$y30))*100)  )
HCVCp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVCp$Description <- c("DAA pessimistic scenario")#c("DAA treatments reduced to 0 per year")

#HCV RNA prop
#HCVAp <- data.frame("IncidenceIDU"=c(((mean(pTotalHCVRNAA$y6)/mean(pTotalA$y6))*100), ((mean(pTotalHCVRNAA$y7)/mean(pTotalA$y7))*100), ((mean(pTotalHCVRNAA$y8)/mean(pTotalA$y8))*100), ((mean(pTotalHCVRNAA$y9)/mean(pTotalA$y9))*100), ((mean(pTotalHCVRNAA$y10)/mean(pTotalA$y10))*100), ((mean(pTotalHCVRNAA$y11)/mean(pTotalA$y11))*100), ((mean(pTotalHCVRNAA$y12)/mean(pTotalA$y12))*100), ((mean(pTotalHCVRNAA$y13)/mean(pTotalA$y13))*100), ((mean(pTotalHCVRNAA$y14)/mean(pTotalA$y14))*100) , ((mean(pTotalHCVRNAA$y15)/mean(pTotalA$y15))*100) , ((mean(pTotalHCVRNAA$y16)/mean(pTotalA$y16))*100) , ((mean(pTotalHCVRNAA$y17)/mean(pTotalA$y17))*100) , ((mean(pTotalHCVRNAA$y18)/mean(pTotalA$y18))*100) , ((mean(pTotalHCVRNAA$y19)/mean(pTotalA$y19))*100) , ((mean(pTotalHCVRNAA$y20)/mean(pTotalA$y20))*100) , ((mean(pTotalHCVRNAA$y21)/mean(pTotalA$y21))*100) , ((mean(pTotalHCVRNAA$y22)/mean(pTotalA$y22))*100) , ((mean(pTotalHCVRNAA$y23)/mean(pTotalA$y23))*100) , ((mean(pTotalHCVRNAA$y24)/mean(pTotalA$y24))*100) , ((mean(pTotalHCVRNAA$y25)/mean(pTotalA$y25))*100) , ((mean(pTotalHCVRNAA$y26)/mean(pTotalA$y26))*100), ((mean(pTotalHCVRNAA$y27)/mean(pTotalA$y27))*100), ((mean(pTotalHCVRNAA$y28)/mean(pTotalA$y28))*100), ((mean(pTotalHCVRNAA$y29)/mean(pTotalA$y29))*100), ((mean(pTotalHCVRNAA$y30)/mean(pTotalA$y30))*100) ))
#HCVAp$IncidenceFloor <- c(((min(pTotalHCVRNAA$y6)/mean(pTotalA$y6))*100), ((min(pTotalHCVRNAA$y7)/mean(pTotalA$y7))*100), ((min(pTotalHCVRNAA$y8)/mean(pTotalA$y8))*100), ((min(pTotalHCVRNAA$y9)/mean(pTotalA$y9))*100), ((min(pTotalHCVRNAA$y10)/mean(pTotalA$y10))*100), ((min(pTotalHCVRNAA$y11)/mean(pTotalA$y11))*100), ((min(pTotalHCVRNAA$y12)/mean(pTotalA$y12))*100), ((min(pTotalHCVRNAA$y13)/mean(pTotalA$y13))*100), ((min(pTotalHCVRNAA$y14)/mean(pTotalA$y14))*100) , ((min(pTotalHCVRNAA$y15)/mean(pTotalA$y15))*100) , ((min(pTotalHCVRNAA$y16)/mean(pTotalA$y16))*100) , ((min(pTotalHCVRNAA$y17)/mean(pTotalA$y17))*100) , ((min(pTotalHCVRNAA$y18)/mean(pTotalA$y18))*100) , ((min(pTotalHCVRNAA$y19)/mean(pTotalA$y19))*100) , ((min(pTotalHCVRNAA$y20)/mean(pTotalA$y20))*100) , ((min(pTotalHCVRNAA$y21)/mean(pTotalA$y21))*100) , ((min(pTotalHCVRNAA$y22)/mean(pTotalA$y22))*100) , ((min(pTotalHCVRNAA$y23)/mean(pTotalA$y23))*100) , ((min(pTotalHCVRNAA$y24)/mean(pTotalA$y24))*100) , ((min(pTotalHCVRNAA$y25)/mean(pTotalA$y25))*100) , ((min(pTotalHCVRNAA$y26)/mean(pTotalA$y26))*100), ((min(pTotalHCVRNAA$y27)/mean(pTotalA$y27))*100), ((min(pTotalHCVRNAA$y28)/mean(pTotalA$y28))*100), ((min(pTotalHCVRNAA$y29)/mean(pTotalA$y29))*100), ((min(pTotalHCVRNAA$y30)/mean(pTotalA$y30))*100) )
#HCVAp$IncidenceCeiling <- c(((max(pTotalHCVRNAA$y6)/mean(pTotalA$y6))*100), ((max(pTotalHCVRNAA$y7)/mean(pTotalA$y7))*100), ((max(pTotalHCVRNAA$y8)/mean(pTotalA$y8))*100), ((max(pTotalHCVRNAA$y9)/mean(pTotalA$y9))*100), ((max(pTotalHCVRNAA$y10)/mean(pTotalA$y10))*100), ((max(pTotalHCVRNAA$y11)/mean(pTotalA$y11))*100), ((max(pTotalHCVRNAA$y12)/mean(pTotalA$y12))*100), ((max(pTotalHCVRNAA$y13)/mean(pTotalA$y13))*100), ((max(pTotalHCVRNAA$y14)/mean(pTotalA$y14))*100) , ((max(pTotalHCVRNAA$y15)/mean(pTotalA$y15))*100) , ((max(pTotalHCVRNAA$y16)/mean(pTotalA$y16))*100) , ((max(pTotalHCVRNAA$y17)/mean(pTotalA$y17))*100) , ((max(pTotalHCVRNAA$y18)/mean(pTotalA$y18))*100) , ((max(pTotalHCVRNAA$y19)/mean(pTotalA$y19))*100) , ((max(pTotalHCVRNAA$y20)/mean(pTotalA$y20))*100) , ((max(pTotalHCVRNAA$y21)/mean(pTotalA$y21))*100) , ((max(pTotalHCVRNAA$y22)/mean(pTotalA$y22))*100) , ((max(pTotalHCVRNAA$y23)/mean(pTotalA$y23))*100) , ((max(pTotalHCVRNAA$y24)/mean(pTotalA$y24))*100) , ((max(pTotalHCVRNAA$y25)/mean(pTotalA$y25))*100) , ((max(pTotalHCVRNAA$y26)/mean(pTotalA$y26))*100), ((max(pTotalHCVRNAA$y27)/mean(pTotalA$y27))*100), ((max(pTotalHCVRNAA$y28)/mean(pTotalA$y28))*100), ((max(pTotalHCVRNAA$y29)/mean(pTotalA$y29))*100), ((max(pTotalHCVRNAA$y30)/mean(pTotalA$y30))*100) )
#HCVAp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
#HCVAp$Description <- c("maintained number of DAA treatments")

#HCVBp <- data.frame("IncidenceIDU"=c(((mean(pTotalHCVRNAB$y6)/mean(pTotalB$y6))*100), ((mean(pTotalHCVRNAB$y7)/mean(pTotalB$y7))*100), ((mean(pTotalHCVRNAB$y8)/mean(pTotalB$y8))*100), ((mean(pTotalHCVRNAB$y9)/mean(pTotalB$y9))*100), ((mean(pTotalHCVRNAB$y10)/mean(pTotalB$y10))*100), ((mean(pTotalHCVRNAB$y11)/mean(pTotalB$y11))*100), ((mean(pTotalHCVRNAB$y12)/mean(pTotalB$y12))*100), ((mean(pTotalHCVRNAB$y13)/mean(pTotalB$y13))*100), ((mean(pTotalHCVRNAB$y14)/mean(pTotalB$y14))*100) , ((mean(pTotalHCVRNAB$y15)/mean(pTotalB$y15))*100) , ((mean(pTotalHCVRNAB$y16)/mean(pTotalB$y16))*100) , ((mean(pTotalHCVRNAB$y17)/mean(pTotalB$y17))*100) , ((mean(pTotalHCVRNAB$y18)/mean(pTotalB$y18))*100) , ((mean(pTotalHCVRNAB$y19)/mean(pTotalB$y19))*100) , ((mean(pTotalHCVRNAB$y20)/mean(pTotalB$y20))*100) , ((mean(pTotalHCVRNAB$y21)/mean(pTotalB$y21))*100) , ((mean(pTotalHCVRNAB$y22)/mean(pTotalB$y22))*100) , ((mean(pTotalHCVRNAB$y23)/mean(pTotalB$y23))*100) , ((mean(pTotalHCVRNAB$y24)/mean(pTotalB$y24))*100) , ((mean(pTotalHCVRNAB$y25)/mean(pTotalB$y25))*100) , ((mean(pTotalHCVRNAB$y26)/mean(pTotalB$y26))*100), ((mean(pTotalHCVRNAB$y27)/mean(pTotalB$y27))*100), ((mean(pTotalHCVRNAB$y28)/mean(pTotalB$y28))*100), ((mean(pTotalHCVRNAB$y29)/mean(pTotalB$y29))*100), ((mean(pTotalHCVRNAB$y30)/mean(pTotalB$y30))*100) ))
#HCVBp$IncidenceFloor <- c(((min(pTotalHCVRNAB$y6)/mean(pTotalB$y6))*100), ((min(pTotalHCVRNAB$y7)/mean(pTotalB$y7))*100), ((min(pTotalHCVRNAB$y8)/mean(pTotalB$y8))*100), ((min(pTotalHCVRNAB$y9)/mean(pTotalB$y9))*100), ((min(pTotalHCVRNAB$y10)/mean(pTotalB$y10))*100), ((min(pTotalHCVRNAB$y11)/mean(pTotalB$y11))*100), ((min(pTotalHCVRNAB$y12)/mean(pTotalB$y12))*100), ((min(pTotalHCVRNAB$y13)/mean(pTotalB$y13))*100), ((min(pTotalHCVRNAB$y14)/mean(pTotalB$y14))*100) , ((min(pTotalHCVRNAB$y15)/mean(pTotalB$y15))*100) , ((min(pTotalHCVRNAB$y16)/mean(pTotalB$y16))*100) , ((min(pTotalHCVRNAB$y17)/mean(pTotalB$y17))*100) , ((min(pTotalHCVRNAB$y18)/mean(pTotalB$y18))*100) , ((min(pTotalHCVRNAB$y19)/mean(pTotalB$y19))*100) , ((min(pTotalHCVRNAB$y20)/mean(pTotalB$y20))*100) , ((min(pTotalHCVRNAB$y21)/mean(pTotalB$y21))*100) , ((min(pTotalHCVRNAB$y22)/mean(pTotalB$y22))*100) , ((min(pTotalHCVRNAB$y23)/mean(pTotalB$y23))*100) , ((min(pTotalHCVRNAB$y24)/mean(pTotalB$y24))*100) , ((min(pTotalHCVRNAB$y25)/mean(pTotalB$y25))*100) , ((min(pTotalHCVRNAB$y26)/mean(pTotalB$y26))*100), ((min(pTotalHCVRNAB$y27)/mean(pTotalB$y27))*100), ((min(pTotalHCVRNAB$y28)/mean(pTotalB$y28))*100), ((min(pTotalHCVRNAB$y29)/mean(pTotalB$y29))*100), ((min(pTotalHCVRNAB$y30)/mean(pTotalB$y30))*100)  )
#HCVBp$IncidenceCeiling <- c(((max(pTotalHCVRNAB$y6)/mean(pTotalB$y6))*100), ((max(pTotalHCVRNAB$y7)/mean(pTotalB$y7))*100), ((max(pTotalHCVRNAB$y8)/mean(pTotalB$y8))*100), ((max(pTotalHCVRNAB$y9)/mean(pTotalB$y9))*100), ((max(pTotalHCVRNAB$y10)/mean(pTotalB$y10))*100), ((max(pTotalHCVRNAB$y11)/mean(pTotalB$y11))*100), ((max(pTotalHCVRNAB$y12)/mean(pTotalB$y12))*100), ((max(pTotalHCVRNAB$y13)/mean(pTotalB$y13))*100), ((max(pTotalHCVRNAB$y14)/mean(pTotalB$y14))*100) , ((max(pTotalHCVRNAB$y15)/mean(pTotalB$y15))*100) , ((max(pTotalHCVRNAB$y16)/mean(pTotalB$y16))*100) , ((max(pTotalHCVRNAB$y17)/mean(pTotalB$y17))*100) , ((max(pTotalHCVRNAB$y18)/mean(pTotalB$y18))*100) , ((max(pTotalHCVRNAB$y19)/mean(pTotalB$y19))*100) , ((max(pTotalHCVRNAB$y20)/mean(pTotalB$y20))*100) , ((max(pTotalHCVRNAB$y21)/mean(pTotalB$y21))*100) , ((max(pTotalHCVRNAB$y22)/mean(pTotalB$y22))*100) , ((max(pTotalHCVRNAB$y23)/mean(pTotalB$y23))*100) , ((max(pTotalHCVRNAB$y24)/mean(pTotalB$y24))*100) , ((max(pTotalHCVRNAB$y25)/mean(pTotalB$y25))*100) , ((max(pTotalHCVRNAB$y26)/mean(pTotalB$y26))*100), ((max(pTotalHCVRNAB$y27)/mean(pTotalB$y27))*100), ((max(pTotalHCVRNAB$y28)/mean(pTotalB$y28))*100), ((max(pTotalHCVRNAB$y29)/mean(pTotalB$y29))*100), ((max(pTotalHCVRNAB$y30)/mean(pTotalB$y30))*100) )
#HCVBp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
#HCVBp$Description <- c("DAA treatments increased to 5000 per year")

#HCVCp <- data.frame("IncidenceIDU"=c(((mean(pTotalHCVRNAC$y6)/mean(pTotalC$y6))*100), ((mean(pTotalHCVRNAC$y7)/mean(pTotalC$y7))*100), ((mean(pTotalHCVRNAC$y8)/mean(pTotalC$y8))*100), ((mean(pTotalHCVRNAC$y9)/mean(pTotalC$y9))*100), ((mean(pTotalHCVRNAC$y10)/mean(pTotalC$y10))*100), ((mean(pTotalHCVRNAC$y11)/mean(pTotalC$y11))*100), ((mean(pTotalHCVRNAC$y12)/mean(pTotalC$y12))*100), ((mean(pTotalHCVRNAC$y13)/mean(pTotalC$y13))*100), ((mean(pTotalHCVRNAC$y14)/mean(pTotalC$y14))*100) , ((mean(pTotalHCVRNAC$y15)/mean(pTotalC$y15))*100) , ((mean(pTotalHCVRNAC$y16)/mean(pTotalC$y16))*100) , ((mean(pTotalHCVRNAC$y17)/mean(pTotalC$y17))*100) , ((mean(pTotalHCVRNAC$y18)/mean(pTotalC$y18))*100) , ((mean(pTotalHCVRNAC$y19)/mean(pTotalC$y19))*100) , ((mean(pTotalHCVRNAC$y20)/mean(pTotalC$y20))*100) , ((mean(pTotalHCVRNAC$y21)/mean(pTotalC$y21))*100) , ((mean(pTotalHCVRNAC$y22)/mean(pTotalC$y22))*100) , ((mean(pTotalHCVRNAC$y23)/mean(pTotalC$y23))*100) , ((mean(pTotalHCVRNAC$y24)/mean(pTotalC$y24))*100) , ((mean(pTotalHCVRNAC$y25)/mean(pTotalC$y25))*100) , ((mean(pTotalHCVRNAC$y26)/mean(pTotalC$y26))*100), ((mean(pTotalHCVRNAC$y27)/mean(pTotalC$y27))*100), ((mean(pTotalHCVRNAC$y28)/mean(pTotalC$y28))*100), ((mean(pTotalHCVRNAC$y29)/mean(pTotalC$y29))*100), ((mean(pTotalHCVRNAC$y30)/mean(pTotalC$y30))*100) ))
#HCVCp$IncidenceFloor <- c(((min(pTotalHCVRNAC$y6)/mean(pTotalC$y6))*100), ((min(pTotalHCVRNAC$y7)/mean(pTotalC$y7))*100), ((min(pTotalHCVRNAC$y8)/mean(pTotalC$y8))*100), ((min(pTotalHCVRNAC$y9)/mean(pTotalC$y9))*100), ((min(pTotalHCVRNAC$y10)/mean(pTotalC$y10))*100), ((min(pTotalHCVRNAC$y11)/mean(pTotalC$y11))*100), ((min(pTotalHCVRNAC$y12)/mean(pTotalC$y12))*100), ((min(pTotalHCVRNAC$y13)/mean(pTotalC$y13))*100), ((min(pTotalHCVRNAC$y14)/mean(pTotalC$y14))*100) , ((min(pTotalHCVRNAC$y15)/mean(pTotalC$y15))*100) , ((min(pTotalHCVRNAC$y16)/mean(pTotalC$y16))*100) , ((min(pTotalHCVRNAC$y17)/mean(pTotalC$y17))*100) , ((min(pTotalHCVRNAC$y18)/mean(pTotalC$y18))*100) , ((min(pTotalHCVRNAC$y19)/mean(pTotalC$y19))*100) , ((min(pTotalHCVRNAC$y20)/mean(pTotalC$y20))*100) , ((min(pTotalHCVRNAC$y21)/mean(pTotalC$y21))*100) , ((min(pTotalHCVRNAC$y22)/mean(pTotalC$y22))*100) , ((min(pTotalHCVRNAC$y23)/mean(pTotalC$y23))*100) , ((min(pTotalHCVRNAC$y24)/mean(pTotalC$y24))*100) , ((min(pTotalHCVRNAC$y25)/mean(pTotalC$y25))*100) , ((min(pTotalHCVRNAC$y26)/mean(pTotalC$y26))*100), ((min(pTotalHCVRNAC$y27)/mean(pTotalC$y27))*100), ((min(pTotalHCVRNAC$y28)/mean(pTotalC$y28))*100), ((min(pTotalHCVRNAC$y29)/mean(pTotalC$y29))*100), ((min(pTotalHCVRNAC$y30)/mean(pTotalC$y30))*100) )
#HCVCp$IncidenceCeiling <- c(((max(pTotalHCVRNAC$y6)/mean(pTotalC$y6))*100), ((max(pTotalHCVRNAC$y7)/mean(pTotalC$y7))*100), ((max(pTotalHCVRNAC$y8)/mean(pTotalC$y8))*100), ((max(pTotalHCVRNAC$y9)/mean(pTotalC$y9))*100), ((max(pTotalHCVRNAC$y10)/mean(pTotalC$y10))*100), ((max(pTotalHCVRNAC$y11)/mean(pTotalC$y11))*100), ((max(pTotalHCVRNAC$y12)/mean(pTotalC$y12))*100), ((max(pTotalHCVRNAC$y13)/mean(pTotalC$y13))*100), ((max(pTotalHCVRNAC$y14)/mean(pTotalC$y14))*100) , ((max(pTotalHCVRNAC$y15)/mean(pTotalC$y15))*100) , ((max(pTotalHCVRNAC$y16)/mean(pTotalC$y16))*100) , ((max(pTotalHCVRNAC$y17)/mean(pTotalC$y17))*100) , ((max(pTotalHCVRNAC$y18)/mean(pTotalC$y18))*100) , ((max(pTotalHCVRNAC$y19)/mean(pTotalC$y19))*100) , ((max(pTotalHCVRNAC$y20)/mean(pTotalC$y20))*100) , ((max(pTotalHCVRNAC$y21)/mean(pTotalC$y21))*100) , ((max(pTotalHCVRNAC$y22)/mean(pTotalC$y22))*100) , ((max(pTotalHCVRNAC$y23)/mean(pTotalC$y23))*100) , ((max(pTotalHCVRNAC$y24)/mean(pTotalC$y24))*100) , ((max(pTotalHCVRNAC$y25)/mean(pTotalC$y25))*100) , ((max(pTotalHCVRNAC$y26)/mean(pTotalC$y26))*100), ((max(pTotalHCVRNAC$y27)/mean(pTotalC$y27))*100), ((max(pTotalHCVRNAC$y28)/mean(pTotalC$y28))*100), ((max(pTotalHCVRNAC$y29)/mean(pTotalC$y29))*100), ((max(pTotalHCVRNAC$y30)/mean(pTotalC$y30))*100)  )
#HCVCp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
#HCVCp$Description <- c("DAA treatments reduced to 0 per year")

HCVPrev <- data.frame("IncidenceIDU"=c(40.1))
HCVPrev$IncidenceFloor <- c(40.1)
HCVPrev$IncidenceCeiling <- c(40.1)
HCVPrev$Year <- c("2015")
HCVPrev$Description <- c("2015 IHS HCV Ab prevalence") #2015 Inmate Health Survey

prevHCVAll <- NULL
prevHCVAll <- rbind(HCVAp, HCVBp, HCVCp, HCVPrev)
#PlotB <- ggplot(data=prevHCVAll, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=3.5) + scale_shape_manual(values=c(19, 15, 17))  + scale_linetype_manual(values=c("solid","twodash", "longdash")) + ylab("HCV prevalence\n among total prison population") + scale_color_manual(values=c("#660000", "#006633", "#003366")) + ylim(0, 50) + geom_vline(xintercept=c(9, 13), linetype="dotted") + ggtitle("B") + theme_bw() + theme(legend.position="none", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.05, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 90, hjust = 1))
PlotB <-  ggplot(data=prevHCVAll, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=3.5) + scale_shape_manual(values=c(3, 15, 19, 17))  + scale_linetype_manual(values=c("dotted", "dotdash", "solid", "longdash")) + ylab("HCV Ab prevalence\n among total prison population") + scale_color_manual(values=c( "#000000", "#006633", "#660000", "#003366")) + ylim(0, 50) + geom_vline(xintercept=c(12), linetype="dotted") + ggtitle("B") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.05, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 40, hjust = 1))

legend <- get_legend(PlotLegend)
grid.newpage()
#grid.arrange(arrangeGrob(PlotA, PlotB))
#popPlots <- rbind (ggplotGrob(PlotA), ggplotGrob(PlotB), size="first")
ggdraw() + draw_plot(plot_grid(PlotA + theme(legend.position='none'), PlotB + theme(legend.position='none'), ncol=1, align='hv'), width=0.9) + draw_plot(legend, x=0.25, y=0.0005, width=0.1, height=0.5)
