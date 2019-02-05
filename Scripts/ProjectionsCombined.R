library(ggplot2)
library(gridExtra)
library(grid)
library(lattice)
library(cowplot)

#Load 50 files
pMinA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMedA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMaxA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointTotalA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pReinfectedA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesSumA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesNSPSumA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalIDUA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPrisonHCVA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pOpdA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUSumA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pClrDA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalDAAA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOSTA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPSumA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeAbA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeRNAA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVabA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointHCVabA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVRNAA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOpdNotOSTA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVAbA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVRNAA <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]

pMinB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMedB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMaxB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointTotalB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pReinfectedB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesSumB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesNSPSumB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalIDUB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPrisonHCVB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pOpdB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUSumB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pClrDB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalDAAB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOSTB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPSumB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeAbB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeRNAB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVabB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointHCVabB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVRNAB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOpdNotOSTB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVAbB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVRNAB <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]

pMinC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMedC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMaxC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointTotalC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pReinfectedC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesSumC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesNSPSumC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalIDUC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPrisonHCVC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pOpdC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUSumC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pClrDC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalDAAC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOSTC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPSumC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeAbC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeRNAC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVabC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointHCVabC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVRNAC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOpdNotOSTC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVAbC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVRNAC <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]

#Load 50 files
pMinD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMedD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMaxD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointTotalD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pReinfectedD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesSumD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesNSPSumD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalIDUD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPrisonHCVD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pOpdD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUSumD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pClrDD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalDAAD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOSTD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPSumD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeAbD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeRNAD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVabD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointHCVabD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVRNAD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOpdNotOSTD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVAbD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVRNAD <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]

pMinE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMedE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMaxE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointTotalE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pReinfectedE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesSumE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesNSPSumE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalIDUE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPrisonHCVE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pOpdE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUSumE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pClrDE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalDAAE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOSTE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPSumE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeAbE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeRNAE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVabE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointHCVabE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVRNAE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOpdNotOSTE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVAbE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVRNAE <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]

pMinF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMedF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMaxF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointTotalF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pReinfectedF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesSumF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesNSPSumF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalIDUF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPrisonHCVF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pOpdF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUSumF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pClrDF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalDAAF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOSTF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPSumF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeAbF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeRNAF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVabF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointHCVabF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVRNAF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOpdNotOSTF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVAbF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVRNAF <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]

pMinG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMedG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMaxG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointTotalG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pReinfectedG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesSumG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesNSPSumG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalIDUG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPrisonHCVG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pOpdG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUSumG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pClrDG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalDAAG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOSTG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPSumG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeAbG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeRNAG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVabG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointHCVabG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVRNAG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOpdNotOSTG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVAbG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVRNAG <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]

pMinH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMedH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMaxH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointTotalH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pReinfectedH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesSumH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesNSPSumH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalIDUH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPrisonHCVH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pOpdH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUSumH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pClrDH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalDAAH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOSTH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPSumH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeAbH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeRNAH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVabH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointHCVabH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVRNAH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOpdNotOSTH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVAbH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVRNAH <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]

pMinI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMedI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMaxI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointTotalI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pReinfectedI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesSumI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesNSPSumI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalIDUI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPrisonHCVI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pOpdI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUSumI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pClrDI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalDAAI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOSTI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPSumI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeAbI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeRNAI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVabI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointHCVabI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVRNAI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOpdNotOSTI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVAbI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVRNAI <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]

pMinJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMedJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pMaxJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointTotalJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pReinfectedJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesSumJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pNewCasesNSPSumJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalIDUJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPrisonHCVJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pOpdJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pEverIDUSumJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pClrDJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalDAAJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOSTJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalNSPSumJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeAbJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVeRNAJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVabJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pPointHCVabJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalHCVRNAJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalOpdNotOSTJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVAbJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
pTotalReleasedHCVRNAJ <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]

#Status-quo
for (var in 1:1)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/Testing/results/outDint_", var, ".xls", sep="") #New infection Function/
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCVAb", "ReleasedHCVRNA", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "OpdNotOST", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "OSTremaining", "HCVeRNA", "HCVeAb", "NewEntry", "HCVab", "HCVRNA", "AveStay", "NCbyOST")
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
  pMinTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pMedTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pMaxTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pTotalTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pReTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  #pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  #pNcTmp[1,] <- 0
  #pNcTmp$y6[1] <- sum(Y6$NCbyNSP)
  #pNcTmp$y7[1] <- sum(Y7$NCbyNSP)
  #pNcTmp$y8[1] <- sum(Y8$NCbyNSP)
  #pNcTmp$y9[1] <- sum(Y9$NCbyNSP)
  #pNcTmp$y10[1] <- sum(Y10$NCbyNSP)
  #pNcTmp$y11[1] <- sum(Y11$NCbyNSP)
  #pNcTmp$y12[1] <- sum(Y12$NCbyNSP)
  #pNcTmp$y13[1] <- sum(Y13$NCbyNSP)
  #pNcTmp$y14[1] <- sum(Y14$NCbyNSP)
  #pNcTmp$y15[1] <- sum(Y15$NCbyNSP)
  #pNcTmp$y16[1] <- sum(Y16$NCbyNSP)
  #pNcTmp$y17[1] <- sum(Y17$NCbyNSP)
  #pNcTmp$y18[1] <- sum(Y18$NCbyNSP)
  #pNcTmp$y19[1] <- sum(Y19$NCbyNSP)
  #pNcTmp$y20[1] <- sum(Y20$NCbyNSP)
  #pNcTmp$y21[1] <- sum(Y21$NCbyNSP)
  #pNcTmp$y22[1] <- sum(Y22$NCbyNSP)
  #pNcTmp$y23[1] <- sum(Y23$NCbyNSP)
  #pNcTmp$y24[1] <- sum(Y24$NCbyNSP)
  #pNcTmp$y25[1] <- sum(Y25$NCbyNSP)
  #pNcTmp$y26[1] <- sum(Y26$NCbyNSP)
  #pNcTmp$y27[1] <- sum(Y27$NCbyNSP)
  #pNcTmp$y28[1] <- sum(Y28$NCbyNSP)
  #pNcTmp$y29[1] <- sum(Y29$NCbyNSP)
  #pNcTmp$y30[1] <- sum(Y30$NCbyNSP)
  #pNewCasesNSPSumA <- rbind(pNewCasesNSPSumA, pNcTmp)
  
  pIDUTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pPrisonTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pOpdTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pEverTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pClrTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  ptDAATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  ptOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  #ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  #ptNSPTmp[1,] <- 0
  #ptNSPTmp$y6[1] <- mean(Y6$totalNSP)
  #ptNSPTmp$y7[1] <- mean(Y7$totalNSP)
  #ptNSPTmp$y8[1] <- mean(Y8$totalNSP)
  #ptNSPTmp$y9[1] <- mean(Y9$totalNSP)
  #ptNSPTmp$y10[1] <- mean(Y10$totalNSP)
  #ptNSPTmp$y11[1] <- mean(Y11$totalNSP)
  #ptNSPTmp$y12[1] <- mean(Y12$totalNSP)
  #ptNSPTmp$y13[1] <- mean(Y13$totalNSP)
  #ptNSPTmp$y14[1] <- mean(Y14$totalNSP)
  #ptNSPTmp$y15[1] <- mean(Y15$totalNSP)
  #ptNSPTmp$y16[1] <- mean(Y16$totalNSP)
  #ptNSPTmp$y17[1] <- mean(Y17$totalNSP)
  #ptNSPTmp$y18[1] <- mean(Y18$totalNSP)
  #ptNSPTmp$y19[1] <- mean(Y19$totalNSP)
  #ptNSPTmp$y20[1] <- mean(Y20$totalNSP)
  #ptNSPTmp$y21[1] <- mean(Y21$totalNSP)
  #ptNSPTmp$y22[1] <- mean(Y22$totalNSP)
  #ptNSPTmp$y23[1] <- mean(Y23$totalNSP)
  #ptNSPTmp$y24[1] <- mean(Y24$totalNSP)
  #ptNSPTmp$y25[1] <- mean(Y25$totalNSP)
  #ptNSPTmp$y26[1] <- mean(Y26$totalNSP)
  #ptNSPTmp$y27[1] <- mean(Y27$totalNSP)
  #ptNSPTmp$y28[1] <- mean(Y28$totalNSP)
  #ptNSPTmp$y29[1] <- mean(Y29$totalNSP)
  #ptNSPTmp$y30[1] <- mean(Y30$totalNSP)
  #pTotalNSPA <- rbind(pTotalNSPA, ptNSPTmp)
  
  #ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  #ptNSPTmp[1,] <- 0
  #ptNSPTmp$y6[1] <- Y6$totalNSP[365]
  #ptNSPTmp$y7[1] <- Y7$totalNSP[365]
  #ptNSPTmp$y8[1] <- Y8$totalNSP[365]
  #ptNSPTmp$y9[1] <- Y9$totalNSP[365]
  #ptNSPTmp$y10[1] <- Y10$totalNSP[365]
  #ptNSPTmp$y11[1] <- Y11$totalNSP[365]
  #ptNSPTmp$y12[1] <- Y12$totalNSP[365]
  #ptNSPTmp$y13[1] <- Y13$totalNSP[365]
  #ptNSPTmp$y14[1] <- Y14$totalNSP[365]
  #ptNSPTmp$y15[1] <- Y15$totalNSP[365]
  #ptNSPTmp$y16[1] <- Y16$totalNSP[365]
  #ptNSPTmp$y17[1] <- Y17$totalNSP[365]
  #ptNSPTmp$y18[1] <- Y18$totalNSP[365]
  #ptNSPTmp$y19[1] <- Y19$totalNSP[365]
  #ptNSPTmp$y20[1] <- Y20$totalNSP[365]
  #ptNSPTmp$y21[1] <- Y21$totalNSP[365]
  #ptNSPTmp$y22[1] <- Y22$totalNSP[365]
  #ptNSPTmp$y23[1] <- Y23$totalNSP[365]
  #ptNSPTmp$y24[1] <- Y24$totalNSP[365]
  #ptNSPTmp$y25[1] <- Y25$totalNSP[365]
  #ptNSPTmp$y26[1] <- Y26$totalNSP[365]
  #ptNSPTmp$y27[1] <- Y27$totalNSP[365]
  #ptNSPTmp$y28[1] <- Y28$totalNSP[365]
  #ptNSPTmp$y29[1] <- Y29$totalNSP[365]
  #ptNSPTmp$y30[1] <- Y30$totalNSP[365]
  #pTotalNSPSumA <- rbind(pTotalNSPSumA, ptNSPTmp)
  
  ptHCVeAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeAbTmp[1,] <- 0
  ptHCVeAbTmp$y6[1] <- mean(Y6$HCVeAb)
  ptHCVeAbTmp$y7[1] <- mean(Y7$HCVeAb)
  ptHCVeAbTmp$y8[1] <- mean(Y8$HCVeAb)
  ptHCVeAbTmp$y9[1] <- mean(Y9$HCVeAb)
  ptHCVeAbTmp$y10[1] <- mean(Y10$HCVeAb)
  ptHCVeAbTmp$y11[1] <- mean(Y11$HCVeAb)
  ptHCVeAbTmp$y12[1] <- mean(Y12$HCVeAb)
  ptHCVeAbTmp$y13[1] <- mean(Y13$HCVeAb)
  ptHCVeAbTmp$y14[1] <- mean(Y14$HCVeAb)
  ptHCVeAbTmp$y15[1] <- mean(Y15$HCVeAb)
  ptHCVeAbTmp$y16[1] <- mean(Y16$HCVeAb)
  ptHCVeAbTmp$y17[1] <- mean(Y17$HCVeAb)
  ptHCVeAbTmp$y18[1] <- mean(Y18$HCVeAb)
  ptHCVeAbTmp$y19[1] <- mean(Y19$HCVeAb)
  ptHCVeAbTmp$y20[1] <- mean(Y20$HCVeAb)
  ptHCVeAbTmp$y21[1] <- mean(Y21$HCVeAb)
  ptHCVeAbTmp$y22[1] <- mean(Y22$HCVeAb)
  ptHCVeAbTmp$y23[1] <- mean(Y23$HCVeAb)
  ptHCVeAbTmp$y24[1] <- mean(Y24$HCVeAb)
  ptHCVeAbTmp$y25[1] <- mean(Y25$HCVeAb)
  ptHCVeAbTmp$y26[1] <- mean(Y26$HCVeAb)
  ptHCVeAbTmp$y27[1] <- mean(Y27$HCVeAb)
  ptHCVeAbTmp$y28[1] <- mean(Y28$HCVeAb)
  ptHCVeAbTmp$y29[1] <- mean(Y29$HCVeAb)
  ptHCVeAbTmp$y30[1] <- mean(Y30$HCVeAb)
  pTotalHCVeAbA <- rbind(pTotalHCVeAbA, ptHCVeAbTmp)
  
  ptHCVeRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeRNATmp[1,] <- 0
  ptHCVeRNATmp$y6[1] <- mean(Y6$HCVeRNA)
  ptHCVeRNATmp$y7[1] <- mean(Y7$HCVeRNA)
  ptHCVeRNATmp$y8[1] <- mean(Y8$HCVeRNA)
  ptHCVeRNATmp$y9[1] <- mean(Y9$HCVeRNA)
  ptHCVeRNATmp$y10[1] <- mean(Y10$HCVeRNA)
  ptHCVeRNATmp$y11[1] <- mean(Y11$HCVeRNA)
  ptHCVeRNATmp$y12[1] <- mean(Y12$HCVeRNA)
  ptHCVeRNATmp$y13[1] <- mean(Y13$HCVeRNA)
  ptHCVeRNATmp$y14[1] <- mean(Y14$HCVeRNA)
  ptHCVeRNATmp$y15[1] <- mean(Y15$HCVeRNA)
  ptHCVeRNATmp$y16[1] <- mean(Y16$HCVeRNA)
  ptHCVeRNATmp$y17[1] <- mean(Y17$HCVeRNA)
  ptHCVeRNATmp$y18[1] <- mean(Y18$HCVeRNA)
  ptHCVeRNATmp$y19[1] <- mean(Y19$HCVeRNA)
  ptHCVeRNATmp$y20[1] <- mean(Y20$HCVeRNA)
  ptHCVeRNATmp$y21[1] <- mean(Y21$HCVeRNA)
  ptHCVeRNATmp$y22[1] <- mean(Y22$HCVeRNA)
  ptHCVeRNATmp$y23[1] <- mean(Y23$HCVeRNA)
  ptHCVeRNATmp$y24[1] <- mean(Y24$HCVeRNA)
  ptHCVeRNATmp$y25[1] <- mean(Y25$HCVeRNA)
  ptHCVeRNATmp$y26[1] <- mean(Y26$HCVeRNA)
  ptHCVeRNATmp$y27[1] <- mean(Y27$HCVeRNA)
  ptHCVeRNATmp$y28[1] <- mean(Y28$HCVeRNA)
  ptHCVeRNATmp$y29[1] <- mean(Y29$HCVeRNA)
  ptHCVeRNATmp$y30[1] <- mean(Y30$HCVeRNA)
  pTotalHCVeRNAA <- rbind(pTotalHCVeRNAA, ptHCVeRNATmp)
  
  ptHCVabTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVabTmp[1,] <- 0
  ptHCVabTmp$y6[1] <- mean(Y6$HCVab)
  ptHCVabTmp$y7[1] <- mean(Y7$HCVab)
  ptHCVabTmp$y8[1] <- mean(Y8$HCVab)
  ptHCVabTmp$y9[1] <- mean(Y9$HCVab)
  ptHCVabTmp$y10[1] <- mean(Y10$HCVab)
  ptHCVabTmp$y11[1] <- mean(Y11$HCVab)
  ptHCVabTmp$y12[1] <- mean(Y12$HCVab)
  ptHCVabTmp$y13[1] <- mean(Y13$HCVab)
  ptHCVabTmp$y14[1] <- mean(Y14$HCVab)
  ptHCVabTmp$y15[1] <- mean(Y15$HCVab)
  ptHCVabTmp$y16[1] <- mean(Y16$HCVab)
  ptHCVabTmp$y17[1] <- mean(Y17$HCVab)
  ptHCVabTmp$y18[1] <- mean(Y18$HCVab)
  ptHCVabTmp$y19[1] <- mean(Y19$HCVab)
  ptHCVabTmp$y20[1] <- mean(Y20$HCVab)
  ptHCVabTmp$y21[1] <- mean(Y21$HCVab)
  ptHCVabTmp$y22[1] <- mean(Y22$HCVab)
  ptHCVabTmp$y23[1] <- mean(Y23$HCVab)
  ptHCVabTmp$y24[1] <- mean(Y24$HCVab)
  ptHCVabTmp$y25[1] <- mean(Y25$HCVab)
  ptHCVabTmp$y26[1] <- mean(Y26$HCVab)
  ptHCVabTmp$y27[1] <- mean(Y27$HCVab)
  ptHCVabTmp$y28[1] <- mean(Y28$HCVab)
  ptHCVabTmp$y29[1] <- mean(Y29$HCVab)
  ptHCVabTmp$y30[1] <- mean(Y30$HCVab)
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
  
  ptHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVRNATmp[1,] <- 0
  ptHCVRNATmp$y6[1] <- mean(Y6$HCVRNA)
  ptHCVRNATmp$y7[1] <- mean(Y7$HCVRNA)
  ptHCVRNATmp$y8[1] <- mean(Y8$HCVRNA)
  ptHCVRNATmp$y9[1] <- mean(Y9$HCVRNA)
  ptHCVRNATmp$y10[1] <- mean(Y10$HCVRNA)
  ptHCVRNATmp$y11[1] <- mean(Y11$HCVRNA)
  ptHCVRNATmp$y12[1] <- mean(Y12$HCVRNA)
  ptHCVRNATmp$y13[1] <- mean(Y13$HCVRNA)
  ptHCVRNATmp$y14[1] <- mean(Y14$HCVRNA)
  ptHCVRNATmp$y15[1] <- mean(Y15$HCVRNA)
  ptHCVRNATmp$y16[1] <- mean(Y16$HCVRNA)
  ptHCVRNATmp$y17[1] <- mean(Y17$HCVRNA)
  ptHCVRNATmp$y18[1] <- mean(Y18$HCVRNA)
  ptHCVRNATmp$y19[1] <- mean(Y19$HCVRNA)
  ptHCVRNATmp$y20[1] <- mean(Y20$HCVRNA)
  ptHCVRNATmp$y21[1] <- mean(Y21$HCVRNA)
  ptHCVRNATmp$y22[1] <- mean(Y22$HCVRNA)
  ptHCVRNATmp$y23[1] <- mean(Y23$HCVRNA)
  ptHCVRNATmp$y24[1] <- mean(Y24$HCVRNA)
  ptHCVRNATmp$y25[1] <- mean(Y25$HCVRNA)
  ptHCVRNATmp$y26[1] <- mean(Y26$HCVRNA)
  ptHCVRNATmp$y27[1] <- mean(Y27$HCVRNA)
  ptHCVRNATmp$y28[1] <- mean(Y28$HCVRNA)
  ptHCVRNATmp$y29[1] <- mean(Y29$HCVRNA)
  ptHCVRNATmp$y30[1] <- mean(Y30$HCVRNA)
  pTotalHCVRNAA <- rbind(pTotalHCVRNAA, ptHCVRNATmp)
  
  ptOpdNotOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptOpdNotOSTTmp[1,] <- 0
  ptOpdNotOSTTmp$y6[1] <- mean(Y6$OpdNotOST)
  ptOpdNotOSTTmp$y7[1] <- mean(Y7$OpdNotOST)
  ptOpdNotOSTTmp$y8[1] <- mean(Y8$OpdNotOST)
  ptOpdNotOSTTmp$y9[1] <- mean(Y9$OpdNotOST)
  ptOpdNotOSTTmp$y10[1] <- mean(Y10$OpdNotOST)
  ptOpdNotOSTTmp$y11[1] <- mean(Y11$OpdNotOST)
  ptOpdNotOSTTmp$y12[1] <- mean(Y12$OpdNotOST)
  ptOpdNotOSTTmp$y13[1] <- mean(Y13$OpdNotOST)
  ptOpdNotOSTTmp$y14[1] <- mean(Y14$OpdNotOST)
  ptOpdNotOSTTmp$y15[1] <- mean(Y15$OpdNotOST)
  ptOpdNotOSTTmp$y16[1] <- mean(Y16$OpdNotOST)
  ptOpdNotOSTTmp$y17[1] <- mean(Y17$OpdNotOST)
  ptOpdNotOSTTmp$y18[1] <- mean(Y18$OpdNotOST)
  ptOpdNotOSTTmp$y19[1] <- mean(Y19$OpdNotOST)
  ptOpdNotOSTTmp$y20[1] <- mean(Y20$OpdNotOST)
  ptOpdNotOSTTmp$y21[1] <- mean(Y21$OpdNotOST)
  ptOpdNotOSTTmp$y22[1] <- mean(Y22$OpdNotOST)
  ptOpdNotOSTTmp$y23[1] <- mean(Y23$OpdNotOST)
  ptOpdNotOSTTmp$y24[1] <- mean(Y24$OpdNotOST)
  ptOpdNotOSTTmp$y25[1] <- mean(Y25$OpdNotOST)
  ptOpdNotOSTTmp$y26[1] <- mean(Y26$OpdNotOST)
  ptOpdNotOSTTmp$y27[1] <- mean(Y27$OpdNotOST)
  ptOpdNotOSTTmp$y28[1] <- mean(Y28$OpdNotOST)
  ptOpdNotOSTTmp$y29[1] <- mean(Y29$OpdNotOST)
  ptOpdNotOSTTmp$y30[1] <- mean(Y30$OpdNotOST)
  pTotalOpdNotOSTA <- rbind(pTotalOpdNotOSTA, ptOpdNotOSTTmp)
  
  ptReleasedHCVAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVAbTmp[1,] <- 0
  ptReleasedHCVAbTmp$y6[1] <- mean(Y6$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y7[1] <- mean(Y7$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y8[1] <- mean(Y8$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y9[1] <- mean(Y9$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y10[1] <- mean(Y10$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y11[1] <- mean(Y11$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y12[1] <- mean(Y12$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y13[1] <- mean(Y13$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y14[1] <- mean(Y14$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y15[1] <- mean(Y15$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y16[1] <- mean(Y16$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y17[1] <- mean(Y17$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y18[1] <- mean(Y18$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y19[1] <- mean(Y19$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y20[1] <- mean(Y20$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y21[1] <- mean(Y21$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y22[1] <- mean(Y22$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y23[1] <- mean(Y23$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y24[1] <- mean(Y24$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y25[1] <- mean(Y25$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y26[1] <- mean(Y26$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y27[1] <- mean(Y27$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y28[1] <- mean(Y28$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y29[1] <- mean(Y29$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y30[1] <- mean(Y30$ReleasedHCVAb)
  pTotalReleasedHCVAbA <- rbind(pTotalReleasedHCVAbA, ptReleasedHCVAbTmp)
  
  ptReleasedHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVRNATmp[1,] <- 0
  ptReleasedHCVRNATmp$y6[1] <- mean(Y6$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y7[1] <- mean(Y7$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y8[1] <- mean(Y8$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y9[1] <- mean(Y9$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y10[1] <- mean(Y10$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y11[1] <- mean(Y11$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y12[1] <- mean(Y12$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y13[1] <- mean(Y13$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y14[1] <- mean(Y14$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y15[1] <- mean(Y15$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y16[1] <- mean(Y16$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y17[1] <- mean(Y17$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y18[1] <- mean(Y18$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y19[1] <- mean(Y19$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y20[1] <- mean(Y20$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y21[1] <- mean(Y21$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y22[1] <- mean(Y22$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y23[1] <- mean(Y23$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y24[1] <- mean(Y24$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y25[1] <- mean(Y25$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y26[1] <- mean(Y26$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y27[1] <- mean(Y27$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y28[1] <- mean(Y28$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y29[1] <- mean(Y29$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y30[1] <- mean(Y30$ReleasedHCVRNA)
  pTotalReleasedHCVRNAA <- rbind(pTotalReleasedHCVRNAA, ptReleasedHCVRNATmp)
}

#DAA
for (var in 1:1)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/Testing/results/outDi_", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
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
  pMinTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pMedTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pMaxTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pTotalTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pReTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  #pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  #pNcTmp[1,] <- 0
  #pNcTmp$y6[1] <- sum(Y6$NCbyNSP)
  #pNcTmp$y7[1] <- sum(Y7$NCbyNSP)
  #pNcTmp$y8[1] <- sum(Y8$NCbyNSP)
  #pNcTmp$y9[1] <- sum(Y9$NCbyNSP)
  #pNcTmp$y10[1] <- sum(Y10$NCbyNSP)
  #pNcTmp$y11[1] <- sum(Y11$NCbyNSP)
  #pNcTmp$y12[1] <- sum(Y12$NCbyNSP)
  #pNcTmp$y13[1] <- sum(Y13$NCbyNSP)
  #pNcTmp$y14[1] <- sum(Y14$NCbyNSP)
  #pNcTmp$y15[1] <- sum(Y15$NCbyNSP)
  #pNcTmp$y16[1] <- sum(Y16$NCbyNSP)
  #pNcTmp$y17[1] <- sum(Y17$NCbyNSP)
  #pNcTmp$y18[1] <- sum(Y18$NCbyNSP)
  #pNcTmp$y19[1] <- sum(Y19$NCbyNSP)
  #pNcTmp$y20[1] <- sum(Y20$NCbyNSP)
  #pNcTmp$y21[1] <- sum(Y21$NCbyNSP)
  #pNcTmp$y22[1] <- sum(Y22$NCbyNSP)
  #pNcTmp$y23[1] <- sum(Y23$NCbyNSP)
  #pNcTmp$y24[1] <- sum(Y24$NCbyNSP)
  #pNcTmp$y25[1] <- sum(Y25$NCbyNSP)
  #pNcTmp$y26[1] <- sum(Y26$NCbyNSP)
  #pNcTmp$y27[1] <- sum(Y27$NCbyNSP)
  #pNcTmp$y28[1] <- sum(Y28$NCbyNSP)
  #pNcTmp$y29[1] <- sum(Y29$NCbyNSP)
  #pNcTmp$y30[1] <- sum(Y30$NCbyNSP)
  #pNewCasesNSPSumB <- rbind(pNewCasesNSPSumB, pNcTmp)
  
  pIDUTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pPrisonTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pOpdTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pEverTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pClrTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  ptDAATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  ptOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  #ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  #ptNSPTmp[1,] <- 0
  #ptNSPTmp$y6[1] <- mean(Y6$totalNSP)
  #ptNSPTmp$y7[1] <- mean(Y7$totalNSP)
  #ptNSPTmp$y8[1] <- mean(Y8$totalNSP)
  #ptNSPTmp$y9[1] <- mean(Y9$totalNSP)
  #ptNSPTmp$y10[1] <- mean(Y10$totalNSP)
  #ptNSPTmp$y11[1] <- mean(Y11$totalNSP)
  #ptNSPTmp$y12[1] <- mean(Y12$totalNSP)
  #ptNSPTmp$y13[1] <- mean(Y13$totalNSP)
  #ptNSPTmp$y14[1] <- mean(Y14$totalNSP)
  #ptNSPTmp$y15[1] <- mean(Y15$totalNSP)
  #ptNSPTmp$y16[1] <- mean(Y16$totalNSP)
  #ptNSPTmp$y17[1] <- mean(Y17$totalNSP)
  #ptNSPTmp$y18[1] <- mean(Y18$totalNSP)
  #ptNSPTmp$y19[1] <- mean(Y19$totalNSP)
  #ptNSPTmp$y20[1] <- mean(Y20$totalNSP)
  #ptNSPTmp$y21[1] <- mean(Y21$totalNSP)
  #ptNSPTmp$y22[1] <- mean(Y22$totalNSP)
  #ptNSPTmp$y23[1] <- mean(Y23$totalNSP)
  #ptNSPTmp$y24[1] <- mean(Y24$totalNSP)
  #ptNSPTmp$y25[1] <- mean(Y25$totalNSP)
  #ptNSPTmp$y26[1] <- mean(Y26$totalNSP)
  #ptNSPTmp$y27[1] <- mean(Y27$totalNSP)
  #ptNSPTmp$y28[1] <- mean(Y28$totalNSP)
  #ptNSPTmp$y29[1] <- mean(Y29$totalNSP)
  #ptNSPTmp$y30[1] <- mean(Y30$totalNSP)
  #pTotalNSPB <- rbind(pTotalNSPB, ptNSPTmp)
  
#  ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
#  ptNSPTmp[1,] <- 0
#  ptNSPTmp$y6[1] <- Y6$totalNSP[365]
#  ptNSPTmp$y7[1] <- Y7$totalNSP[365]
#  ptNSPTmp$y8[1] <- Y8$totalNSP[365]
#  ptNSPTmp$y9[1] <- Y9$totalNSP[365]
#  ptNSPTmp$y10[1] <- Y10$totalNSP[365]
#  ptNSPTmp$y11[1] <- Y11$totalNSP[365]
#  ptNSPTmp$y12[1] <- Y12$totalNSP[365]
#  ptNSPTmp$y13[1] <- Y13$totalNSP[365]
#  ptNSPTmp$y14[1] <- Y14$totalNSP[365]
#  ptNSPTmp$y15[1] <- Y15$totalNSP[365]
#  ptNSPTmp$y16[1] <- Y16$totalNSP[365]
#  ptNSPTmp$y17[1] <- Y17$totalNSP[365]
#  ptNSPTmp$y18[1] <- Y18$totalNSP[365]
#  ptNSPTmp$y19[1] <- Y19$totalNSP[365]
#  ptNSPTmp$y20[1] <- Y20$totalNSP[365]
#  ptNSPTmp$y21[1] <- Y21$totalNSP[365]
#  ptNSPTmp$y22[1] <- Y22$totalNSP[365]
#  ptNSPTmp$y23[1] <- Y23$totalNSP[365]
#  ptNSPTmp$y24[1] <- Y24$totalNSP[365]
#  ptNSPTmp$y25[1] <- Y25$totalNSP[365]
#  ptNSPTmp$y26[1] <- Y26$totalNSP[365]
#  ptNSPTmp$y27[1] <- Y27$totalNSP[365]
#  ptNSPTmp$y28[1] <- Y28$totalNSP[365]
#  ptNSPTmp$y29[1] <- Y29$totalNSP[365]
#  ptNSPTmp$y30[1] <- Y30$totalNSP[365]
#  pTotalNSPSumB <- rbind(pTotalNSPSumB, ptNSPTmp)
  
  ptHCVeAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeAbTmp[1,] <- 0
  ptHCVeAbTmp$y6[1] <- mean(Y6$HCVeAb)
  ptHCVeAbTmp$y7[1] <- mean(Y7$HCVeAb)
  ptHCVeAbTmp$y8[1] <- mean(Y8$HCVeAb)
  ptHCVeAbTmp$y9[1] <- mean(Y9$HCVeAb)
  ptHCVeAbTmp$y10[1] <- mean(Y10$HCVeAb)
  ptHCVeAbTmp$y11[1] <- mean(Y11$HCVeAb)
  ptHCVeAbTmp$y12[1] <- mean(Y12$HCVeAb)
  ptHCVeAbTmp$y13[1] <- mean(Y13$HCVeAb)
  ptHCVeAbTmp$y14[1] <- mean(Y14$HCVeAb)
  ptHCVeAbTmp$y15[1] <- mean(Y15$HCVeAb)
  ptHCVeAbTmp$y16[1] <- mean(Y16$HCVeAb)
  ptHCVeAbTmp$y17[1] <- mean(Y17$HCVeAb)
  ptHCVeAbTmp$y18[1] <- mean(Y18$HCVeAb)
  ptHCVeAbTmp$y19[1] <- mean(Y19$HCVeAb)
  ptHCVeAbTmp$y20[1] <- mean(Y20$HCVeAb)
  ptHCVeAbTmp$y21[1] <- mean(Y21$HCVeAb)
  ptHCVeAbTmp$y22[1] <- mean(Y22$HCVeAb)
  ptHCVeAbTmp$y23[1] <- mean(Y23$HCVeAb)
  ptHCVeAbTmp$y24[1] <- mean(Y24$HCVeAb)
  ptHCVeAbTmp$y25[1] <- mean(Y25$HCVeAb)
  ptHCVeAbTmp$y26[1] <- mean(Y26$HCVeAb)
  ptHCVeAbTmp$y27[1] <- mean(Y27$HCVeAb)
  ptHCVeAbTmp$y28[1] <- mean(Y28$HCVeAb)
  ptHCVeAbTmp$y29[1] <- mean(Y29$HCVeAb)
  ptHCVeAbTmp$y30[1] <- mean(Y30$HCVeAb)
  pTotalHCVeAbB <- rbind(pTotalHCVeAbB, ptHCVeAbTmp)
  
  ptHCVeRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeRNATmp[1,] <- 0
  ptHCVeRNATmp$y6[1] <- mean(Y6$HCVeAb)
  ptHCVeRNATmp$y7[1] <- mean(Y7$HCVeAb)
  ptHCVeRNATmp$y8[1] <- mean(Y8$HCVeAb)
  ptHCVeRNATmp$y9[1] <- mean(Y9$HCVeAb)
  ptHCVeRNATmp$y10[1] <- mean(Y10$HCVeAb)
  ptHCVeRNATmp$y11[1] <- mean(Y11$HCVeAb)
  ptHCVeRNATmp$y12[1] <- mean(Y12$HCVeAb)
  ptHCVeRNATmp$y13[1] <- mean(Y13$HCVeAb)
  ptHCVeRNATmp$y14[1] <- mean(Y14$HCVeAb)
  ptHCVeRNATmp$y15[1] <- mean(Y15$HCVeAb)
  ptHCVeRNATmp$y16[1] <- mean(Y16$HCVeAb)
  ptHCVeRNATmp$y17[1] <- mean(Y17$HCVeAb)
  ptHCVeRNATmp$y18[1] <- mean(Y18$HCVeAb)
  ptHCVeRNATmp$y19[1] <- mean(Y19$HCVeAb)
  ptHCVeRNATmp$y20[1] <- mean(Y20$HCVeAb)
  ptHCVeRNATmp$y21[1] <- mean(Y21$HCVeAb)
  ptHCVeRNATmp$y22[1] <- mean(Y22$HCVeAb)
  ptHCVeRNATmp$y23[1] <- mean(Y23$HCVeAb)
  ptHCVeRNATmp$y24[1] <- mean(Y24$HCVeAb)
  ptHCVeRNATmp$y25[1] <- mean(Y25$HCVeAb)
  ptHCVeRNATmp$y26[1] <- mean(Y26$HCVeAb)
  ptHCVeRNATmp$y27[1] <- mean(Y27$HCVeAb)
  ptHCVeRNATmp$y28[1] <- mean(Y28$HCVeAb)
  ptHCVeRNATmp$y29[1] <- mean(Y29$HCVeAb)
  ptHCVeRNATmp$y30[1] <- mean(Y30$HCVeAb)
  pTotalHCVeRNAB <- rbind(pTotalHCVeRNAB, ptHCVeRNATmp)
  
  ptHCVabTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVabTmp[1,] <- 0
  ptHCVabTmp$y6[1] <- mean(Y6$HCVab)
  ptHCVabTmp$y7[1] <- mean(Y7$HCVab)
  ptHCVabTmp$y8[1] <- mean(Y8$HCVab)
  ptHCVabTmp$y9[1] <- mean(Y9$HCVab)
  ptHCVabTmp$y10[1] <- mean(Y10$HCVab)
  ptHCVabTmp$y11[1] <- mean(Y11$HCVab)
  ptHCVabTmp$y12[1] <- mean(Y12$HCVab)
  ptHCVabTmp$y13[1] <- mean(Y13$HCVab)
  ptHCVabTmp$y14[1] <- mean(Y14$HCVab)
  ptHCVabTmp$y15[1] <- mean(Y15$HCVab)
  ptHCVabTmp$y16[1] <- mean(Y16$HCVab)
  ptHCVabTmp$y17[1] <- mean(Y17$HCVab)
  ptHCVabTmp$y18[1] <- mean(Y18$HCVab)
  ptHCVabTmp$y19[1] <- mean(Y19$HCVab)
  ptHCVabTmp$y20[1] <- mean(Y20$HCVab)
  ptHCVabTmp$y21[1] <- mean(Y21$HCVab)
  ptHCVabTmp$y22[1] <- mean(Y22$HCVab)
  ptHCVabTmp$y23[1] <- mean(Y23$HCVab)
  ptHCVabTmp$y24[1] <- mean(Y24$HCVab)
  ptHCVabTmp$y25[1] <- mean(Y25$HCVab)
  ptHCVabTmp$y26[1] <- mean(Y26$HCVab)
  ptHCVabTmp$y27[1] <- mean(Y27$HCVab)
  ptHCVabTmp$y28[1] <- mean(Y28$HCVab)
  ptHCVabTmp$y29[1] <- mean(Y29$HCVab)
  ptHCVabTmp$y30[1] <- mean(Y30$HCVab)
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
  
  ptHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVRNATmp[1,] <- 0
  ptHCVRNATmp$y6[1] <- mean(Y6$HCVRNA)
  ptHCVRNATmp$y7[1] <- mean(Y7$HCVRNA)
  ptHCVRNATmp$y8[1] <- mean(Y8$HCVRNA)
  ptHCVRNATmp$y9[1] <- mean(Y9$HCVRNA)
  ptHCVRNATmp$y10[1] <- mean(Y10$HCVRNA)
  ptHCVRNATmp$y11[1] <- mean(Y11$HCVRNA)
  ptHCVRNATmp$y12[1] <- mean(Y12$HCVRNA)
  ptHCVRNATmp$y13[1] <- mean(Y13$HCVRNA)
  ptHCVRNATmp$y14[1] <- mean(Y14$HCVRNA)
  ptHCVRNATmp$y15[1] <- mean(Y15$HCVRNA)
  ptHCVRNATmp$y16[1] <- mean(Y16$HCVRNA)
  ptHCVRNATmp$y17[1] <- mean(Y17$HCVRNA)
  ptHCVRNATmp$y18[1] <- mean(Y18$HCVRNA)
  ptHCVRNATmp$y19[1] <- mean(Y19$HCVRNA)
  ptHCVRNATmp$y20[1] <- mean(Y20$HCVRNA)
  ptHCVRNATmp$y21[1] <- mean(Y21$HCVRNA)
  ptHCVRNATmp$y22[1] <- mean(Y22$HCVRNA)
  ptHCVRNATmp$y23[1] <- mean(Y23$HCVRNA)
  ptHCVRNATmp$y24[1] <- mean(Y24$HCVRNA)
  ptHCVRNATmp$y25[1] <- mean(Y25$HCVRNA)
  ptHCVRNATmp$y26[1] <- mean(Y26$HCVRNA)
  ptHCVRNATmp$y27[1] <- mean(Y27$HCVRNA)
  ptHCVRNATmp$y28[1] <- mean(Y28$HCVRNA)
  ptHCVRNATmp$y29[1] <- mean(Y29$HCVRNA)
  ptHCVRNATmp$y30[1] <- mean(Y30$HCVRNA)
  pTotalHCVRNAB <- rbind(pTotalHCVRNAB, ptHCVRNATmp)
  
  ptOpdNotOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptOpdNotOSTTmp[1,] <- 0
  ptOpdNotOSTTmp$y6[1] <- mean(Y6$OpdNotOST)
  ptOpdNotOSTTmp$y7[1] <- mean(Y7$OpdNotOST)
  ptOpdNotOSTTmp$y8[1] <- mean(Y8$OpdNotOST)
  ptOpdNotOSTTmp$y9[1] <- mean(Y9$OpdNotOST)
  ptOpdNotOSTTmp$y10[1] <- mean(Y10$OpdNotOST)
  ptOpdNotOSTTmp$y11[1] <- mean(Y11$OpdNotOST)
  ptOpdNotOSTTmp$y12[1] <- mean(Y12$OpdNotOST)
  ptOpdNotOSTTmp$y13[1] <- mean(Y13$OpdNotOST)
  ptOpdNotOSTTmp$y14[1] <- mean(Y14$OpdNotOST)
  ptOpdNotOSTTmp$y15[1] <- mean(Y15$OpdNotOST)
  ptOpdNotOSTTmp$y16[1] <- mean(Y16$OpdNotOST)
  ptOpdNotOSTTmp$y17[1] <- mean(Y17$OpdNotOST)
  ptOpdNotOSTTmp$y18[1] <- mean(Y18$OpdNotOST)
  ptOpdNotOSTTmp$y19[1] <- mean(Y19$OpdNotOST)
  ptOpdNotOSTTmp$y20[1] <- mean(Y20$OpdNotOST)
  ptOpdNotOSTTmp$y21[1] <- mean(Y21$OpdNotOST)
  ptOpdNotOSTTmp$y22[1] <- mean(Y22$OpdNotOST)
  ptOpdNotOSTTmp$y23[1] <- mean(Y23$OpdNotOST)
  ptOpdNotOSTTmp$y24[1] <- mean(Y24$OpdNotOST)
  ptOpdNotOSTTmp$y25[1] <- mean(Y25$OpdNotOST)
  ptOpdNotOSTTmp$y26[1] <- mean(Y26$OpdNotOST)
  ptOpdNotOSTTmp$y27[1] <- mean(Y27$OpdNotOST)
  ptOpdNotOSTTmp$y28[1] <- mean(Y28$OpdNotOST)
  ptOpdNotOSTTmp$y29[1] <- mean(Y29$OpdNotOST)
  ptOpdNotOSTTmp$y30[1] <- mean(Y30$OpdNotOST)
  pTotalOpdNotOSTB <- rbind(pTotalOpdNotOSTB, ptOpdNotOSTTmp)
  
  ptReleasedHCVAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVAbTmp[1,] <- 0
  ptReleasedHCVAbTmp$y6[1] <- mean(Y6$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y7[1] <- mean(Y7$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y8[1] <- mean(Y8$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y9[1] <- mean(Y9$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y10[1] <- mean(Y10$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y11[1] <- mean(Y11$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y12[1] <- mean(Y12$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y13[1] <- mean(Y13$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y14[1] <- mean(Y14$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y15[1] <- mean(Y15$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y16[1] <- mean(Y16$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y17[1] <- mean(Y17$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y18[1] <- mean(Y18$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y19[1] <- mean(Y19$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y20[1] <- mean(Y20$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y21[1] <- mean(Y21$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y22[1] <- mean(Y22$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y23[1] <- mean(Y23$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y24[1] <- mean(Y24$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y25[1] <- mean(Y25$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y26[1] <- mean(Y26$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y27[1] <- mean(Y27$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y28[1] <- mean(Y28$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y29[1] <- mean(Y29$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y30[1] <- mean(Y30$ReleasedHCVAb)
  pTotalReleasedHCVAbB <- rbind(pTotalReleasedHCVAbB, ptReleasedHCVAbTmp)
  
  ptReleasedHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVRNATmp[1,] <- 0
  ptReleasedHCVRNATmp$y6[1] <- mean(Y6$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y7[1] <- mean(Y7$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y8[1] <- mean(Y8$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y9[1] <- mean(Y9$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y10[1] <- mean(Y10$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y11[1] <- mean(Y11$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y12[1] <- mean(Y12$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y13[1] <- mean(Y13$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y14[1] <- mean(Y14$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y15[1] <- mean(Y15$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y16[1] <- mean(Y16$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y17[1] <- mean(Y17$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y18[1] <- mean(Y18$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y19[1] <- mean(Y19$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y20[1] <- mean(Y20$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y21[1] <- mean(Y21$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y22[1] <- mean(Y22$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y23[1] <- mean(Y23$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y24[1] <- mean(Y24$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y25[1] <- mean(Y25$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y26[1] <- mean(Y26$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y27[1] <- mean(Y27$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y28[1] <- mean(Y28$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y29[1] <- mean(Y29$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y30[1] <- mean(Y30$ReleasedHCVRNA)
  pTotalReleasedHCVRNAB <- rbind(pTotalReleasedHCVRNAB, ptReleasedHCVRNATmp)
}

#OST
for (var in 1:1)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/Testing/results/outOST_", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCVAb", "ReleasedHCVRNA", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "OpdNotOST", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "OSTremaining", "DAAremaining", "HCVeRNA", "HCVeAb", "NewEntry", "HCVab", "HCVRNA", "AveStay", "NCbyOST")
  
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
  pMinTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pMedTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pMaxTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pTotalTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pReTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
#  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
#  pNcTmp[1,] <- 0
#  pNcTmp$y6[1] <- sum(Y6$NCbyNSP)
#  pNcTmp$y7[1] <- sum(Y7$NCbyNSP)
#  pNcTmp$y8[1] <- sum(Y8$NCbyNSP)
#  pNcTmp$y9[1] <- sum(Y9$NCbyNSP)
#  pNcTmp$y10[1] <- sum(Y10$NCbyNSP)
#  pNcTmp$y11[1] <- sum(Y11$NCbyNSP)
#  pNcTmp$y12[1] <- sum(Y12$NCbyNSP)
#  pNcTmp$y13[1] <- sum(Y13$NCbyNSP)
#  pNcTmp$y14[1] <- sum(Y14$NCbyNSP)
#  pNcTmp$y15[1] <- sum(Y15$NCbyNSP)
#  pNcTmp$y16[1] <- sum(Y16$NCbyNSP)
#  pNcTmp$y17[1] <- sum(Y17$NCbyNSP)
#  pNcTmp$y18[1] <- sum(Y18$NCbyNSP)
#  pNcTmp$y19[1] <- sum(Y19$NCbyNSP)
#  pNcTmp$y20[1] <- sum(Y20$NCbyNSP)
#  pNcTmp$y21[1] <- sum(Y21$NCbyNSP)
#  pNcTmp$y22[1] <- sum(Y22$NCbyNSP)
#  pNcTmp$y23[1] <- sum(Y23$NCbyNSP)
#  pNcTmp$y24[1] <- sum(Y24$NCbyNSP)
#  pNcTmp$y25[1] <- sum(Y25$NCbyNSP)
#  pNcTmp$y26[1] <- sum(Y26$NCbyNSP)
#  pNcTmp$y27[1] <- sum(Y27$NCbyNSP)
#  pNcTmp$y28[1] <- sum(Y28$NCbyNSP)
#  pNcTmp$y29[1] <- sum(Y29$NCbyNSP)
#  pNcTmp$y30[1] <- sum(Y30$NCbyNSP)
#  pNewCasesNSPSumC <- rbind(pNewCasesNSPSumC, pNcTmp)
  
  pIDUTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pPrisonTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pOpdTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pEverTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  pClrTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  ptDAATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
  ptOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  
#  ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
#  ptNSPTmp[1,] <- 0
#  ptNSPTmp$y6[1] <- mean(Y6$totalNSP)
#  ptNSPTmp$y7[1] <- mean(Y7$totalNSP)
#  ptNSPTmp$y8[1] <- mean(Y8$totalNSP)
#  ptNSPTmp$y9[1] <- mean(Y9$totalNSP)
#  ptNSPTmp$y10[1] <- mean(Y10$totalNSP)
#  ptNSPTmp$y11[1] <- mean(Y11$totalNSP)
#  ptNSPTmp$y12[1] <- mean(Y12$totalNSP)
#  ptNSPTmp$y13[1] <- mean(Y13$totalNSP)
#  ptNSPTmp$y14[1] <- mean(Y14$totalNSP)
#  ptNSPTmp$y15[1] <- mean(Y15$totalNSP)
#  ptNSPTmp$y16[1] <- mean(Y16$totalNSP)
#  ptNSPTmp$y17[1] <- mean(Y17$totalNSP)
#  ptNSPTmp$y18[1] <- mean(Y18$totalNSP)
#  ptNSPTmp$y19[1] <- mean(Y19$totalNSP)
#  ptNSPTmp$y20[1] <- mean(Y20$totalNSP)
#  ptNSPTmp$y21[1] <- mean(Y21$totalNSP)
#  ptNSPTmp$y22[1] <- mean(Y22$totalNSP)
#  ptNSPTmp$y23[1] <- mean(Y23$totalNSP)
#  ptNSPTmp$y24[1] <- mean(Y24$totalNSP)
#  ptNSPTmp$y25[1] <- mean(Y25$totalNSP)
#  ptNSPTmp$y26[1] <- mean(Y26$totalNSP)
#  ptNSPTmp$y27[1] <- mean(Y27$totalNSP)
#  ptNSPTmp$y28[1] <- mean(Y28$totalNSP)
#  ptNSPTmp$y29[1] <- mean(Y29$totalNSP)
#  ptNSPTmp$y30[1] <- mean(Y30$totalNSP)
#  pTotalNSPC <- rbind(pTotalNSPC, ptNSPTmp)
  
#  ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
#  ptNSPTmp[1,] <- 0
#  ptNSPTmp$y6[1] <- Y6$totalNSP[365]
#  ptNSPTmp$y7[1] <- Y7$totalNSP[365]
#  ptNSPTmp$y8[1] <- Y8$totalNSP[365]
#  ptNSPTmp$y9[1] <- Y9$totalNSP[365]
#  ptNSPTmp$y10[1] <- Y10$totalNSP[365]
#  ptNSPTmp$y11[1] <- Y11$totalNSP[365]
#  ptNSPTmp$y12[1] <- Y12$totalNSP[365]
#  ptNSPTmp$y13[1] <- Y13$totalNSP[365]
#  ptNSPTmp$y14[1] <- Y14$totalNSP[365]
#  ptNSPTmp$y15[1] <- Y15$totalNSP[365]
#  ptNSPTmp$y16[1] <- Y16$totalNSP[365]
#  ptNSPTmp$y17[1] <- Y17$totalNSP[365]
#  ptNSPTmp$y18[1] <- Y18$totalNSP[365]
#  ptNSPTmp$y19[1] <- Y19$totalNSP[365]
#  ptNSPTmp$y20[1] <- Y20$totalNSP[365]
#  ptNSPTmp$y21[1] <- Y21$totalNSP[365]
#  ptNSPTmp$y22[1] <- Y22$totalNSP[365]
#  ptNSPTmp$y23[1] <- Y23$totalNSP[365]
#  ptNSPTmp$y24[1] <- Y24$totalNSP[365]
#  ptNSPTmp$y25[1] <- Y25$totalNSP[365]
#  ptNSPTmp$y26[1] <- Y26$totalNSP[365]
#  ptNSPTmp$y27[1] <- Y27$totalNSP[365]
#  ptNSPTmp$y28[1] <- Y28$totalNSP[365]
#  ptNSPTmp$y29[1] <- Y29$totalNSP[365]
#  ptNSPTmp$y30[1] <- Y30$totalNSP[365]
#  pTotalNSPSumC <- rbind(pTotalNSPSumC, ptNSPTmp)
  
  ptHCVeAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeAbTmp[1,] <- 0
  ptHCVeAbTmp$y6[1] <- mean(Y6$HCVeAb)
  ptHCVeAbTmp$y7[1] <- mean(Y7$HCVeAb)
  ptHCVeAbTmp$y8[1] <- mean(Y8$HCVeAb)
  ptHCVeAbTmp$y9[1] <- mean(Y9$HCVeAb)
  ptHCVeAbTmp$y10[1] <- mean(Y10$HCVeAb)
  ptHCVeAbTmp$y11[1] <- mean(Y11$HCVeAb)
  ptHCVeAbTmp$y12[1] <- mean(Y12$HCVeAb)
  ptHCVeAbTmp$y13[1] <- mean(Y13$HCVeAb)
  ptHCVeAbTmp$y14[1] <- mean(Y14$HCVeAb)
  ptHCVeAbTmp$y15[1] <- mean(Y15$HCVeAb)
  ptHCVeAbTmp$y16[1] <- mean(Y16$HCVeAb)
  ptHCVeAbTmp$y17[1] <- mean(Y17$HCVeAb)
  ptHCVeAbTmp$y18[1] <- mean(Y18$HCVeAb)
  ptHCVeAbTmp$y19[1] <- mean(Y19$HCVeAb)
  ptHCVeAbTmp$y20[1] <- mean(Y20$HCVeAb)
  ptHCVeAbTmp$y21[1] <- mean(Y21$HCVeAb)
  ptHCVeAbTmp$y22[1] <- mean(Y22$HCVeAb)
  ptHCVeAbTmp$y23[1] <- mean(Y23$HCVeAb)
  ptHCVeAbTmp$y24[1] <- mean(Y24$HCVeAb)
  ptHCVeAbTmp$y25[1] <- mean(Y25$HCVeAb)
  ptHCVeAbTmp$y26[1] <- mean(Y26$HCVeAb)
  ptHCVeAbTmp$y27[1] <- mean(Y27$HCVeAb)
  ptHCVeAbTmp$y28[1] <- mean(Y28$HCVeAb)
  ptHCVeAbTmp$y29[1] <- mean(Y29$HCVeAb)
  ptHCVeAbTmp$y30[1] <- mean(Y30$HCVeAb)
  pTotalHCVeAbC <- rbind(pTotalHCVeAbC, ptHCVeAbTmp)
  
  ptHCVeRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeRNATmp[1,] <- 0
  ptHCVeRNATmp$y6[1] <- mean(Y6$HCVeAb)
  ptHCVeRNATmp$y7[1] <- mean(Y7$HCVeAb)
  ptHCVeRNATmp$y8[1] <- mean(Y8$HCVeAb)
  ptHCVeRNATmp$y9[1] <- mean(Y9$HCVeAb)
  ptHCVeRNATmp$y10[1] <- mean(Y10$HCVeAb)
  ptHCVeRNATmp$y11[1] <- mean(Y11$HCVeAb)
  ptHCVeRNATmp$y12[1] <- mean(Y12$HCVeAb)
  ptHCVeRNATmp$y13[1] <- mean(Y13$HCVeAb)
  ptHCVeRNATmp$y14[1] <- mean(Y14$HCVeAb)
  ptHCVeRNATmp$y15[1] <- mean(Y15$HCVeAb)
  ptHCVeRNATmp$y16[1] <- mean(Y16$HCVeAb)
  ptHCVeRNATmp$y17[1] <- mean(Y17$HCVeAb)
  ptHCVeRNATmp$y18[1] <- mean(Y18$HCVeAb)
  ptHCVeRNATmp$y19[1] <- mean(Y19$HCVeAb)
  ptHCVeRNATmp$y20[1] <- mean(Y20$HCVeAb)
  ptHCVeRNATmp$y21[1] <- mean(Y21$HCVeAb)
  ptHCVeRNATmp$y22[1] <- mean(Y22$HCVeAb)
  ptHCVeRNATmp$y23[1] <- mean(Y23$HCVeAb)
  ptHCVeRNATmp$y24[1] <- mean(Y24$HCVeAb)
  ptHCVeRNATmp$y25[1] <- mean(Y25$HCVeAb)
  ptHCVeRNATmp$y26[1] <- mean(Y26$HCVeAb)
  ptHCVeRNATmp$y27[1] <- mean(Y27$HCVeAb)
  ptHCVeRNATmp$y28[1] <- mean(Y28$HCVeAb)
  ptHCVeRNATmp$y29[1] <- mean(Y29$HCVeAb)
  ptHCVeRNATmp$y30[1] <- mean(Y30$HCVeAb)
  pTotalHCVeRNAC <- rbind(pTotalHCVeRNAC, ptHCVeRNATmp)
  
  ptHCVabTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVabTmp[1,] <- 0
  ptHCVabTmp$y6[1] <- mean(Y6$HCVab)
  ptHCVabTmp$y7[1] <- mean(Y7$HCVab)
  ptHCVabTmp$y8[1] <- mean(Y8$HCVab)
  ptHCVabTmp$y9[1] <- mean(Y9$HCVab)
  ptHCVabTmp$y10[1] <- mean(Y10$HCVab)
  ptHCVabTmp$y11[1] <- mean(Y11$HCVab)
  ptHCVabTmp$y12[1] <- mean(Y12$HCVab)
  ptHCVabTmp$y13[1] <- mean(Y13$HCVab)
  ptHCVabTmp$y14[1] <- mean(Y14$HCVab)
  ptHCVabTmp$y15[1] <- mean(Y15$HCVab)
  ptHCVabTmp$y16[1] <- mean(Y16$HCVab)
  ptHCVabTmp$y17[1] <- mean(Y17$HCVab)
  ptHCVabTmp$y18[1] <- mean(Y18$HCVab)
  ptHCVabTmp$y19[1] <- mean(Y19$HCVab)
  ptHCVabTmp$y20[1] <- mean(Y20$HCVab)
  ptHCVabTmp$y21[1] <- mean(Y21$HCVab)
  ptHCVabTmp$y22[1] <- mean(Y22$HCVab)
  ptHCVabTmp$y23[1] <- mean(Y23$HCVab)
  ptHCVabTmp$y24[1] <- mean(Y24$HCVab)
  ptHCVabTmp$y25[1] <- mean(Y25$HCVab)
  ptHCVabTmp$y26[1] <- mean(Y26$HCVab)
  ptHCVabTmp$y27[1] <- mean(Y27$HCVab)
  ptHCVabTmp$y28[1] <- mean(Y28$HCVab)
  ptHCVabTmp$y29[1] <- mean(Y29$HCVab)
  ptHCVabTmp$y30[1] <- mean(Y30$HCVab)
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
  
  ptHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVRNATmp[1,] <- 0
  ptHCVRNATmp$y6[1] <- mean(Y6$HCVRNA)
  ptHCVRNATmp$y7[1] <- mean(Y7$HCVRNA)
  ptHCVRNATmp$y8[1] <- mean(Y8$HCVRNA)
  ptHCVRNATmp$y9[1] <- mean(Y9$HCVRNA)
  ptHCVRNATmp$y10[1] <- mean(Y10$HCVRNA)
  ptHCVRNATmp$y11[1] <- mean(Y11$HCVRNA)
  ptHCVRNATmp$y12[1] <- mean(Y12$HCVRNA)
  ptHCVRNATmp$y13[1] <- mean(Y13$HCVRNA)
  ptHCVRNATmp$y14[1] <- mean(Y14$HCVRNA)
  ptHCVRNATmp$y15[1] <- mean(Y15$HCVRNA)
  ptHCVRNATmp$y16[1] <- mean(Y16$HCVRNA)
  ptHCVRNATmp$y17[1] <- mean(Y17$HCVRNA)
  ptHCVRNATmp$y18[1] <- mean(Y18$HCVRNA)
  ptHCVRNATmp$y19[1] <- mean(Y19$HCVRNA)
  ptHCVRNATmp$y20[1] <- mean(Y20$HCVRNA)
  ptHCVRNATmp$y21[1] <- mean(Y21$HCVRNA)
  ptHCVRNATmp$y22[1] <- mean(Y22$HCVRNA)
  ptHCVRNATmp$y23[1] <- mean(Y23$HCVRNA)
  ptHCVRNATmp$y24[1] <- mean(Y24$HCVRNA)
  ptHCVRNATmp$y25[1] <- mean(Y25$HCVRNA)
  ptHCVRNATmp$y26[1] <- mean(Y26$HCVRNA)
  ptHCVRNATmp$y27[1] <- mean(Y27$HCVRNA)
  ptHCVRNATmp$y28[1] <- mean(Y28$HCVRNA)
  ptHCVRNATmp$y29[1] <- mean(Y29$HCVRNA)
  ptHCVRNATmp$y30[1] <- mean(Y30$HCVRNA)
  pTotalHCVRNAC <- rbind(pTotalHCVRNAC, ptHCVRNATmp)
  
  ptOpdNotOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptOpdNotOSTTmp[1,] <- 0
  ptOpdNotOSTTmp$y6[1] <- mean(Y6$OpdNotOST)
  ptOpdNotOSTTmp$y7[1] <- mean(Y7$OpdNotOST)
  ptOpdNotOSTTmp$y8[1] <- mean(Y8$OpdNotOST)
  ptOpdNotOSTTmp$y9[1] <- mean(Y9$OpdNotOST)
  ptOpdNotOSTTmp$y10[1] <- mean(Y10$OpdNotOST)
  ptOpdNotOSTTmp$y11[1] <- mean(Y11$OpdNotOST)
  ptOpdNotOSTTmp$y12[1] <- mean(Y12$OpdNotOST)
  ptOpdNotOSTTmp$y13[1] <- mean(Y13$OpdNotOST)
  ptOpdNotOSTTmp$y14[1] <- mean(Y14$OpdNotOST)
  ptOpdNotOSTTmp$y15[1] <- mean(Y15$OpdNotOST)
  ptOpdNotOSTTmp$y16[1] <- mean(Y16$OpdNotOST)
  ptOpdNotOSTTmp$y17[1] <- mean(Y17$OpdNotOST)
  ptOpdNotOSTTmp$y18[1] <- mean(Y18$OpdNotOST)
  ptOpdNotOSTTmp$y19[1] <- mean(Y19$OpdNotOST)
  ptOpdNotOSTTmp$y20[1] <- mean(Y20$OpdNotOST)
  ptOpdNotOSTTmp$y21[1] <- mean(Y21$OpdNotOST)
  ptOpdNotOSTTmp$y22[1] <- mean(Y22$OpdNotOST)
  ptOpdNotOSTTmp$y23[1] <- mean(Y23$OpdNotOST)
  ptOpdNotOSTTmp$y24[1] <- mean(Y24$OpdNotOST)
  ptOpdNotOSTTmp$y25[1] <- mean(Y25$OpdNotOST)
  ptOpdNotOSTTmp$y26[1] <- mean(Y26$OpdNotOST)
  ptOpdNotOSTTmp$y27[1] <- mean(Y27$OpdNotOST)
  ptOpdNotOSTTmp$y28[1] <- mean(Y28$OpdNotOST)
  ptOpdNotOSTTmp$y29[1] <- mean(Y29$OpdNotOST)
  ptOpdNotOSTTmp$y30[1] <- mean(Y30$OpdNotOST)
  pTotalOpdNotOSTC <- rbind(pTotalOpdNotOSTC, ptOpdNotOSTTmp)
  
  ptReleasedHCVAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVAbTmp[1,] <- 0
  ptReleasedHCVAbTmp$y6[1] <- mean(Y6$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y7[1] <- mean(Y7$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y8[1] <- mean(Y8$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y9[1] <- mean(Y9$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y10[1] <- mean(Y10$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y11[1] <- mean(Y11$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y12[1] <- mean(Y12$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y13[1] <- mean(Y13$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y14[1] <- mean(Y14$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y15[1] <- mean(Y15$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y16[1] <- mean(Y16$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y17[1] <- mean(Y17$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y18[1] <- mean(Y18$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y19[1] <- mean(Y19$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y20[1] <- mean(Y20$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y21[1] <- mean(Y21$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y22[1] <- mean(Y22$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y23[1] <- mean(Y23$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y24[1] <- mean(Y24$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y25[1] <- mean(Y25$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y26[1] <- mean(Y26$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y27[1] <- mean(Y27$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y28[1] <- mean(Y28$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y29[1] <- mean(Y29$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y30[1] <- mean(Y30$ReleasedHCVAb)
  pTotalReleasedHCVAbC <- rbind(pTotalReleasedHCVAbC, ptReleasedHCVAbTmp)
  
  ptReleasedHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVRNATmp[1,] <- 0
  ptReleasedHCVRNATmp$y6[1] <- mean(Y6$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y7[1] <- mean(Y7$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y8[1] <- mean(Y8$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y9[1] <- mean(Y9$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y10[1] <- mean(Y10$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y11[1] <- mean(Y11$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y12[1] <- mean(Y12$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y13[1] <- mean(Y13$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y14[1] <- mean(Y14$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y15[1] <- mean(Y15$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y16[1] <- mean(Y16$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y17[1] <- mean(Y17$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y18[1] <- mean(Y18$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y19[1] <- mean(Y19$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y20[1] <- mean(Y20$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y21[1] <- mean(Y21$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y22[1] <- mean(Y22$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y23[1] <- mean(Y23$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y24[1] <- mean(Y24$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y25[1] <- mean(Y25$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y26[1] <- mean(Y26$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y27[1] <- mean(Y27$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y28[1] <- mean(Y28$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y29[1] <- mean(Y29$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y30[1] <- mean(Y30$ReleasedHCVRNA)
  pTotalReleasedHCVRNAC <- rbind(pTotalReleasedHCVRNAC, ptReleasedHCVRNATmp)
}

#NSP
for (var in 1:1)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/Testing/results/outNSP_", var, ".xls", sep="") #New infection Function/
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCVAb", "ReleasedHCVRNA", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "OpdNotOST", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "OSTremaining", "HCVeRNA", "HCVeAb", "NewEntry", "HCVab", "HCVRNA", "AveStay", "NSPRemaining", "totalNSP", "NCbyNSP")
  
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
  pMinTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMinD <- rbind(pMinD, pMinTmp)
  
  pMedTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMedD <- rbind(pMedD, pMedTmp)
  
  pMaxTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMaxD <- rbind(pMaxD, pMaxTmp)
  
  pTotalTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalD <- rbind(pTotalD, pTotalTmp)
  
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
  pPointTotalD <- rbind(pPointTotalD, pPointTotalTmp)
  
  pReTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pReinfectedD <- rbind(pReinfectedD, pReTmp)
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pNewCasesD <- rbind(pNewCasesD, pNcTmp)
  
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
  pNewCasesSumD <- rbind(pNewCasesSumD, pNcTmp)
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pNcTmp[1,] <- 0
  pNcTmp$y6[1] <- sum(Y6$NCbyNSP)
  pNcTmp$y7[1] <- sum(Y7$NCbyNSP)
  pNcTmp$y8[1] <- sum(Y8$NCbyNSP)
  pNcTmp$y9[1] <- sum(Y9$NCbyNSP)
  pNcTmp$y10[1] <- sum(Y10$NCbyNSP)
  pNcTmp$y11[1] <- sum(Y11$NCbyNSP)
  pNcTmp$y12[1] <- sum(Y12$NCbyNSP)
  pNcTmp$y13[1] <- sum(Y13$NCbyNSP)
  pNcTmp$y14[1] <- sum(Y14$NCbyNSP)
  pNcTmp$y15[1] <- sum(Y15$NCbyNSP)
  pNcTmp$y16[1] <- sum(Y16$NCbyNSP)
  pNcTmp$y17[1] <- sum(Y17$NCbyNSP)
  pNcTmp$y18[1] <- sum(Y18$NCbyNSP)
  pNcTmp$y19[1] <- sum(Y19$NCbyNSP)
  pNcTmp$y20[1] <- sum(Y20$NCbyNSP)
  pNcTmp$y21[1] <- sum(Y21$NCbyNSP)
  pNcTmp$y22[1] <- sum(Y22$NCbyNSP)
  pNcTmp$y23[1] <- sum(Y23$NCbyNSP)
  pNcTmp$y24[1] <- sum(Y24$NCbyNSP)
  pNcTmp$y25[1] <- sum(Y25$NCbyNSP)
  pNcTmp$y26[1] <- sum(Y26$NCbyNSP)
  pNcTmp$y27[1] <- sum(Y27$NCbyNSP)
  pNcTmp$y28[1] <- sum(Y28$NCbyNSP)
  pNcTmp$y29[1] <- sum(Y29$NCbyNSP)
  pNcTmp$y30[1] <- sum(Y30$NCbyNSP)
  pNewCasesNSPSumD <- rbind(pNewCasesNSPSumD, pNcTmp)
  
  pIDUTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalIDUD <- rbind(pTotalIDUD, pIDUTmp)
  
  pPrisonTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pPrisonHCVD <- rbind(pPrisonHCVD, pPrisonTmp)
  
  pOpdTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pOpdD <- rbind(pOpdD, pOpdTmp)
  
  pEverTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pEverIDUD <- rbind(pEverIDUD, pEverTmp)
  
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
  pEverIDUSumD <- rbind(pEverIDUSumD, pEverSumTmp)
  
  pClrTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pClrDD <- rbind(pClrDD, pClrTmp)
  
  ptDAATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalDAAD <- rbind(pTotalDAAD, ptDAATmp)
  
  ptOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalOSTD <- rbind(pTotalOSTD, ptOSTTmp)
  
  ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptNSPTmp[1,] <- 0
  ptNSPTmp$y6[1] <- mean(Y6$totalNSP)
  ptNSPTmp$y7[1] <- mean(Y7$totalNSP)
  ptNSPTmp$y8[1] <- mean(Y8$totalNSP)
  ptNSPTmp$y9[1] <- mean(Y9$totalNSP)
  ptNSPTmp$y10[1] <- mean(Y10$totalNSP)
  ptNSPTmp$y11[1] <- mean(Y11$totalNSP)
  ptNSPTmp$y12[1] <- mean(Y12$totalNSP)
  ptNSPTmp$y13[1] <- mean(Y13$totalNSP)
  ptNSPTmp$y14[1] <- mean(Y14$totalNSP)
  ptNSPTmp$y15[1] <- mean(Y15$totalNSP)
  ptNSPTmp$y16[1] <- mean(Y16$totalNSP)
  ptNSPTmp$y17[1] <- mean(Y17$totalNSP)
  ptNSPTmp$y18[1] <- mean(Y18$totalNSP)
  ptNSPTmp$y19[1] <- mean(Y19$totalNSP)
  ptNSPTmp$y20[1] <- mean(Y20$totalNSP)
  ptNSPTmp$y21[1] <- mean(Y21$totalNSP)
  ptNSPTmp$y22[1] <- mean(Y22$totalNSP)
  ptNSPTmp$y23[1] <- mean(Y23$totalNSP)
  ptNSPTmp$y24[1] <- mean(Y24$totalNSP)
  ptNSPTmp$y25[1] <- mean(Y25$totalNSP)
  ptNSPTmp$y26[1] <- mean(Y26$totalNSP)
  ptNSPTmp$y27[1] <- mean(Y27$totalNSP)
  ptNSPTmp$y28[1] <- mean(Y28$totalNSP)
  ptNSPTmp$y29[1] <- mean(Y29$totalNSP)
  ptNSPTmp$y30[1] <- mean(Y30$totalNSP)
  pTotalNSPD <- rbind(pTotalNSPD, ptNSPTmp)
  
  ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptNSPTmp[1,] <- 0
  ptNSPTmp$y6[1] <- Y6$totalNSP[365]
  ptNSPTmp$y7[1] <- Y7$totalNSP[365]
  ptNSPTmp$y8[1] <- Y8$totalNSP[365]
  ptNSPTmp$y9[1] <- Y9$totalNSP[365]
  ptNSPTmp$y10[1] <- Y10$totalNSP[365]
  ptNSPTmp$y11[1] <- Y11$totalNSP[365]
  ptNSPTmp$y12[1] <- Y12$totalNSP[365]
  ptNSPTmp$y13[1] <- Y13$totalNSP[365]
  ptNSPTmp$y14[1] <- Y14$totalNSP[365]
  ptNSPTmp$y15[1] <- Y15$totalNSP[365]
  ptNSPTmp$y16[1] <- Y16$totalNSP[365]
  ptNSPTmp$y17[1] <- Y17$totalNSP[365]
  ptNSPTmp$y18[1] <- Y18$totalNSP[365]
  ptNSPTmp$y19[1] <- Y19$totalNSP[365]
  ptNSPTmp$y20[1] <- Y20$totalNSP[365]
  ptNSPTmp$y21[1] <- Y21$totalNSP[365]
  ptNSPTmp$y22[1] <- Y22$totalNSP[365]
  ptNSPTmp$y23[1] <- Y23$totalNSP[365]
  ptNSPTmp$y24[1] <- Y24$totalNSP[365]
  ptNSPTmp$y25[1] <- Y25$totalNSP[365]
  ptNSPTmp$y26[1] <- Y26$totalNSP[365]
  ptNSPTmp$y27[1] <- Y27$totalNSP[365]
  ptNSPTmp$y28[1] <- Y28$totalNSP[365]
  ptNSPTmp$y29[1] <- Y29$totalNSP[365]
  ptNSPTmp$y30[1] <- Y30$totalNSP[365]
  pTotalNSPSumD <- rbind(pTotalNSPSumD, ptNSPTmp)
  
  ptHCVeAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeAbTmp[1,] <- 0
  ptHCVeAbTmp$y6[1] <- mean(Y6$HCVeAb)
  ptHCVeAbTmp$y7[1] <- mean(Y7$HCVeAb)
  ptHCVeAbTmp$y8[1] <- mean(Y8$HCVeAb)
  ptHCVeAbTmp$y9[1] <- mean(Y9$HCVeAb)
  ptHCVeAbTmp$y10[1] <- mean(Y10$HCVeAb)
  ptHCVeAbTmp$y11[1] <- mean(Y11$HCVeAb)
  ptHCVeAbTmp$y12[1] <- mean(Y12$HCVeAb)
  ptHCVeAbTmp$y13[1] <- mean(Y13$HCVeAb)
  ptHCVeAbTmp$y14[1] <- mean(Y14$HCVeAb)
  ptHCVeAbTmp$y15[1] <- mean(Y15$HCVeAb)
  ptHCVeAbTmp$y16[1] <- mean(Y16$HCVeAb)
  ptHCVeAbTmp$y17[1] <- mean(Y17$HCVeAb)
  ptHCVeAbTmp$y18[1] <- mean(Y18$HCVeAb)
  ptHCVeAbTmp$y19[1] <- mean(Y19$HCVeAb)
  ptHCVeAbTmp$y20[1] <- mean(Y20$HCVeAb)
  ptHCVeAbTmp$y21[1] <- mean(Y21$HCVeAb)
  ptHCVeAbTmp$y22[1] <- mean(Y22$HCVeAb)
  ptHCVeAbTmp$y23[1] <- mean(Y23$HCVeAb)
  ptHCVeAbTmp$y24[1] <- mean(Y24$HCVeAb)
  ptHCVeAbTmp$y25[1] <- mean(Y25$HCVeAb)
  ptHCVeAbTmp$y26[1] <- mean(Y26$HCVeAb)
  ptHCVeAbTmp$y27[1] <- mean(Y27$HCVeAb)
  ptHCVeAbTmp$y28[1] <- mean(Y28$HCVeAb)
  ptHCVeAbTmp$y29[1] <- mean(Y29$HCVeAb)
  ptHCVeAbTmp$y30[1] <- mean(Y30$HCVeAb)
  pTotalHCVeAbD <- rbind(pTotalHCVeAbD, ptHCVeAbTmp)
  
  ptHCVeRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeRNATmp[1,] <- 0
  ptHCVeRNATmp$y6[1] <- mean(Y6$HCVeRNA)
  ptHCVeRNATmp$y7[1] <- mean(Y7$HCVeRNA)
  ptHCVeRNATmp$y8[1] <- mean(Y8$HCVeRNA)
  ptHCVeRNATmp$y9[1] <- mean(Y9$HCVeRNA)
  ptHCVeRNATmp$y10[1] <- mean(Y10$HCVeRNA)
  ptHCVeRNATmp$y11[1] <- mean(Y11$HCVeRNA)
  ptHCVeRNATmp$y12[1] <- mean(Y12$HCVeRNA)
  ptHCVeRNATmp$y13[1] <- mean(Y13$HCVeRNA)
  ptHCVeRNATmp$y14[1] <- mean(Y14$HCVeRNA)
  ptHCVeRNATmp$y15[1] <- mean(Y15$HCVeRNA)
  ptHCVeRNATmp$y16[1] <- mean(Y16$HCVeRNA)
  ptHCVeRNATmp$y17[1] <- mean(Y17$HCVeRNA)
  ptHCVeRNATmp$y18[1] <- mean(Y18$HCVeRNA)
  ptHCVeRNATmp$y19[1] <- mean(Y19$HCVeRNA)
  ptHCVeRNATmp$y20[1] <- mean(Y20$HCVeRNA)
  ptHCVeRNATmp$y21[1] <- mean(Y21$HCVeRNA)
  ptHCVeRNATmp$y22[1] <- mean(Y22$HCVeRNA)
  ptHCVeRNATmp$y23[1] <- mean(Y23$HCVeRNA)
  ptHCVeRNATmp$y24[1] <- mean(Y24$HCVeRNA)
  ptHCVeRNATmp$y25[1] <- mean(Y25$HCVeRNA)
  ptHCVeRNATmp$y26[1] <- mean(Y26$HCVeRNA)
  ptHCVeRNATmp$y27[1] <- mean(Y27$HCVeRNA)
  ptHCVeRNATmp$y28[1] <- mean(Y28$HCVeRNA)
  ptHCVeRNATmp$y29[1] <- mean(Y29$HCVeRNA)
  ptHCVeRNATmp$y30[1] <- mean(Y30$HCVeRNA)
  pTotalHCVeRNAD <- rbind(pTotalHCVeRNAD, ptHCVeRNATmp)
  
  ptHCVabTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVabTmp[1,] <- 0
  ptHCVabTmp$y6[1] <- mean(Y6$HCVab)
  ptHCVabTmp$y7[1] <- mean(Y7$HCVab)
  ptHCVabTmp$y8[1] <- mean(Y8$HCVab)
  ptHCVabTmp$y9[1] <- mean(Y9$HCVab)
  ptHCVabTmp$y10[1] <- mean(Y10$HCVab)
  ptHCVabTmp$y11[1] <- mean(Y11$HCVab)
  ptHCVabTmp$y12[1] <- mean(Y12$HCVab)
  ptHCVabTmp$y13[1] <- mean(Y13$HCVab)
  ptHCVabTmp$y14[1] <- mean(Y14$HCVab)
  ptHCVabTmp$y15[1] <- mean(Y15$HCVab)
  ptHCVabTmp$y16[1] <- mean(Y16$HCVab)
  ptHCVabTmp$y17[1] <- mean(Y17$HCVab)
  ptHCVabTmp$y18[1] <- mean(Y18$HCVab)
  ptHCVabTmp$y19[1] <- mean(Y19$HCVab)
  ptHCVabTmp$y20[1] <- mean(Y20$HCVab)
  ptHCVabTmp$y21[1] <- mean(Y21$HCVab)
  ptHCVabTmp$y22[1] <- mean(Y22$HCVab)
  ptHCVabTmp$y23[1] <- mean(Y23$HCVab)
  ptHCVabTmp$y24[1] <- mean(Y24$HCVab)
  ptHCVabTmp$y25[1] <- mean(Y25$HCVab)
  ptHCVabTmp$y26[1] <- mean(Y26$HCVab)
  ptHCVabTmp$y27[1] <- mean(Y27$HCVab)
  ptHCVabTmp$y28[1] <- mean(Y28$HCVab)
  ptHCVabTmp$y29[1] <- mean(Y29$HCVab)
  ptHCVabTmp$y30[1] <- mean(Y30$HCVab)
  pTotalHCVabD <- rbind(pTotalHCVabD, ptHCVabTmp)
  
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
  pPointHCVabD <- rbind(pPointHCVabD, pPointHCVabTmp)
  
  ptHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVRNATmp[1,] <- 0
  ptHCVRNATmp$y6[1] <- mean(Y6$HCVRNA)
  ptHCVRNATmp$y7[1] <- mean(Y7$HCVRNA)
  ptHCVRNATmp$y8[1] <- mean(Y8$HCVRNA)
  ptHCVRNATmp$y9[1] <- mean(Y9$HCVRNA)
  ptHCVRNATmp$y10[1] <- mean(Y10$HCVRNA)
  ptHCVRNATmp$y11[1] <- mean(Y11$HCVRNA)
  ptHCVRNATmp$y12[1] <- mean(Y12$HCVRNA)
  ptHCVRNATmp$y13[1] <- mean(Y13$HCVRNA)
  ptHCVRNATmp$y14[1] <- mean(Y14$HCVRNA)
  ptHCVRNATmp$y15[1] <- mean(Y15$HCVRNA)
  ptHCVRNATmp$y16[1] <- mean(Y16$HCVRNA)
  ptHCVRNATmp$y17[1] <- mean(Y17$HCVRNA)
  ptHCVRNATmp$y18[1] <- mean(Y18$HCVRNA)
  ptHCVRNATmp$y19[1] <- mean(Y19$HCVRNA)
  ptHCVRNATmp$y20[1] <- mean(Y20$HCVRNA)
  ptHCVRNATmp$y21[1] <- mean(Y21$HCVRNA)
  ptHCVRNATmp$y22[1] <- mean(Y22$HCVRNA)
  ptHCVRNATmp$y23[1] <- mean(Y23$HCVRNA)
  ptHCVRNATmp$y24[1] <- mean(Y24$HCVRNA)
  ptHCVRNATmp$y25[1] <- mean(Y25$HCVRNA)
  ptHCVRNATmp$y26[1] <- mean(Y26$HCVRNA)
  ptHCVRNATmp$y27[1] <- mean(Y27$HCVRNA)
  ptHCVRNATmp$y28[1] <- mean(Y28$HCVRNA)
  ptHCVRNATmp$y29[1] <- mean(Y29$HCVRNA)
  ptHCVRNATmp$y30[1] <- mean(Y30$HCVRNA)
  pTotalHCVRNAD <- rbind(pTotalHCVRNAD, ptHCVRNATmp)
  
  ptOpdNotOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptOpdNotOSTTmp[1,] <- 0
  ptOpdNotOSTTmp$y6[1] <- mean(Y6$OpdNotOST)
  ptOpdNotOSTTmp$y7[1] <- mean(Y7$OpdNotOST)
  ptOpdNotOSTTmp$y8[1] <- mean(Y8$OpdNotOST)
  ptOpdNotOSTTmp$y9[1] <- mean(Y9$OpdNotOST)
  ptOpdNotOSTTmp$y10[1] <- mean(Y10$OpdNotOST)
  ptOpdNotOSTTmp$y11[1] <- mean(Y11$OpdNotOST)
  ptOpdNotOSTTmp$y12[1] <- mean(Y12$OpdNotOST)
  ptOpdNotOSTTmp$y13[1] <- mean(Y13$OpdNotOST)
  ptOpdNotOSTTmp$y14[1] <- mean(Y14$OpdNotOST)
  ptOpdNotOSTTmp$y15[1] <- mean(Y15$OpdNotOST)
  ptOpdNotOSTTmp$y16[1] <- mean(Y16$OpdNotOST)
  ptOpdNotOSTTmp$y17[1] <- mean(Y17$OpdNotOST)
  ptOpdNotOSTTmp$y18[1] <- mean(Y18$OpdNotOST)
  ptOpdNotOSTTmp$y19[1] <- mean(Y19$OpdNotOST)
  ptOpdNotOSTTmp$y20[1] <- mean(Y20$OpdNotOST)
  ptOpdNotOSTTmp$y21[1] <- mean(Y21$OpdNotOST)
  ptOpdNotOSTTmp$y22[1] <- mean(Y22$OpdNotOST)
  ptOpdNotOSTTmp$y23[1] <- mean(Y23$OpdNotOST)
  ptOpdNotOSTTmp$y24[1] <- mean(Y24$OpdNotOST)
  ptOpdNotOSTTmp$y25[1] <- mean(Y25$OpdNotOST)
  ptOpdNotOSTTmp$y26[1] <- mean(Y26$OpdNotOST)
  ptOpdNotOSTTmp$y27[1] <- mean(Y27$OpdNotOST)
  ptOpdNotOSTTmp$y28[1] <- mean(Y28$OpdNotOST)
  ptOpdNotOSTTmp$y29[1] <- mean(Y29$OpdNotOST)
  ptOpdNotOSTTmp$y30[1] <- mean(Y30$OpdNotOST)
  pTotalOpdNotOSTD <- rbind(pTotalOpdNotOSTD, ptOpdNotOSTTmp)
  
  ptReleasedHCVAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVAbTmp[1,] <- 0
  ptReleasedHCVAbTmp$y6[1] <- mean(Y6$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y7[1] <- mean(Y7$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y8[1] <- mean(Y8$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y9[1] <- mean(Y9$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y10[1] <- mean(Y10$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y11[1] <- mean(Y11$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y12[1] <- mean(Y12$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y13[1] <- mean(Y13$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y14[1] <- mean(Y14$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y15[1] <- mean(Y15$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y16[1] <- mean(Y16$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y17[1] <- mean(Y17$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y18[1] <- mean(Y18$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y19[1] <- mean(Y19$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y20[1] <- mean(Y20$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y21[1] <- mean(Y21$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y22[1] <- mean(Y22$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y23[1] <- mean(Y23$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y24[1] <- mean(Y24$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y25[1] <- mean(Y25$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y26[1] <- mean(Y26$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y27[1] <- mean(Y27$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y28[1] <- mean(Y28$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y29[1] <- mean(Y29$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y30[1] <- mean(Y30$ReleasedHCVAb)
  pTotalReleasedHCVAbD <- rbind(pTotalReleasedHCVAbD, ptReleasedHCVAbTmp)
  
  ptReleasedHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVRNATmp[1,] <- 0
  ptReleasedHCVRNATmp$y6[1] <- mean(Y6$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y7[1] <- mean(Y7$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y8[1] <- mean(Y8$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y9[1] <- mean(Y9$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y10[1] <- mean(Y10$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y11[1] <- mean(Y11$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y12[1] <- mean(Y12$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y13[1] <- mean(Y13$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y14[1] <- mean(Y14$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y15[1] <- mean(Y15$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y16[1] <- mean(Y16$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y17[1] <- mean(Y17$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y18[1] <- mean(Y18$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y19[1] <- mean(Y19$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y20[1] <- mean(Y20$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y21[1] <- mean(Y21$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y22[1] <- mean(Y22$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y23[1] <- mean(Y23$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y24[1] <- mean(Y24$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y25[1] <- mean(Y25$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y26[1] <- mean(Y26$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y27[1] <- mean(Y27$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y28[1] <- mean(Y28$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y29[1] <- mean(Y29$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y30[1] <- mean(Y30$ReleasedHCVRNA)
  pTotalReleasedHCVRNAD <- rbind(pTotalReleasedHCVRNAD, ptReleasedHCVRNATmp)
}

#Redux
for (var in 1:1)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/Testing/results/outReduxS_", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
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
  pMinTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMinE <- rbind(pMinE, pMinTmp)
  
  pMedTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMedE <- rbind(pMedE, pMedTmp)
  
  pMaxTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMaxE <- rbind(pMaxE, pMaxTmp)
  
  pTotalTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalE <- rbind(pTotalE, pTotalTmp)
  
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
  pPointTotalE <- rbind(pPointTotalE, pPointTotalTmp)
  
  pReTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pReinfectedE <- rbind(pReinfectedE, pReTmp)
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pNewCasesE <- rbind(pNewCasesE, pNcTmp)
  
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
  pNewCasesSumE <- rbind(pNewCasesSumE, pNcTmp)
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pNcTmp[1,] <- 0
  pNcTmp$y6[1] <- sum(Y6$NCbyNSP)
  pNcTmp$y7[1] <- sum(Y7$NCbyNSP)
  pNcTmp$y8[1] <- sum(Y8$NCbyNSP)
  pNcTmp$y9[1] <- sum(Y9$NCbyNSP)
  pNcTmp$y10[1] <- sum(Y10$NCbyNSP)
  pNcTmp$y11[1] <- sum(Y11$NCbyNSP)
  pNcTmp$y12[1] <- sum(Y12$NCbyNSP)
  pNcTmp$y13[1] <- sum(Y13$NCbyNSP)
  pNcTmp$y14[1] <- sum(Y14$NCbyNSP)
  pNcTmp$y15[1] <- sum(Y15$NCbyNSP)
  pNcTmp$y16[1] <- sum(Y16$NCbyNSP)
  pNcTmp$y17[1] <- sum(Y17$NCbyNSP)
  pNcTmp$y18[1] <- sum(Y18$NCbyNSP)
  pNcTmp$y19[1] <- sum(Y19$NCbyNSP)
  pNcTmp$y20[1] <- sum(Y20$NCbyNSP)
  pNcTmp$y21[1] <- sum(Y21$NCbyNSP)
  pNcTmp$y22[1] <- sum(Y22$NCbyNSP)
  pNcTmp$y23[1] <- sum(Y23$NCbyNSP)
  pNcTmp$y24[1] <- sum(Y24$NCbyNSP)
  pNcTmp$y25[1] <- sum(Y25$NCbyNSP)
  pNcTmp$y26[1] <- sum(Y26$NCbyNSP)
  pNcTmp$y27[1] <- sum(Y27$NCbyNSP)
  pNcTmp$y28[1] <- sum(Y28$NCbyNSP)
  pNcTmp$y29[1] <- sum(Y29$NCbyNSP)
  pNcTmp$y30[1] <- sum(Y30$NCbyNSP)
  pNewCasesNSPSumE <- rbind(pNewCasesNSPSumE, pNcTmp)
  
  pIDUTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalIDUE <- rbind(pTotalIDUE, pIDUTmp)
  
  pPrisonTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pPrisonHCVE <- rbind(pPrisonHCVE, pPrisonTmp)
  
  pOpdTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pOpdE <- rbind(pOpdE, pOpdTmp)
  
  pEverTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pEverIDUE <- rbind(pEverIDUE, pEverTmp)
  
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
  pEverIDUSumE <- rbind(pEverIDUSumE, pEverSumTmp)
  
  pClrTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pClrDE <- rbind(pClrDE, pClrTmp)
  
  ptDAATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalDAAE <- rbind(pTotalDAAE, ptDAATmp)
  
  ptOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalOSTE <- rbind(pTotalOSTE, ptOSTTmp)
  
  ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptNSPTmp[1,] <- 0
  ptNSPTmp$y6[1] <- mean(Y6$totalNSP)
  ptNSPTmp$y7[1] <- mean(Y7$totalNSP)
  ptNSPTmp$y8[1] <- mean(Y8$totalNSP)
  ptNSPTmp$y9[1] <- mean(Y9$totalNSP)
  ptNSPTmp$y10[1] <- mean(Y10$totalNSP)
  ptNSPTmp$y11[1] <- mean(Y11$totalNSP)
  ptNSPTmp$y12[1] <- mean(Y12$totalNSP)
  ptNSPTmp$y13[1] <- mean(Y13$totalNSP)
  ptNSPTmp$y14[1] <- mean(Y14$totalNSP)
  ptNSPTmp$y15[1] <- mean(Y15$totalNSP)
  ptNSPTmp$y16[1] <- mean(Y16$totalNSP)
  ptNSPTmp$y17[1] <- mean(Y17$totalNSP)
  ptNSPTmp$y18[1] <- mean(Y18$totalNSP)
  ptNSPTmp$y19[1] <- mean(Y19$totalNSP)
  ptNSPTmp$y20[1] <- mean(Y20$totalNSP)
  ptNSPTmp$y21[1] <- mean(Y21$totalNSP)
  ptNSPTmp$y22[1] <- mean(Y22$totalNSP)
  ptNSPTmp$y23[1] <- mean(Y23$totalNSP)
  ptNSPTmp$y24[1] <- mean(Y24$totalNSP)
  ptNSPTmp$y25[1] <- mean(Y25$totalNSP)
  ptNSPTmp$y26[1] <- mean(Y26$totalNSP)
  ptNSPTmp$y27[1] <- mean(Y27$totalNSP)
  ptNSPTmp$y28[1] <- mean(Y28$totalNSP)
  ptNSPTmp$y29[1] <- mean(Y29$totalNSP)
  ptNSPTmp$y30[1] <- mean(Y30$totalNSP)
  pTotalNSPE <- rbind(pTotalNSPE, ptNSPTmp)
  
  ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptNSPTmp[1,] <- 0
  ptNSPTmp$y6[1] <- Y6$totalNSP[365]
  ptNSPTmp$y7[1] <- Y7$totalNSP[365]
  ptNSPTmp$y8[1] <- Y8$totalNSP[365]
  ptNSPTmp$y9[1] <- Y9$totalNSP[365]
  ptNSPTmp$y10[1] <- Y10$totalNSP[365]
  ptNSPTmp$y11[1] <- Y11$totalNSP[365]
  ptNSPTmp$y12[1] <- Y12$totalNSP[365]
  ptNSPTmp$y13[1] <- Y13$totalNSP[365]
  ptNSPTmp$y14[1] <- Y14$totalNSP[365]
  ptNSPTmp$y15[1] <- Y15$totalNSP[365]
  ptNSPTmp$y16[1] <- Y16$totalNSP[365]
  ptNSPTmp$y17[1] <- Y17$totalNSP[365]
  ptNSPTmp$y18[1] <- Y18$totalNSP[365]
  ptNSPTmp$y19[1] <- Y19$totalNSP[365]
  ptNSPTmp$y20[1] <- Y20$totalNSP[365]
  ptNSPTmp$y21[1] <- Y21$totalNSP[365]
  ptNSPTmp$y22[1] <- Y22$totalNSP[365]
  ptNSPTmp$y23[1] <- Y23$totalNSP[365]
  ptNSPTmp$y24[1] <- Y24$totalNSP[365]
  ptNSPTmp$y25[1] <- Y25$totalNSP[365]
  ptNSPTmp$y26[1] <- Y26$totalNSP[365]
  ptNSPTmp$y27[1] <- Y27$totalNSP[365]
  ptNSPTmp$y28[1] <- Y28$totalNSP[365]
  ptNSPTmp$y29[1] <- Y29$totalNSP[365]
  ptNSPTmp$y30[1] <- Y30$totalNSP[365]
  pTotalNSPSumE <- rbind(pTotalNSPSumE, ptNSPTmp)
  
  ptHCVeAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeAbTmp[1,] <- 0
  ptHCVeAbTmp$y6[1] <- mean(Y6$HCVeAb)
  ptHCVeAbTmp$y7[1] <- mean(Y7$HCVeAb)
  ptHCVeAbTmp$y8[1] <- mean(Y8$HCVeAb)
  ptHCVeAbTmp$y9[1] <- mean(Y9$HCVeAb)
  ptHCVeAbTmp$y10[1] <- mean(Y10$HCVeAb)
  ptHCVeAbTmp$y11[1] <- mean(Y11$HCVeAb)
  ptHCVeAbTmp$y12[1] <- mean(Y12$HCVeAb)
  ptHCVeAbTmp$y13[1] <- mean(Y13$HCVeAb)
  ptHCVeAbTmp$y14[1] <- mean(Y14$HCVeAb)
  ptHCVeAbTmp$y15[1] <- mean(Y15$HCVeAb)
  ptHCVeAbTmp$y16[1] <- mean(Y16$HCVeAb)
  ptHCVeAbTmp$y17[1] <- mean(Y17$HCVeAb)
  ptHCVeAbTmp$y18[1] <- mean(Y18$HCVeAb)
  ptHCVeAbTmp$y19[1] <- mean(Y19$HCVeAb)
  ptHCVeAbTmp$y20[1] <- mean(Y20$HCVeAb)
  ptHCVeAbTmp$y21[1] <- mean(Y21$HCVeAb)
  ptHCVeAbTmp$y22[1] <- mean(Y22$HCVeAb)
  ptHCVeAbTmp$y23[1] <- mean(Y23$HCVeAb)
  ptHCVeAbTmp$y24[1] <- mean(Y24$HCVeAb)
  ptHCVeAbTmp$y25[1] <- mean(Y25$HCVeAb)
  ptHCVeAbTmp$y26[1] <- mean(Y26$HCVeAb)
  ptHCVeAbTmp$y27[1] <- mean(Y27$HCVeAb)
  ptHCVeAbTmp$y28[1] <- mean(Y28$HCVeAb)
  ptHCVeAbTmp$y29[1] <- mean(Y29$HCVeAb)
  ptHCVeAbTmp$y30[1] <- mean(Y30$HCVeAb)
  pTotalHCVeAbE <- rbind(pTotalHCVeAbE, ptHCVeAbTmp)
  
  ptHCVeRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeRNATmp[1,] <- 0
  ptHCVeRNATmp$y6[1] <- mean(Y6$HCVeAb)
  ptHCVeRNATmp$y7[1] <- mean(Y7$HCVeAb)
  ptHCVeRNATmp$y8[1] <- mean(Y8$HCVeAb)
  ptHCVeRNATmp$y9[1] <- mean(Y9$HCVeAb)
  ptHCVeRNATmp$y10[1] <- mean(Y10$HCVeAb)
  ptHCVeRNATmp$y11[1] <- mean(Y11$HCVeAb)
  ptHCVeRNATmp$y12[1] <- mean(Y12$HCVeAb)
  ptHCVeRNATmp$y13[1] <- mean(Y13$HCVeAb)
  ptHCVeRNATmp$y14[1] <- mean(Y14$HCVeAb)
  ptHCVeRNATmp$y15[1] <- mean(Y15$HCVeAb)
  ptHCVeRNATmp$y16[1] <- mean(Y16$HCVeAb)
  ptHCVeRNATmp$y17[1] <- mean(Y17$HCVeAb)
  ptHCVeRNATmp$y18[1] <- mean(Y18$HCVeAb)
  ptHCVeRNATmp$y19[1] <- mean(Y19$HCVeAb)
  ptHCVeRNATmp$y20[1] <- mean(Y20$HCVeAb)
  ptHCVeRNATmp$y21[1] <- mean(Y21$HCVeAb)
  ptHCVeRNATmp$y22[1] <- mean(Y22$HCVeAb)
  ptHCVeRNATmp$y23[1] <- mean(Y23$HCVeAb)
  ptHCVeRNATmp$y24[1] <- mean(Y24$HCVeAb)
  ptHCVeRNATmp$y25[1] <- mean(Y25$HCVeAb)
  ptHCVeRNATmp$y26[1] <- mean(Y26$HCVeAb)
  ptHCVeRNATmp$y27[1] <- mean(Y27$HCVeAb)
  ptHCVeRNATmp$y28[1] <- mean(Y28$HCVeAb)
  ptHCVeRNATmp$y29[1] <- mean(Y29$HCVeAb)
  ptHCVeRNATmp$y30[1] <- mean(Y30$HCVeAb)
  pTotalHCVeRNAE <- rbind(pTotalHCVeRNAE, ptHCVeRNATmp)
  
  ptHCVabTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVabTmp[1,] <- 0
  ptHCVabTmp$y6[1] <- mean(Y6$HCVab)
  ptHCVabTmp$y7[1] <- mean(Y7$HCVab)
  ptHCVabTmp$y8[1] <- mean(Y8$HCVab)
  ptHCVabTmp$y9[1] <- mean(Y9$HCVab)
  ptHCVabTmp$y10[1] <- mean(Y10$HCVab)
  ptHCVabTmp$y11[1] <- mean(Y11$HCVab)
  ptHCVabTmp$y12[1] <- mean(Y12$HCVab)
  ptHCVabTmp$y13[1] <- mean(Y13$HCVab)
  ptHCVabTmp$y14[1] <- mean(Y14$HCVab)
  ptHCVabTmp$y15[1] <- mean(Y15$HCVab)
  ptHCVabTmp$y16[1] <- mean(Y16$HCVab)
  ptHCVabTmp$y17[1] <- mean(Y17$HCVab)
  ptHCVabTmp$y18[1] <- mean(Y18$HCVab)
  ptHCVabTmp$y19[1] <- mean(Y19$HCVab)
  ptHCVabTmp$y20[1] <- mean(Y20$HCVab)
  ptHCVabTmp$y21[1] <- mean(Y21$HCVab)
  ptHCVabTmp$y22[1] <- mean(Y22$HCVab)
  ptHCVabTmp$y23[1] <- mean(Y23$HCVab)
  ptHCVabTmp$y24[1] <- mean(Y24$HCVab)
  ptHCVabTmp$y25[1] <- mean(Y25$HCVab)
  ptHCVabTmp$y26[1] <- mean(Y26$HCVab)
  ptHCVabTmp$y27[1] <- mean(Y27$HCVab)
  ptHCVabTmp$y28[1] <- mean(Y28$HCVab)
  ptHCVabTmp$y29[1] <- mean(Y29$HCVab)
  ptHCVabTmp$y30[1] <- mean(Y30$HCVab)
  pTotalHCVabE <- rbind(pTotalHCVabE, ptHCVabTmp)
  
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
  pPointHCVabE <- rbind(pPointHCVabE, pPointHCVabTmp)
  
  ptHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVRNATmp[1,] <- 0
  ptHCVRNATmp$y6[1] <- mean(Y6$HCVRNA)
  ptHCVRNATmp$y7[1] <- mean(Y7$HCVRNA)
  ptHCVRNATmp$y8[1] <- mean(Y8$HCVRNA)
  ptHCVRNATmp$y9[1] <- mean(Y9$HCVRNA)
  ptHCVRNATmp$y10[1] <- mean(Y10$HCVRNA)
  ptHCVRNATmp$y11[1] <- mean(Y11$HCVRNA)
  ptHCVRNATmp$y12[1] <- mean(Y12$HCVRNA)
  ptHCVRNATmp$y13[1] <- mean(Y13$HCVRNA)
  ptHCVRNATmp$y14[1] <- mean(Y14$HCVRNA)
  ptHCVRNATmp$y15[1] <- mean(Y15$HCVRNA)
  ptHCVRNATmp$y16[1] <- mean(Y16$HCVRNA)
  ptHCVRNATmp$y17[1] <- mean(Y17$HCVRNA)
  ptHCVRNATmp$y18[1] <- mean(Y18$HCVRNA)
  ptHCVRNATmp$y19[1] <- mean(Y19$HCVRNA)
  ptHCVRNATmp$y20[1] <- mean(Y20$HCVRNA)
  ptHCVRNATmp$y21[1] <- mean(Y21$HCVRNA)
  ptHCVRNATmp$y22[1] <- mean(Y22$HCVRNA)
  ptHCVRNATmp$y23[1] <- mean(Y23$HCVRNA)
  ptHCVRNATmp$y24[1] <- mean(Y24$HCVRNA)
  ptHCVRNATmp$y25[1] <- mean(Y25$HCVRNA)
  ptHCVRNATmp$y26[1] <- mean(Y26$HCVRNA)
  ptHCVRNATmp$y27[1] <- mean(Y27$HCVRNA)
  ptHCVRNATmp$y28[1] <- mean(Y28$HCVRNA)
  ptHCVRNATmp$y29[1] <- mean(Y29$HCVRNA)
  ptHCVRNATmp$y30[1] <- mean(Y30$HCVRNA)
  pTotalHCVRNAE <- rbind(pTotalHCVRNAE, ptHCVRNATmp)
  
  ptOpdNotOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptOpdNotOSTTmp[1,] <- 0
  ptOpdNotOSTTmp$y6[1] <- mean(Y6$OpdNotOST)
  ptOpdNotOSTTmp$y7[1] <- mean(Y7$OpdNotOST)
  ptOpdNotOSTTmp$y8[1] <- mean(Y8$OpdNotOST)
  ptOpdNotOSTTmp$y9[1] <- mean(Y9$OpdNotOST)
  ptOpdNotOSTTmp$y10[1] <- mean(Y10$OpdNotOST)
  ptOpdNotOSTTmp$y11[1] <- mean(Y11$OpdNotOST)
  ptOpdNotOSTTmp$y12[1] <- mean(Y12$OpdNotOST)
  ptOpdNotOSTTmp$y13[1] <- mean(Y13$OpdNotOST)
  ptOpdNotOSTTmp$y14[1] <- mean(Y14$OpdNotOST)
  ptOpdNotOSTTmp$y15[1] <- mean(Y15$OpdNotOST)
  ptOpdNotOSTTmp$y16[1] <- mean(Y16$OpdNotOST)
  ptOpdNotOSTTmp$y17[1] <- mean(Y17$OpdNotOST)
  ptOpdNotOSTTmp$y18[1] <- mean(Y18$OpdNotOST)
  ptOpdNotOSTTmp$y19[1] <- mean(Y19$OpdNotOST)
  ptOpdNotOSTTmp$y20[1] <- mean(Y20$OpdNotOST)
  ptOpdNotOSTTmp$y21[1] <- mean(Y21$OpdNotOST)
  ptOpdNotOSTTmp$y22[1] <- mean(Y22$OpdNotOST)
  ptOpdNotOSTTmp$y23[1] <- mean(Y23$OpdNotOST)
  ptOpdNotOSTTmp$y24[1] <- mean(Y24$OpdNotOST)
  ptOpdNotOSTTmp$y25[1] <- mean(Y25$OpdNotOST)
  ptOpdNotOSTTmp$y26[1] <- mean(Y26$OpdNotOST)
  ptOpdNotOSTTmp$y27[1] <- mean(Y27$OpdNotOST)
  ptOpdNotOSTTmp$y28[1] <- mean(Y28$OpdNotOST)
  ptOpdNotOSTTmp$y29[1] <- mean(Y29$OpdNotOST)
  ptOpdNotOSTTmp$y30[1] <- mean(Y30$OpdNotOST)
  pTotalOpdNotOSTE <- rbind(pTotalOpdNotOSTE, ptOpdNotOSTTmp)
  
  ptReleasedHCVAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVAbTmp[1,] <- 0
  ptReleasedHCVAbTmp$y6[1] <- mean(Y6$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y7[1] <- mean(Y7$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y8[1] <- mean(Y8$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y9[1] <- mean(Y9$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y10[1] <- mean(Y10$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y11[1] <- mean(Y11$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y12[1] <- mean(Y12$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y13[1] <- mean(Y13$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y14[1] <- mean(Y14$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y15[1] <- mean(Y15$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y16[1] <- mean(Y16$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y17[1] <- mean(Y17$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y18[1] <- mean(Y18$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y19[1] <- mean(Y19$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y20[1] <- mean(Y20$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y21[1] <- mean(Y21$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y22[1] <- mean(Y22$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y23[1] <- mean(Y23$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y24[1] <- mean(Y24$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y25[1] <- mean(Y25$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y26[1] <- mean(Y26$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y27[1] <- mean(Y27$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y28[1] <- mean(Y28$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y29[1] <- mean(Y29$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y30[1] <- mean(Y30$ReleasedHCVAb)
  pTotalReleasedHCVAbE <- rbind(pTotalReleasedHCVAbE, ptReleasedHCVAbTmp)
  
  ptReleasedHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVRNATmp[1,] <- 0
  ptReleasedHCVRNATmp$y6[1] <- mean(Y6$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y7[1] <- mean(Y7$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y8[1] <- mean(Y8$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y9[1] <- mean(Y9$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y10[1] <- mean(Y10$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y11[1] <- mean(Y11$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y12[1] <- mean(Y12$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y13[1] <- mean(Y13$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y14[1] <- mean(Y14$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y15[1] <- mean(Y15$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y16[1] <- mean(Y16$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y17[1] <- mean(Y17$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y18[1] <- mean(Y18$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y19[1] <- mean(Y19$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y20[1] <- mean(Y20$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y21[1] <- mean(Y21$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y22[1] <- mean(Y22$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y23[1] <- mean(Y23$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y24[1] <- mean(Y24$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y25[1] <- mean(Y25$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y26[1] <- mean(Y26$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y27[1] <- mean(Y27$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y28[1] <- mean(Y28$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y29[1] <- mean(Y29$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y30[1] <- mean(Y30$ReleasedHCVRNA)
  pTotalReleasedHCVRNAE <- rbind(pTotalReleasedHCVRNAE, ptReleasedHCVRNATmp)
}

#DO
for (var in 1:1)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/Testing/results/outDO_", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCVAb", "ReleasedHCVRNA", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "OpdNotOST", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "OSTremaining", "HCVeRNA", "HCVeAb", "NewEntry", "HCVab", "HCVRNA", "AveStay", "NCbyOST")
  
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
  pMinTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMinF <- rbind(pMinF, pMinTmp)
  
  pMedTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMedF <- rbind(pMedF, pMedTmp)
  
  pMaxTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMaxF <- rbind(pMaxF, pMaxTmp)
  
  pTotalTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalF <- rbind(pTotalF, pTotalTmp)
  
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
  pPointTotalF <- rbind(pPointTotalF, pPointTotalTmp)
  
  pReTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pReinfectedF <- rbind(pReinfectedF, pReTmp)
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pNewCasesF <- rbind(pNewCasesF, pNcTmp)
  
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
  pNewCasesSumF <- rbind(pNewCasesSumF, pNcTmp)
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pNcTmp[1,] <- 0
  pNcTmp$y6[1] <- sum(Y6$NCbyNSP)
  pNcTmp$y7[1] <- sum(Y7$NCbyNSP)
  pNcTmp$y8[1] <- sum(Y8$NCbyNSP)
  pNcTmp$y9[1] <- sum(Y9$NCbyNSP)
  pNcTmp$y10[1] <- sum(Y10$NCbyNSP)
  pNcTmp$y11[1] <- sum(Y11$NCbyNSP)
  pNcTmp$y12[1] <- sum(Y12$NCbyNSP)
  pNcTmp$y13[1] <- sum(Y13$NCbyNSP)
  pNcTmp$y14[1] <- sum(Y14$NCbyNSP)
  pNcTmp$y15[1] <- sum(Y15$NCbyNSP)
  pNcTmp$y16[1] <- sum(Y16$NCbyNSP)
  pNcTmp$y17[1] <- sum(Y17$NCbyNSP)
  pNcTmp$y18[1] <- sum(Y18$NCbyNSP)
  pNcTmp$y19[1] <- sum(Y19$NCbyNSP)
  pNcTmp$y20[1] <- sum(Y20$NCbyNSP)
  pNcTmp$y21[1] <- sum(Y21$NCbyNSP)
  pNcTmp$y22[1] <- sum(Y22$NCbyNSP)
  pNcTmp$y23[1] <- sum(Y23$NCbyNSP)
  pNcTmp$y24[1] <- sum(Y24$NCbyNSP)
  pNcTmp$y25[1] <- sum(Y25$NCbyNSP)
  pNcTmp$y26[1] <- sum(Y26$NCbyNSP)
  pNcTmp$y27[1] <- sum(Y27$NCbyNSP)
  pNcTmp$y28[1] <- sum(Y28$NCbyNSP)
  pNcTmp$y29[1] <- sum(Y29$NCbyNSP)
  pNcTmp$y30[1] <- sum(Y30$NCbyNSP)
  pNewCasesNSPSumF <- rbind(pNewCasesNSPSumF, pNcTmp)
  
  pIDUTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalIDUF <- rbind(pTotalIDUF, pIDUTmp)
  
  pPrisonTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pPrisonHCVF <- rbind(pPrisonHCVF, pPrisonTmp)
  
  pOpdTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pOpdF <- rbind(pOpdF, pOpdTmp)
  
  pEverTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pEverIDUF <- rbind(pEverIDUF, pEverTmp)
  
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
  pEverIDUSumF <- rbind(pEverIDUSumF, pEverSumTmp)
  
  pClrTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pClrDF <- rbind(pClrDF, pClrTmp)
  
  ptDAATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalDAAF <- rbind(pTotalDAAF, ptDAATmp)
  
  ptOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalOSTF <- rbind(pTotalOSTF, ptOSTTmp)
  
  ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptNSPTmp[1,] <- 0
  ptNSPTmp$y6[1] <- mean(Y6$totalNSP)
  ptNSPTmp$y7[1] <- mean(Y7$totalNSP)
  ptNSPTmp$y8[1] <- mean(Y8$totalNSP)
  ptNSPTmp$y9[1] <- mean(Y9$totalNSP)
  ptNSPTmp$y10[1] <- mean(Y10$totalNSP)
  ptNSPTmp$y11[1] <- mean(Y11$totalNSP)
  ptNSPTmp$y12[1] <- mean(Y12$totalNSP)
  ptNSPTmp$y13[1] <- mean(Y13$totalNSP)
  ptNSPTmp$y14[1] <- mean(Y14$totalNSP)
  ptNSPTmp$y15[1] <- mean(Y15$totalNSP)
  ptNSPTmp$y16[1] <- mean(Y16$totalNSP)
  ptNSPTmp$y17[1] <- mean(Y17$totalNSP)
  ptNSPTmp$y18[1] <- mean(Y18$totalNSP)
  ptNSPTmp$y19[1] <- mean(Y19$totalNSP)
  ptNSPTmp$y20[1] <- mean(Y20$totalNSP)
  ptNSPTmp$y21[1] <- mean(Y21$totalNSP)
  ptNSPTmp$y22[1] <- mean(Y22$totalNSP)
  ptNSPTmp$y23[1] <- mean(Y23$totalNSP)
  ptNSPTmp$y24[1] <- mean(Y24$totalNSP)
  ptNSPTmp$y25[1] <- mean(Y25$totalNSP)
  ptNSPTmp$y26[1] <- mean(Y26$totalNSP)
  ptNSPTmp$y27[1] <- mean(Y27$totalNSP)
  ptNSPTmp$y28[1] <- mean(Y28$totalNSP)
  ptNSPTmp$y29[1] <- mean(Y29$totalNSP)
  ptNSPTmp$y30[1] <- mean(Y30$totalNSP)
  pTotalNSPF <- rbind(pTotalNSPF, ptNSPTmp)
  
  ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptNSPTmp[1,] <- 0
  ptNSPTmp$y6[1] <- Y6$totalNSP[365]
  ptNSPTmp$y7[1] <- Y7$totalNSP[365]
  ptNSPTmp$y8[1] <- Y8$totalNSP[365]
  ptNSPTmp$y9[1] <- Y9$totalNSP[365]
  ptNSPTmp$y10[1] <- Y10$totalNSP[365]
  ptNSPTmp$y11[1] <- Y11$totalNSP[365]
  ptNSPTmp$y12[1] <- Y12$totalNSP[365]
  ptNSPTmp$y13[1] <- Y13$totalNSP[365]
  ptNSPTmp$y14[1] <- Y14$totalNSP[365]
  ptNSPTmp$y15[1] <- Y15$totalNSP[365]
  ptNSPTmp$y16[1] <- Y16$totalNSP[365]
  ptNSPTmp$y17[1] <- Y17$totalNSP[365]
  ptNSPTmp$y18[1] <- Y18$totalNSP[365]
  ptNSPTmp$y19[1] <- Y19$totalNSP[365]
  ptNSPTmp$y20[1] <- Y20$totalNSP[365]
  ptNSPTmp$y21[1] <- Y21$totalNSP[365]
  ptNSPTmp$y22[1] <- Y22$totalNSP[365]
  ptNSPTmp$y23[1] <- Y23$totalNSP[365]
  ptNSPTmp$y24[1] <- Y24$totalNSP[365]
  ptNSPTmp$y25[1] <- Y25$totalNSP[365]
  ptNSPTmp$y26[1] <- Y26$totalNSP[365]
  ptNSPTmp$y27[1] <- Y27$totalNSP[365]
  ptNSPTmp$y28[1] <- Y28$totalNSP[365]
  ptNSPTmp$y29[1] <- Y29$totalNSP[365]
  ptNSPTmp$y30[1] <- Y30$totalNSP[365]
  pTotalNSPSumF <- rbind(pTotalNSPSumF, ptNSPTmp)
  
  ptHCVeAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeAbTmp[1,] <- 0
  ptHCVeAbTmp$y6[1] <- mean(Y6$HCVeAb)
  ptHCVeAbTmp$y7[1] <- mean(Y7$HCVeAb)
  ptHCVeAbTmp$y8[1] <- mean(Y8$HCVeAb)
  ptHCVeAbTmp$y9[1] <- mean(Y9$HCVeAb)
  ptHCVeAbTmp$y10[1] <- mean(Y10$HCVeAb)
  ptHCVeAbTmp$y11[1] <- mean(Y11$HCVeAb)
  ptHCVeAbTmp$y12[1] <- mean(Y12$HCVeAb)
  ptHCVeAbTmp$y13[1] <- mean(Y13$HCVeAb)
  ptHCVeAbTmp$y14[1] <- mean(Y14$HCVeAb)
  ptHCVeAbTmp$y15[1] <- mean(Y15$HCVeAb)
  ptHCVeAbTmp$y16[1] <- mean(Y16$HCVeAb)
  ptHCVeAbTmp$y17[1] <- mean(Y17$HCVeAb)
  ptHCVeAbTmp$y18[1] <- mean(Y18$HCVeAb)
  ptHCVeAbTmp$y19[1] <- mean(Y19$HCVeAb)
  ptHCVeAbTmp$y20[1] <- mean(Y20$HCVeAb)
  ptHCVeAbTmp$y21[1] <- mean(Y21$HCVeAb)
  ptHCVeAbTmp$y22[1] <- mean(Y22$HCVeAb)
  ptHCVeAbTmp$y23[1] <- mean(Y23$HCVeAb)
  ptHCVeAbTmp$y24[1] <- mean(Y24$HCVeAb)
  ptHCVeAbTmp$y25[1] <- mean(Y25$HCVeAb)
  ptHCVeAbTmp$y26[1] <- mean(Y26$HCVeAb)
  ptHCVeAbTmp$y27[1] <- mean(Y27$HCVeAb)
  ptHCVeAbTmp$y28[1] <- mean(Y28$HCVeAb)
  ptHCVeAbTmp$y29[1] <- mean(Y29$HCVeAb)
  ptHCVeAbTmp$y30[1] <- mean(Y30$HCVeAb)
  pTotalHCVeAbF <- rbind(pTotalHCVeAbF, ptHCVeAbTmp)
  
  ptHCVeRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeRNATmp[1,] <- 0
  ptHCVeRNATmp$y6[1] <- mean(Y6$HCVeAb)
  ptHCVeRNATmp$y7[1] <- mean(Y7$HCVeAb)
  ptHCVeRNATmp$y8[1] <- mean(Y8$HCVeAb)
  ptHCVeRNATmp$y9[1] <- mean(Y9$HCVeAb)
  ptHCVeRNATmp$y10[1] <- mean(Y10$HCVeAb)
  ptHCVeRNATmp$y11[1] <- mean(Y11$HCVeAb)
  ptHCVeRNATmp$y12[1] <- mean(Y12$HCVeAb)
  ptHCVeRNATmp$y13[1] <- mean(Y13$HCVeAb)
  ptHCVeRNATmp$y14[1] <- mean(Y14$HCVeAb)
  ptHCVeRNATmp$y15[1] <- mean(Y15$HCVeAb)
  ptHCVeRNATmp$y16[1] <- mean(Y16$HCVeAb)
  ptHCVeRNATmp$y17[1] <- mean(Y17$HCVeAb)
  ptHCVeRNATmp$y18[1] <- mean(Y18$HCVeAb)
  ptHCVeRNATmp$y19[1] <- mean(Y19$HCVeAb)
  ptHCVeRNATmp$y20[1] <- mean(Y20$HCVeAb)
  ptHCVeRNATmp$y21[1] <- mean(Y21$HCVeAb)
  ptHCVeRNATmp$y22[1] <- mean(Y22$HCVeAb)
  ptHCVeRNATmp$y23[1] <- mean(Y23$HCVeAb)
  ptHCVeRNATmp$y24[1] <- mean(Y24$HCVeAb)
  ptHCVeRNATmp$y25[1] <- mean(Y25$HCVeAb)
  ptHCVeRNATmp$y26[1] <- mean(Y26$HCVeAb)
  ptHCVeRNATmp$y27[1] <- mean(Y27$HCVeAb)
  ptHCVeRNATmp$y28[1] <- mean(Y28$HCVeAb)
  ptHCVeRNATmp$y29[1] <- mean(Y29$HCVeAb)
  ptHCVeRNATmp$y30[1] <- mean(Y30$HCVeAb)
  pTotalHCVeRNAF <- rbind(pTotalHCVeRNAF, ptHCVeRNATmp)
  
  ptHCVabTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVabTmp[1,] <- 0
  ptHCVabTmp$y6[1] <- mean(Y6$HCVab)
  ptHCVabTmp$y7[1] <- mean(Y7$HCVab)
  ptHCVabTmp$y8[1] <- mean(Y8$HCVab)
  ptHCVabTmp$y9[1] <- mean(Y9$HCVab)
  ptHCVabTmp$y10[1] <- mean(Y10$HCVab)
  ptHCVabTmp$y11[1] <- mean(Y11$HCVab)
  ptHCVabTmp$y12[1] <- mean(Y12$HCVab)
  ptHCVabTmp$y13[1] <- mean(Y13$HCVab)
  ptHCVabTmp$y14[1] <- mean(Y14$HCVab)
  ptHCVabTmp$y15[1] <- mean(Y15$HCVab)
  ptHCVabTmp$y16[1] <- mean(Y16$HCVab)
  ptHCVabTmp$y17[1] <- mean(Y17$HCVab)
  ptHCVabTmp$y18[1] <- mean(Y18$HCVab)
  ptHCVabTmp$y19[1] <- mean(Y19$HCVab)
  ptHCVabTmp$y20[1] <- mean(Y20$HCVab)
  ptHCVabTmp$y21[1] <- mean(Y21$HCVab)
  ptHCVabTmp$y22[1] <- mean(Y22$HCVab)
  ptHCVabTmp$y23[1] <- mean(Y23$HCVab)
  ptHCVabTmp$y24[1] <- mean(Y24$HCVab)
  ptHCVabTmp$y25[1] <- mean(Y25$HCVab)
  ptHCVabTmp$y26[1] <- mean(Y26$HCVab)
  ptHCVabTmp$y27[1] <- mean(Y27$HCVab)
  ptHCVabTmp$y28[1] <- mean(Y28$HCVab)
  ptHCVabTmp$y29[1] <- mean(Y29$HCVab)
  ptHCVabTmp$y30[1] <- mean(Y30$HCVab)
  pTotalHCVabF <- rbind(pTotalHCVabF, ptHCVabTmp)
  
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
  pPointHCVabF <- rbind(pPointHCVabF, pPointHCVabTmp)
  
  ptHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVRNATmp[1,] <- 0
  ptHCVRNATmp$y6[1] <- mean(Y6$HCVRNA)
  ptHCVRNATmp$y7[1] <- mean(Y7$HCVRNA)
  ptHCVRNATmp$y8[1] <- mean(Y8$HCVRNA)
  ptHCVRNATmp$y9[1] <- mean(Y9$HCVRNA)
  ptHCVRNATmp$y10[1] <- mean(Y10$HCVRNA)
  ptHCVRNATmp$y11[1] <- mean(Y11$HCVRNA)
  ptHCVRNATmp$y12[1] <- mean(Y12$HCVRNA)
  ptHCVRNATmp$y13[1] <- mean(Y13$HCVRNA)
  ptHCVRNATmp$y14[1] <- mean(Y14$HCVRNA)
  ptHCVRNATmp$y15[1] <- mean(Y15$HCVRNA)
  ptHCVRNATmp$y16[1] <- mean(Y16$HCVRNA)
  ptHCVRNATmp$y17[1] <- mean(Y17$HCVRNA)
  ptHCVRNATmp$y18[1] <- mean(Y18$HCVRNA)
  ptHCVRNATmp$y19[1] <- mean(Y19$HCVRNA)
  ptHCVRNATmp$y20[1] <- mean(Y20$HCVRNA)
  ptHCVRNATmp$y21[1] <- mean(Y21$HCVRNA)
  ptHCVRNATmp$y22[1] <- mean(Y22$HCVRNA)
  ptHCVRNATmp$y23[1] <- mean(Y23$HCVRNA)
  ptHCVRNATmp$y24[1] <- mean(Y24$HCVRNA)
  ptHCVRNATmp$y25[1] <- mean(Y25$HCVRNA)
  ptHCVRNATmp$y26[1] <- mean(Y26$HCVRNA)
  ptHCVRNATmp$y27[1] <- mean(Y27$HCVRNA)
  ptHCVRNATmp$y28[1] <- mean(Y28$HCVRNA)
  ptHCVRNATmp$y29[1] <- mean(Y29$HCVRNA)
  ptHCVRNATmp$y30[1] <- mean(Y30$HCVRNA)
  pTotalHCVRNAF <- rbind(pTotalHCVRNAF, ptHCVRNATmp)
  
  ptOpdNotOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptOpdNotOSTTmp[1,] <- 0
  ptOpdNotOSTTmp$y6[1] <- mean(Y6$OpdNotOST)
  ptOpdNotOSTTmp$y7[1] <- mean(Y7$OpdNotOST)
  ptOpdNotOSTTmp$y8[1] <- mean(Y8$OpdNotOST)
  ptOpdNotOSTTmp$y9[1] <- mean(Y9$OpdNotOST)
  ptOpdNotOSTTmp$y10[1] <- mean(Y10$OpdNotOST)
  ptOpdNotOSTTmp$y11[1] <- mean(Y11$OpdNotOST)
  ptOpdNotOSTTmp$y12[1] <- mean(Y12$OpdNotOST)
  ptOpdNotOSTTmp$y13[1] <- mean(Y13$OpdNotOST)
  ptOpdNotOSTTmp$y14[1] <- mean(Y14$OpdNotOST)
  ptOpdNotOSTTmp$y15[1] <- mean(Y15$OpdNotOST)
  ptOpdNotOSTTmp$y16[1] <- mean(Y16$OpdNotOST)
  ptOpdNotOSTTmp$y17[1] <- mean(Y17$OpdNotOST)
  ptOpdNotOSTTmp$y18[1] <- mean(Y18$OpdNotOST)
  ptOpdNotOSTTmp$y19[1] <- mean(Y19$OpdNotOST)
  ptOpdNotOSTTmp$y20[1] <- mean(Y20$OpdNotOST)
  ptOpdNotOSTTmp$y21[1] <- mean(Y21$OpdNotOST)
  ptOpdNotOSTTmp$y22[1] <- mean(Y22$OpdNotOST)
  ptOpdNotOSTTmp$y23[1] <- mean(Y23$OpdNotOST)
  ptOpdNotOSTTmp$y24[1] <- mean(Y24$OpdNotOST)
  ptOpdNotOSTTmp$y25[1] <- mean(Y25$OpdNotOST)
  ptOpdNotOSTTmp$y26[1] <- mean(Y26$OpdNotOST)
  ptOpdNotOSTTmp$y27[1] <- mean(Y27$OpdNotOST)
  ptOpdNotOSTTmp$y28[1] <- mean(Y28$OpdNotOST)
  ptOpdNotOSTTmp$y29[1] <- mean(Y29$OpdNotOST)
  ptOpdNotOSTTmp$y30[1] <- mean(Y30$OpdNotOST)
  pTotalOpdNotOSTF <- rbind(pTotalOpdNotOSTF, ptOpdNotOSTTmp)
  
  ptReleasedHCVAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVAbTmp[1,] <- 0
  ptReleasedHCVAbTmp$y6[1] <- mean(Y6$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y7[1] <- mean(Y7$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y8[1] <- mean(Y8$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y9[1] <- mean(Y9$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y10[1] <- mean(Y10$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y11[1] <- mean(Y11$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y12[1] <- mean(Y12$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y13[1] <- mean(Y13$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y14[1] <- mean(Y14$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y15[1] <- mean(Y15$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y16[1] <- mean(Y16$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y17[1] <- mean(Y17$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y18[1] <- mean(Y18$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y19[1] <- mean(Y19$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y20[1] <- mean(Y20$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y21[1] <- mean(Y21$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y22[1] <- mean(Y22$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y23[1] <- mean(Y23$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y24[1] <- mean(Y24$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y25[1] <- mean(Y25$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y26[1] <- mean(Y26$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y27[1] <- mean(Y27$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y28[1] <- mean(Y28$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y29[1] <- mean(Y29$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y30[1] <- mean(Y30$ReleasedHCVAb)
  pTotalReleasedHCVAbF <- rbind(pTotalReleasedHCVAbF, ptReleasedHCVAbTmp)
  
  ptReleasedHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVRNATmp[1,] <- 0
  ptReleasedHCVRNATmp$y6[1] <- mean(Y6$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y7[1] <- mean(Y7$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y8[1] <- mean(Y8$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y9[1] <- mean(Y9$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y10[1] <- mean(Y10$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y11[1] <- mean(Y11$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y12[1] <- mean(Y12$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y13[1] <- mean(Y13$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y14[1] <- mean(Y14$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y15[1] <- mean(Y15$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y16[1] <- mean(Y16$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y17[1] <- mean(Y17$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y18[1] <- mean(Y18$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y19[1] <- mean(Y19$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y20[1] <- mean(Y20$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y21[1] <- mean(Y21$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y22[1] <- mean(Y22$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y23[1] <- mean(Y23$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y24[1] <- mean(Y24$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y25[1] <- mean(Y25$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y26[1] <- mean(Y26$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y27[1] <- mean(Y27$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y28[1] <- mean(Y28$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y29[1] <- mean(Y29$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y30[1] <- mean(Y30$ReleasedHCVRNA)
  pTotalReleasedHCVRNAF <- rbind(pTotalReleasedHCVRNAF, ptReleasedHCVRNATmp)
}

#DON
for (var in 1:1)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/Testing/results/outNSP_", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCVAb", "ReleasedHCVRNA", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "OpdNotOST", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "OSTremaining", "HCVeRNA", "HCVeAb", "NewEntry", "HCVab", "HCVRNA", "AveStay", "NSPRemaining", "totalNSP", "NCbyNSP")
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCVAb", "ReleasedHCVRNA", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "OpdNotOST", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "OSTremaining", "HCVeRNA", "HCVeAb", "NewEntry", "HCVab", "HCVRNA", "AveStay", "NSPRemaining", "totalNSP", "NCbyNSP")
  
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
  pMinTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMinG <- rbind(pMinG, pMinTmp)
  
  pMedTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMedG <- rbind(pMedG, pMedTmp)
  
  pMaxTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMaxG <- rbind(pMaxG, pMaxTmp)
  
  pTotalTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalG <- rbind(pTotalG, pTotalTmp)
  
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
  pPointTotalG <- rbind(pPointTotalG, pPointTotalTmp)
  
  pReTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pReinfectedG <- rbind(pReinfectedG, pReTmp)
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pNewCasesG <- rbind(pNewCasesG, pNcTmp)
  
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
  pNewCasesSumG <- rbind(pNewCasesSumG, pNcTmp)
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pNcTmp[1,] <- 0
  pNcTmp$y6[1] <- sum(Y6$NCbyNSP)
  pNcTmp$y7[1] <- sum(Y7$NCbyNSP)
  pNcTmp$y8[1] <- sum(Y8$NCbyNSP)
  pNcTmp$y9[1] <- sum(Y9$NCbyNSP)
  pNcTmp$y10[1] <- sum(Y10$NCbyNSP)
  pNcTmp$y11[1] <- sum(Y11$NCbyNSP)
  pNcTmp$y12[1] <- sum(Y12$NCbyNSP)
  pNcTmp$y13[1] <- sum(Y13$NCbyNSP)
  pNcTmp$y14[1] <- sum(Y14$NCbyNSP)
  pNcTmp$y15[1] <- sum(Y15$NCbyNSP)
  pNcTmp$y16[1] <- sum(Y16$NCbyNSP)
  pNcTmp$y17[1] <- sum(Y17$NCbyNSP)
  pNcTmp$y18[1] <- sum(Y18$NCbyNSP)
  pNcTmp$y19[1] <- sum(Y19$NCbyNSP)
  pNcTmp$y20[1] <- sum(Y20$NCbyNSP)
  pNcTmp$y21[1] <- sum(Y21$NCbyNSP)
  pNcTmp$y22[1] <- sum(Y22$NCbyNSP)
  pNcTmp$y23[1] <- sum(Y23$NCbyNSP)
  pNcTmp$y24[1] <- sum(Y24$NCbyNSP)
  pNcTmp$y25[1] <- sum(Y25$NCbyNSP)
  pNcTmp$y26[1] <- sum(Y26$NCbyNSP)
  pNcTmp$y27[1] <- sum(Y27$NCbyNSP)
  pNcTmp$y28[1] <- sum(Y28$NCbyNSP)
  pNcTmp$y29[1] <- sum(Y29$NCbyNSP)
  pNcTmp$y30[1] <- sum(Y30$NCbyNSP)
  pNewCasesNSPSumG <- rbind(pNewCasesNSPSumG, pNcTmp)
  
  pIDUTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalIDUG <- rbind(pTotalIDUG, pIDUTmp)
  
  pPrisonTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pPrisonHCVG <- rbind(pPrisonHCVG, pPrisonTmp)
  
  pOpdTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pOpdG <- rbind(pOpdG, pOpdTmp)
  
  pEverTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pEverIDUG <- rbind(pEverIDUG, pEverTmp)
  
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
  pEverIDUSumG <- rbind(pEverIDUSumG, pEverSumTmp)
  
  pClrTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pClrDG <- rbind(pClrDG, pClrTmp)
  
  ptDAATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalDAAG <- rbind(pTotalDAAG, ptDAATmp)
  
  ptOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalOSTG <- rbind(pTotalOSTG, ptOSTTmp)
  
  ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptNSPTmp[1,] <- 0
  ptNSPTmp$y6[1] <- mean(Y6$totalNSP)
  ptNSPTmp$y7[1] <- mean(Y7$totalNSP)
  ptNSPTmp$y8[1] <- mean(Y8$totalNSP)
  ptNSPTmp$y9[1] <- mean(Y9$totalNSP)
  ptNSPTmp$y10[1] <- mean(Y10$totalNSP)
  ptNSPTmp$y11[1] <- mean(Y11$totalNSP)
  ptNSPTmp$y12[1] <- mean(Y12$totalNSP)
  ptNSPTmp$y13[1] <- mean(Y13$totalNSP)
  ptNSPTmp$y14[1] <- mean(Y14$totalNSP)
  ptNSPTmp$y15[1] <- mean(Y15$totalNSP)
  ptNSPTmp$y16[1] <- mean(Y16$totalNSP)
  ptNSPTmp$y17[1] <- mean(Y17$totalNSP)
  ptNSPTmp$y18[1] <- mean(Y18$totalNSP)
  ptNSPTmp$y19[1] <- mean(Y19$totalNSP)
  ptNSPTmp$y20[1] <- mean(Y20$totalNSP)
  ptNSPTmp$y21[1] <- mean(Y21$totalNSP)
  ptNSPTmp$y22[1] <- mean(Y22$totalNSP)
  ptNSPTmp$y23[1] <- mean(Y23$totalNSP)
  ptNSPTmp$y24[1] <- mean(Y24$totalNSP)
  ptNSPTmp$y25[1] <- mean(Y25$totalNSP)
  ptNSPTmp$y26[1] <- mean(Y26$totalNSP)
  ptNSPTmp$y27[1] <- mean(Y27$totalNSP)
  ptNSPTmp$y28[1] <- mean(Y28$totalNSP)
  ptNSPTmp$y29[1] <- mean(Y29$totalNSP)
  ptNSPTmp$y30[1] <- mean(Y30$totalNSP)
  pTotalNSPG <- rbind(pTotalNSPG, ptNSPTmp)
  
  ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptNSPTmp[1,] <- 0
  ptNSPTmp$y6[1] <- Y6$totalNSP[365]
  ptNSPTmp$y7[1] <- Y7$totalNSP[365]
  ptNSPTmp$y8[1] <- Y8$totalNSP[365]
  ptNSPTmp$y9[1] <- Y9$totalNSP[365]
  ptNSPTmp$y10[1] <- Y10$totalNSP[365]
  ptNSPTmp$y11[1] <- Y11$totalNSP[365]
  ptNSPTmp$y12[1] <- Y12$totalNSP[365]
  ptNSPTmp$y13[1] <- Y13$totalNSP[365]
  ptNSPTmp$y14[1] <- Y14$totalNSP[365]
  ptNSPTmp$y15[1] <- Y15$totalNSP[365]
  ptNSPTmp$y16[1] <- Y16$totalNSP[365]
  ptNSPTmp$y17[1] <- Y17$totalNSP[365]
  ptNSPTmp$y18[1] <- Y18$totalNSP[365]
  ptNSPTmp$y19[1] <- Y19$totalNSP[365]
  ptNSPTmp$y20[1] <- Y20$totalNSP[365]
  ptNSPTmp$y21[1] <- Y21$totalNSP[365]
  ptNSPTmp$y22[1] <- Y22$totalNSP[365]
  ptNSPTmp$y23[1] <- Y23$totalNSP[365]
  ptNSPTmp$y24[1] <- Y24$totalNSP[365]
  ptNSPTmp$y25[1] <- Y25$totalNSP[365]
  ptNSPTmp$y26[1] <- Y26$totalNSP[365]
  ptNSPTmp$y27[1] <- Y27$totalNSP[365]
  ptNSPTmp$y28[1] <- Y28$totalNSP[365]
  ptNSPTmp$y29[1] <- Y29$totalNSP[365]
  ptNSPTmp$y30[1] <- Y30$totalNSP[365]
  pTotalNSPSumG <- rbind(pTotalNSPSumG, ptNSPTmp)
  
  ptHCVeAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeAbTmp[1,] <- 0
  ptHCVeAbTmp$y6[1] <- mean(Y6$HCVeAb)
  ptHCVeAbTmp$y7[1] <- mean(Y7$HCVeAb)
  ptHCVeAbTmp$y8[1] <- mean(Y8$HCVeAb)
  ptHCVeAbTmp$y9[1] <- mean(Y9$HCVeAb)
  ptHCVeAbTmp$y10[1] <- mean(Y10$HCVeAb)
  ptHCVeAbTmp$y11[1] <- mean(Y11$HCVeAb)
  ptHCVeAbTmp$y12[1] <- mean(Y12$HCVeAb)
  ptHCVeAbTmp$y13[1] <- mean(Y13$HCVeAb)
  ptHCVeAbTmp$y14[1] <- mean(Y14$HCVeAb)
  ptHCVeAbTmp$y15[1] <- mean(Y15$HCVeAb)
  ptHCVeAbTmp$y16[1] <- mean(Y16$HCVeAb)
  ptHCVeAbTmp$y17[1] <- mean(Y17$HCVeAb)
  ptHCVeAbTmp$y18[1] <- mean(Y18$HCVeAb)
  ptHCVeAbTmp$y19[1] <- mean(Y19$HCVeAb)
  ptHCVeAbTmp$y20[1] <- mean(Y20$HCVeAb)
  ptHCVeAbTmp$y21[1] <- mean(Y21$HCVeAb)
  ptHCVeAbTmp$y22[1] <- mean(Y22$HCVeAb)
  ptHCVeAbTmp$y23[1] <- mean(Y23$HCVeAb)
  ptHCVeAbTmp$y24[1] <- mean(Y24$HCVeAb)
  ptHCVeAbTmp$y25[1] <- mean(Y25$HCVeAb)
  ptHCVeAbTmp$y26[1] <- mean(Y26$HCVeAb)
  ptHCVeAbTmp$y27[1] <- mean(Y27$HCVeAb)
  ptHCVeAbTmp$y28[1] <- mean(Y28$HCVeAb)
  ptHCVeAbTmp$y29[1] <- mean(Y29$HCVeAb)
  ptHCVeAbTmp$y30[1] <- mean(Y30$HCVeAb)
  pTotalHCVeAbG <- rbind(pTotalHCVeAbG, ptHCVeAbTmp)
  
  ptHCVeRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeRNATmp[1,] <- 0
  ptHCVeRNATmp$y6[1] <- mean(Y6$HCVeAb)
  ptHCVeRNATmp$y7[1] <- mean(Y7$HCVeAb)
  ptHCVeRNATmp$y8[1] <- mean(Y8$HCVeAb)
  ptHCVeRNATmp$y9[1] <- mean(Y9$HCVeAb)
  ptHCVeRNATmp$y10[1] <- mean(Y10$HCVeAb)
  ptHCVeRNATmp$y11[1] <- mean(Y11$HCVeAb)
  ptHCVeRNATmp$y12[1] <- mean(Y12$HCVeAb)
  ptHCVeRNATmp$y13[1] <- mean(Y13$HCVeAb)
  ptHCVeRNATmp$y14[1] <- mean(Y14$HCVeAb)
  ptHCVeRNATmp$y15[1] <- mean(Y15$HCVeAb)
  ptHCVeRNATmp$y16[1] <- mean(Y16$HCVeAb)
  ptHCVeRNATmp$y17[1] <- mean(Y17$HCVeAb)
  ptHCVeRNATmp$y18[1] <- mean(Y18$HCVeAb)
  ptHCVeRNATmp$y19[1] <- mean(Y19$HCVeAb)
  ptHCVeRNATmp$y20[1] <- mean(Y20$HCVeAb)
  ptHCVeRNATmp$y21[1] <- mean(Y21$HCVeAb)
  ptHCVeRNATmp$y22[1] <- mean(Y22$HCVeAb)
  ptHCVeRNATmp$y23[1] <- mean(Y23$HCVeAb)
  ptHCVeRNATmp$y24[1] <- mean(Y24$HCVeAb)
  ptHCVeRNATmp$y25[1] <- mean(Y25$HCVeAb)
  ptHCVeRNATmp$y26[1] <- mean(Y26$HCVeAb)
  ptHCVeRNATmp$y27[1] <- mean(Y27$HCVeAb)
  ptHCVeRNATmp$y28[1] <- mean(Y28$HCVeAb)
  ptHCVeRNATmp$y29[1] <- mean(Y29$HCVeAb)
  ptHCVeRNATmp$y30[1] <- mean(Y30$HCVeAb)
  pTotalHCVeRNAG <- rbind(pTotalHCVeRNAG, ptHCVeRNATmp)
  
  ptHCVabTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVabTmp[1,] <- 0
  ptHCVabTmp$y6[1] <- mean(Y6$HCVab)
  ptHCVabTmp$y7[1] <- mean(Y7$HCVab)
  ptHCVabTmp$y8[1] <- mean(Y8$HCVab)
  ptHCVabTmp$y9[1] <- mean(Y9$HCVab)
  ptHCVabTmp$y10[1] <- mean(Y10$HCVab)
  ptHCVabTmp$y11[1] <- mean(Y11$HCVab)
  ptHCVabTmp$y12[1] <- mean(Y12$HCVab)
  ptHCVabTmp$y13[1] <- mean(Y13$HCVab)
  ptHCVabTmp$y14[1] <- mean(Y14$HCVab)
  ptHCVabTmp$y15[1] <- mean(Y15$HCVab)
  ptHCVabTmp$y16[1] <- mean(Y16$HCVab)
  ptHCVabTmp$y17[1] <- mean(Y17$HCVab)
  ptHCVabTmp$y18[1] <- mean(Y18$HCVab)
  ptHCVabTmp$y19[1] <- mean(Y19$HCVab)
  ptHCVabTmp$y20[1] <- mean(Y20$HCVab)
  ptHCVabTmp$y21[1] <- mean(Y21$HCVab)
  ptHCVabTmp$y22[1] <- mean(Y22$HCVab)
  ptHCVabTmp$y23[1] <- mean(Y23$HCVab)
  ptHCVabTmp$y24[1] <- mean(Y24$HCVab)
  ptHCVabTmp$y25[1] <- mean(Y25$HCVab)
  ptHCVabTmp$y26[1] <- mean(Y26$HCVab)
  ptHCVabTmp$y27[1] <- mean(Y27$HCVab)
  ptHCVabTmp$y28[1] <- mean(Y28$HCVab)
  ptHCVabTmp$y29[1] <- mean(Y29$HCVab)
  ptHCVabTmp$y30[1] <- mean(Y30$HCVab)
  pTotalHCVabG <- rbind(pTotalHCVabG, ptHCVabTmp)
  
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
  pPointHCVabG <- rbind(pPointHCVabG, pPointHCVabTmp)
  
  ptHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVRNATmp[1,] <- 0
  ptHCVRNATmp$y6[1] <- mean(Y6$HCVRNA)
  ptHCVRNATmp$y7[1] <- mean(Y7$HCVRNA)
  ptHCVRNATmp$y8[1] <- mean(Y8$HCVRNA)
  ptHCVRNATmp$y9[1] <- mean(Y9$HCVRNA)
  ptHCVRNATmp$y10[1] <- mean(Y10$HCVRNA)
  ptHCVRNATmp$y11[1] <- mean(Y11$HCVRNA)
  ptHCVRNATmp$y12[1] <- mean(Y12$HCVRNA)
  ptHCVRNATmp$y13[1] <- mean(Y13$HCVRNA)
  ptHCVRNATmp$y14[1] <- mean(Y14$HCVRNA)
  ptHCVRNATmp$y15[1] <- mean(Y15$HCVRNA)
  ptHCVRNATmp$y16[1] <- mean(Y16$HCVRNA)
  ptHCVRNATmp$y17[1] <- mean(Y17$HCVRNA)
  ptHCVRNATmp$y18[1] <- mean(Y18$HCVRNA)
  ptHCVRNATmp$y19[1] <- mean(Y19$HCVRNA)
  ptHCVRNATmp$y20[1] <- mean(Y20$HCVRNA)
  ptHCVRNATmp$y21[1] <- mean(Y21$HCVRNA)
  ptHCVRNATmp$y22[1] <- mean(Y22$HCVRNA)
  ptHCVRNATmp$y23[1] <- mean(Y23$HCVRNA)
  ptHCVRNATmp$y24[1] <- mean(Y24$HCVRNA)
  ptHCVRNATmp$y25[1] <- mean(Y25$HCVRNA)
  ptHCVRNATmp$y26[1] <- mean(Y26$HCVRNA)
  ptHCVRNATmp$y27[1] <- mean(Y27$HCVRNA)
  ptHCVRNATmp$y28[1] <- mean(Y28$HCVRNA)
  ptHCVRNATmp$y29[1] <- mean(Y29$HCVRNA)
  ptHCVRNATmp$y30[1] <- mean(Y30$HCVRNA)
  pTotalHCVRNAG <- rbind(pTotalHCVRNAG, ptHCVRNATmp)
  
  ptOpdNotOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptOpdNotOSTTmp[1,] <- 0
  ptOpdNotOSTTmp$y6[1] <- mean(Y6$OpdNotOST)
  ptOpdNotOSTTmp$y7[1] <- mean(Y7$OpdNotOST)
  ptOpdNotOSTTmp$y8[1] <- mean(Y8$OpdNotOST)
  ptOpdNotOSTTmp$y9[1] <- mean(Y9$OpdNotOST)
  ptOpdNotOSTTmp$y10[1] <- mean(Y10$OpdNotOST)
  ptOpdNotOSTTmp$y11[1] <- mean(Y11$OpdNotOST)
  ptOpdNotOSTTmp$y12[1] <- mean(Y12$OpdNotOST)
  ptOpdNotOSTTmp$y13[1] <- mean(Y13$OpdNotOST)
  ptOpdNotOSTTmp$y14[1] <- mean(Y14$OpdNotOST)
  ptOpdNotOSTTmp$y15[1] <- mean(Y15$OpdNotOST)
  ptOpdNotOSTTmp$y16[1] <- mean(Y16$OpdNotOST)
  ptOpdNotOSTTmp$y17[1] <- mean(Y17$OpdNotOST)
  ptOpdNotOSTTmp$y18[1] <- mean(Y18$OpdNotOST)
  ptOpdNotOSTTmp$y19[1] <- mean(Y19$OpdNotOST)
  ptOpdNotOSTTmp$y20[1] <- mean(Y20$OpdNotOST)
  ptOpdNotOSTTmp$y21[1] <- mean(Y21$OpdNotOST)
  ptOpdNotOSTTmp$y22[1] <- mean(Y22$OpdNotOST)
  ptOpdNotOSTTmp$y23[1] <- mean(Y23$OpdNotOST)
  ptOpdNotOSTTmp$y24[1] <- mean(Y24$OpdNotOST)
  ptOpdNotOSTTmp$y25[1] <- mean(Y25$OpdNotOST)
  ptOpdNotOSTTmp$y26[1] <- mean(Y26$OpdNotOST)
  ptOpdNotOSTTmp$y27[1] <- mean(Y27$OpdNotOST)
  ptOpdNotOSTTmp$y28[1] <- mean(Y28$OpdNotOST)
  ptOpdNotOSTTmp$y29[1] <- mean(Y29$OpdNotOST)
  ptOpdNotOSTTmp$y30[1] <- mean(Y30$OpdNotOST)
  pTotalOpdNotOSTG <- rbind(pTotalOpdNotOSTG, ptOpdNotOSTTmp)
  
  ptReleasedHCVAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVAbTmp[1,] <- 0
  ptReleasedHCVAbTmp$y6[1] <- mean(Y6$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y7[1] <- mean(Y7$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y8[1] <- mean(Y8$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y9[1] <- mean(Y9$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y10[1] <- mean(Y10$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y11[1] <- mean(Y11$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y12[1] <- mean(Y12$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y13[1] <- mean(Y13$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y14[1] <- mean(Y14$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y15[1] <- mean(Y15$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y16[1] <- mean(Y16$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y17[1] <- mean(Y17$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y18[1] <- mean(Y18$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y19[1] <- mean(Y19$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y20[1] <- mean(Y20$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y21[1] <- mean(Y21$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y22[1] <- mean(Y22$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y23[1] <- mean(Y23$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y24[1] <- mean(Y24$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y25[1] <- mean(Y25$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y26[1] <- mean(Y26$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y27[1] <- mean(Y27$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y28[1] <- mean(Y28$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y29[1] <- mean(Y29$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y30[1] <- mean(Y30$ReleasedHCVAb)
  pTotalReleasedHCVAbG <- rbind(pTotalReleasedHCVAbG, ptReleasedHCVAbTmp)
  
  ptReleasedHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVRNATmp[1,] <- 0
  ptReleasedHCVRNATmp$y6[1] <- mean(Y6$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y7[1] <- mean(Y7$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y8[1] <- mean(Y8$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y9[1] <- mean(Y9$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y10[1] <- mean(Y10$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y11[1] <- mean(Y11$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y12[1] <- mean(Y12$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y13[1] <- mean(Y13$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y14[1] <- mean(Y14$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y15[1] <- mean(Y15$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y16[1] <- mean(Y16$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y17[1] <- mean(Y17$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y18[1] <- mean(Y18$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y19[1] <- mean(Y19$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y20[1] <- mean(Y20$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y21[1] <- mean(Y21$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y22[1] <- mean(Y22$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y23[1] <- mean(Y23$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y24[1] <- mean(Y24$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y25[1] <- mean(Y25$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y26[1] <- mean(Y26$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y27[1] <- mean(Y27$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y28[1] <- mean(Y28$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y29[1] <- mean(Y29$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y30[1] <- mean(Y30$ReleasedHCVRNA)
  pTotalReleasedHCVRNAG <- rbind(pTotalReleasedHCVRNAG, ptReleasedHCVRNATmp)
}

#RD
for (var in 1:1)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/Testing/results/outRD_", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
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
  pMinTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMinH <- rbind(pMinH, pMinTmp)
  
  pMedTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMedH <- rbind(pMedH, pMedTmp)
  
  pMaxTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMaxH <- rbind(pMaxH, pMaxTmp)
  
  pTotalTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalH <- rbind(pTotalH, pTotalTmp)
  
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
  pPointTotalH <- rbind(pPointTotalH, pPointTotalTmp)
  
  pReTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pReinfectedH <- rbind(pReinfectedH, pReTmp)
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pNewCasesH <- rbind(pNewCasesH, pNcTmp)
  
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
  pNewCasesSumH <- rbind(pNewCasesSumH, pNcTmp)
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pNcTmp[1,] <- 0
  pNcTmp$y6[1] <- sum(Y6$NCbyNSP)
  pNcTmp$y7[1] <- sum(Y7$NCbyNSP)
  pNcTmp$y8[1] <- sum(Y8$NCbyNSP)
  pNcTmp$y9[1] <- sum(Y9$NCbyNSP)
  pNcTmp$y10[1] <- sum(Y10$NCbyNSP)
  pNcTmp$y11[1] <- sum(Y11$NCbyNSP)
  pNcTmp$y12[1] <- sum(Y12$NCbyNSP)
  pNcTmp$y13[1] <- sum(Y13$NCbyNSP)
  pNcTmp$y14[1] <- sum(Y14$NCbyNSP)
  pNcTmp$y15[1] <- sum(Y15$NCbyNSP)
  pNcTmp$y16[1] <- sum(Y16$NCbyNSP)
  pNcTmp$y17[1] <- sum(Y17$NCbyNSP)
  pNcTmp$y18[1] <- sum(Y18$NCbyNSP)
  pNcTmp$y19[1] <- sum(Y19$NCbyNSP)
  pNcTmp$y20[1] <- sum(Y20$NCbyNSP)
  pNcTmp$y21[1] <- sum(Y21$NCbyNSP)
  pNcTmp$y22[1] <- sum(Y22$NCbyNSP)
  pNcTmp$y23[1] <- sum(Y23$NCbyNSP)
  pNcTmp$y24[1] <- sum(Y24$NCbyNSP)
  pNcTmp$y25[1] <- sum(Y25$NCbyNSP)
  pNcTmp$y26[1] <- sum(Y26$NCbyNSP)
  pNcTmp$y27[1] <- sum(Y27$NCbyNSP)
  pNcTmp$y28[1] <- sum(Y28$NCbyNSP)
  pNcTmp$y29[1] <- sum(Y29$NCbyNSP)
  pNcTmp$y30[1] <- sum(Y30$NCbyNSP)
  pNewCasesNSPSumH <- rbind(pNewCasesNSPSumH, pNcTmp)
  
  pIDUTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalIDUH <- rbind(pTotalIDUH, pIDUTmp)
  
  pPrisonTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pPrisonHCVH <- rbind(pPrisonHCVH, pPrisonTmp)
  
  pOpdTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pOpdH <- rbind(pOpdH, pOpdTmp)
  
  pEverTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pEverIDUH <- rbind(pEverIDUH, pEverTmp)
  
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
  pEverIDUSumH <- rbind(pEverIDUSumH, pEverSumTmp)
  
  pClrTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pClrDH <- rbind(pClrDH, pClrTmp)
  
  ptDAATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalDAAH <- rbind(pTotalDAAH, ptDAATmp)
  
  ptOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalOSTH <- rbind(pTotalOSTH, ptOSTTmp)
  
  ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptNSPTmp[1,] <- 0
  ptNSPTmp$y6[1] <- mean(Y6$totalNSP)
  ptNSPTmp$y7[1] <- mean(Y7$totalNSP)
  ptNSPTmp$y8[1] <- mean(Y8$totalNSP)
  ptNSPTmp$y9[1] <- mean(Y9$totalNSP)
  ptNSPTmp$y10[1] <- mean(Y10$totalNSP)
  ptNSPTmp$y11[1] <- mean(Y11$totalNSP)
  ptNSPTmp$y12[1] <- mean(Y12$totalNSP)
  ptNSPTmp$y13[1] <- mean(Y13$totalNSP)
  ptNSPTmp$y14[1] <- mean(Y14$totalNSP)
  ptNSPTmp$y15[1] <- mean(Y15$totalNSP)
  ptNSPTmp$y16[1] <- mean(Y16$totalNSP)
  ptNSPTmp$y17[1] <- mean(Y17$totalNSP)
  ptNSPTmp$y18[1] <- mean(Y18$totalNSP)
  ptNSPTmp$y19[1] <- mean(Y19$totalNSP)
  ptNSPTmp$y20[1] <- mean(Y20$totalNSP)
  ptNSPTmp$y21[1] <- mean(Y21$totalNSP)
  ptNSPTmp$y22[1] <- mean(Y22$totalNSP)
  ptNSPTmp$y23[1] <- mean(Y23$totalNSP)
  ptNSPTmp$y24[1] <- mean(Y24$totalNSP)
  ptNSPTmp$y25[1] <- mean(Y25$totalNSP)
  ptNSPTmp$y26[1] <- mean(Y26$totalNSP)
  ptNSPTmp$y27[1] <- mean(Y27$totalNSP)
  ptNSPTmp$y28[1] <- mean(Y28$totalNSP)
  ptNSPTmp$y29[1] <- mean(Y29$totalNSP)
  ptNSPTmp$y30[1] <- mean(Y30$totalNSP)
  pTotalNSPH <- rbind(pTotalNSPH, ptNSPTmp)
  
  ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptNSPTmp[1,] <- 0
  ptNSPTmp$y6[1] <- Y6$totalNSP[365]
  ptNSPTmp$y7[1] <- Y7$totalNSP[365]
  ptNSPTmp$y8[1] <- Y8$totalNSP[365]
  ptNSPTmp$y9[1] <- Y9$totalNSP[365]
  ptNSPTmp$y10[1] <- Y10$totalNSP[365]
  ptNSPTmp$y11[1] <- Y11$totalNSP[365]
  ptNSPTmp$y12[1] <- Y12$totalNSP[365]
  ptNSPTmp$y13[1] <- Y13$totalNSP[365]
  ptNSPTmp$y14[1] <- Y14$totalNSP[365]
  ptNSPTmp$y15[1] <- Y15$totalNSP[365]
  ptNSPTmp$y16[1] <- Y16$totalNSP[365]
  ptNSPTmp$y17[1] <- Y17$totalNSP[365]
  ptNSPTmp$y18[1] <- Y18$totalNSP[365]
  ptNSPTmp$y19[1] <- Y19$totalNSP[365]
  ptNSPTmp$y20[1] <- Y20$totalNSP[365]
  ptNSPTmp$y21[1] <- Y21$totalNSP[365]
  ptNSPTmp$y22[1] <- Y22$totalNSP[365]
  ptNSPTmp$y23[1] <- Y23$totalNSP[365]
  ptNSPTmp$y24[1] <- Y24$totalNSP[365]
  ptNSPTmp$y25[1] <- Y25$totalNSP[365]
  ptNSPTmp$y26[1] <- Y26$totalNSP[365]
  ptNSPTmp$y27[1] <- Y27$totalNSP[365]
  ptNSPTmp$y28[1] <- Y28$totalNSP[365]
  ptNSPTmp$y29[1] <- Y29$totalNSP[365]
  ptNSPTmp$y30[1] <- Y30$totalNSP[365]
  pTotalNSPSumH <- rbind(pTotalNSPSumH, ptNSPTmp)
  
  ptHCVeAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeAbTmp[1,] <- 0
  ptHCVeAbTmp$y6[1] <- mean(Y6$HCVeAb)
  ptHCVeAbTmp$y7[1] <- mean(Y7$HCVeAb)
  ptHCVeAbTmp$y8[1] <- mean(Y8$HCVeAb)
  ptHCVeAbTmp$y9[1] <- mean(Y9$HCVeAb)
  ptHCVeAbTmp$y10[1] <- mean(Y10$HCVeAb)
  ptHCVeAbTmp$y11[1] <- mean(Y11$HCVeAb)
  ptHCVeAbTmp$y12[1] <- mean(Y12$HCVeAb)
  ptHCVeAbTmp$y13[1] <- mean(Y13$HCVeAb)
  ptHCVeAbTmp$y14[1] <- mean(Y14$HCVeAb)
  ptHCVeAbTmp$y15[1] <- mean(Y15$HCVeAb)
  ptHCVeAbTmp$y16[1] <- mean(Y16$HCVeAb)
  ptHCVeAbTmp$y17[1] <- mean(Y17$HCVeAb)
  ptHCVeAbTmp$y18[1] <- mean(Y18$HCVeAb)
  ptHCVeAbTmp$y19[1] <- mean(Y19$HCVeAb)
  ptHCVeAbTmp$y20[1] <- mean(Y20$HCVeAb)
  ptHCVeAbTmp$y21[1] <- mean(Y21$HCVeAb)
  ptHCVeAbTmp$y22[1] <- mean(Y22$HCVeAb)
  ptHCVeAbTmp$y23[1] <- mean(Y23$HCVeAb)
  ptHCVeAbTmp$y24[1] <- mean(Y24$HCVeAb)
  ptHCVeAbTmp$y25[1] <- mean(Y25$HCVeAb)
  ptHCVeAbTmp$y26[1] <- mean(Y26$HCVeAb)
  ptHCVeAbTmp$y27[1] <- mean(Y27$HCVeAb)
  ptHCVeAbTmp$y28[1] <- mean(Y28$HCVeAb)
  ptHCVeAbTmp$y29[1] <- mean(Y29$HCVeAb)
  ptHCVeAbTmp$y30[1] <- mean(Y30$HCVeAb)
  pTotalHCVeAbH <- rbind(pTotalHCVeAbH, ptHCVeAbTmp)
  
  ptHCVeRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeRNATmp[1,] <- 0
  ptHCVeRNATmp$y6[1] <- mean(Y6$HCVeAb)
  ptHCVeRNATmp$y7[1] <- mean(Y7$HCVeAb)
  ptHCVeRNATmp$y8[1] <- mean(Y8$HCVeAb)
  ptHCVeRNATmp$y9[1] <- mean(Y9$HCVeAb)
  ptHCVeRNATmp$y10[1] <- mean(Y10$HCVeAb)
  ptHCVeRNATmp$y11[1] <- mean(Y11$HCVeAb)
  ptHCVeRNATmp$y12[1] <- mean(Y12$HCVeAb)
  ptHCVeRNATmp$y13[1] <- mean(Y13$HCVeAb)
  ptHCVeRNATmp$y14[1] <- mean(Y14$HCVeAb)
  ptHCVeRNATmp$y15[1] <- mean(Y15$HCVeAb)
  ptHCVeRNATmp$y16[1] <- mean(Y16$HCVeAb)
  ptHCVeRNATmp$y17[1] <- mean(Y17$HCVeAb)
  ptHCVeRNATmp$y18[1] <- mean(Y18$HCVeAb)
  ptHCVeRNATmp$y19[1] <- mean(Y19$HCVeAb)
  ptHCVeRNATmp$y20[1] <- mean(Y20$HCVeAb)
  ptHCVeRNATmp$y21[1] <- mean(Y21$HCVeAb)
  ptHCVeRNATmp$y22[1] <- mean(Y22$HCVeAb)
  ptHCVeRNATmp$y23[1] <- mean(Y23$HCVeAb)
  ptHCVeRNATmp$y24[1] <- mean(Y24$HCVeAb)
  ptHCVeRNATmp$y25[1] <- mean(Y25$HCVeAb)
  ptHCVeRNATmp$y26[1] <- mean(Y26$HCVeAb)
  ptHCVeRNATmp$y27[1] <- mean(Y27$HCVeAb)
  ptHCVeRNATmp$y28[1] <- mean(Y28$HCVeAb)
  ptHCVeRNATmp$y29[1] <- mean(Y29$HCVeAb)
  ptHCVeRNATmp$y30[1] <- mean(Y30$HCVeAb)
  pTotalHCVeRNAH <- rbind(pTotalHCVeRNAH, ptHCVeRNATmp)
  
  ptHCVabTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVabTmp[1,] <- 0
  ptHCVabTmp$y6[1] <- mean(Y6$HCVab)
  ptHCVabTmp$y7[1] <- mean(Y7$HCVab)
  ptHCVabTmp$y8[1] <- mean(Y8$HCVab)
  ptHCVabTmp$y9[1] <- mean(Y9$HCVab)
  ptHCVabTmp$y10[1] <- mean(Y10$HCVab)
  ptHCVabTmp$y11[1] <- mean(Y11$HCVab)
  ptHCVabTmp$y12[1] <- mean(Y12$HCVab)
  ptHCVabTmp$y13[1] <- mean(Y13$HCVab)
  ptHCVabTmp$y14[1] <- mean(Y14$HCVab)
  ptHCVabTmp$y15[1] <- mean(Y15$HCVab)
  ptHCVabTmp$y16[1] <- mean(Y16$HCVab)
  ptHCVabTmp$y17[1] <- mean(Y17$HCVab)
  ptHCVabTmp$y18[1] <- mean(Y18$HCVab)
  ptHCVabTmp$y19[1] <- mean(Y19$HCVab)
  ptHCVabTmp$y20[1] <- mean(Y20$HCVab)
  ptHCVabTmp$y21[1] <- mean(Y21$HCVab)
  ptHCVabTmp$y22[1] <- mean(Y22$HCVab)
  ptHCVabTmp$y23[1] <- mean(Y23$HCVab)
  ptHCVabTmp$y24[1] <- mean(Y24$HCVab)
  ptHCVabTmp$y25[1] <- mean(Y25$HCVab)
  ptHCVabTmp$y26[1] <- mean(Y26$HCVab)
  ptHCVabTmp$y27[1] <- mean(Y27$HCVab)
  ptHCVabTmp$y28[1] <- mean(Y28$HCVab)
  ptHCVabTmp$y29[1] <- mean(Y29$HCVab)
  ptHCVabTmp$y30[1] <- mean(Y30$HCVab)
  pTotalHCVabH <- rbind(pTotalHCVabH, ptHCVabTmp)
  
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
  pPointHCVabH <- rbind(pPointHCVabH, pPointHCVabTmp)
  
  ptHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVRNATmp[1,] <- 0
  ptHCVRNATmp$y6[1] <- mean(Y6$HCVRNA)
  ptHCVRNATmp$y7[1] <- mean(Y7$HCVRNA)
  ptHCVRNATmp$y8[1] <- mean(Y8$HCVRNA)
  ptHCVRNATmp$y9[1] <- mean(Y9$HCVRNA)
  ptHCVRNATmp$y10[1] <- mean(Y10$HCVRNA)
  ptHCVRNATmp$y11[1] <- mean(Y11$HCVRNA)
  ptHCVRNATmp$y12[1] <- mean(Y12$HCVRNA)
  ptHCVRNATmp$y13[1] <- mean(Y13$HCVRNA)
  ptHCVRNATmp$y14[1] <- mean(Y14$HCVRNA)
  ptHCVRNATmp$y15[1] <- mean(Y15$HCVRNA)
  ptHCVRNATmp$y16[1] <- mean(Y16$HCVRNA)
  ptHCVRNATmp$y17[1] <- mean(Y17$HCVRNA)
  ptHCVRNATmp$y18[1] <- mean(Y18$HCVRNA)
  ptHCVRNATmp$y19[1] <- mean(Y19$HCVRNA)
  ptHCVRNATmp$y20[1] <- mean(Y20$HCVRNA)
  ptHCVRNATmp$y21[1] <- mean(Y21$HCVRNA)
  ptHCVRNATmp$y22[1] <- mean(Y22$HCVRNA)
  ptHCVRNATmp$y23[1] <- mean(Y23$HCVRNA)
  ptHCVRNATmp$y24[1] <- mean(Y24$HCVRNA)
  ptHCVRNATmp$y25[1] <- mean(Y25$HCVRNA)
  ptHCVRNATmp$y26[1] <- mean(Y26$HCVRNA)
  ptHCVRNATmp$y27[1] <- mean(Y27$HCVRNA)
  ptHCVRNATmp$y28[1] <- mean(Y28$HCVRNA)
  ptHCVRNATmp$y29[1] <- mean(Y29$HCVRNA)
  ptHCVRNATmp$y30[1] <- mean(Y30$HCVRNA)
  pTotalHCVRNAH <- rbind(pTotalHCVRNAH, ptHCVRNATmp)
  
  ptOpdNotOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptOpdNotOSTTmp[1,] <- 0
  ptOpdNotOSTTmp$y6[1] <- mean(Y6$OpdNotOST)
  ptOpdNotOSTTmp$y7[1] <- mean(Y7$OpdNotOST)
  ptOpdNotOSTTmp$y8[1] <- mean(Y8$OpdNotOST)
  ptOpdNotOSTTmp$y9[1] <- mean(Y9$OpdNotOST)
  ptOpdNotOSTTmp$y10[1] <- mean(Y10$OpdNotOST)
  ptOpdNotOSTTmp$y11[1] <- mean(Y11$OpdNotOST)
  ptOpdNotOSTTmp$y12[1] <- mean(Y12$OpdNotOST)
  ptOpdNotOSTTmp$y13[1] <- mean(Y13$OpdNotOST)
  ptOpdNotOSTTmp$y14[1] <- mean(Y14$OpdNotOST)
  ptOpdNotOSTTmp$y15[1] <- mean(Y15$OpdNotOST)
  ptOpdNotOSTTmp$y16[1] <- mean(Y16$OpdNotOST)
  ptOpdNotOSTTmp$y17[1] <- mean(Y17$OpdNotOST)
  ptOpdNotOSTTmp$y18[1] <- mean(Y18$OpdNotOST)
  ptOpdNotOSTTmp$y19[1] <- mean(Y19$OpdNotOST)
  ptOpdNotOSTTmp$y20[1] <- mean(Y20$OpdNotOST)
  ptOpdNotOSTTmp$y21[1] <- mean(Y21$OpdNotOST)
  ptOpdNotOSTTmp$y22[1] <- mean(Y22$OpdNotOST)
  ptOpdNotOSTTmp$y23[1] <- mean(Y23$OpdNotOST)
  ptOpdNotOSTTmp$y24[1] <- mean(Y24$OpdNotOST)
  ptOpdNotOSTTmp$y25[1] <- mean(Y25$OpdNotOST)
  ptOpdNotOSTTmp$y26[1] <- mean(Y26$OpdNotOST)
  ptOpdNotOSTTmp$y27[1] <- mean(Y27$OpdNotOST)
  ptOpdNotOSTTmp$y28[1] <- mean(Y28$OpdNotOST)
  ptOpdNotOSTTmp$y29[1] <- mean(Y29$OpdNotOST)
  ptOpdNotOSTTmp$y30[1] <- mean(Y30$OpdNotOST)
  pTotalOpdNotOSTH <- rbind(pTotalOpdNotOSTH, ptOpdNotOSTTmp)
  
  ptReleasedHCVAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVAbTmp[1,] <- 0
  ptReleasedHCVAbTmp$y6[1] <- mean(Y6$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y7[1] <- mean(Y7$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y8[1] <- mean(Y8$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y9[1] <- mean(Y9$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y10[1] <- mean(Y10$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y11[1] <- mean(Y11$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y12[1] <- mean(Y12$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y13[1] <- mean(Y13$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y14[1] <- mean(Y14$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y15[1] <- mean(Y15$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y16[1] <- mean(Y16$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y17[1] <- mean(Y17$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y18[1] <- mean(Y18$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y19[1] <- mean(Y19$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y20[1] <- mean(Y20$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y21[1] <- mean(Y21$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y22[1] <- mean(Y22$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y23[1] <- mean(Y23$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y24[1] <- mean(Y24$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y25[1] <- mean(Y25$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y26[1] <- mean(Y26$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y27[1] <- mean(Y27$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y28[1] <- mean(Y28$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y29[1] <- mean(Y29$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y30[1] <- mean(Y30$ReleasedHCVAb)
  pTotalReleasedHCVAbH <- rbind(pTotalReleasedHCVAbH, ptReleasedHCVAbTmp)
  
  ptReleasedHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVRNATmp[1,] <- 0
  ptReleasedHCVRNATmp$y6[1] <- mean(Y6$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y7[1] <- mean(Y7$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y8[1] <- mean(Y8$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y9[1] <- mean(Y9$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y10[1] <- mean(Y10$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y11[1] <- mean(Y11$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y12[1] <- mean(Y12$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y13[1] <- mean(Y13$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y14[1] <- mean(Y14$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y15[1] <- mean(Y15$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y16[1] <- mean(Y16$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y17[1] <- mean(Y17$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y18[1] <- mean(Y18$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y19[1] <- mean(Y19$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y20[1] <- mean(Y20$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y21[1] <- mean(Y21$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y22[1] <- mean(Y22$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y23[1] <- mean(Y23$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y24[1] <- mean(Y24$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y25[1] <- mean(Y25$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y26[1] <- mean(Y26$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y27[1] <- mean(Y27$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y28[1] <- mean(Y28$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y29[1] <- mean(Y29$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y30[1] <- mean(Y30$ReleasedHCVRNA)
  pTotalReleasedHCVRNAH <- rbind(pTotalReleasedHCVRNAH, ptReleasedHCVRNATmp)
}

#RDO
for (var in 1:1)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/Testing/results/outRDO_", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCVAb", "ReleasedHCVRNA", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "OpdNotOST", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "OSTremaining", "HCVeRNA", "HCVeAb", "NewEntry", "HCVab", "HCVRNA", "AveStay", "NCbyOST")
  
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
  pMinTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMinI <- rbind(pMinI, pMinTmp)
  
  pMedTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMedI <- rbind(pMedI, pMedTmp)
  
  pMaxTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMaxI <- rbind(pMaxI, pMaxTmp)
  
  pTotalTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalI <- rbind(pTotalI, pTotalTmp)
  
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
  pPointTotalI <- rbind(pPointTotalI, pPointTotalTmp)
  
  pReTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pReinfectedI <- rbind(pReinfectedI, pReTmp)
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pNewCasesI <- rbind(pNewCasesI, pNcTmp)
  
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
  pNewCasesSumI <- rbind(pNewCasesSumI, pNcTmp)
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pNcTmp[1,] <- 0
  pNcTmp$y6[1] <- sum(Y6$NCbyNSP)
  pNcTmp$y7[1] <- sum(Y7$NCbyNSP)
  pNcTmp$y8[1] <- sum(Y8$NCbyNSP)
  pNcTmp$y9[1] <- sum(Y9$NCbyNSP)
  pNcTmp$y10[1] <- sum(Y10$NCbyNSP)
  pNcTmp$y11[1] <- sum(Y11$NCbyNSP)
  pNcTmp$y12[1] <- sum(Y12$NCbyNSP)
  pNcTmp$y13[1] <- sum(Y13$NCbyNSP)
  pNcTmp$y14[1] <- sum(Y14$NCbyNSP)
  pNcTmp$y15[1] <- sum(Y15$NCbyNSP)
  pNcTmp$y16[1] <- sum(Y16$NCbyNSP)
  pNcTmp$y17[1] <- sum(Y17$NCbyNSP)
  pNcTmp$y18[1] <- sum(Y18$NCbyNSP)
  pNcTmp$y19[1] <- sum(Y19$NCbyNSP)
  pNcTmp$y20[1] <- sum(Y20$NCbyNSP)
  pNcTmp$y21[1] <- sum(Y21$NCbyNSP)
  pNcTmp$y22[1] <- sum(Y22$NCbyNSP)
  pNcTmp$y23[1] <- sum(Y23$NCbyNSP)
  pNcTmp$y24[1] <- sum(Y24$NCbyNSP)
  pNcTmp$y25[1] <- sum(Y25$NCbyNSP)
  pNcTmp$y26[1] <- sum(Y26$NCbyNSP)
  pNcTmp$y27[1] <- sum(Y27$NCbyNSP)
  pNcTmp$y28[1] <- sum(Y28$NCbyNSP)
  pNcTmp$y29[1] <- sum(Y29$NCbyNSP)
  pNcTmp$y30[1] <- sum(Y30$NCbyNSP)
  pNewCasesNSPSumI <- rbind(pNewCasesNSPSumI, pNcTmp)
  
  pIDUTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalIDUI <- rbind(pTotalIDUI, pIDUTmp)
  
  pPrisonTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pPrisonHCVI <- rbind(pPrisonHCVI, pPrisonTmp)
  
  pOpdTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pOpdI <- rbind(pOpdI, pOpdTmp)
  
  pEverTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pEverIDUI <- rbind(pEverIDUI, pEverTmp)
  
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
  pEverIDUSumI <- rbind(pEverIDUSumI, pEverSumTmp)
  
  pClrTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pClrDI <- rbind(pClrDI, pClrTmp)
  
  ptDAATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalDAAI <- rbind(pTotalDAAI, ptDAATmp)
  
  ptOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalOSTI <- rbind(pTotalOSTI, ptOSTTmp)
  
  ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptNSPTmp[1,] <- 0
  ptNSPTmp$y6[1] <- mean(Y6$totalNSP)
  ptNSPTmp$y7[1] <- mean(Y7$totalNSP)
  ptNSPTmp$y8[1] <- mean(Y8$totalNSP)
  ptNSPTmp$y9[1] <- mean(Y9$totalNSP)
  ptNSPTmp$y10[1] <- mean(Y10$totalNSP)
  ptNSPTmp$y11[1] <- mean(Y11$totalNSP)
  ptNSPTmp$y12[1] <- mean(Y12$totalNSP)
  ptNSPTmp$y13[1] <- mean(Y13$totalNSP)
  ptNSPTmp$y14[1] <- mean(Y14$totalNSP)
  ptNSPTmp$y15[1] <- mean(Y15$totalNSP)
  ptNSPTmp$y16[1] <- mean(Y16$totalNSP)
  ptNSPTmp$y17[1] <- mean(Y17$totalNSP)
  ptNSPTmp$y18[1] <- mean(Y18$totalNSP)
  ptNSPTmp$y19[1] <- mean(Y19$totalNSP)
  ptNSPTmp$y20[1] <- mean(Y20$totalNSP)
  ptNSPTmp$y21[1] <- mean(Y21$totalNSP)
  ptNSPTmp$y22[1] <- mean(Y22$totalNSP)
  ptNSPTmp$y23[1] <- mean(Y23$totalNSP)
  ptNSPTmp$y24[1] <- mean(Y24$totalNSP)
  ptNSPTmp$y25[1] <- mean(Y25$totalNSP)
  ptNSPTmp$y26[1] <- mean(Y26$totalNSP)
  ptNSPTmp$y27[1] <- mean(Y27$totalNSP)
  ptNSPTmp$y28[1] <- mean(Y28$totalNSP)
  ptNSPTmp$y29[1] <- mean(Y29$totalNSP)
  ptNSPTmp$y30[1] <- mean(Y30$totalNSP)
  pTotalNSPI <- rbind(pTotalNSPI, ptNSPTmp)
  
  ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptNSPTmp[1,] <- 0
  ptNSPTmp$y6[1] <- Y6$totalNSP[365]
  ptNSPTmp$y7[1] <- Y7$totalNSP[365]
  ptNSPTmp$y8[1] <- Y8$totalNSP[365]
  ptNSPTmp$y9[1] <- Y9$totalNSP[365]
  ptNSPTmp$y10[1] <- Y10$totalNSP[365]
  ptNSPTmp$y11[1] <- Y11$totalNSP[365]
  ptNSPTmp$y12[1] <- Y12$totalNSP[365]
  ptNSPTmp$y13[1] <- Y13$totalNSP[365]
  ptNSPTmp$y14[1] <- Y14$totalNSP[365]
  ptNSPTmp$y15[1] <- Y15$totalNSP[365]
  ptNSPTmp$y16[1] <- Y16$totalNSP[365]
  ptNSPTmp$y17[1] <- Y17$totalNSP[365]
  ptNSPTmp$y18[1] <- Y18$totalNSP[365]
  ptNSPTmp$y19[1] <- Y19$totalNSP[365]
  ptNSPTmp$y20[1] <- Y20$totalNSP[365]
  ptNSPTmp$y21[1] <- Y21$totalNSP[365]
  ptNSPTmp$y22[1] <- Y22$totalNSP[365]
  ptNSPTmp$y23[1] <- Y23$totalNSP[365]
  ptNSPTmp$y24[1] <- Y24$totalNSP[365]
  ptNSPTmp$y25[1] <- Y25$totalNSP[365]
  ptNSPTmp$y26[1] <- Y26$totalNSP[365]
  ptNSPTmp$y27[1] <- Y27$totalNSP[365]
  ptNSPTmp$y28[1] <- Y28$totalNSP[365]
  ptNSPTmp$y29[1] <- Y29$totalNSP[365]
  ptNSPTmp$y30[1] <- Y30$totalNSP[365]
  pTotalNSPSumI <- rbind(pTotalNSPSumI, ptNSPTmp)
  
  ptHCVeAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeAbTmp[1,] <- 0
  ptHCVeAbTmp$y6[1] <- mean(Y6$HCVeAb)
  ptHCVeAbTmp$y7[1] <- mean(Y7$HCVeAb)
  ptHCVeAbTmp$y8[1] <- mean(Y8$HCVeAb)
  ptHCVeAbTmp$y9[1] <- mean(Y9$HCVeAb)
  ptHCVeAbTmp$y10[1] <- mean(Y10$HCVeAb)
  ptHCVeAbTmp$y11[1] <- mean(Y11$HCVeAb)
  ptHCVeAbTmp$y12[1] <- mean(Y12$HCVeAb)
  ptHCVeAbTmp$y13[1] <- mean(Y13$HCVeAb)
  ptHCVeAbTmp$y14[1] <- mean(Y14$HCVeAb)
  ptHCVeAbTmp$y15[1] <- mean(Y15$HCVeAb)
  ptHCVeAbTmp$y16[1] <- mean(Y16$HCVeAb)
  ptHCVeAbTmp$y17[1] <- mean(Y17$HCVeAb)
  ptHCVeAbTmp$y18[1] <- mean(Y18$HCVeAb)
  ptHCVeAbTmp$y19[1] <- mean(Y19$HCVeAb)
  ptHCVeAbTmp$y20[1] <- mean(Y20$HCVeAb)
  ptHCVeAbTmp$y21[1] <- mean(Y21$HCVeAb)
  ptHCVeAbTmp$y22[1] <- mean(Y22$HCVeAb)
  ptHCVeAbTmp$y23[1] <- mean(Y23$HCVeAb)
  ptHCVeAbTmp$y24[1] <- mean(Y24$HCVeAb)
  ptHCVeAbTmp$y25[1] <- mean(Y25$HCVeAb)
  ptHCVeAbTmp$y26[1] <- mean(Y26$HCVeAb)
  ptHCVeAbTmp$y27[1] <- mean(Y27$HCVeAb)
  ptHCVeAbTmp$y28[1] <- mean(Y28$HCVeAb)
  ptHCVeAbTmp$y29[1] <- mean(Y29$HCVeAb)
  ptHCVeAbTmp$y30[1] <- mean(Y30$HCVeAb)
  pTotalHCVeAbI <- rbind(pTotalHCVeAbI, ptHCVeAbTmp)
  
  ptHCVeRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeRNATmp[1,] <- 0
  ptHCVeRNATmp$y6[1] <- mean(Y6$HCVeAb)
  ptHCVeRNATmp$y7[1] <- mean(Y7$HCVeAb)
  ptHCVeRNATmp$y8[1] <- mean(Y8$HCVeAb)
  ptHCVeRNATmp$y9[1] <- mean(Y9$HCVeAb)
  ptHCVeRNATmp$y10[1] <- mean(Y10$HCVeAb)
  ptHCVeRNATmp$y11[1] <- mean(Y11$HCVeAb)
  ptHCVeRNATmp$y12[1] <- mean(Y12$HCVeAb)
  ptHCVeRNATmp$y13[1] <- mean(Y13$HCVeAb)
  ptHCVeRNATmp$y14[1] <- mean(Y14$HCVeAb)
  ptHCVeRNATmp$y15[1] <- mean(Y15$HCVeAb)
  ptHCVeRNATmp$y16[1] <- mean(Y16$HCVeAb)
  ptHCVeRNATmp$y17[1] <- mean(Y17$HCVeAb)
  ptHCVeRNATmp$y18[1] <- mean(Y18$HCVeAb)
  ptHCVeRNATmp$y19[1] <- mean(Y19$HCVeAb)
  ptHCVeRNATmp$y20[1] <- mean(Y20$HCVeAb)
  ptHCVeRNATmp$y21[1] <- mean(Y21$HCVeAb)
  ptHCVeRNATmp$y22[1] <- mean(Y22$HCVeAb)
  ptHCVeRNATmp$y23[1] <- mean(Y23$HCVeAb)
  ptHCVeRNATmp$y24[1] <- mean(Y24$HCVeAb)
  ptHCVeRNATmp$y25[1] <- mean(Y25$HCVeAb)
  ptHCVeRNATmp$y26[1] <- mean(Y26$HCVeAb)
  ptHCVeRNATmp$y27[1] <- mean(Y27$HCVeAb)
  ptHCVeRNATmp$y28[1] <- mean(Y28$HCVeAb)
  ptHCVeRNATmp$y29[1] <- mean(Y29$HCVeAb)
  ptHCVeRNATmp$y30[1] <- mean(Y30$HCVeAb)
  pTotalHCVeRNAI <- rbind(pTotalHCVeRNAI, ptHCVeRNATmp)
  
  ptHCVabTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVabTmp[1,] <- 0
  ptHCVabTmp$y6[1] <- mean(Y6$HCVab)
  ptHCVabTmp$y7[1] <- mean(Y7$HCVab)
  ptHCVabTmp$y8[1] <- mean(Y8$HCVab)
  ptHCVabTmp$y9[1] <- mean(Y9$HCVab)
  ptHCVabTmp$y10[1] <- mean(Y10$HCVab)
  ptHCVabTmp$y11[1] <- mean(Y11$HCVab)
  ptHCVabTmp$y12[1] <- mean(Y12$HCVab)
  ptHCVabTmp$y13[1] <- mean(Y13$HCVab)
  ptHCVabTmp$y14[1] <- mean(Y14$HCVab)
  ptHCVabTmp$y15[1] <- mean(Y15$HCVab)
  ptHCVabTmp$y16[1] <- mean(Y16$HCVab)
  ptHCVabTmp$y17[1] <- mean(Y17$HCVab)
  ptHCVabTmp$y18[1] <- mean(Y18$HCVab)
  ptHCVabTmp$y19[1] <- mean(Y19$HCVab)
  ptHCVabTmp$y20[1] <- mean(Y20$HCVab)
  ptHCVabTmp$y21[1] <- mean(Y21$HCVab)
  ptHCVabTmp$y22[1] <- mean(Y22$HCVab)
  ptHCVabTmp$y23[1] <- mean(Y23$HCVab)
  ptHCVabTmp$y24[1] <- mean(Y24$HCVab)
  ptHCVabTmp$y25[1] <- mean(Y25$HCVab)
  ptHCVabTmp$y26[1] <- mean(Y26$HCVab)
  ptHCVabTmp$y27[1] <- mean(Y27$HCVab)
  ptHCVabTmp$y28[1] <- mean(Y28$HCVab)
  ptHCVabTmp$y29[1] <- mean(Y29$HCVab)
  ptHCVabTmp$y30[1] <- mean(Y30$HCVab)
  pTotalHCVabI <- rbind(pTotalHCVabI, ptHCVabTmp)
  
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
  pPointHCVabI <- rbind(pPointHCVabI, pPointHCVabTmp)
  
  ptHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVRNATmp[1,] <- 0
  ptHCVRNATmp$y6[1] <- mean(Y6$HCVRNA)
  ptHCVRNATmp$y7[1] <- mean(Y7$HCVRNA)
  ptHCVRNATmp$y8[1] <- mean(Y8$HCVRNA)
  ptHCVRNATmp$y9[1] <- mean(Y9$HCVRNA)
  ptHCVRNATmp$y10[1] <- mean(Y10$HCVRNA)
  ptHCVRNATmp$y11[1] <- mean(Y11$HCVRNA)
  ptHCVRNATmp$y12[1] <- mean(Y12$HCVRNA)
  ptHCVRNATmp$y13[1] <- mean(Y13$HCVRNA)
  ptHCVRNATmp$y14[1] <- mean(Y14$HCVRNA)
  ptHCVRNATmp$y15[1] <- mean(Y15$HCVRNA)
  ptHCVRNATmp$y16[1] <- mean(Y16$HCVRNA)
  ptHCVRNATmp$y17[1] <- mean(Y17$HCVRNA)
  ptHCVRNATmp$y18[1] <- mean(Y18$HCVRNA)
  ptHCVRNATmp$y19[1] <- mean(Y19$HCVRNA)
  ptHCVRNATmp$y20[1] <- mean(Y20$HCVRNA)
  ptHCVRNATmp$y21[1] <- mean(Y21$HCVRNA)
  ptHCVRNATmp$y22[1] <- mean(Y22$HCVRNA)
  ptHCVRNATmp$y23[1] <- mean(Y23$HCVRNA)
  ptHCVRNATmp$y24[1] <- mean(Y24$HCVRNA)
  ptHCVRNATmp$y25[1] <- mean(Y25$HCVRNA)
  ptHCVRNATmp$y26[1] <- mean(Y26$HCVRNA)
  ptHCVRNATmp$y27[1] <- mean(Y27$HCVRNA)
  ptHCVRNATmp$y28[1] <- mean(Y28$HCVRNA)
  ptHCVRNATmp$y29[1] <- mean(Y29$HCVRNA)
  ptHCVRNATmp$y30[1] <- mean(Y30$HCVRNA)
  pTotalHCVRNAI <- rbind(pTotalHCVRNAI, ptHCVRNATmp)
  
  ptOpdNotOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptOpdNotOSTTmp[1,] <- 0
  ptOpdNotOSTTmp$y6[1] <- mean(Y6$OpdNotOST)
  ptOpdNotOSTTmp$y7[1] <- mean(Y7$OpdNotOST)
  ptOpdNotOSTTmp$y8[1] <- mean(Y8$OpdNotOST)
  ptOpdNotOSTTmp$y9[1] <- mean(Y9$OpdNotOST)
  ptOpdNotOSTTmp$y10[1] <- mean(Y10$OpdNotOST)
  ptOpdNotOSTTmp$y11[1] <- mean(Y11$OpdNotOST)
  ptOpdNotOSTTmp$y12[1] <- mean(Y12$OpdNotOST)
  ptOpdNotOSTTmp$y13[1] <- mean(Y13$OpdNotOST)
  ptOpdNotOSTTmp$y14[1] <- mean(Y14$OpdNotOST)
  ptOpdNotOSTTmp$y15[1] <- mean(Y15$OpdNotOST)
  ptOpdNotOSTTmp$y16[1] <- mean(Y16$OpdNotOST)
  ptOpdNotOSTTmp$y17[1] <- mean(Y17$OpdNotOST)
  ptOpdNotOSTTmp$y18[1] <- mean(Y18$OpdNotOST)
  ptOpdNotOSTTmp$y19[1] <- mean(Y19$OpdNotOST)
  ptOpdNotOSTTmp$y20[1] <- mean(Y20$OpdNotOST)
  ptOpdNotOSTTmp$y21[1] <- mean(Y21$OpdNotOST)
  ptOpdNotOSTTmp$y22[1] <- mean(Y22$OpdNotOST)
  ptOpdNotOSTTmp$y23[1] <- mean(Y23$OpdNotOST)
  ptOpdNotOSTTmp$y24[1] <- mean(Y24$OpdNotOST)
  ptOpdNotOSTTmp$y25[1] <- mean(Y25$OpdNotOST)
  ptOpdNotOSTTmp$y26[1] <- mean(Y26$OpdNotOST)
  ptOpdNotOSTTmp$y27[1] <- mean(Y27$OpdNotOST)
  ptOpdNotOSTTmp$y28[1] <- mean(Y28$OpdNotOST)
  ptOpdNotOSTTmp$y29[1] <- mean(Y29$OpdNotOST)
  ptOpdNotOSTTmp$y30[1] <- mean(Y30$OpdNotOST)
  pTotalOpdNotOSTI <- rbind(pTotalOpdNotOSTI, ptOpdNotOSTTmp)
  
  ptReleasedHCVAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVAbTmp[1,] <- 0
  ptReleasedHCVAbTmp$y6[1] <- mean(Y6$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y7[1] <- mean(Y7$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y8[1] <- mean(Y8$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y9[1] <- mean(Y9$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y10[1] <- mean(Y10$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y11[1] <- mean(Y11$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y12[1] <- mean(Y12$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y13[1] <- mean(Y13$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y14[1] <- mean(Y14$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y15[1] <- mean(Y15$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y16[1] <- mean(Y16$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y17[1] <- mean(Y17$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y18[1] <- mean(Y18$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y19[1] <- mean(Y19$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y20[1] <- mean(Y20$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y21[1] <- mean(Y21$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y22[1] <- mean(Y22$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y23[1] <- mean(Y23$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y24[1] <- mean(Y24$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y25[1] <- mean(Y25$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y26[1] <- mean(Y26$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y27[1] <- mean(Y27$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y28[1] <- mean(Y28$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y29[1] <- mean(Y29$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y30[1] <- mean(Y30$ReleasedHCVAb)
  pTotalReleasedHCVAbI <- rbind(pTotalReleasedHCVAbI, ptReleasedHCVAbTmp)
  
  ptReleasedHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVRNATmp[1,] <- 0
  ptReleasedHCVRNATmp$y6[1] <- mean(Y6$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y7[1] <- mean(Y7$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y8[1] <- mean(Y8$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y9[1] <- mean(Y9$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y10[1] <- mean(Y10$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y11[1] <- mean(Y11$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y12[1] <- mean(Y12$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y13[1] <- mean(Y13$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y14[1] <- mean(Y14$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y15[1] <- mean(Y15$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y16[1] <- mean(Y16$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y17[1] <- mean(Y17$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y18[1] <- mean(Y18$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y19[1] <- mean(Y19$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y20[1] <- mean(Y20$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y21[1] <- mean(Y21$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y22[1] <- mean(Y22$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y23[1] <- mean(Y23$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y24[1] <- mean(Y24$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y25[1] <- mean(Y25$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y26[1] <- mean(Y26$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y27[1] <- mean(Y27$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y28[1] <- mean(Y28$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y29[1] <- mean(Y29$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y30[1] <- mean(Y30$ReleasedHCVRNA)
  pTotalReleasedHCVRNAI <- rbind(pTotalReleasedHCVRNAI, ptReleasedHCVRNATmp)
}

#RDON
for (var in 1:1)
{
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/dailyMoves", var, ".xls", sep="")
  #fileName <- paste("P:/SERP/Modelling/Evaluation_Modelling/HCV prison model/Results/outSet25.xls", sep="")
  fileName <- paste("/Users/neilarvinbretana/Desktop/Scenarios/Testing/results/outNSP_", var, ".xls", sep="")
  tempFile <- read.csv(fileName, sep="\t",header=TRUE)
  
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCV", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12")
  #colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCVAb", "ReleasedHCVRNA", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "OpdNotOST", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "OSTremaining", "HCVeRNA", "HCVeAb", "NewEntry", "HCVab", "HCVRNA", "AveStay", "NSPRemaining", "totalNSP", "NCbyNSP")
  colnames(tempFile) <- c("TIME", "C0", "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10", "C11", "Pmin0", "Pmin1", "Pmin2", "Pmin3", "Pmin4", "Pmin5", "Pmin6", "Pmin7", "Pmin8", "Pmin9", "Pmin10", "Pmin11", "Pmed0", "Pmed1", "Pmed2", "Pmed3", "Pmed4", "Pmed5", "Pmed6", "Pmed7", "Pmed8", "Pmed9", "Pmed10", "Pmed11", "Pmax0", "Pmax1", "Pmax2", "Pmax3", "Pmax4", "Pmax5", "Pmax6", "Pmax7", "Pmax8", "Pmax9", "Pmax10", "Pmax11", "NewCases", "PrisonHCV", "COMMUNITYHCV", "RELEASED", "ReleasedHCVAb", "ReleasedHCVRNA", "ReleasedHCVCom", "ReleasedHCVPris","ClearHCV", "Death", "DeathHCV", "DeathHCVCom", "DeathHCVPris", "TotalPrisonPop", "E0", "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10", "E11", "E12", "E13", "E14", "E15", "E16", "E17", "E18", "E19", "E20", "E21", "E22", "E23", "E24", "E25", "E26", "R0", "R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10", "R11", "R12", "everIDU", "OPD", "OpdNotOST", "totalOST", "totalDAA", "totalClrDAA", "reinfected", "DAAremaining", "OSTremaining", "HCVeRNA", "HCVeAb", "NewEntry", "HCVab", "HCVRNA", "AveStay", "NSPRemaining", "totalNSP", "NCbyNSP")
  
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
  pMinTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMinJ <- rbind(pMinJ, pMinTmp)
  
  pMedTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMedJ <- rbind(pMedJ, pMedTmp)
  
  pMaxTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pMaxJ <- rbind(pMaxJ, pMaxTmp)
  
  pTotalTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalJ <- rbind(pTotalJ, pTotalTmp)
  
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
  pPointTotalJ <- rbind(pPointTotalJ, pPointTotalTmp)
  
  pReTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pReinfectedJ <- rbind(pReinfectedJ, pReTmp)
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pNewCasesJ <- rbind(pNewCasesJ, pNcTmp)
  
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
  pNewCasesSumJ <- rbind(pNewCasesSumJ, pNcTmp)
  
  pNcTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  pNcTmp[1,] <- 0
  pNcTmp$y6[1] <- sum(Y6$NCbyNSP)
  pNcTmp$y7[1] <- sum(Y7$NCbyNSP)
  pNcTmp$y8[1] <- sum(Y8$NCbyNSP)
  pNcTmp$y9[1] <- sum(Y9$NCbyNSP)
  pNcTmp$y10[1] <- sum(Y10$NCbyNSP)
  pNcTmp$y11[1] <- sum(Y11$NCbyNSP)
  pNcTmp$y12[1] <- sum(Y12$NCbyNSP)
  pNcTmp$y13[1] <- sum(Y13$NCbyNSP)
  pNcTmp$y14[1] <- sum(Y14$NCbyNSP)
  pNcTmp$y15[1] <- sum(Y15$NCbyNSP)
  pNcTmp$y16[1] <- sum(Y16$NCbyNSP)
  pNcTmp$y17[1] <- sum(Y17$NCbyNSP)
  pNcTmp$y18[1] <- sum(Y18$NCbyNSP)
  pNcTmp$y19[1] <- sum(Y19$NCbyNSP)
  pNcTmp$y20[1] <- sum(Y20$NCbyNSP)
  pNcTmp$y21[1] <- sum(Y21$NCbyNSP)
  pNcTmp$y22[1] <- sum(Y22$NCbyNSP)
  pNcTmp$y23[1] <- sum(Y23$NCbyNSP)
  pNcTmp$y24[1] <- sum(Y24$NCbyNSP)
  pNcTmp$y25[1] <- sum(Y25$NCbyNSP)
  pNcTmp$y26[1] <- sum(Y26$NCbyNSP)
  pNcTmp$y27[1] <- sum(Y27$NCbyNSP)
  pNcTmp$y28[1] <- sum(Y28$NCbyNSP)
  pNcTmp$y29[1] <- sum(Y29$NCbyNSP)
  pNcTmp$y30[1] <- sum(Y30$NCbyNSP)
  pNewCasesNSPSumJ <- rbind(pNewCasesNSPSumJ, pNcTmp)
  
  pIDUTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalIDUJ <- rbind(pTotalIDUJ, pIDUTmp)
  
  pPrisonTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pPrisonHCVJ <- rbind(pPrisonHCVJ, pPrisonTmp)
  
  pOpdTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pOpdJ <- rbind(pOpdJ, pOpdTmp)
  
  pEverTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pEverIDUJ <- rbind(pEverIDUJ, pEverTmp)
  
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
  pEverIDUSumJ <- rbind(pEverIDUSumJ, pEverSumTmp)
  
  pClrTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pClrDJ <- rbind(pClrDJ, pClrTmp)
  
  ptDAATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalDAAJ <- rbind(pTotalDAAJ, ptDAATmp)
  
  ptOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
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
  pTotalOSTJ <- rbind(pTotalOSTJ, ptOSTTmp)
  
  ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptNSPTmp[1,] <- 0
  ptNSPTmp$y6[1] <- mean(Y6$totalNSP)
  ptNSPTmp$y7[1] <- mean(Y7$totalNSP)
  ptNSPTmp$y8[1] <- mean(Y8$totalNSP)
  ptNSPTmp$y9[1] <- mean(Y9$totalNSP)
  ptNSPTmp$y10[1] <- mean(Y10$totalNSP)
  ptNSPTmp$y11[1] <- mean(Y11$totalNSP)
  ptNSPTmp$y12[1] <- mean(Y12$totalNSP)
  ptNSPTmp$y13[1] <- mean(Y13$totalNSP)
  ptNSPTmp$y14[1] <- mean(Y14$totalNSP)
  ptNSPTmp$y15[1] <- mean(Y15$totalNSP)
  ptNSPTmp$y16[1] <- mean(Y16$totalNSP)
  ptNSPTmp$y17[1] <- mean(Y17$totalNSP)
  ptNSPTmp$y18[1] <- mean(Y18$totalNSP)
  ptNSPTmp$y19[1] <- mean(Y19$totalNSP)
  ptNSPTmp$y20[1] <- mean(Y20$totalNSP)
  ptNSPTmp$y21[1] <- mean(Y21$totalNSP)
  ptNSPTmp$y22[1] <- mean(Y22$totalNSP)
  ptNSPTmp$y23[1] <- mean(Y23$totalNSP)
  ptNSPTmp$y24[1] <- mean(Y24$totalNSP)
  ptNSPTmp$y25[1] <- mean(Y25$totalNSP)
  ptNSPTmp$y26[1] <- mean(Y26$totalNSP)
  ptNSPTmp$y27[1] <- mean(Y27$totalNSP)
  ptNSPTmp$y28[1] <- mean(Y28$totalNSP)
  ptNSPTmp$y29[1] <- mean(Y29$totalNSP)
  ptNSPTmp$y30[1] <- mean(Y30$totalNSP)
  pTotalNSPJ <- rbind(pTotalNSPJ, ptNSPTmp)
  
  ptNSPTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptNSPTmp[1,] <- 0
  ptNSPTmp$y6[1] <- Y6$totalNSP[365]
  ptNSPTmp$y7[1] <- Y7$totalNSP[365]
  ptNSPTmp$y8[1] <- Y8$totalNSP[365]
  ptNSPTmp$y9[1] <- Y9$totalNSP[365]
  ptNSPTmp$y10[1] <- Y10$totalNSP[365]
  ptNSPTmp$y11[1] <- Y11$totalNSP[365]
  ptNSPTmp$y12[1] <- Y12$totalNSP[365]
  ptNSPTmp$y13[1] <- Y13$totalNSP[365]
  ptNSPTmp$y14[1] <- Y14$totalNSP[365]
  ptNSPTmp$y15[1] <- Y15$totalNSP[365]
  ptNSPTmp$y16[1] <- Y16$totalNSP[365]
  ptNSPTmp$y17[1] <- Y17$totalNSP[365]
  ptNSPTmp$y18[1] <- Y18$totalNSP[365]
  ptNSPTmp$y19[1] <- Y19$totalNSP[365]
  ptNSPTmp$y20[1] <- Y20$totalNSP[365]
  ptNSPTmp$y21[1] <- Y21$totalNSP[365]
  ptNSPTmp$y22[1] <- Y22$totalNSP[365]
  ptNSPTmp$y23[1] <- Y23$totalNSP[365]
  ptNSPTmp$y24[1] <- Y24$totalNSP[365]
  ptNSPTmp$y25[1] <- Y25$totalNSP[365]
  ptNSPTmp$y26[1] <- Y26$totalNSP[365]
  ptNSPTmp$y27[1] <- Y27$totalNSP[365]
  ptNSPTmp$y28[1] <- Y28$totalNSP[365]
  ptNSPTmp$y29[1] <- Y29$totalNSP[365]
  ptNSPTmp$y30[1] <- Y30$totalNSP[365]
  pTotalNSPSumJ <- rbind(pTotalNSPSumJ, ptNSPTmp)
  
  ptHCVeAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeAbTmp[1,] <- 0
  ptHCVeAbTmp$y6[1] <- mean(Y6$HCVeAb)
  ptHCVeAbTmp$y7[1] <- mean(Y7$HCVeAb)
  ptHCVeAbTmp$y8[1] <- mean(Y8$HCVeAb)
  ptHCVeAbTmp$y9[1] <- mean(Y9$HCVeAb)
  ptHCVeAbTmp$y10[1] <- mean(Y10$HCVeAb)
  ptHCVeAbTmp$y11[1] <- mean(Y11$HCVeAb)
  ptHCVeAbTmp$y12[1] <- mean(Y12$HCVeAb)
  ptHCVeAbTmp$y13[1] <- mean(Y13$HCVeAb)
  ptHCVeAbTmp$y14[1] <- mean(Y14$HCVeAb)
  ptHCVeAbTmp$y15[1] <- mean(Y15$HCVeAb)
  ptHCVeAbTmp$y16[1] <- mean(Y16$HCVeAb)
  ptHCVeAbTmp$y17[1] <- mean(Y17$HCVeAb)
  ptHCVeAbTmp$y18[1] <- mean(Y18$HCVeAb)
  ptHCVeAbTmp$y19[1] <- mean(Y19$HCVeAb)
  ptHCVeAbTmp$y20[1] <- mean(Y20$HCVeAb)
  ptHCVeAbTmp$y21[1] <- mean(Y21$HCVeAb)
  ptHCVeAbTmp$y22[1] <- mean(Y22$HCVeAb)
  ptHCVeAbTmp$y23[1] <- mean(Y23$HCVeAb)
  ptHCVeAbTmp$y24[1] <- mean(Y24$HCVeAb)
  ptHCVeAbTmp$y25[1] <- mean(Y25$HCVeAb)
  ptHCVeAbTmp$y26[1] <- mean(Y26$HCVeAb)
  ptHCVeAbTmp$y27[1] <- mean(Y27$HCVeAb)
  ptHCVeAbTmp$y28[1] <- mean(Y28$HCVeAb)
  ptHCVeAbTmp$y29[1] <- mean(Y29$HCVeAb)
  ptHCVeAbTmp$y30[1] <- mean(Y30$HCVeAb)
  pTotalHCVeAbJ <- rbind(pTotalHCVeAbJ, ptHCVeAbTmp)
  
  ptHCVeRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVeRNATmp[1,] <- 0
  ptHCVeRNATmp$y6[1] <- mean(Y6$HCVeAb)
  ptHCVeRNATmp$y7[1] <- mean(Y7$HCVeAb)
  ptHCVeRNATmp$y8[1] <- mean(Y8$HCVeAb)
  ptHCVeRNATmp$y9[1] <- mean(Y9$HCVeAb)
  ptHCVeRNATmp$y10[1] <- mean(Y10$HCVeAb)
  ptHCVeRNATmp$y11[1] <- mean(Y11$HCVeAb)
  ptHCVeRNATmp$y12[1] <- mean(Y12$HCVeAb)
  ptHCVeRNATmp$y13[1] <- mean(Y13$HCVeAb)
  ptHCVeRNATmp$y14[1] <- mean(Y14$HCVeAb)
  ptHCVeRNATmp$y15[1] <- mean(Y15$HCVeAb)
  ptHCVeRNATmp$y16[1] <- mean(Y16$HCVeAb)
  ptHCVeRNATmp$y17[1] <- mean(Y17$HCVeAb)
  ptHCVeRNATmp$y18[1] <- mean(Y18$HCVeAb)
  ptHCVeRNATmp$y19[1] <- mean(Y19$HCVeAb)
  ptHCVeRNATmp$y20[1] <- mean(Y20$HCVeAb)
  ptHCVeRNATmp$y21[1] <- mean(Y21$HCVeAb)
  ptHCVeRNATmp$y22[1] <- mean(Y22$HCVeAb)
  ptHCVeRNATmp$y23[1] <- mean(Y23$HCVeAb)
  ptHCVeRNATmp$y24[1] <- mean(Y24$HCVeAb)
  ptHCVeRNATmp$y25[1] <- mean(Y25$HCVeAb)
  ptHCVeRNATmp$y26[1] <- mean(Y26$HCVeAb)
  ptHCVeRNATmp$y27[1] <- mean(Y27$HCVeAb)
  ptHCVeRNATmp$y28[1] <- mean(Y28$HCVeAb)
  ptHCVeRNATmp$y29[1] <- mean(Y29$HCVeAb)
  ptHCVeRNATmp$y30[1] <- mean(Y30$HCVeAb)
  pTotalHCVeRNAJ <- rbind(pTotalHCVeRNAJ, ptHCVeRNATmp)
  
  ptHCVabTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVabTmp[1,] <- 0
  ptHCVabTmp$y6[1] <- mean(Y6$HCVab)
  ptHCVabTmp$y7[1] <- mean(Y7$HCVab)
  ptHCVabTmp$y8[1] <- mean(Y8$HCVab)
  ptHCVabTmp$y9[1] <- mean(Y9$HCVab)
  ptHCVabTmp$y10[1] <- mean(Y10$HCVab)
  ptHCVabTmp$y11[1] <- mean(Y11$HCVab)
  ptHCVabTmp$y12[1] <- mean(Y12$HCVab)
  ptHCVabTmp$y13[1] <- mean(Y13$HCVab)
  ptHCVabTmp$y14[1] <- mean(Y14$HCVab)
  ptHCVabTmp$y15[1] <- mean(Y15$HCVab)
  ptHCVabTmp$y16[1] <- mean(Y16$HCVab)
  ptHCVabTmp$y17[1] <- mean(Y17$HCVab)
  ptHCVabTmp$y18[1] <- mean(Y18$HCVab)
  ptHCVabTmp$y19[1] <- mean(Y19$HCVab)
  ptHCVabTmp$y20[1] <- mean(Y20$HCVab)
  ptHCVabTmp$y21[1] <- mean(Y21$HCVab)
  ptHCVabTmp$y22[1] <- mean(Y22$HCVab)
  ptHCVabTmp$y23[1] <- mean(Y23$HCVab)
  ptHCVabTmp$y24[1] <- mean(Y24$HCVab)
  ptHCVabTmp$y25[1] <- mean(Y25$HCVab)
  ptHCVabTmp$y26[1] <- mean(Y26$HCVab)
  ptHCVabTmp$y27[1] <- mean(Y27$HCVab)
  ptHCVabTmp$y28[1] <- mean(Y28$HCVab)
  ptHCVabTmp$y29[1] <- mean(Y29$HCVab)
  ptHCVabTmp$y30[1] <- mean(Y30$HCVab)
  pTotalHCVabJ <- rbind(pTotalHCVabJ, ptHCVabTmp)
  
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
  pPointHCVabJ <- rbind(pPointHCVabJ, pPointHCVabTmp)
  
  ptHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptHCVRNATmp[1,] <- 0
  ptHCVRNATmp$y6[1] <- mean(Y6$HCVRNA)
  ptHCVRNATmp$y7[1] <- mean(Y7$HCVRNA)
  ptHCVRNATmp$y8[1] <- mean(Y8$HCVRNA)
  ptHCVRNATmp$y9[1] <- mean(Y9$HCVRNA)
  ptHCVRNATmp$y10[1] <- mean(Y10$HCVRNA)
  ptHCVRNATmp$y11[1] <- mean(Y11$HCVRNA)
  ptHCVRNATmp$y12[1] <- mean(Y12$HCVRNA)
  ptHCVRNATmp$y13[1] <- mean(Y13$HCVRNA)
  ptHCVRNATmp$y14[1] <- mean(Y14$HCVRNA)
  ptHCVRNATmp$y15[1] <- mean(Y15$HCVRNA)
  ptHCVRNATmp$y16[1] <- mean(Y16$HCVRNA)
  ptHCVRNATmp$y17[1] <- mean(Y17$HCVRNA)
  ptHCVRNATmp$y18[1] <- mean(Y18$HCVRNA)
  ptHCVRNATmp$y19[1] <- mean(Y19$HCVRNA)
  ptHCVRNATmp$y20[1] <- mean(Y20$HCVRNA)
  ptHCVRNATmp$y21[1] <- mean(Y21$HCVRNA)
  ptHCVRNATmp$y22[1] <- mean(Y22$HCVRNA)
  ptHCVRNATmp$y23[1] <- mean(Y23$HCVRNA)
  ptHCVRNATmp$y24[1] <- mean(Y24$HCVRNA)
  ptHCVRNATmp$y25[1] <- mean(Y25$HCVRNA)
  ptHCVRNATmp$y26[1] <- mean(Y26$HCVRNA)
  ptHCVRNATmp$y27[1] <- mean(Y27$HCVRNA)
  ptHCVRNATmp$y28[1] <- mean(Y28$HCVRNA)
  ptHCVRNATmp$y29[1] <- mean(Y29$HCVRNA)
  ptHCVRNATmp$y30[1] <- mean(Y30$HCVRNA)
  pTotalHCVRNAJ <- rbind(pTotalHCVRNAJ, ptHCVRNATmp)
  
  ptOpdNotOSTTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptOpdNotOSTTmp[1,] <- 0
  ptOpdNotOSTTmp$y6[1] <- mean(Y6$OpdNotOST)
  ptOpdNotOSTTmp$y7[1] <- mean(Y7$OpdNotOST)
  ptOpdNotOSTTmp$y8[1] <- mean(Y8$OpdNotOST)
  ptOpdNotOSTTmp$y9[1] <- mean(Y9$OpdNotOST)
  ptOpdNotOSTTmp$y10[1] <- mean(Y10$OpdNotOST)
  ptOpdNotOSTTmp$y11[1] <- mean(Y11$OpdNotOST)
  ptOpdNotOSTTmp$y12[1] <- mean(Y12$OpdNotOST)
  ptOpdNotOSTTmp$y13[1] <- mean(Y13$OpdNotOST)
  ptOpdNotOSTTmp$y14[1] <- mean(Y14$OpdNotOST)
  ptOpdNotOSTTmp$y15[1] <- mean(Y15$OpdNotOST)
  ptOpdNotOSTTmp$y16[1] <- mean(Y16$OpdNotOST)
  ptOpdNotOSTTmp$y17[1] <- mean(Y17$OpdNotOST)
  ptOpdNotOSTTmp$y18[1] <- mean(Y18$OpdNotOST)
  ptOpdNotOSTTmp$y19[1] <- mean(Y19$OpdNotOST)
  ptOpdNotOSTTmp$y20[1] <- mean(Y20$OpdNotOST)
  ptOpdNotOSTTmp$y21[1] <- mean(Y21$OpdNotOST)
  ptOpdNotOSTTmp$y22[1] <- mean(Y22$OpdNotOST)
  ptOpdNotOSTTmp$y23[1] <- mean(Y23$OpdNotOST)
  ptOpdNotOSTTmp$y24[1] <- mean(Y24$OpdNotOST)
  ptOpdNotOSTTmp$y25[1] <- mean(Y25$OpdNotOST)
  ptOpdNotOSTTmp$y26[1] <- mean(Y26$OpdNotOST)
  ptOpdNotOSTTmp$y27[1] <- mean(Y27$OpdNotOST)
  ptOpdNotOSTTmp$y28[1] <- mean(Y28$OpdNotOST)
  ptOpdNotOSTTmp$y29[1] <- mean(Y29$OpdNotOST)
  ptOpdNotOSTTmp$y30[1] <- mean(Y30$OpdNotOST)
  pTotalOpdNotOSTJ <- rbind(pTotalOpdNotOSTJ, ptOpdNotOSTTmp)
  
  ptReleasedHCVAbTmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVAbTmp[1,] <- 0
  ptReleasedHCVAbTmp$y6[1] <- mean(Y6$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y7[1] <- mean(Y7$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y8[1] <- mean(Y8$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y9[1] <- mean(Y9$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y10[1] <- mean(Y10$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y11[1] <- mean(Y11$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y12[1] <- mean(Y12$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y13[1] <- mean(Y13$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y14[1] <- mean(Y14$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y15[1] <- mean(Y15$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y16[1] <- mean(Y16$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y17[1] <- mean(Y17$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y18[1] <- mean(Y18$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y19[1] <- mean(Y19$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y20[1] <- mean(Y20$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y21[1] <- mean(Y21$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y22[1] <- mean(Y22$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y23[1] <- mean(Y23$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y24[1] <- mean(Y24$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y25[1] <- mean(Y25$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y26[1] <- mean(Y26$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y27[1] <- mean(Y27$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y28[1] <- mean(Y28$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y29[1] <- mean(Y29$ReleasedHCVAb)
  ptReleasedHCVAbTmp$y30[1] <- mean(Y30$ReleasedHCVAb)
  pTotalReleasedHCVAbJ <- rbind(pTotalReleasedHCVAbJ, ptReleasedHCVAbTmp)
  
  ptReleasedHCVRNATmp <- data.frame(y6=NA, y7=NA, y8=NA, y9=NA, y10=NA, y11=NA, y12=NA, y13=NA, y14=NA, y15=NA, y16=NA, y17=NA, y18=NA, y19=NA, y20=NA, y21=NA, y22=NA, y23=NA, y24=NA, y25=NA, y26=NA, y27=NA, y28=NA, y29=NA, y30=NA)[numeric(0), ]
  ptReleasedHCVRNATmp[1,] <- 0
  ptReleasedHCVRNATmp$y6[1] <- mean(Y6$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y7[1] <- mean(Y7$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y8[1] <- mean(Y8$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y9[1] <- mean(Y9$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y10[1] <- mean(Y10$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y11[1] <- mean(Y11$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y12[1] <- mean(Y12$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y13[1] <- mean(Y13$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y14[1] <- mean(Y14$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y15[1] <- mean(Y15$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y16[1] <- mean(Y16$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y17[1] <- mean(Y17$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y18[1] <- mean(Y18$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y19[1] <- mean(Y19$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y20[1] <- mean(Y20$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y21[1] <- mean(Y21$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y22[1] <- mean(Y22$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y23[1] <- mean(Y23$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y24[1] <- mean(Y24$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y25[1] <- mean(Y25$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y26[1] <- mean(Y26$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y27[1] <- mean(Y27$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y28[1] <- mean(Y28$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y29[1] <- mean(Y29$ReleasedHCVRNA)
  ptReleasedHCVRNATmp$y30[1] <- mean(Y30$ReleasedHCVRNA)
  pTotalReleasedHCVRNAJ <- rbind(pTotalReleasedHCVRNAJ, ptReleasedHCVRNATmp)
}

#Incidence and Prevalence
#TotalIDU incidence and prevalence
HCVA <- data.frame("IncidenceIDU"=c(((mean(pNewCasesSumA$y6)/mean(pEverIDUSumA$y6))*100)*365, ((mean(pNewCasesSumA$y7)/mean(pEverIDUSumA$y7))*100)*365, ((mean(pNewCasesSumA$y8)/mean(pEverIDUSumA$y8))*100)*365, ((mean(pNewCasesSumA$y9)/mean(pEverIDUSumA$y9))*100)*365, ((mean(pNewCasesSumA$y10)/mean(pEverIDUSumA$y10))*100)*365, ((mean(pNewCasesSumA$y11)/mean(pEverIDUSumA$y11))*100)*365, ((mean(pNewCasesSumA$y12)/mean(pEverIDUSumA$y12))*100)*365, ((mean(pNewCasesSumA$y13)/mean(pEverIDUSumA$y13))*100)*365, ((mean(pNewCasesSumA$y14)/mean(pEverIDUSumA$y14))*100)*365, ((mean(pNewCasesSumA$y15)/mean(pEverIDUSumA$y15))*100)*365, ((mean(pNewCasesSumA$y16)/mean(pEverIDUSumA$y16))*100)*365, ((mean(pNewCasesSumA$y17)/mean(pEverIDUSumA$y17))*100)*365, ((mean(pNewCasesSumA$y18)/mean(pEverIDUSumA$y18))*100)*365, ((mean(pNewCasesSumA$y19)/mean(pEverIDUSumA$y19))*100)*365, ((mean(pNewCasesSumA$y20)/mean(pEverIDUSumA$y20))*100)*365, ((mean(pNewCasesSumA$y21)/mean(pEverIDUSumA$y21))*100)*365, ((mean(pNewCasesSumA$y22)/mean(pEverIDUSumA$y22))*100)*365, ((mean(pNewCasesSumA$y23)/mean(pEverIDUSumA$y23))*100)*365, ((mean(pNewCasesSumA$y24)/mean(pEverIDUSumA$y24))*100)*365, ((mean(pNewCasesSumA$y25)/mean(pEverIDUSumA$y25))*100)*365, ((mean(pNewCasesSumA$y26)/mean(pEverIDUSumA$y26))*100)*365, ((mean(pNewCasesSumA$y27)/mean(pEverIDUSumA$y27))*100)*365, ((mean(pNewCasesSumA$y28)/mean(pEverIDUSumA$y28))*100)*365, ((mean(pNewCasesSumA$y29)/mean(pEverIDUSumA$y29))*100)*365, ((mean(pNewCasesSumA$y30)/mean(pEverIDUSumA$y30))*100)*365))
HCVA$IncidenceFloor <- c(((min(pNewCasesSumA$y6)/mean(pEverIDUSumA$y6))*100)*365, ((min(pNewCasesSumA$y7)/mean(pEverIDUSumA$y7))*100)*365, ((min(pNewCasesSumA$y8)/mean(pEverIDUSumA$y8))*100)*365, ((min(pNewCasesSumA$y9)/mean(pEverIDUSumA$y9))*100)*365, ((min(pNewCasesSumA$y10)/mean(pEverIDUSumA$y10))*100)*365, ((min(pNewCasesSumA$y11)/mean(pEverIDUSumA$y11))*100)*365, ((min(pNewCasesSumA$y12)/mean(pEverIDUSumA$y12))*100)*365, ((min(pNewCasesSumA$y13)/mean(pEverIDUSumA$y13))*100)*365, ((min(pNewCasesSumA$y14)/mean(pEverIDUSumA$y14))*100)*365, ((min(pNewCasesSumA$y15)/mean(pEverIDUSumA$y15))*100)*365, ((min(pNewCasesSumA$y16)/mean(pEverIDUSumA$y16))*100)*365, ((min(pNewCasesSumA$y17)/mean(pEverIDUSumA$y17))*100)*365, ((min(pNewCasesSumA$y18)/mean(pEverIDUSumA$y18))*100)*365, ((min(pNewCasesSumA$y19)/mean(pEverIDUSumA$y19))*100)*365, ((min(pNewCasesSumA$y20)/mean(pEverIDUSumA$y20))*100)*365, ((min(pNewCasesSumA$y21)/mean(pEverIDUSumA$y21))*100)*365, ((min(pNewCasesSumA$y22)/mean(pEverIDUSumA$y22))*100)*365, ((min(pNewCasesSumA$y23)/mean(pEverIDUSumA$y23))*100)*365, ((min(pNewCasesSumA$y24)/mean(pEverIDUSumA$y24))*100)*365, ((min(pNewCasesSumA$y25)/mean(pEverIDUSumA$y25))*100)*365, ((min(pNewCasesSumA$y26)/mean(pEverIDUSumA$y26))*100)*365, ((min(pNewCasesSumA$y27)/mean(pEverIDUSumA$y27))*100)*365, ((min(pNewCasesSumA$y28)/mean(pEverIDUSumA$y28))*100)*365, ((min(pNewCasesSumA$y29)/mean(pEverIDUSumA$y29))*100)*365, ((min(pNewCasesSumA$y30)/mean(pEverIDUSumA$y30))*100)*365)
HCVA$IncidenceCeiling <- c(((max(pNewCasesSumA$y6)/mean(pEverIDUSumA$y6))*100)*365, ((max(pNewCasesSumA$y7)/mean(pEverIDUSumA$y7))*100)*365, ((max(pNewCasesSumA$y8)/mean(pEverIDUSumA$y8))*100)*365, ((max(pNewCasesSumA$y9)/mean(pEverIDUSumA$y9))*100)*365, ((max(pNewCasesSumA$y10)/mean(pEverIDUSumA$y10))*100)*365, ((max(pNewCasesSumA$y11)/mean(pEverIDUSumA$y11))*100)*365, ((max(pNewCasesSumA$y12)/mean(pEverIDUSumA$y12))*100)*365, ((max(pNewCasesSumA$y13)/mean(pEverIDUSumA$y13))*100)*365, ((max(pNewCasesSumA$y14)/mean(pEverIDUSumA$y14))*100)*365, ((max(pNewCasesSumA$y15)/mean(pEverIDUSumA$y15))*100)*365, ((max(pNewCasesSumA$y16)/mean(pEverIDUSumA$y16))*100)*365, ((max(pNewCasesSumA$y17)/mean(pEverIDUSumA$y17))*100)*365, ((max(pNewCasesSumA$y18)/mean(pEverIDUSumA$y18))*100)*365, ((max(pNewCasesSumA$y19)/mean(pEverIDUSumA$y19))*100)*365, ((max(pNewCasesSumA$y20)/mean(pEverIDUSumA$y20))*100)*365, ((max(pNewCasesSumA$y21)/mean(pEverIDUSumA$y21))*100)*365, ((max(pNewCasesSumA$y22)/mean(pEverIDUSumA$y22))*100)*365, ((max(pNewCasesSumA$y23)/mean(pEverIDUSumA$y23))*100)*365, ((max(pNewCasesSumA$y24)/mean(pEverIDUSumA$y24))*100)*365, ((max(pNewCasesSumA$y25)/mean(pEverIDUSumA$y25))*100)*365, ((max(pNewCasesSumA$y26)/mean(pEverIDUSumA$y26))*100)*365, ((max(pNewCasesSumA$y27)/mean(pEverIDUSumA$y27))*100)*365, ((max(pNewCasesSumA$y28)/mean(pEverIDUSumA$y28))*100)*365, ((max(pNewCasesSumA$y29)/mean(pEverIDUSumA$y29))*100)*365, ((max(pNewCasesSumA$y30)/mean(pEverIDUSumA$y30))*100)*365)
HCVA$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVA$Description <- c("Status-quo")

HCVB <- data.frame("IncidenceIDU"=c(((mean(pNewCasesSumB$y6)/mean(pEverIDUSumB$y6))*100)*365, ((mean(pNewCasesSumB$y7)/mean(pEverIDUSumB$y7))*100)*365, ((mean(pNewCasesSumB$y8)/mean(pEverIDUSumB$y8))*100)*365, ((mean(pNewCasesSumB$y9)/mean(pEverIDUSumB$y9))*100)*365, ((mean(pNewCasesSumB$y10)/mean(pEverIDUSumB$y10))*100)*365, ((mean(pNewCasesSumB$y11)/mean(pEverIDUSumB$y11))*100)*365, ((mean(pNewCasesSumB$y12)/mean(pEverIDUSumB$y12))*100)*365, ((mean(pNewCasesSumB$y13)/mean(pEverIDUSumB$y13))*100)*365, ((mean(pNewCasesSumB$y14)/mean(pEverIDUSumB$y14))*100)*365, ((mean(pNewCasesSumB$y15)/mean(pEverIDUSumB$y15))*100)*365, ((mean(pNewCasesSumB$y16)/mean(pEverIDUSumB$y16))*100)*365, ((mean(pNewCasesSumB$y17)/mean(pEverIDUSumB$y17))*100)*365, ((mean(pNewCasesSumB$y18)/mean(pEverIDUSumB$y18))*100)*365, ((mean(pNewCasesSumB$y19)/mean(pEverIDUSumB$y19))*100)*365, ((mean(pNewCasesSumB$y20)/mean(pEverIDUSumB$y20))*100)*365, ((mean(pNewCasesSumB$y21)/mean(pEverIDUSumB$y21))*100)*365, ((mean(pNewCasesSumB$y22)/mean(pEverIDUSumB$y22))*100)*365, ((mean(pNewCasesSumB$y23)/mean(pEverIDUSumB$y23))*100)*365, ((mean(pNewCasesSumB$y24)/mean(pEverIDUSumB$y24))*100)*365, ((mean(pNewCasesSumB$y25)/mean(pEverIDUSumB$y25))*100)*365, ((mean(pNewCasesSumB$y26)/mean(pEverIDUSumB$y26))*100)*365, ((mean(pNewCasesSumB$y27)/mean(pEverIDUSumB$y27))*100)*365, ((mean(pNewCasesSumB$y28)/mean(pEverIDUSumB$y28))*100)*365, ((mean(pNewCasesSumB$y29)/mean(pEverIDUSumB$y29))*100)*365, ((mean(pNewCasesSumB$y30)/mean(pEverIDUSumB$y30))*100)*365))
HCVB$IncidenceFloor <- c(((min(pNewCasesSumB$y6)/mean(pEverIDUSumB$y6))*100)*365, ((min(pNewCasesSumB$y7)/mean(pEverIDUSumB$y7))*100)*365, ((min(pNewCasesSumB$y8)/mean(pEverIDUSumB$y8))*100)*365, ((min(pNewCasesSumB$y9)/mean(pEverIDUSumB$y9))*100)*365, ((min(pNewCasesSumB$y10)/mean(pEverIDUSumB$y10))*100)*365, ((min(pNewCasesSumB$y11)/mean(pEverIDUSumB$y11))*100)*365, ((min(pNewCasesSumB$y12)/mean(pEverIDUSumB$y12))*100)*365, ((min(pNewCasesSumB$y13)/mean(pEverIDUSumB$y13))*100)*365, ((min(pNewCasesSumB$y14)/mean(pEverIDUSumB$y14))*100)*365, ((min(pNewCasesSumB$y15)/mean(pEverIDUSumB$y15))*100)*365, ((min(pNewCasesSumB$y16)/mean(pEverIDUSumB$y16))*100)*365, ((min(pNewCasesSumB$y17)/mean(pEverIDUSumB$y17))*100)*365, ((min(pNewCasesSumB$y18)/mean(pEverIDUSumB$y18))*100)*365, ((min(pNewCasesSumB$y19)/mean(pEverIDUSumB$y19))*100)*365, ((min(pNewCasesSumB$y20)/mean(pEverIDUSumB$y20))*100)*365, ((min(pNewCasesSumB$y21)/mean(pEverIDUSumB$y21))*100)*365, ((min(pNewCasesSumB$y22)/mean(pEverIDUSumB$y22))*100)*365, ((min(pNewCasesSumB$y23)/mean(pEverIDUSumB$y23))*100)*365, ((min(pNewCasesSumB$y24)/mean(pEverIDUSumB$y24))*100)*365, ((min(pNewCasesSumB$y25)/mean(pEverIDUSumB$y25))*100)*365, ((min(pNewCasesSumB$y26)/mean(pEverIDUSumB$y26))*100)*365, ((min(pNewCasesSumB$y27)/mean(pEverIDUSumB$y27))*100)*365, ((min(pNewCasesSumB$y28)/mean(pEverIDUSumB$y28))*100)*365, ((min(pNewCasesSumB$y29)/mean(pEverIDUSumB$y29))*100)*365, ((min(pNewCasesSumB$y30)/mean(pEverIDUSumB$y30))*100)*365)
HCVB$IncidenceCeiling <- c(((max(pNewCasesSumB$y6)/mean(pEverIDUSumB$y6))*100)*365, ((max(pNewCasesSumB$y7)/mean(pEverIDUSumB$y7))*100)*365, ((max(pNewCasesSumB$y8)/mean(pEverIDUSumB$y8))*100)*365, ((max(pNewCasesSumB$y9)/mean(pEverIDUSumB$y9))*100)*365, ((max(pNewCasesSumB$y10)/mean(pEverIDUSumB$y10))*100)*365, ((max(pNewCasesSumB$y11)/mean(pEverIDUSumB$y11))*100)*365, ((max(pNewCasesSumB$y12)/mean(pEverIDUSumB$y12))*100)*365, ((max(pNewCasesSumB$y13)/mean(pEverIDUSumB$y13))*100)*365, ((max(pNewCasesSumB$y14)/mean(pEverIDUSumB$y14))*100)*365, ((max(pNewCasesSumB$y15)/mean(pEverIDUSumB$y15))*100)*365, ((max(pNewCasesSumB$y16)/mean(pEverIDUSumB$y16))*100)*365, ((max(pNewCasesSumB$y17)/mean(pEverIDUSumB$y17))*100)*365, ((max(pNewCasesSumB$y18)/mean(pEverIDUSumB$y18))*100)*365, ((max(pNewCasesSumB$y19)/mean(pEverIDUSumB$y19))*100)*365, ((max(pNewCasesSumB$y20)/mean(pEverIDUSumB$y20))*100)*365, ((max(pNewCasesSumB$y21)/mean(pEverIDUSumB$y21))*100)*365, ((max(pNewCasesSumB$y22)/mean(pEverIDUSumB$y22))*100)*365, ((max(pNewCasesSumB$y23)/mean(pEverIDUSumB$y23))*100)*365, ((max(pNewCasesSumB$y24)/mean(pEverIDUSumB$y24))*100)*365, ((max(pNewCasesSumB$y25)/mean(pEverIDUSumB$y25))*100)*365, ((max(pNewCasesSumB$y26)/mean(pEverIDUSumB$y26))*100)*365, ((max(pNewCasesSumB$y27)/mean(pEverIDUSumB$y27))*100)*365, ((max(pNewCasesSumB$y28)/mean(pEverIDUSumB$y28))*100)*365, ((max(pNewCasesSumB$y29)/mean(pEverIDUSumB$y29))*100)*365, ((max(pNewCasesSumB$y30)/mean(pEverIDUSumB$y30))*100)*365)
HCVB$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVB$Description <- c("DAA optimistic scenario")

HCVC <- data.frame("IncidenceIDU"=c(((mean(pNewCasesSumC$y6)/mean(pEverIDUSumC$y6))*100)*365, ((mean(pNewCasesSumC$y7)/mean(pEverIDUSumC$y7))*100)*365, ((mean(pNewCasesSumC$y8)/mean(pEverIDUSumC$y8))*100)*365, ((mean(pNewCasesSumC$y9)/mean(pEverIDUSumC$y9))*100)*365, ((mean(pNewCasesSumC$y10)/mean(pEverIDUSumC$y10))*100)*365, ((mean(pNewCasesSumC$y11)/mean(pEverIDUSumC$y11))*100)*365, ((mean(pNewCasesSumC$y12)/mean(pEverIDUSumC$y12))*100)*365, ((mean(pNewCasesSumC$y13)/mean(pEverIDUSumC$y13))*100)*365, ((mean(pNewCasesSumC$y14)/mean(pEverIDUSumC$y14))*100)*365, ((mean(pNewCasesSumC$y15)/mean(pEverIDUSumC$y15))*100)*365, ((mean(pNewCasesSumC$y16)/mean(pEverIDUSumC$y16))*100)*365, ((mean(pNewCasesSumC$y17)/mean(pEverIDUSumC$y17))*100)*365, ((mean(pNewCasesSumC$y18)/mean(pEverIDUSumC$y18))*100)*365, ((mean(pNewCasesSumC$y19)/mean(pEverIDUSumC$y19))*100)*365, ((mean(pNewCasesSumC$y20)/mean(pEverIDUSumC$y20))*100)*365, ((mean(pNewCasesSumC$y21)/mean(pEverIDUSumC$y21))*100)*365, ((mean(pNewCasesSumC$y22)/mean(pEverIDUSumC$y22))*100)*365, ((mean(pNewCasesSumC$y23)/mean(pEverIDUSumC$y23))*100)*365, ((mean(pNewCasesSumC$y24)/mean(pEverIDUSumC$y24))*100)*365, ((mean(pNewCasesSumC$y25)/mean(pEverIDUSumC$y25))*100)*365, ((mean(pNewCasesSumC$y26)/mean(pEverIDUSumC$y26))*100)*365, ((mean(pNewCasesSumC$y27)/mean(pEverIDUSumC$y27))*100)*365, ((mean(pNewCasesSumC$y28)/mean(pEverIDUSumC$y28))*100)*365, ((mean(pNewCasesSumC$y29)/mean(pEverIDUSumC$y29))*100)*365, ((mean(pNewCasesSumC$y30)/mean(pEverIDUSumC$y30))*100)*365))
HCVC$IncidenceFloor <- c(((min(pNewCasesSumC$y6)/mean(pEverIDUSumC$y6))*100)*365, ((min(pNewCasesSumC$y7)/mean(pEverIDUSumC$y7))*100)*365, ((min(pNewCasesSumC$y8)/mean(pEverIDUSumC$y8))*100)*365, ((min(pNewCasesSumC$y9)/mean(pEverIDUSumC$y9))*100)*365, ((min(pNewCasesSumC$y10)/mean(pEverIDUSumC$y10))*100)*365, ((min(pNewCasesSumC$y11)/mean(pEverIDUSumC$y11))*100)*365, ((min(pNewCasesSumC$y12)/mean(pEverIDUSumC$y12))*100)*365, ((min(pNewCasesSumC$y13)/mean(pEverIDUSumC$y13))*100)*365, ((min(pNewCasesSumC$y14)/mean(pEverIDUSumC$y14))*100)*365, ((min(pNewCasesSumC$y15)/mean(pEverIDUSumC$y15))*100)*365, ((min(pNewCasesSumC$y16)/mean(pEverIDUSumC$y16))*100)*365, ((min(pNewCasesSumC$y17)/mean(pEverIDUSumC$y17))*100)*365, ((min(pNewCasesSumC$y18)/mean(pEverIDUSumC$y18))*100)*365, ((min(pNewCasesSumC$y19)/mean(pEverIDUSumC$y19))*100)*365, ((min(pNewCasesSumC$y20)/mean(pEverIDUSumC$y20))*100)*365, ((min(pNewCasesSumC$y21)/mean(pEverIDUSumC$y21))*100)*365, ((min(pNewCasesSumC$y22)/mean(pEverIDUSumC$y22))*100)*365, ((min(pNewCasesSumC$y23)/mean(pEverIDUSumC$y23))*100)*365, ((min(pNewCasesSumC$y24)/mean(pEverIDUSumC$y24))*100)*365, ((min(pNewCasesSumC$y25)/mean(pEverIDUSumC$y25))*100)*365, ((min(pNewCasesSumC$y26)/mean(pEverIDUSumC$y26))*100)*365, ((min(pNewCasesSumC$y27)/mean(pEverIDUSumC$y27))*100)*365, ((min(pNewCasesSumC$y28)/mean(pEverIDUSumC$y28))*100)*365, ((min(pNewCasesSumC$y29)/mean(pEverIDUSumC$y29))*100)*365, ((min(pNewCasesSumC$y30)/mean(pEverIDUSumC$y30))*100)*365)
HCVC$IncidenceCeiling <- c(((max(pNewCasesSumC$y6)/mean(pEverIDUSumC$y6))*100)*365, ((max(pNewCasesSumC$y7)/mean(pEverIDUSumC$y7))*100)*365, ((max(pNewCasesSumC$y8)/mean(pEverIDUSumC$y8))*100)*365, ((max(pNewCasesSumC$y9)/mean(pEverIDUSumC$y9))*100)*365, ((max(pNewCasesSumC$y10)/mean(pEverIDUSumC$y10))*100)*365, ((max(pNewCasesSumC$y11)/mean(pEverIDUSumC$y11))*100)*365, ((max(pNewCasesSumC$y12)/mean(pEverIDUSumC$y12))*100)*365, ((max(pNewCasesSumC$y13)/mean(pEverIDUSumC$y13))*100)*365, ((max(pNewCasesSumC$y14)/mean(pEverIDUSumC$y14))*100)*365, ((max(pNewCasesSumC$y15)/mean(pEverIDUSumC$y15))*100)*365, ((max(pNewCasesSumC$y16)/mean(pEverIDUSumC$y16))*100)*365, ((max(pNewCasesSumC$y17)/mean(pEverIDUSumC$y17))*100)*365, ((max(pNewCasesSumC$y18)/mean(pEverIDUSumC$y18))*100)*365, ((max(pNewCasesSumC$y19)/mean(pEverIDUSumC$y19))*100)*365, ((max(pNewCasesSumC$y20)/mean(pEverIDUSumC$y20))*100)*365, ((max(pNewCasesSumC$y21)/mean(pEverIDUSumC$y21))*100)*365, ((max(pNewCasesSumC$y22)/mean(pEverIDUSumC$y22))*100)*365, ((max(pNewCasesSumC$y23)/mean(pEverIDUSumC$y23))*100)*365, ((max(pNewCasesSumC$y24)/mean(pEverIDUSumC$y24))*100)*365, ((max(pNewCasesSumC$y25)/mean(pEverIDUSumC$y25))*100)*365, ((max(pNewCasesSumC$y26)/mean(pEverIDUSumC$y26))*100)*365, ((max(pNewCasesSumC$y27)/mean(pEverIDUSumC$y27))*100)*365, ((max(pNewCasesSumC$y28)/mean(pEverIDUSumC$y28))*100)*365, ((max(pNewCasesSumC$y29)/mean(pEverIDUSumC$y29))*100)*365, ((max(pNewCasesSumC$y30)/mean(pEverIDUSumC$y30))*100)*365)
HCVC$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVC$Description <- c("OST intermediate scenario")

HCVD <- data.frame("IncidenceIDU"=c(((mean(pNewCasesSumD$y6)/mean(pEverIDUSumD$y6))*100)*365, ((mean(pNewCasesSumD$y7)/mean(pEverIDUSumD$y7))*100)*365, ((mean(pNewCasesSumD$y8)/mean(pEverIDUSumD$y8))*100)*365, ((mean(pNewCasesSumD$y9)/mean(pEverIDUSumD$y9))*100)*365, ((mean(pNewCasesSumD$y10)/mean(pEverIDUSumD$y10))*100)*365, ((mean(pNewCasesSumD$y11)/mean(pEverIDUSumD$y11))*100)*365, ((mean(pNewCasesSumD$y12)/mean(pEverIDUSumD$y12))*100)*365, ((mean(pNewCasesSumD$y13)/mean(pEverIDUSumD$y13))*100)*365, ((mean(pNewCasesSumD$y14)/mean(pEverIDUSumD$y14))*100)*365, ((mean(pNewCasesSumD$y15)/mean(pEverIDUSumD$y15))*100)*365, ((mean(pNewCasesSumD$y16)/mean(pEverIDUSumD$y16))*100)*365, ((mean(pNewCasesSumD$y17)/mean(pEverIDUSumD$y17))*100)*365, ((mean(pNewCasesSumD$y18)/mean(pEverIDUSumD$y18))*100)*365, ((mean(pNewCasesSumD$y19)/mean(pEverIDUSumD$y19))*100)*365, ((mean(pNewCasesSumD$y20)/mean(pEverIDUSumD$y20))*100)*365, ((mean(pNewCasesSumD$y21)/mean(pEverIDUSumD$y21))*100)*365, ((mean(pNewCasesSumD$y22)/mean(pEverIDUSumD$y22))*100)*365, ((mean(pNewCasesSumD$y23)/mean(pEverIDUSumD$y23))*100)*365, ((mean(pNewCasesSumD$y24)/mean(pEverIDUSumD$y24))*100)*365, ((mean(pNewCasesSumD$y25)/mean(pEverIDUSumD$y25))*100)*365, ((mean(pNewCasesSumD$y26)/mean(pEverIDUSumD$y26))*100)*365, ((mean(pNewCasesSumD$y27)/mean(pEverIDUSumD$y27))*100)*365, ((mean(pNewCasesSumD$y28)/mean(pEverIDUSumD$y28))*100)*365, ((mean(pNewCasesSumD$y29)/mean(pEverIDUSumD$y29))*100)*365, ((mean(pNewCasesSumD$y30)/mean(pEverIDUSumD$y30))*100)*365))
HCVD$IncidenceFloor <- c(((min(pNewCasesSumD$y6)/mean(pEverIDUSumD$y6))*100)*365, ((min(pNewCasesSumD$y7)/mean(pEverIDUSumD$y7))*100)*365, ((min(pNewCasesSumD$y8)/mean(pEverIDUSumD$y8))*100)*365, ((min(pNewCasesSumD$y9)/mean(pEverIDUSumD$y9))*100)*365, ((min(pNewCasesSumD$y10)/mean(pEverIDUSumD$y10))*100)*365, ((min(pNewCasesSumD$y11)/mean(pEverIDUSumD$y11))*100)*365, ((min(pNewCasesSumD$y12)/mean(pEverIDUSumD$y12))*100)*365, ((min(pNewCasesSumD$y13)/mean(pEverIDUSumD$y13))*100)*365, ((min(pNewCasesSumD$y14)/mean(pEverIDUSumD$y14))*100)*365, ((min(pNewCasesSumD$y15)/mean(pEverIDUSumD$y15))*100)*365, ((min(pNewCasesSumD$y16)/mean(pEverIDUSumD$y16))*100)*365, ((min(pNewCasesSumD$y17)/mean(pEverIDUSumD$y17))*100)*365, ((min(pNewCasesSumD$y18)/mean(pEverIDUSumD$y18))*100)*365, ((min(pNewCasesSumD$y19)/mean(pEverIDUSumD$y19))*100)*365, ((min(pNewCasesSumD$y20)/mean(pEverIDUSumD$y20))*100)*365, ((min(pNewCasesSumD$y21)/mean(pEverIDUSumD$y21))*100)*365, ((min(pNewCasesSumD$y22)/mean(pEverIDUSumD$y22))*100)*365, ((min(pNewCasesSumD$y23)/mean(pEverIDUSumD$y23))*100)*365, ((min(pNewCasesSumD$y24)/mean(pEverIDUSumD$y24))*100)*365, ((min(pNewCasesSumD$y25)/mean(pEverIDUSumD$y25))*100)*365, ((min(pNewCasesSumD$y26)/mean(pEverIDUSumD$y26))*100)*365, ((min(pNewCasesSumD$y27)/mean(pEverIDUSumD$y27))*100)*365, ((min(pNewCasesSumD$y28)/mean(pEverIDUSumD$y28))*100)*365, ((min(pNewCasesSumD$y29)/mean(pEverIDUSumD$y29))*100)*365, ((min(pNewCasesSumD$y30)/mean(pEverIDUSumD$y30))*100)*365)
HCVD$IncidenceCeiling <- c(((max(pNewCasesSumD$y6)/mean(pEverIDUSumD$y6))*100)*365, ((max(pNewCasesSumD$y7)/mean(pEverIDUSumD$y7))*100)*365, ((max(pNewCasesSumD$y8)/mean(pEverIDUSumD$y8))*100)*365, ((max(pNewCasesSumD$y9)/mean(pEverIDUSumD$y9))*100)*365, ((max(pNewCasesSumD$y10)/mean(pEverIDUSumD$y10))*100)*365, ((max(pNewCasesSumD$y11)/mean(pEverIDUSumD$y11))*100)*365, ((max(pNewCasesSumD$y12)/mean(pEverIDUSumD$y12))*100)*365, ((max(pNewCasesSumD$y13)/mean(pEverIDUSumD$y13))*100)*365, ((max(pNewCasesSumD$y14)/mean(pEverIDUSumD$y14))*100)*365, ((max(pNewCasesSumD$y15)/mean(pEverIDUSumD$y15))*100)*365, ((max(pNewCasesSumD$y16)/mean(pEverIDUSumD$y16))*100)*365, ((max(pNewCasesSumD$y17)/mean(pEverIDUSumD$y17))*100)*365, ((max(pNewCasesSumD$y18)/mean(pEverIDUSumD$y18))*100)*365, ((max(pNewCasesSumD$y19)/mean(pEverIDUSumD$y19))*100)*365, ((max(pNewCasesSumD$y20)/mean(pEverIDUSumD$y20))*100)*365, ((max(pNewCasesSumD$y21)/mean(pEverIDUSumD$y21))*100)*365, ((max(pNewCasesSumD$y22)/mean(pEverIDUSumD$y22))*100)*365, ((max(pNewCasesSumD$y23)/mean(pEverIDUSumD$y23))*100)*365, ((max(pNewCasesSumD$y24)/mean(pEverIDUSumD$y24))*100)*365, ((max(pNewCasesSumD$y25)/mean(pEverIDUSumD$y25))*100)*365, ((max(pNewCasesSumD$y26)/mean(pEverIDUSumD$y26))*100)*365, ((max(pNewCasesSumD$y27)/mean(pEverIDUSumD$y27))*100)*365, ((max(pNewCasesSumD$y28)/mean(pEverIDUSumD$y28))*100)*365, ((max(pNewCasesSumD$y29)/mean(pEverIDUSumD$y29))*100)*365, ((max(pNewCasesSumD$y30)/mean(pEverIDUSumD$y30))*100)*365)
HCVD$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVD$Description <- c("NSP intermediate scenario")

HCVE <- data.frame("IncidenceIDU"=c(((mean(pNewCasesSumE$y6)/mean(pEverIDUSumE$y6))*100)*365, ((mean(pNewCasesSumE$y7)/mean(pEverIDUSumE$y7))*100)*365, ((mean(pNewCasesSumE$y8)/mean(pEverIDUSumE$y8))*100)*365, ((mean(pNewCasesSumE$y9)/mean(pEverIDUSumE$y9))*100)*365, ((mean(pNewCasesSumE$y10)/mean(pEverIDUSumE$y10))*100)*365, ((mean(pNewCasesSumE$y11)/mean(pEverIDUSumE$y11))*100)*365, ((mean(pNewCasesSumE$y12)/mean(pEverIDUSumE$y12))*100)*365, ((mean(pNewCasesSumE$y13)/mean(pEverIDUSumE$y13))*100)*365, ((mean(pNewCasesSumE$y14)/mean(pEverIDUSumE$y14))*100)*365, ((mean(pNewCasesSumE$y15)/mean(pEverIDUSumE$y15))*100)*365, ((mean(pNewCasesSumE$y16)/mean(pEverIDUSumE$y16))*100)*365, ((mean(pNewCasesSumE$y17)/mean(pEverIDUSumE$y17))*100)*365, ((mean(pNewCasesSumE$y18)/mean(pEverIDUSumE$y18))*100)*365, ((mean(pNewCasesSumE$y19)/mean(pEverIDUSumE$y19))*100)*365, ((mean(pNewCasesSumE$y20)/mean(pEverIDUSumE$y20))*100)*365, ((mean(pNewCasesSumE$y21)/mean(pEverIDUSumE$y21))*100)*365, ((mean(pNewCasesSumE$y22)/mean(pEverIDUSumE$y22))*100)*365, ((mean(pNewCasesSumE$y23)/mean(pEverIDUSumE$y23))*100)*365, ((mean(pNewCasesSumE$y24)/mean(pEverIDUSumE$y24))*100)*365, ((mean(pNewCasesSumE$y25)/mean(pEverIDUSumE$y25))*100)*365, ((mean(pNewCasesSumE$y26)/mean(pEverIDUSumE$y26))*100)*365, ((mean(pNewCasesSumE$y27)/mean(pEverIDUSumE$y27))*100)*365, ((mean(pNewCasesSumE$y28)/mean(pEverIDUSumE$y28))*100)*365, ((mean(pNewCasesSumE$y29)/mean(pEverIDUSumE$y29))*100)*365, ((mean(pNewCasesSumE$y30)/mean(pEverIDUSumE$y30))*100)*365))
HCVE$IncidenceFloor <- c(((min(pNewCasesSumE$y6)/mean(pEverIDUSumE$y6))*100)*365, ((min(pNewCasesSumE$y7)/mean(pEverIDUSumE$y7))*100)*365, ((min(pNewCasesSumE$y8)/mean(pEverIDUSumE$y8))*100)*365, ((min(pNewCasesSumE$y9)/mean(pEverIDUSumE$y9))*100)*365, ((min(pNewCasesSumE$y10)/mean(pEverIDUSumE$y10))*100)*365, ((min(pNewCasesSumE$y11)/mean(pEverIDUSumE$y11))*100)*365, ((min(pNewCasesSumE$y12)/mean(pEverIDUSumE$y12))*100)*365, ((min(pNewCasesSumE$y13)/mean(pEverIDUSumE$y13))*100)*365, ((min(pNewCasesSumE$y14)/mean(pEverIDUSumE$y14))*100)*365, ((min(pNewCasesSumE$y15)/mean(pEverIDUSumE$y15))*100)*365, ((min(pNewCasesSumE$y16)/mean(pEverIDUSumE$y16))*100)*365, ((min(pNewCasesSumE$y17)/mean(pEverIDUSumE$y17))*100)*365, ((min(pNewCasesSumE$y18)/mean(pEverIDUSumE$y18))*100)*365, ((min(pNewCasesSumE$y19)/mean(pEverIDUSumE$y19))*100)*365, ((min(pNewCasesSumE$y20)/mean(pEverIDUSumE$y20))*100)*365, ((min(pNewCasesSumE$y21)/mean(pEverIDUSumE$y21))*100)*365, ((min(pNewCasesSumE$y22)/mean(pEverIDUSumE$y22))*100)*365, ((min(pNewCasesSumE$y23)/mean(pEverIDUSumE$y23))*100)*365, ((min(pNewCasesSumE$y24)/mean(pEverIDUSumE$y24))*100)*365, ((min(pNewCasesSumE$y25)/mean(pEverIDUSumE$y25))*100)*365, ((min(pNewCasesSumE$y26)/mean(pEverIDUSumE$y26))*100)*365, ((min(pNewCasesSumE$y27)/mean(pEverIDUSumE$y27))*100)*365, ((min(pNewCasesSumE$y28)/mean(pEverIDUSumE$y28))*100)*365, ((min(pNewCasesSumE$y29)/mean(pEverIDUSumE$y29))*100)*365, ((min(pNewCasesSumE$y30)/mean(pEverIDUSumE$y30))*100)*365)
HCVE$IncidenceCeiling <- c(((max(pNewCasesSumE$y6)/mean(pEverIDUSumE$y6))*100)*365, ((max(pNewCasesSumE$y7)/mean(pEverIDUSumE$y7))*100)*365, ((max(pNewCasesSumE$y8)/mean(pEverIDUSumE$y8))*100)*365, ((max(pNewCasesSumE$y9)/mean(pEverIDUSumE$y9))*100)*365, ((max(pNewCasesSumE$y10)/mean(pEverIDUSumE$y10))*100)*365, ((max(pNewCasesSumE$y11)/mean(pEverIDUSumE$y11))*100)*365, ((max(pNewCasesSumE$y12)/mean(pEverIDUSumE$y12))*100)*365, ((max(pNewCasesSumE$y13)/mean(pEverIDUSumE$y13))*100)*365, ((max(pNewCasesSumE$y14)/mean(pEverIDUSumE$y14))*100)*365, ((max(pNewCasesSumE$y15)/mean(pEverIDUSumE$y15))*100)*365, ((max(pNewCasesSumE$y16)/mean(pEverIDUSumE$y16))*100)*365, ((max(pNewCasesSumE$y17)/mean(pEverIDUSumE$y17))*100)*365, ((max(pNewCasesSumE$y18)/mean(pEverIDUSumE$y18))*100)*365, ((max(pNewCasesSumE$y19)/mean(pEverIDUSumE$y19))*100)*365, ((max(pNewCasesSumE$y20)/mean(pEverIDUSumE$y20))*100)*365, ((max(pNewCasesSumE$y21)/mean(pEverIDUSumE$y21))*100)*365, ((max(pNewCasesSumE$y22)/mean(pEverIDUSumE$y22))*100)*365, ((max(pNewCasesSumE$y23)/mean(pEverIDUSumE$y23))*100)*365, ((max(pNewCasesSumE$y24)/mean(pEverIDUSumE$y24))*100)*365, ((max(pNewCasesSumE$y25)/mean(pEverIDUSumE$y25))*100)*365, ((max(pNewCasesSumE$y26)/mean(pEverIDUSumE$y26))*100)*365, ((max(pNewCasesSumE$y27)/mean(pEverIDUSumE$y27))*100)*365, ((max(pNewCasesSumE$y28)/mean(pEverIDUSumE$y28))*100)*365, ((max(pNewCasesSumE$y29)/mean(pEverIDUSumE$y29))*100)*365, ((max(pNewCasesSumE$y30)/mean(pEverIDUSumE$y30))*100)*365)
HCVE$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVE$Description <- c("Reduction intermediate scenario")

HCVF <- data.frame("IncidenceIDU"=c(((mean(pNewCasesSumF$y6)/mean(pEverIDUSumF$y6))*100)*365, ((mean(pNewCasesSumF$y7)/mean(pEverIDUSumF$y7))*100)*365, ((mean(pNewCasesSumF$y8)/mean(pEverIDUSumF$y8))*100)*365, ((mean(pNewCasesSumF$y9)/mean(pEverIDUSumF$y9))*100)*365, ((mean(pNewCasesSumF$y10)/mean(pEverIDUSumF$y10))*100)*365, ((mean(pNewCasesSumF$y11)/mean(pEverIDUSumF$y11))*100)*365, ((mean(pNewCasesSumF$y12)/mean(pEverIDUSumF$y12))*100)*365, ((mean(pNewCasesSumF$y13)/mean(pEverIDUSumF$y13))*100)*365, ((mean(pNewCasesSumF$y14)/mean(pEverIDUSumF$y14))*100)*365, ((mean(pNewCasesSumF$y15)/mean(pEverIDUSumF$y15))*100)*365, ((mean(pNewCasesSumF$y16)/mean(pEverIDUSumF$y16))*100)*365, ((mean(pNewCasesSumF$y17)/mean(pEverIDUSumF$y17))*100)*365, ((mean(pNewCasesSumF$y18)/mean(pEverIDUSumF$y18))*100)*365, ((mean(pNewCasesSumF$y19)/mean(pEverIDUSumF$y19))*100)*365, ((mean(pNewCasesSumF$y20)/mean(pEverIDUSumF$y20))*100)*365, ((mean(pNewCasesSumF$y21)/mean(pEverIDUSumF$y21))*100)*365, ((mean(pNewCasesSumF$y22)/mean(pEverIDUSumF$y22))*100)*365, ((mean(pNewCasesSumF$y23)/mean(pEverIDUSumF$y23))*100)*365, ((mean(pNewCasesSumF$y24)/mean(pEverIDUSumF$y24))*100)*365, ((mean(pNewCasesSumF$y25)/mean(pEverIDUSumF$y25))*100)*365, ((mean(pNewCasesSumF$y26)/mean(pEverIDUSumF$y26))*100)*365, ((mean(pNewCasesSumF$y27)/mean(pEverIDUSumF$y27))*100)*365, ((mean(pNewCasesSumF$y28)/mean(pEverIDUSumF$y28))*100)*365, ((mean(pNewCasesSumF$y29)/mean(pEverIDUSumF$y29))*100)*365, ((mean(pNewCasesSumF$y30)/mean(pEverIDUSumF$y30))*100)*365))
HCVF$IncidenceFloor <- c(((min(pNewCasesSumF$y6)/mean(pEverIDUSumF$y6))*100)*365, ((min(pNewCasesSumF$y7)/mean(pEverIDUSumF$y7))*100)*365, ((min(pNewCasesSumF$y8)/mean(pEverIDUSumF$y8))*100)*365, ((min(pNewCasesSumF$y9)/mean(pEverIDUSumF$y9))*100)*365, ((min(pNewCasesSumF$y10)/mean(pEverIDUSumF$y10))*100)*365, ((min(pNewCasesSumF$y11)/mean(pEverIDUSumF$y11))*100)*365, ((min(pNewCasesSumF$y12)/mean(pEverIDUSumF$y12))*100)*365, ((min(pNewCasesSumF$y13)/mean(pEverIDUSumF$y13))*100)*365, ((min(pNewCasesSumF$y14)/mean(pEverIDUSumF$y14))*100)*365, ((min(pNewCasesSumF$y15)/mean(pEverIDUSumF$y15))*100)*365, ((min(pNewCasesSumF$y16)/mean(pEverIDUSumF$y16))*100)*365, ((min(pNewCasesSumF$y17)/mean(pEverIDUSumF$y17))*100)*365, ((min(pNewCasesSumF$y18)/mean(pEverIDUSumF$y18))*100)*365, ((min(pNewCasesSumF$y19)/mean(pEverIDUSumF$y19))*100)*365, ((min(pNewCasesSumF$y20)/mean(pEverIDUSumF$y20))*100)*365, ((min(pNewCasesSumF$y21)/mean(pEverIDUSumF$y21))*100)*365, ((min(pNewCasesSumF$y22)/mean(pEverIDUSumF$y22))*100)*365, ((min(pNewCasesSumF$y23)/mean(pEverIDUSumF$y23))*100)*365, ((min(pNewCasesSumF$y24)/mean(pEverIDUSumF$y24))*100)*365, ((min(pNewCasesSumF$y25)/mean(pEverIDUSumF$y25))*100)*365, ((min(pNewCasesSumF$y26)/mean(pEverIDUSumF$y26))*100)*365, ((min(pNewCasesSumF$y27)/mean(pEverIDUSumF$y27))*100)*365, ((min(pNewCasesSumF$y28)/mean(pEverIDUSumF$y28))*100)*365, ((min(pNewCasesSumF$y29)/mean(pEverIDUSumF$y29))*100)*365, ((min(pNewCasesSumF$y30)/mean(pEverIDUSumF$y30))*100)*365)
HCVF$IncidenceCeiling <- c(((max(pNewCasesSumF$y6)/mean(pEverIDUSumF$y6))*100)*365, ((max(pNewCasesSumF$y7)/mean(pEverIDUSumF$y7))*100)*365, ((max(pNewCasesSumF$y8)/mean(pEverIDUSumF$y8))*100)*365, ((max(pNewCasesSumF$y9)/mean(pEverIDUSumF$y9))*100)*365, ((max(pNewCasesSumF$y10)/mean(pEverIDUSumF$y10))*100)*365, ((max(pNewCasesSumF$y11)/mean(pEverIDUSumF$y11))*100)*365, ((max(pNewCasesSumF$y12)/mean(pEverIDUSumF$y12))*100)*365, ((max(pNewCasesSumF$y13)/mean(pEverIDUSumF$y13))*100)*365, ((max(pNewCasesSumF$y14)/mean(pEverIDUSumF$y14))*100)*365, ((max(pNewCasesSumF$y15)/mean(pEverIDUSumF$y15))*100)*365, ((max(pNewCasesSumF$y16)/mean(pEverIDUSumF$y16))*100)*365, ((max(pNewCasesSumF$y17)/mean(pEverIDUSumF$y17))*100)*365, ((max(pNewCasesSumF$y18)/mean(pEverIDUSumF$y18))*100)*365, ((max(pNewCasesSumF$y19)/mean(pEverIDUSumF$y19))*100)*365, ((max(pNewCasesSumF$y20)/mean(pEverIDUSumF$y20))*100)*365, ((max(pNewCasesSumF$y21)/mean(pEverIDUSumF$y21))*100)*365, ((max(pNewCasesSumF$y22)/mean(pEverIDUSumF$y22))*100)*365, ((max(pNewCasesSumF$y23)/mean(pEverIDUSumF$y23))*100)*365, ((max(pNewCasesSumF$y24)/mean(pEverIDUSumF$y24))*100)*365, ((max(pNewCasesSumF$y25)/mean(pEverIDUSumF$y25))*100)*365, ((max(pNewCasesSumF$y26)/mean(pEverIDUSumF$y26))*100)*365, ((max(pNewCasesSumF$y27)/mean(pEverIDUSumF$y27))*100)*365, ((max(pNewCasesSumF$y28)/mean(pEverIDUSumF$y28))*100)*365, ((max(pNewCasesSumF$y29)/mean(pEverIDUSumF$y29))*100)*365, ((max(pNewCasesSumF$y30)/mean(pEverIDUSumF$y30))*100)*365)
HCVF$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVF$Description <- c("DAA optimistic + OST intermediate scenario")

HCVG <- data.frame("IncidenceIDU"=c(((mean(pNewCasesSumG$y6)/mean(pEverIDUSumG$y6))*100)*365, ((mean(pNewCasesSumG$y7)/mean(pEverIDUSumG$y7))*100)*365, ((mean(pNewCasesSumG$y8)/mean(pEverIDUSumG$y8))*100)*365, ((mean(pNewCasesSumG$y9)/mean(pEverIDUSumG$y9))*100)*365, ((mean(pNewCasesSumG$y10)/mean(pEverIDUSumG$y10))*100)*365, ((mean(pNewCasesSumG$y11)/mean(pEverIDUSumG$y11))*100)*365, ((mean(pNewCasesSumG$y12)/mean(pEverIDUSumG$y12))*100)*365, ((mean(pNewCasesSumG$y13)/mean(pEverIDUSumG$y13))*100)*365, ((mean(pNewCasesSumG$y14)/mean(pEverIDUSumG$y14))*100)*365, ((mean(pNewCasesSumG$y15)/mean(pEverIDUSumG$y15))*100)*365, ((mean(pNewCasesSumG$y16)/mean(pEverIDUSumG$y16))*100)*365, ((mean(pNewCasesSumG$y17)/mean(pEverIDUSumG$y17))*100)*365, ((mean(pNewCasesSumG$y18)/mean(pEverIDUSumG$y18))*100)*365, ((mean(pNewCasesSumG$y19)/mean(pEverIDUSumG$y19))*100)*365, ((mean(pNewCasesSumG$y20)/mean(pEverIDUSumG$y20))*100)*365, ((mean(pNewCasesSumG$y21)/mean(pEverIDUSumG$y21))*100)*365, ((mean(pNewCasesSumG$y22)/mean(pEverIDUSumG$y22))*100)*365, ((mean(pNewCasesSumG$y23)/mean(pEverIDUSumG$y23))*100)*365, ((mean(pNewCasesSumG$y24)/mean(pEverIDUSumG$y24))*100)*365, ((mean(pNewCasesSumG$y25)/mean(pEverIDUSumG$y25))*100)*365, ((mean(pNewCasesSumG$y26)/mean(pEverIDUSumG$y26))*100)*365, ((mean(pNewCasesSumG$y27)/mean(pEverIDUSumG$y27))*100)*365, ((mean(pNewCasesSumG$y28)/mean(pEverIDUSumG$y28))*100)*365, ((mean(pNewCasesSumG$y29)/mean(pEverIDUSumG$y29))*100)*365, ((mean(pNewCasesSumG$y30)/mean(pEverIDUSumG$y30))*100)*365))
HCVG$IncidenceFloor <- c(((min(pNewCasesSumG$y6)/mean(pEverIDUSumG$y6))*100)*365, ((min(pNewCasesSumG$y7)/mean(pEverIDUSumG$y7))*100)*365, ((min(pNewCasesSumG$y8)/mean(pEverIDUSumG$y8))*100)*365, ((min(pNewCasesSumG$y9)/mean(pEverIDUSumG$y9))*100)*365, ((min(pNewCasesSumG$y10)/mean(pEverIDUSumG$y10))*100)*365, ((min(pNewCasesSumG$y11)/mean(pEverIDUSumG$y11))*100)*365, ((min(pNewCasesSumG$y12)/mean(pEverIDUSumG$y12))*100)*365, ((min(pNewCasesSumG$y13)/mean(pEverIDUSumG$y13))*100)*365, ((min(pNewCasesSumG$y14)/mean(pEverIDUSumG$y14))*100)*365, ((min(pNewCasesSumG$y15)/mean(pEverIDUSumG$y15))*100)*365, ((min(pNewCasesSumG$y16)/mean(pEverIDUSumG$y16))*100)*365, ((min(pNewCasesSumG$y17)/mean(pEverIDUSumG$y17))*100)*365, ((min(pNewCasesSumG$y18)/mean(pEverIDUSumG$y18))*100)*365, ((min(pNewCasesSumG$y19)/mean(pEverIDUSumG$y19))*100)*365, ((min(pNewCasesSumG$y20)/mean(pEverIDUSumG$y20))*100)*365, ((min(pNewCasesSumG$y21)/mean(pEverIDUSumG$y21))*100)*365, ((min(pNewCasesSumG$y22)/mean(pEverIDUSumG$y22))*100)*365, ((min(pNewCasesSumG$y23)/mean(pEverIDUSumG$y23))*100)*365, ((min(pNewCasesSumG$y24)/mean(pEverIDUSumG$y24))*100)*365, ((min(pNewCasesSumG$y25)/mean(pEverIDUSumG$y25))*100)*365, ((min(pNewCasesSumG$y26)/mean(pEverIDUSumG$y26))*100)*365, ((min(pNewCasesSumG$y27)/mean(pEverIDUSumG$y27))*100)*365, ((min(pNewCasesSumG$y28)/mean(pEverIDUSumG$y28))*100)*365, ((min(pNewCasesSumG$y29)/mean(pEverIDUSumG$y29))*100)*365, ((min(pNewCasesSumG$y30)/mean(pEverIDUSumG$y30))*100)*365)
HCVG$IncidenceCeiling <- c(((max(pNewCasesSumG$y6)/mean(pEverIDUSumG$y6))*100)*365, ((max(pNewCasesSumG$y7)/mean(pEverIDUSumG$y7))*100)*365, ((max(pNewCasesSumG$y8)/mean(pEverIDUSumG$y8))*100)*365, ((max(pNewCasesSumG$y9)/mean(pEverIDUSumG$y9))*100)*365, ((max(pNewCasesSumG$y10)/mean(pEverIDUSumG$y10))*100)*365, ((max(pNewCasesSumG$y11)/mean(pEverIDUSumG$y11))*100)*365, ((max(pNewCasesSumG$y12)/mean(pEverIDUSumG$y12))*100)*365, ((max(pNewCasesSumG$y13)/mean(pEverIDUSumG$y13))*100)*365, ((max(pNewCasesSumG$y14)/mean(pEverIDUSumG$y14))*100)*365, ((max(pNewCasesSumG$y15)/mean(pEverIDUSumG$y15))*100)*365, ((max(pNewCasesSumG$y16)/mean(pEverIDUSumG$y16))*100)*365, ((max(pNewCasesSumG$y17)/mean(pEverIDUSumG$y17))*100)*365, ((max(pNewCasesSumG$y18)/mean(pEverIDUSumG$y18))*100)*365, ((max(pNewCasesSumG$y19)/mean(pEverIDUSumG$y19))*100)*365, ((max(pNewCasesSumG$y20)/mean(pEverIDUSumG$y20))*100)*365, ((max(pNewCasesSumG$y21)/mean(pEverIDUSumG$y21))*100)*365, ((max(pNewCasesSumG$y22)/mean(pEverIDUSumG$y22))*100)*365, ((max(pNewCasesSumG$y23)/mean(pEverIDUSumG$y23))*100)*365, ((max(pNewCasesSumG$y24)/mean(pEverIDUSumG$y24))*100)*365, ((max(pNewCasesSumG$y25)/mean(pEverIDUSumG$y25))*100)*365, ((max(pNewCasesSumG$y26)/mean(pEverIDUSumG$y26))*100)*365, ((max(pNewCasesSumG$y27)/mean(pEverIDUSumG$y27))*100)*365, ((max(pNewCasesSumG$y28)/mean(pEverIDUSumG$y28))*100)*365, ((max(pNewCasesSumG$y29)/mean(pEverIDUSumG$y29))*100)*365, ((max(pNewCasesSumG$y30)/mean(pEverIDUSumG$y30))*100)*365)
HCVG$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVG$Description <- c("DAA optimistic + OST intermediate + NSP intermediate scenario")

HCVH <- data.frame("IncidenceIDU"=c(((mean(pNewCasesSumH$y6)/mean(pEverIDUSumH$y6))*100)*365, ((mean(pNewCasesSumH$y7)/mean(pEverIDUSumH$y7))*100)*365, ((mean(pNewCasesSumH$y8)/mean(pEverIDUSumH$y8))*100)*365, ((mean(pNewCasesSumH$y9)/mean(pEverIDUSumH$y9))*100)*365, ((mean(pNewCasesSumH$y10)/mean(pEverIDUSumH$y10))*100)*365, ((mean(pNewCasesSumH$y11)/mean(pEverIDUSumH$y11))*100)*365, ((mean(pNewCasesSumH$y12)/mean(pEverIDUSumH$y12))*100)*365, ((mean(pNewCasesSumH$y13)/mean(pEverIDUSumH$y13))*100)*365, ((mean(pNewCasesSumH$y14)/mean(pEverIDUSumH$y14))*100)*365, ((mean(pNewCasesSumH$y15)/mean(pEverIDUSumH$y15))*100)*365, ((mean(pNewCasesSumH$y16)/mean(pEverIDUSumH$y16))*100)*365, ((mean(pNewCasesSumH$y17)/mean(pEverIDUSumH$y17))*100)*365, ((mean(pNewCasesSumH$y18)/mean(pEverIDUSumH$y18))*100)*365, ((mean(pNewCasesSumH$y19)/mean(pEverIDUSumH$y19))*100)*365, ((mean(pNewCasesSumH$y20)/mean(pEverIDUSumH$y20))*100)*365, ((mean(pNewCasesSumH$y21)/mean(pEverIDUSumH$y21))*100)*365, ((mean(pNewCasesSumH$y22)/mean(pEverIDUSumH$y22))*100)*365, ((mean(pNewCasesSumH$y23)/mean(pEverIDUSumH$y23))*100)*365, ((mean(pNewCasesSumH$y24)/mean(pEverIDUSumH$y24))*100)*365, ((mean(pNewCasesSumH$y25)/mean(pEverIDUSumH$y25))*100)*365, ((mean(pNewCasesSumH$y26)/mean(pEverIDUSumH$y26))*100)*365, ((mean(pNewCasesSumH$y27)/mean(pEverIDUSumH$y27))*100)*365, ((mean(pNewCasesSumH$y28)/mean(pEverIDUSumH$y28))*100)*365, ((mean(pNewCasesSumH$y29)/mean(pEverIDUSumH$y29))*100)*365, ((mean(pNewCasesSumH$y30)/mean(pEverIDUSumH$y30))*100)*365))
HCVH$IncidenceFloor <- c(((min(pNewCasesSumH$y6)/mean(pEverIDUSumH$y6))*100)*365, ((min(pNewCasesSumH$y7)/mean(pEverIDUSumH$y7))*100)*365, ((min(pNewCasesSumH$y8)/mean(pEverIDUSumH$y8))*100)*365, ((min(pNewCasesSumH$y9)/mean(pEverIDUSumH$y9))*100)*365, ((min(pNewCasesSumH$y10)/mean(pEverIDUSumH$y10))*100)*365, ((min(pNewCasesSumH$y11)/mean(pEverIDUSumH$y11))*100)*365, ((min(pNewCasesSumH$y12)/mean(pEverIDUSumH$y12))*100)*365, ((min(pNewCasesSumH$y13)/mean(pEverIDUSumH$y13))*100)*365, ((min(pNewCasesSumH$y14)/mean(pEverIDUSumH$y14))*100)*365, ((min(pNewCasesSumH$y15)/mean(pEverIDUSumH$y15))*100)*365, ((min(pNewCasesSumH$y16)/mean(pEverIDUSumH$y16))*100)*365, ((min(pNewCasesSumH$y17)/mean(pEverIDUSumH$y17))*100)*365, ((min(pNewCasesSumH$y18)/mean(pEverIDUSumH$y18))*100)*365, ((min(pNewCasesSumH$y19)/mean(pEverIDUSumH$y19))*100)*365, ((min(pNewCasesSumH$y20)/mean(pEverIDUSumH$y20))*100)*365, ((min(pNewCasesSumH$y21)/mean(pEverIDUSumH$y21))*100)*365, ((min(pNewCasesSumH$y22)/mean(pEverIDUSumH$y22))*100)*365, ((min(pNewCasesSumH$y23)/mean(pEverIDUSumH$y23))*100)*365, ((min(pNewCasesSumH$y24)/mean(pEverIDUSumH$y24))*100)*365, ((min(pNewCasesSumH$y25)/mean(pEverIDUSumH$y25))*100)*365, ((min(pNewCasesSumH$y26)/mean(pEverIDUSumH$y26))*100)*365, ((min(pNewCasesSumH$y27)/mean(pEverIDUSumH$y27))*100)*365, ((min(pNewCasesSumH$y28)/mean(pEverIDUSumH$y28))*100)*365, ((min(pNewCasesSumH$y29)/mean(pEverIDUSumH$y29))*100)*365, ((min(pNewCasesSumH$y30)/mean(pEverIDUSumH$y30))*100)*365)
HCVH$IncidenceCeiling <- c(((max(pNewCasesSumH$y6)/mean(pEverIDUSumH$y6))*100)*365, ((max(pNewCasesSumH$y7)/mean(pEverIDUSumH$y7))*100)*365, ((max(pNewCasesSumH$y8)/mean(pEverIDUSumH$y8))*100)*365, ((max(pNewCasesSumH$y9)/mean(pEverIDUSumH$y9))*100)*365, ((max(pNewCasesSumH$y10)/mean(pEverIDUSumH$y10))*100)*365, ((max(pNewCasesSumH$y11)/mean(pEverIDUSumH$y11))*100)*365, ((max(pNewCasesSumH$y12)/mean(pEverIDUSumH$y12))*100)*365, ((max(pNewCasesSumH$y13)/mean(pEverIDUSumH$y13))*100)*365, ((max(pNewCasesSumH$y14)/mean(pEverIDUSumH$y14))*100)*365, ((max(pNewCasesSumH$y15)/mean(pEverIDUSumH$y15))*100)*365, ((max(pNewCasesSumH$y16)/mean(pEverIDUSumH$y16))*100)*365, ((max(pNewCasesSumH$y17)/mean(pEverIDUSumH$y17))*100)*365, ((max(pNewCasesSumH$y18)/mean(pEverIDUSumH$y18))*100)*365, ((max(pNewCasesSumH$y19)/mean(pEverIDUSumH$y19))*100)*365, ((max(pNewCasesSumH$y20)/mean(pEverIDUSumH$y20))*100)*365, ((max(pNewCasesSumH$y21)/mean(pEverIDUSumH$y21))*100)*365, ((max(pNewCasesSumH$y22)/mean(pEverIDUSumH$y22))*100)*365, ((max(pNewCasesSumH$y23)/mean(pEverIDUSumH$y23))*100)*365, ((max(pNewCasesSumH$y24)/mean(pEverIDUSumH$y24))*100)*365, ((max(pNewCasesSumH$y25)/mean(pEverIDUSumH$y25))*100)*365, ((max(pNewCasesSumH$y26)/mean(pEverIDUSumH$y26))*100)*365, ((max(pNewCasesSumH$y27)/mean(pEverIDUSumH$y27))*100)*365, ((max(pNewCasesSumH$y28)/mean(pEverIDUSumH$y28))*100)*365, ((max(pNewCasesSumH$y29)/mean(pEverIDUSumH$y29))*100)*365, ((max(pNewCasesSumH$y30)/mean(pEverIDUSumH$y30))*100)*365)
HCVH$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVH$Description <- c("Reduction intermediate + DAA optimistic")

HCVI <- data.frame("IncidenceIDU"=c(((mean(pNewCasesSumI$y6)/mean(pEverIDUSumI$y6))*100)*365, ((mean(pNewCasesSumI$y7)/mean(pEverIDUSumI$y7))*100)*365, ((mean(pNewCasesSumI$y8)/mean(pEverIDUSumI$y8))*100)*365, ((mean(pNewCasesSumI$y9)/mean(pEverIDUSumI$y9))*100)*365, ((mean(pNewCasesSumI$y10)/mean(pEverIDUSumI$y10))*100)*365, ((mean(pNewCasesSumI$y11)/mean(pEverIDUSumI$y11))*100)*365, ((mean(pNewCasesSumI$y12)/mean(pEverIDUSumI$y12))*100)*365, ((mean(pNewCasesSumI$y13)/mean(pEverIDUSumI$y13))*100)*365, ((mean(pNewCasesSumI$y14)/mean(pEverIDUSumI$y14))*100)*365, ((mean(pNewCasesSumI$y15)/mean(pEverIDUSumI$y15))*100)*365, ((mean(pNewCasesSumI$y16)/mean(pEverIDUSumI$y16))*100)*365, ((mean(pNewCasesSumI$y17)/mean(pEverIDUSumI$y17))*100)*365, ((mean(pNewCasesSumI$y18)/mean(pEverIDUSumI$y18))*100)*365, ((mean(pNewCasesSumI$y19)/mean(pEverIDUSumI$y19))*100)*365, ((mean(pNewCasesSumI$y20)/mean(pEverIDUSumI$y20))*100)*365, ((mean(pNewCasesSumI$y21)/mean(pEverIDUSumI$y21))*100)*365, ((mean(pNewCasesSumI$y22)/mean(pEverIDUSumI$y22))*100)*365, ((mean(pNewCasesSumI$y23)/mean(pEverIDUSumI$y23))*100)*365, ((mean(pNewCasesSumI$y24)/mean(pEverIDUSumI$y24))*100)*365, ((mean(pNewCasesSumI$y25)/mean(pEverIDUSumI$y25))*100)*365, ((mean(pNewCasesSumI$y26)/mean(pEverIDUSumI$y26))*100)*365, ((mean(pNewCasesSumI$y27)/mean(pEverIDUSumI$y27))*100)*365, ((mean(pNewCasesSumI$y28)/mean(pEverIDUSumI$y28))*100)*365, ((mean(pNewCasesSumI$y29)/mean(pEverIDUSumI$y29))*100)*365, ((mean(pNewCasesSumI$y30)/mean(pEverIDUSumI$y30))*100)*365))
HCVI$IncidenceFloor <- c(((min(pNewCasesSumI$y6)/mean(pEverIDUSumI$y6))*100)*365, ((min(pNewCasesSumI$y7)/mean(pEverIDUSumI$y7))*100)*365, ((min(pNewCasesSumI$y8)/mean(pEverIDUSumI$y8))*100)*365, ((min(pNewCasesSumI$y9)/mean(pEverIDUSumI$y9))*100)*365, ((min(pNewCasesSumI$y10)/mean(pEverIDUSumI$y10))*100)*365, ((min(pNewCasesSumI$y11)/mean(pEverIDUSumI$y11))*100)*365, ((min(pNewCasesSumI$y12)/mean(pEverIDUSumI$y12))*100)*365, ((min(pNewCasesSumI$y13)/mean(pEverIDUSumI$y13))*100)*365, ((min(pNewCasesSumI$y14)/mean(pEverIDUSumI$y14))*100)*365, ((min(pNewCasesSumI$y15)/mean(pEverIDUSumI$y15))*100)*365, ((min(pNewCasesSumI$y16)/mean(pEverIDUSumI$y16))*100)*365, ((min(pNewCasesSumI$y17)/mean(pEverIDUSumI$y17))*100)*365, ((min(pNewCasesSumI$y18)/mean(pEverIDUSumI$y18))*100)*365, ((min(pNewCasesSumI$y19)/mean(pEverIDUSumI$y19))*100)*365, ((min(pNewCasesSumI$y20)/mean(pEverIDUSumI$y20))*100)*365, ((min(pNewCasesSumI$y21)/mean(pEverIDUSumI$y21))*100)*365, ((min(pNewCasesSumI$y22)/mean(pEverIDUSumI$y22))*100)*365, ((min(pNewCasesSumI$y23)/mean(pEverIDUSumI$y23))*100)*365, ((min(pNewCasesSumI$y24)/mean(pEverIDUSumI$y24))*100)*365, ((min(pNewCasesSumI$y25)/mean(pEverIDUSumI$y25))*100)*365, ((min(pNewCasesSumI$y26)/mean(pEverIDUSumI$y26))*100)*365, ((min(pNewCasesSumI$y27)/mean(pEverIDUSumI$y27))*100)*365, ((min(pNewCasesSumI$y28)/mean(pEverIDUSumI$y28))*100)*365, ((min(pNewCasesSumI$y29)/mean(pEverIDUSumI$y29))*100)*365, ((min(pNewCasesSumI$y30)/mean(pEverIDUSumI$y30))*100)*365)
HCVI$IncidenceCeiling <- c(((max(pNewCasesSumI$y6)/mean(pEverIDUSumI$y6))*100)*365, ((max(pNewCasesSumI$y7)/mean(pEverIDUSumI$y7))*100)*365, ((max(pNewCasesSumI$y8)/mean(pEverIDUSumI$y8))*100)*365, ((max(pNewCasesSumI$y9)/mean(pEverIDUSumI$y9))*100)*365, ((max(pNewCasesSumI$y10)/mean(pEverIDUSumI$y10))*100)*365, ((max(pNewCasesSumI$y11)/mean(pEverIDUSumI$y11))*100)*365, ((max(pNewCasesSumI$y12)/mean(pEverIDUSumI$y12))*100)*365, ((max(pNewCasesSumI$y13)/mean(pEverIDUSumI$y13))*100)*365, ((max(pNewCasesSumI$y14)/mean(pEverIDUSumI$y14))*100)*365, ((max(pNewCasesSumI$y15)/mean(pEverIDUSumI$y15))*100)*365, ((max(pNewCasesSumI$y16)/mean(pEverIDUSumI$y16))*100)*365, ((max(pNewCasesSumI$y17)/mean(pEverIDUSumI$y17))*100)*365, ((max(pNewCasesSumI$y18)/mean(pEverIDUSumI$y18))*100)*365, ((max(pNewCasesSumI$y19)/mean(pEverIDUSumI$y19))*100)*365, ((max(pNewCasesSumI$y20)/mean(pEverIDUSumI$y20))*100)*365, ((max(pNewCasesSumI$y21)/mean(pEverIDUSumI$y21))*100)*365, ((max(pNewCasesSumI$y22)/mean(pEverIDUSumI$y22))*100)*365, ((max(pNewCasesSumI$y23)/mean(pEverIDUSumI$y23))*100)*365, ((max(pNewCasesSumI$y24)/mean(pEverIDUSumI$y24))*100)*365, ((max(pNewCasesSumI$y25)/mean(pEverIDUSumI$y25))*100)*365, ((max(pNewCasesSumI$y26)/mean(pEverIDUSumI$y26))*100)*365, ((max(pNewCasesSumI$y27)/mean(pEverIDUSumI$y27))*100)*365, ((max(pNewCasesSumI$y28)/mean(pEverIDUSumI$y28))*100)*365, ((max(pNewCasesSumI$y29)/mean(pEverIDUSumI$y29))*100)*365, ((max(pNewCasesSumI$y30)/mean(pEverIDUSumI$y30))*100)*365)
HCVI$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVI$Description <- c("Reduction intermediate + DAA optimistic + OST intermediate")

HCVJ <- data.frame("IncidenceIDU"=c(((mean(pNewCasesSumJ$y6)/mean(pEverIDUSumJ$y6))*100)*365, ((mean(pNewCasesSumJ$y7)/mean(pEverIDUSumJ$y7))*100)*365, ((mean(pNewCasesSumJ$y8)/mean(pEverIDUSumJ$y8))*100)*365, ((mean(pNewCasesSumJ$y9)/mean(pEverIDUSumJ$y9))*100)*365, ((mean(pNewCasesSumJ$y10)/mean(pEverIDUSumJ$y10))*100)*365, ((mean(pNewCasesSumJ$y11)/mean(pEverIDUSumJ$y11))*100)*365, ((mean(pNewCasesSumJ$y12)/mean(pEverIDUSumJ$y12))*100)*365, ((mean(pNewCasesSumJ$y13)/mean(pEverIDUSumJ$y13))*100)*365, ((mean(pNewCasesSumJ$y14)/mean(pEverIDUSumJ$y14))*100)*365, ((mean(pNewCasesSumJ$y15)/mean(pEverIDUSumJ$y15))*100)*365, ((mean(pNewCasesSumJ$y16)/mean(pEverIDUSumJ$y16))*100)*365, ((mean(pNewCasesSumJ$y17)/mean(pEverIDUSumJ$y17))*100)*365, ((mean(pNewCasesSumJ$y18)/mean(pEverIDUSumJ$y18))*100)*365, ((mean(pNewCasesSumJ$y19)/mean(pEverIDUSumJ$y19))*100)*365, ((mean(pNewCasesSumJ$y20)/mean(pEverIDUSumJ$y20))*100)*365, ((mean(pNewCasesSumJ$y21)/mean(pEverIDUSumJ$y21))*100)*365, ((mean(pNewCasesSumJ$y22)/mean(pEverIDUSumJ$y22))*100)*365, ((mean(pNewCasesSumJ$y23)/mean(pEverIDUSumJ$y23))*100)*365, ((mean(pNewCasesSumJ$y24)/mean(pEverIDUSumJ$y24))*100)*365, ((mean(pNewCasesSumJ$y25)/mean(pEverIDUSumJ$y25))*100)*365, ((mean(pNewCasesSumJ$y26)/mean(pEverIDUSumJ$y26))*100)*365, ((mean(pNewCasesSumJ$y27)/mean(pEverIDUSumJ$y27))*100)*365, ((mean(pNewCasesSumJ$y28)/mean(pEverIDUSumJ$y28))*100)*365, ((mean(pNewCasesSumJ$y29)/mean(pEverIDUSumJ$y29))*100)*365, ((mean(pNewCasesSumJ$y30)/mean(pEverIDUSumJ$y30))*100)*365))
HCVJ$IncidenceFloor <- c(((min(pNewCasesSumJ$y6)/mean(pEverIDUSumJ$y6))*100)*365, ((min(pNewCasesSumJ$y7)/mean(pEverIDUSumJ$y7))*100)*365, ((min(pNewCasesSumJ$y8)/mean(pEverIDUSumJ$y8))*100)*365, ((min(pNewCasesSumJ$y9)/mean(pEverIDUSumJ$y9))*100)*365, ((min(pNewCasesSumJ$y10)/mean(pEverIDUSumJ$y10))*100)*365, ((min(pNewCasesSumJ$y11)/mean(pEverIDUSumJ$y11))*100)*365, ((min(pNewCasesSumJ$y12)/mean(pEverIDUSumJ$y12))*100)*365, ((min(pNewCasesSumJ$y13)/mean(pEverIDUSumJ$y13))*100)*365, ((min(pNewCasesSumJ$y14)/mean(pEverIDUSumJ$y14))*100)*365, ((min(pNewCasesSumJ$y15)/mean(pEverIDUSumJ$y15))*100)*365, ((min(pNewCasesSumJ$y16)/mean(pEverIDUSumJ$y16))*100)*365, ((min(pNewCasesSumJ$y17)/mean(pEverIDUSumJ$y17))*100)*365, ((min(pNewCasesSumJ$y18)/mean(pEverIDUSumJ$y18))*100)*365, ((min(pNewCasesSumJ$y19)/mean(pEverIDUSumJ$y19))*100)*365, ((min(pNewCasesSumJ$y20)/mean(pEverIDUSumJ$y20))*100)*365, ((min(pNewCasesSumJ$y21)/mean(pEverIDUSumJ$y21))*100)*365, ((min(pNewCasesSumJ$y22)/mean(pEverIDUSumJ$y22))*100)*365, ((min(pNewCasesSumJ$y23)/mean(pEverIDUSumJ$y23))*100)*365, ((min(pNewCasesSumJ$y24)/mean(pEverIDUSumJ$y24))*100)*365, ((min(pNewCasesSumJ$y25)/mean(pEverIDUSumJ$y25))*100)*365, ((min(pNewCasesSumJ$y26)/mean(pEverIDUSumJ$y26))*100)*365, ((min(pNewCasesSumJ$y27)/mean(pEverIDUSumJ$y27))*100)*365, ((min(pNewCasesSumJ$y28)/mean(pEverIDUSumJ$y28))*100)*365, ((min(pNewCasesSumJ$y29)/mean(pEverIDUSumJ$y29))*100)*365, ((min(pNewCasesSumJ$y30)/mean(pEverIDUSumJ$y30))*100)*365)
HCVJ$IncidenceCeiling <- c(((max(pNewCasesSumJ$y6)/mean(pEverIDUSumJ$y6))*100)*365, ((max(pNewCasesSumJ$y7)/mean(pEverIDUSumJ$y7))*100)*365, ((max(pNewCasesSumJ$y8)/mean(pEverIDUSumJ$y8))*100)*365, ((max(pNewCasesSumJ$y9)/mean(pEverIDUSumJ$y9))*100)*365, ((max(pNewCasesSumJ$y10)/mean(pEverIDUSumJ$y10))*100)*365, ((max(pNewCasesSumJ$y11)/mean(pEverIDUSumJ$y11))*100)*365, ((max(pNewCasesSumJ$y12)/mean(pEverIDUSumJ$y12))*100)*365, ((max(pNewCasesSumJ$y13)/mean(pEverIDUSumJ$y13))*100)*365, ((max(pNewCasesSumJ$y14)/mean(pEverIDUSumJ$y14))*100)*365, ((max(pNewCasesSumJ$y15)/mean(pEverIDUSumJ$y15))*100)*365, ((max(pNewCasesSumJ$y16)/mean(pEverIDUSumJ$y16))*100)*365, ((max(pNewCasesSumJ$y17)/mean(pEverIDUSumJ$y17))*100)*365, ((max(pNewCasesSumJ$y18)/mean(pEverIDUSumJ$y18))*100)*365, ((max(pNewCasesSumJ$y19)/mean(pEverIDUSumJ$y19))*100)*365, ((max(pNewCasesSumJ$y20)/mean(pEverIDUSumJ$y20))*100)*365, ((max(pNewCasesSumJ$y21)/mean(pEverIDUSumJ$y21))*100)*365, ((max(pNewCasesSumJ$y22)/mean(pEverIDUSumJ$y22))*100)*365, ((max(pNewCasesSumJ$y23)/mean(pEverIDUSumJ$y23))*100)*365, ((max(pNewCasesSumJ$y24)/mean(pEverIDUSumJ$y24))*100)*365, ((max(pNewCasesSumJ$y25)/mean(pEverIDUSumJ$y25))*100)*365, ((max(pNewCasesSumJ$y26)/mean(pEverIDUSumJ$y26))*100)*365, ((max(pNewCasesSumJ$y27)/mean(pEverIDUSumJ$y27))*100)*365, ((max(pNewCasesSumJ$y28)/mean(pEverIDUSumJ$y28))*100)*365, ((max(pNewCasesSumJ$y29)/mean(pEverIDUSumJ$y29))*100)*365, ((max(pNewCasesSumJ$y30)/mean(pEverIDUSumJ$y30))*100)*365)
HCVJ$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVJ$Description <- c("Reduction intermediate + DAA optimistic + OST intermediate + NSP intermediate scenario")

HCVStopc <- data.frame("IncidenceIDU"=c(17.8))
HCVStopc$IncidenceIDUCI <- c(17.8)
HCVStopc$Year <- c("2015")
HCVStopc$Description <- c("STOP-c HCV incidence")

HCVEvan <- data.frame("IncidenceIDU"=c(12.07, 12.07, 12.07, 9.74, 9.74, 13.3, 13.3, 13.3))
HCVEvan$IncidenceIDUCI <- c( 12.07-8.89, 12.07-8.89, 12.07-8.89, 9.74-6.81, 9.74-6.81, 13.3-8.64, 13.3-8.64, 13.3-8.64)
HCVEvan$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013")
HCVEvan$Description <- c("HITS-p HCV incidence")

HCVPrev <- data.frame("IncidenceIDU"=c(10))
HCVPrev$IncidenceFloor <- c(10)
HCVPrev$IncidenceCeiling <- c(10)
HCVPrev$Year <- c("2015")
HCVPrev$Description <- c("2015 IHS HCV Ab prevalence") #2015 Inmate Health Survey

#PlotE <- ggplot(data=HCV, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("Incidence of HCV\n among incarcerated PWID") + ylim(0, 20)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid")) + geom_point(data=HCVEvan, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4) + geom_errorbar(data=HCVEvan, mapping=aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI), colour="black", width=.1) + ggtitle("A") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title=element_text(hjust = -0.12, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
#ggplot(data=HCV, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence\n among incarcerated PWID") + ylim(0, 50)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid")) + geom_point(data=HCVEvan, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4) + geom_errorbar(data=HCVEvan, mapping=aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI), colour="black", width=.1) + ggtitle("") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title=element_text(hjust = -0.12, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))

#incHCVIDU <- rbind(HCVA, HCVB, HCVC, HCVD, HCVE, HCVF)
incHCVIDU <- rbind(HCVA, HCVB, HCVC, HCVD, HCVE, HCVF, HCVG, HCVH, HCVI, HCVJ)
PlotA <- ggplot(data=incHCVIDU, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=2.5) + scale_linetype_manual(values=c("solid", "longdash", "twodash", "dotted", "dotdash", "dashed", "12345678", "F1", "solid", "dotted", "longdash", "dashed")) + scale_shape_manual(values=c(16, 17, 18, 3, 15, 21, 24, 23, 22, 25, 9, 4))  + ylab("HCV incidence\n among PWID") + geom_vline(xintercept=c(13), linetype="dotted") + scale_color_manual(values=c("coral", "chocolate", "cadetblue", "grey28", "burlywood", "brown", "blue", "aquamarine4", "gold", "darkorchid", "darkgreen", "grey28")) + ylim(0, 20) + geom_point(data=HCVEvan, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4) + geom_errorbar(data=HCVEvan, mapping=aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI), colour="black", width=.1) + geom_point(data=HCVStopc, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4) + ggtitle("A") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.05, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 40, hjust = 1))
##scale_color_manual(values=c("#000000", "#000000", "#000000")) +
#ggplot(data=AbRNA, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(color=Description, shape=Description), size=4) + scale_linetype_manual(values=c("solid","dotted")) + scale_color_manual(values=c("black", "black")) + ylab("Proportion") + ylab("Proportion") + ylim(0, 50) + ggtitle("") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.1, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))
#ggplot(data=HCVA, aes(x=Year, y=IncidenceIDU, group=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ylab("HCV incidence among PWID") + ylim(0, 20)  + geom_line() + geom_point(aes(shape=Description), size=4) +  scale_shape_manual(values=c(1, 16)) + scale_linetype_manual(values=c("dashed", "solid", "dotted")) + geom_vline(xintercept=c(2, 6), linetype="dotted") +  theme_bw() + theme(panel.border = element_blank(), text = element_text(size=12), panel.grid.major = element_blank(),panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), legend.key = element_blank(), legend.title=element_blank(), legend.position="none") + geom_line(data=HCVB, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVB, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(data=HCVC, aes(x=Year, y=IncidenceIDU, group= Description, linetype=Description))  + geom_errorbar(data=HCVC, mapping=aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + ggtitle("Projected HCV incidence with DAA treatment") + theme(legend.position="right")

PlotLegend <- ggplot(data=incHCVIDU, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=2.5) + scale_linetype_manual(values=c("dashed", "solid", "longdash", "twodash", "dotted", "dotdash", "dashed", "12345678", "F1", "solid", "dotted", "longdash", "dashed")) + scale_shape_manual(values=c(12, 16, 17, 18, 3, 15, 21, 24, 23, 22, 25, 9, 4))  + ylab("HCV incidence\n among PWID") + geom_vline(xintercept=c(9, 13), linetype="dotted") + scale_color_manual(values=c("grey28", "coral", "chocolate", "cadetblue", "grey28", "burlywood", "brown", "blue", "aquamarine4", "gold", "darkorchid", "darkgreen", "grey28")) + ylim(0, 30) + geom_point(data=HCVEvan, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4) + geom_errorbar(data=HCVEvan, mapping=aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI), colour="black", width=.1) + geom_point(data=HCVStopc, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4) + geom_point(data=HCVPrev, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4) + ggtitle("A") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.05, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 40, hjust = 1))

##Fix prevalence plots
HCVAp <- data.frame("IncidenceIDU"=c(((mean(pPointHCVabA$y6)/mean(pPointTotalA$y6))*100), ((mean(pPointHCVabA$y7)/mean(pPointTotalA$y7))*100), ((mean(pPointHCVabA$y8)/mean(pPointTotalA$y8))*100), ((mean(pPointHCVabA$y9)/mean(pPointTotalA$y9))*100), ((mean(pPointHCVabA$y10)/mean(pPointTotalA$y10))*100), ((mean(pPointHCVabA$y11)/mean(pPointTotalA$y11))*100), ((mean(pPointHCVabA$y12)/mean(pPointTotalA$y12))*100), ((mean(pPointHCVabA$y13)/mean(pPointTotalA$y13))*100), ((mean(pPointHCVabA$y14)/mean(pPointTotalA$y14))*100) , ((mean(pPointHCVabA$y15)/mean(pPointTotalA$y15))*100) , ((mean(pPointHCVabA$y16)/mean(pPointTotalA$y16))*100) , ((mean(pPointHCVabA$y17)/mean(pPointTotalA$y17))*100) , ((mean(pPointHCVabA$y18)/mean(pPointTotalA$y18))*100) , ((mean(pPointHCVabA$y19)/mean(pPointTotalA$y19))*100) , ((mean(pPointHCVabA$y20)/mean(pPointTotalA$y20))*100) , ((mean(pPointHCVabA$y21)/mean(pPointTotalA$y21))*100) , ((mean(pPointHCVabA$y22)/mean(pPointTotalA$y22))*100) , ((mean(pPointHCVabA$y23)/mean(pPointTotalA$y23))*100) , ((mean(pPointHCVabA$y24)/mean(pPointTotalA$y24))*100) , ((mean(pPointHCVabA$y25)/mean(pPointTotalA$y25))*100) , ((mean(pPointHCVabA$y26)/mean(pPointTotalA$y26))*100), ((mean(pPointHCVabA$y27)/mean(pPointTotalA$y27))*100), ((mean(pPointHCVabA$y28)/mean(pPointTotalA$y28))*100), ((mean(pPointHCVabA$y29)/mean(pPointTotalA$y29))*100), ((mean(pPointHCVabA$y30)/mean(pPointTotalA$y30))*100) ))
HCVAp$IncidenceFloor <- c(((min(pPointHCVabA$y6)/mean(pPointTotalA$y6))*100), ((min(pPointHCVabA$y7)/mean(pPointTotalA$y7))*100), ((min(pPointHCVabA$y8)/mean(pPointTotalA$y8))*100), ((min(pPointHCVabA$y9)/mean(pPointTotalA$y9))*100), ((min(pPointHCVabA$y10)/mean(pPointTotalA$y10))*100), ((min(pPointHCVabA$y11)/mean(pPointTotalA$y11))*100), ((min(pPointHCVabA$y12)/mean(pPointTotalA$y12))*100), ((min(pPointHCVabA$y13)/mean(pPointTotalA$y13))*100), ((min(pPointHCVabA$y14)/mean(pPointTotalA$y14))*100) , ((min(pPointHCVabA$y15)/mean(pPointTotalA$y15))*100) , ((min(pPointHCVabA$y16)/mean(pPointTotalA$y16))*100) , ((min(pPointHCVabA$y17)/mean(pPointTotalA$y17))*100) , ((min(pPointHCVabA$y18)/mean(pPointTotalA$y18))*100) , ((min(pPointHCVabA$y19)/mean(pPointTotalA$y19))*100) , ((min(pPointHCVabA$y20)/mean(pPointTotalA$y20))*100) , ((min(pPointHCVabA$y21)/mean(pPointTotalA$y21))*100) , ((min(pPointHCVabA$y22)/mean(pPointTotalA$y22))*100) , ((min(pPointHCVabA$y23)/mean(pPointTotalA$y23))*100) , ((min(pPointHCVabA$y24)/mean(pPointTotalA$y24))*100) , ((min(pPointHCVabA$y25)/mean(pPointTotalA$y25))*100) , ((min(pPointHCVabA$y26)/mean(pPointTotalA$y26))*100), ((min(pPointHCVabA$y27)/mean(pPointTotalA$y27))*100), ((min(pPointHCVabA$y28)/mean(pPointTotalA$y28))*100), ((min(pPointHCVabA$y29)/mean(pPointTotalA$y29))*100), ((min(pPointHCVabA$y30)/mean(pPointTotalA$y30))*100) )
HCVAp$IncidenceCeiling <- c(((max(pPointHCVabA$y6)/mean(pPointTotalA$y6))*100), ((max(pPointHCVabA$y7)/mean(pPointTotalA$y7))*100), ((max(pPointHCVabA$y8)/mean(pPointTotalA$y8))*100), ((max(pPointHCVabA$y9)/mean(pPointTotalA$y9))*100), ((max(pPointHCVabA$y10)/mean(pPointTotalA$y10))*100), ((max(pPointHCVabA$y11)/mean(pPointTotalA$y11))*100), ((max(pPointHCVabA$y12)/mean(pPointTotalA$y12))*100), ((max(pPointHCVabA$y13)/mean(pPointTotalA$y13))*100), ((max(pPointHCVabA$y14)/mean(pPointTotalA$y14))*100) , ((max(pPointHCVabA$y15)/mean(pPointTotalA$y15))*100) , ((max(pPointHCVabA$y16)/mean(pPointTotalA$y16))*100) , ((max(pPointHCVabA$y17)/mean(pPointTotalA$y17))*100) , ((max(pPointHCVabA$y18)/mean(pPointTotalA$y18))*100) , ((max(pPointHCVabA$y19)/mean(pPointTotalA$y19))*100) , ((max(pPointHCVabA$y20)/mean(pPointTotalA$y20))*100) , ((max(pPointHCVabA$y21)/mean(pPointTotalA$y21))*100) , ((max(pPointHCVabA$y22)/mean(pPointTotalA$y22))*100) , ((max(pPointHCVabA$y23)/mean(pPointTotalA$y23))*100) , ((max(pPointHCVabA$y24)/mean(pPointTotalA$y24))*100) , ((max(pPointHCVabA$y25)/mean(pPointTotalA$y25))*100) , ((max(pPointHCVabA$y26)/mean(pPointTotalA$y26))*100), ((max(pPointHCVabA$y27)/mean(pPointTotalA$y27))*100), ((max(pPointHCVabA$y28)/mean(pPointTotalA$y28))*100), ((max(pPointHCVabA$y29)/mean(pPointTotalA$y29))*100), ((max(pPointHCVabA$y30)/mean(pPointTotalA$y30))*100) )
HCVAp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVAp$Description <- c("Status-quo")

HCVBp <- data.frame("IncidenceIDU"=c(((mean(pPointHCVabB$y6)/mean(pPointTotalB$y6))*100), ((mean(pPointHCVabB$y7)/mean(pPointTotalB$y7))*100), ((mean(pPointHCVabB$y8)/mean(pPointTotalB$y8))*100), ((mean(pPointHCVabB$y9)/mean(pPointTotalB$y9))*100), ((mean(pPointHCVabB$y10)/mean(pPointTotalB$y10))*100), ((mean(pPointHCVabB$y11)/mean(pPointTotalB$y11))*100), ((mean(pPointHCVabB$y12)/mean(pPointTotalB$y12))*100), ((mean(pPointHCVabB$y13)/mean(pPointTotalB$y13))*100), ((mean(pPointHCVabB$y14)/mean(pPointTotalB$y14))*100) , ((mean(pPointHCVabB$y15)/mean(pPointTotalB$y15))*100) , ((mean(pPointHCVabB$y16)/mean(pPointTotalB$y16))*100) , ((mean(pPointHCVabB$y17)/mean(pPointTotalB$y17))*100) , ((mean(pPointHCVabB$y18)/mean(pPointTotalB$y18))*100) , ((mean(pPointHCVabB$y19)/mean(pPointTotalB$y19))*100) , ((mean(pPointHCVabB$y20)/mean(pPointTotalB$y20))*100) , ((mean(pPointHCVabB$y21)/mean(pPointTotalB$y21))*100) , ((mean(pPointHCVabB$y22)/mean(pPointTotalB$y22))*100) , ((mean(pPointHCVabB$y23)/mean(pPointTotalB$y23))*100) , ((mean(pPointHCVabB$y24)/mean(pPointTotalB$y24))*100) , ((mean(pPointHCVabB$y25)/mean(pPointTotalB$y25))*100) , ((mean(pPointHCVabB$y26)/mean(pPointTotalB$y26))*100), ((mean(pPointHCVabB$y27)/mean(pPointTotalB$y27))*100), ((mean(pPointHCVabB$y28)/mean(pPointTotalB$y28))*100), ((mean(pPointHCVabB$y29)/mean(pPointTotalB$y29))*100), ((mean(pPointHCVabB$y30)/mean(pPointTotalB$y30))*100) ))
HCVBp$IncidenceFloor <- c(((min(pPointHCVabB$y6)/mean(pPointTotalB$y6))*100), ((min(pPointHCVabB$y7)/mean(pPointTotalB$y7))*100), ((min(pPointHCVabB$y8)/mean(pPointTotalB$y8))*100), ((min(pPointHCVabB$y9)/mean(pPointTotalB$y9))*100), ((min(pPointHCVabB$y10)/mean(pPointTotalB$y10))*100), ((min(pPointHCVabB$y11)/mean(pPointTotalB$y11))*100), ((min(pPointHCVabB$y12)/mean(pPointTotalB$y12))*100), ((min(pPointHCVabB$y13)/mean(pPointTotalB$y13))*100), ((min(pPointHCVabB$y14)/mean(pPointTotalB$y14))*100) , ((min(pPointHCVabB$y15)/mean(pPointTotalB$y15))*100) , ((min(pPointHCVabB$y16)/mean(pPointTotalB$y16))*100) , ((min(pPointHCVabB$y17)/mean(pPointTotalB$y17))*100) , ((min(pPointHCVabB$y18)/mean(pPointTotalB$y18))*100) , ((min(pPointHCVabB$y19)/mean(pPointTotalB$y19))*100) , ((min(pPointHCVabB$y20)/mean(pPointTotalB$y20))*100) , ((min(pPointHCVabB$y21)/mean(pPointTotalB$y21))*100) , ((min(pPointHCVabB$y22)/mean(pPointTotalB$y22))*100) , ((min(pPointHCVabB$y23)/mean(pPointTotalB$y23))*100) , ((min(pPointHCVabB$y24)/mean(pPointTotalB$y24))*100) , ((min(pPointHCVabB$y25)/mean(pPointTotalB$y25))*100) , ((min(pPointHCVabB$y26)/mean(pPointTotalB$y26))*100), ((min(pPointHCVabB$y27)/mean(pPointTotalB$y27))*100), ((min(pPointHCVabB$y28)/mean(pPointTotalB$y28))*100), ((min(pPointHCVabB$y29)/mean(pPointTotalB$y29))*100), ((min(pPointHCVabB$y30)/mean(pPointTotalB$y30))*100)  )
HCVBp$IncidenceCeiling <- c(((max(pPointHCVabB$y6)/mean(pPointTotalB$y6))*100), ((max(pPointHCVabB$y7)/mean(pPointTotalB$y7))*100), ((max(pPointHCVabB$y8)/mean(pPointTotalB$y8))*100), ((max(pPointHCVabB$y9)/mean(pPointTotalB$y9))*100), ((max(pPointHCVabB$y10)/mean(pPointTotalB$y10))*100), ((max(pPointHCVabB$y11)/mean(pPointTotalB$y11))*100), ((max(pPointHCVabB$y12)/mean(pPointTotalB$y12))*100), ((max(pPointHCVabB$y13)/mean(pPointTotalB$y13))*100), ((max(pPointHCVabB$y14)/mean(pPointTotalB$y14))*100) , ((max(pPointHCVabB$y15)/mean(pPointTotalB$y15))*100) , ((max(pPointHCVabB$y16)/mean(pPointTotalB$y16))*100) , ((max(pPointHCVabB$y17)/mean(pPointTotalB$y17))*100) , ((max(pPointHCVabB$y18)/mean(pPointTotalB$y18))*100) , ((max(pPointHCVabB$y19)/mean(pPointTotalB$y19))*100) , ((max(pPointHCVabB$y20)/mean(pPointTotalB$y20))*100) , ((max(pPointHCVabB$y21)/mean(pPointTotalB$y21))*100) , ((max(pPointHCVabB$y22)/mean(pPointTotalB$y22))*100) , ((max(pPointHCVabB$y23)/mean(pPointTotalB$y23))*100) , ((max(pPointHCVabB$y24)/mean(pPointTotalB$y24))*100) , ((max(pPointHCVabB$y25)/mean(pPointTotalB$y25))*100) , ((max(pPointHCVabB$y26)/mean(pPointTotalB$y26))*100), ((max(pPointHCVabB$y27)/mean(pPointTotalB$y27))*100), ((max(pPointHCVabB$y28)/mean(pPointTotalB$y28))*100), ((max(pPointHCVabB$y29)/mean(pPointTotalB$y29))*100), ((max(pPointHCVabB$y30)/mean(pPointTotalB$y30))*100) )
HCVBp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVBp$Description <- c("DAA optimal scenario")

HCVCp <- data.frame("IncidenceIDU"=c(((mean(pPointHCVabC$y6)/mean(pPointTotalC$y6))*100), ((mean(pPointHCVabC$y7)/mean(pPointTotalC$y7))*100), ((mean(pPointHCVabC$y8)/mean(pPointTotalC$y8))*100), ((mean(pPointHCVabC$y9)/mean(pPointTotalC$y9))*100), ((mean(pPointHCVabC$y10)/mean(pPointTotalC$y10))*100), ((mean(pPointHCVabC$y11)/mean(pPointTotalC$y11))*100), ((mean(pPointHCVabC$y12)/mean(pPointTotalC$y12))*100), ((mean(pPointHCVabC$y13)/mean(pPointTotalC$y13))*100), ((mean(pPointHCVabC$y14)/mean(pPointTotalC$y14))*100) , ((mean(pPointHCVabC$y15)/mean(pPointTotalC$y15))*100) , ((mean(pPointHCVabC$y16)/mean(pPointTotalC$y16))*100) , ((mean(pPointHCVabC$y17)/mean(pPointTotalC$y17))*100) , ((mean(pPointHCVabC$y18)/mean(pPointTotalC$y18))*100) , ((mean(pPointHCVabC$y19)/mean(pPointTotalC$y19))*100) , ((mean(pPointHCVabC$y20)/mean(pPointTotalC$y20))*100) , ((mean(pPointHCVabC$y21)/mean(pPointTotalC$y21))*100) , ((mean(pPointHCVabC$y22)/mean(pPointTotalC$y22))*100) , ((mean(pPointHCVabC$y23)/mean(pPointTotalC$y23))*100) , ((mean(pPointHCVabC$y24)/mean(pPointTotalC$y24))*100) , ((mean(pPointHCVabC$y25)/mean(pPointTotalC$y25))*100) , ((mean(pPointHCVabC$y26)/mean(pPointTotalC$y26))*100), ((mean(pPointHCVabC$y27)/mean(pPointTotalC$y27))*100), ((mean(pPointHCVabC$y28)/mean(pPointTotalC$y28))*100), ((mean(pPointHCVabC$y29)/mean(pPointTotalC$y29))*100), ((mean(pPointHCVabC$y30)/mean(pPointTotalC$y30))*100) ))
HCVCp$IncidenceFloor <- c(((min(pPointHCVabC$y6)/mean(pPointTotalC$y6))*100), ((min(pPointHCVabC$y7)/mean(pPointTotalC$y7))*100), ((min(pPointHCVabC$y8)/mean(pPointTotalC$y8))*100), ((min(pPointHCVabC$y9)/mean(pPointTotalC$y9))*100), ((min(pPointHCVabC$y10)/mean(pPointTotalC$y10))*100), ((min(pPointHCVabC$y11)/mean(pPointTotalC$y11))*100), ((min(pPointHCVabC$y12)/mean(pPointTotalC$y12))*100), ((min(pPointHCVabC$y13)/mean(pPointTotalC$y13))*100), ((min(pPointHCVabC$y14)/mean(pPointTotalC$y14))*100) , ((min(pPointHCVabC$y15)/mean(pPointTotalC$y15))*100) , ((min(pPointHCVabC$y16)/mean(pPointTotalC$y16))*100) , ((min(pPointHCVabC$y17)/mean(pPointTotalC$y17))*100) , ((min(pPointHCVabC$y18)/mean(pPointTotalC$y18))*100) , ((min(pPointHCVabC$y19)/mean(pPointTotalC$y19))*100) , ((min(pPointHCVabC$y20)/mean(pPointTotalC$y20))*100) , ((min(pPointHCVabC$y21)/mean(pPointTotalC$y21))*100) , ((min(pPointHCVabC$y22)/mean(pPointTotalC$y22))*100) , ((min(pPointHCVabC$y23)/mean(pPointTotalC$y23))*100) , ((min(pPointHCVabC$y24)/mean(pPointTotalC$y24))*100) , ((min(pPointHCVabC$y25)/mean(pPointTotalC$y25))*100) , ((min(pPointHCVabC$y26)/mean(pPointTotalC$y26))*100), ((min(pPointHCVabC$y27)/mean(pPointTotalC$y27))*100), ((min(pPointHCVabC$y28)/mean(pPointTotalC$y28))*100), ((min(pPointHCVabC$y29)/mean(pPointTotalC$y29))*100), ((min(pPointHCVabC$y30)/mean(pPointTotalC$y30))*100) )
HCVCp$IncidenceCeiling <- c(((max(pPointHCVabC$y6)/mean(pPointTotalC$y6))*100), ((max(pPointHCVabC$y7)/mean(pPointTotalC$y7))*100), ((max(pPointHCVabC$y8)/mean(pPointTotalC$y8))*100), ((max(pPointHCVabC$y9)/mean(pPointTotalC$y9))*100), ((max(pPointHCVabC$y10)/mean(pPointTotalC$y10))*100), ((max(pPointHCVabC$y11)/mean(pPointTotalC$y11))*100), ((max(pPointHCVabC$y12)/mean(pPointTotalC$y12))*100), ((max(pPointHCVabC$y13)/mean(pPointTotalC$y13))*100), ((max(pPointHCVabC$y14)/mean(pPointTotalC$y14))*100) , ((max(pPointHCVabC$y15)/mean(pPointTotalC$y15))*100) , ((max(pPointHCVabC$y16)/mean(pPointTotalC$y16))*100) , ((max(pPointHCVabC$y17)/mean(pPointTotalC$y17))*100) , ((max(pPointHCVabC$y18)/mean(pPointTotalC$y18))*100) , ((max(pPointHCVabC$y19)/mean(pPointTotalC$y19))*100) , ((max(pPointHCVabC$y20)/mean(pPointTotalC$y20))*100) , ((max(pPointHCVabC$y21)/mean(pPointTotalC$y21))*100) , ((max(pPointHCVabC$y22)/mean(pPointTotalC$y22))*100) , ((max(pPointHCVabC$y23)/mean(pPointTotalC$y23))*100) , ((max(pPointHCVabC$y24)/mean(pPointTotalC$y24))*100) , ((max(pPointHCVabC$y25)/mean(pPointTotalC$y25))*100) , ((max(pPointHCVabC$y26)/mean(pPointTotalC$y26))*100), ((max(pPointHCVabC$y27)/mean(pPointTotalC$y27))*100), ((max(pPointHCVabC$y28)/mean(pPointTotalC$y28))*100), ((max(pPointHCVabC$y29)/mean(pPointTotalC$y29))*100), ((max(pPointHCVabC$y30)/mean(pPointTotalC$y30))*100)  )
HCVCp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVCp$Description <- c("OST intermediate scenario")

HCVDp <- data.frame("IncidenceIDU"=c(((mean(pPointHCVabD$y6)/mean(pPointTotalD$y6))*100), ((mean(pPointHCVabD$y7)/mean(pPointTotalD$y7))*100), ((mean(pPointHCVabD$y8)/mean(pPointTotalD$y8))*100), ((mean(pPointHCVabD$y9)/mean(pPointTotalD$y9))*100), ((mean(pPointHCVabD$y10)/mean(pPointTotalD$y10))*100), ((mean(pPointHCVabD$y11)/mean(pPointTotalD$y11))*100), ((mean(pPointHCVabD$y12)/mean(pPointTotalD$y12))*100), ((mean(pPointHCVabD$y13)/mean(pPointTotalD$y13))*100), ((mean(pPointHCVabD$y14)/mean(pPointTotalD$y14))*100) , ((mean(pPointHCVabD$y15)/mean(pPointTotalD$y15))*100) , ((mean(pPointHCVabD$y16)/mean(pPointTotalD$y16))*100) , ((mean(pPointHCVabD$y17)/mean(pPointTotalD$y17))*100) , ((mean(pPointHCVabD$y18)/mean(pPointTotalD$y18))*100) , ((mean(pPointHCVabD$y19)/mean(pPointTotalD$y19))*100) , ((mean(pPointHCVabD$y20)/mean(pPointTotalD$y20))*100) , ((mean(pPointHCVabD$y21)/mean(pPointTotalD$y21))*100) , ((mean(pPointHCVabD$y22)/mean(pPointTotalD$y22))*100) , ((mean(pPointHCVabD$y23)/mean(pPointTotalD$y23))*100) , ((mean(pPointHCVabD$y24)/mean(pPointTotalD$y24))*100) , ((mean(pPointHCVabD$y25)/mean(pPointTotalD$y25))*100) , ((mean(pPointHCVabD$y26)/mean(pPointTotalD$y26))*100), ((mean(pPointHCVabD$y27)/mean(pPointTotalD$y27))*100), ((mean(pPointHCVabD$y28)/mean(pPointTotalD$y28))*100), ((mean(pPointHCVabD$y29)/mean(pPointTotalD$y29))*100), ((mean(pPointHCVabD$y30)/mean(pPointTotalD$y30))*100) ))
HCVDp$IncidenceFloor <- c(((min(pPointHCVabD$y6)/mean(pPointTotalD$y6))*100), ((min(pPointHCVabD$y7)/mean(pPointTotalD$y7))*100), ((min(pPointHCVabD$y8)/mean(pPointTotalD$y8))*100), ((min(pPointHCVabD$y9)/mean(pPointTotalD$y9))*100), ((min(pPointHCVabD$y10)/mean(pPointTotalD$y10))*100), ((min(pPointHCVabD$y11)/mean(pPointTotalD$y11))*100), ((min(pPointHCVabD$y12)/mean(pPointTotalD$y12))*100), ((min(pPointHCVabD$y13)/mean(pPointTotalD$y13))*100), ((min(pPointHCVabD$y14)/mean(pPointTotalD$y14))*100) , ((min(pPointHCVabD$y15)/mean(pPointTotalD$y15))*100) , ((min(pPointHCVabD$y16)/mean(pPointTotalD$y16))*100) , ((min(pPointHCVabD$y17)/mean(pPointTotalD$y17))*100) , ((min(pPointHCVabD$y18)/mean(pPointTotalD$y18))*100) , ((min(pPointHCVabD$y19)/mean(pPointTotalD$y19))*100) , ((min(pPointHCVabD$y20)/mean(pPointTotalD$y20))*100) , ((min(pPointHCVabD$y21)/mean(pPointTotalD$y21))*100) , ((min(pPointHCVabD$y22)/mean(pPointTotalD$y22))*100) , ((min(pPointHCVabD$y23)/mean(pPointTotalD$y23))*100) , ((min(pPointHCVabD$y24)/mean(pPointTotalD$y24))*100) , ((min(pPointHCVabD$y25)/mean(pPointTotalD$y25))*100) , ((min(pPointHCVabD$y26)/mean(pPointTotalD$y26))*100), ((min(pPointHCVabD$y27)/mean(pPointTotalD$y27))*100), ((min(pPointHCVabD$y28)/mean(pPointTotalD$y28))*100), ((min(pPointHCVabD$y29)/mean(pPointTotalD$y29))*100), ((min(pPointHCVabD$y30)/mean(pPointTotalD$y30))*100) )
HCVDp$IncidenceCeiling <- c(((max(pPointHCVabD$y6)/mean(pPointTotalD$y6))*100), ((max(pPointHCVabD$y7)/mean(pPointTotalD$y7))*100), ((max(pPointHCVabD$y8)/mean(pPointTotalD$y8))*100), ((max(pPointHCVabD$y9)/mean(pPointTotalD$y9))*100), ((max(pPointHCVabD$y10)/mean(pPointTotalD$y10))*100), ((max(pPointHCVabD$y11)/mean(pPointTotalD$y11))*100), ((max(pPointHCVabD$y12)/mean(pPointTotalD$y12))*100), ((max(pPointHCVabD$y13)/mean(pPointTotalD$y13))*100), ((max(pPointHCVabD$y14)/mean(pPointTotalD$y14))*100) , ((max(pPointHCVabD$y15)/mean(pPointTotalD$y15))*100) , ((max(pPointHCVabD$y16)/mean(pPointTotalD$y16))*100) , ((max(pPointHCVabD$y17)/mean(pPointTotalD$y17))*100) , ((max(pPointHCVabD$y18)/mean(pPointTotalD$y18))*100) , ((max(pPointHCVabD$y19)/mean(pPointTotalD$y19))*100) , ((max(pPointHCVabD$y20)/mean(pPointTotalD$y20))*100) , ((max(pPointHCVabD$y21)/mean(pPointTotalD$y21))*100) , ((max(pPointHCVabD$y22)/mean(pPointTotalD$y22))*100) , ((max(pPointHCVabD$y23)/mean(pPointTotalD$y23))*100) , ((max(pPointHCVabD$y24)/mean(pPointTotalD$y24))*100) , ((max(pPointHCVabD$y25)/mean(pPointTotalD$y25))*100) , ((max(pPointHCVabD$y26)/mean(pPointTotalD$y26))*100), ((max(pPointHCVabD$y27)/mean(pPointTotalD$y27))*100), ((max(pPointHCVabD$y28)/mean(pPointTotalD$y28))*100), ((max(pPointHCVabD$y29)/mean(pPointTotalD$y29))*100), ((max(pPointHCVabD$y30)/mean(pPointTotalD$y30))*100)  )
HCVDp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVDp$Description <- c("NSP intermediate scenario")

HCVEp <- data.frame("IncidenceIDU"=c(((mean(pPointHCVabE$y6)/mean(pPointTotalE$y6))*100), ((mean(pPointHCVabE$y7)/mean(pPointTotalE$y7))*100), ((mean(pPointHCVabE$y8)/mean(pPointTotalE$y8))*100), ((mean(pPointHCVabE$y9)/mean(pPointTotalE$y9))*100), ((mean(pPointHCVabE$y10)/mean(pPointTotalE$y10))*100), ((mean(pPointHCVabE$y11)/mean(pPointTotalE$y11))*100), ((mean(pPointHCVabE$y12)/mean(pPointTotalE$y12))*100), ((mean(pPointHCVabE$y13)/mean(pPointTotalE$y13))*100), ((mean(pPointHCVabE$y14)/mean(pPointTotalE$y14))*100) , ((mean(pPointHCVabE$y15)/mean(pPointTotalE$y15))*100) , ((mean(pPointHCVabE$y16)/mean(pPointTotalE$y16))*100) , ((mean(pPointHCVabE$y17)/mean(pPointTotalE$y17))*100) , ((mean(pPointHCVabE$y18)/mean(pPointTotalE$y18))*100) , ((mean(pPointHCVabE$y19)/mean(pPointTotalE$y19))*100) , ((mean(pPointHCVabE$y20)/mean(pPointTotalE$y20))*100) , ((mean(pPointHCVabE$y21)/mean(pPointTotalE$y21))*100) , ((mean(pPointHCVabE$y22)/mean(pPointTotalE$y22))*100) , ((mean(pPointHCVabE$y23)/mean(pPointTotalE$y23))*100) , ((mean(pPointHCVabE$y24)/mean(pPointTotalE$y24))*100) , ((mean(pPointHCVabE$y25)/mean(pPointTotalE$y25))*100) , ((mean(pPointHCVabE$y26)/mean(pPointTotalE$y26))*100), ((mean(pPointHCVabE$y27)/mean(pPointTotalE$y27))*100), ((mean(pPointHCVabE$y28)/mean(pPointTotalE$y28))*100), ((mean(pPointHCVabE$y29)/mean(pPointTotalE$y29))*100), ((mean(pPointHCVabE$y30)/mean(pPointTotalE$y30))*100) ))
HCVEp$IncidenceFloor <- c(((min(pPointHCVabE$y6)/mean(pPointTotalE$y6))*100), ((min(pPointHCVabE$y7)/mean(pPointTotalE$y7))*100), ((min(pPointHCVabE$y8)/mean(pPointTotalE$y8))*100), ((min(pPointHCVabE$y9)/mean(pPointTotalE$y9))*100), ((min(pPointHCVabE$y10)/mean(pPointTotalE$y10))*100), ((min(pPointHCVabE$y11)/mean(pPointTotalE$y11))*100), ((min(pPointHCVabE$y12)/mean(pPointTotalE$y12))*100), ((min(pPointHCVabE$y13)/mean(pPointTotalE$y13))*100), ((min(pPointHCVabE$y14)/mean(pPointTotalE$y14))*100) , ((min(pPointHCVabE$y15)/mean(pPointTotalE$y15))*100) , ((min(pPointHCVabE$y16)/mean(pPointTotalE$y16))*100) , ((min(pPointHCVabE$y17)/mean(pPointTotalE$y17))*100) , ((min(pPointHCVabE$y18)/mean(pPointTotalE$y18))*100) , ((min(pPointHCVabE$y19)/mean(pPointTotalE$y19))*100) , ((min(pPointHCVabE$y20)/mean(pPointTotalE$y20))*100) , ((min(pPointHCVabE$y21)/mean(pPointTotalE$y21))*100) , ((min(pPointHCVabE$y22)/mean(pPointTotalE$y22))*100) , ((min(pPointHCVabE$y23)/mean(pPointTotalE$y23))*100) , ((min(pPointHCVabE$y24)/mean(pPointTotalE$y24))*100) , ((min(pPointHCVabE$y25)/mean(pPointTotalE$y25))*100) , ((min(pPointHCVabE$y26)/mean(pPointTotalE$y26))*100), ((min(pPointHCVabE$y27)/mean(pPointTotalE$y27))*100), ((min(pPointHCVabE$y28)/mean(pPointTotalE$y28))*100), ((min(pPointHCVabE$y29)/mean(pPointTotalE$y29))*100), ((min(pPointHCVabE$y30)/mean(pPointTotalE$y30))*100) )
HCVEp$IncidenceCeiling <- c(((max(pPointHCVabE$y6)/mean(pPointTotalE$y6))*100), ((max(pPointHCVabE$y7)/mean(pPointTotalE$y7))*100), ((max(pPointHCVabE$y8)/mean(pPointTotalE$y8))*100), ((max(pPointHCVabE$y9)/mean(pPointTotalE$y9))*100), ((max(pPointHCVabE$y10)/mean(pPointTotalE$y10))*100), ((max(pPointHCVabE$y11)/mean(pPointTotalE$y11))*100), ((max(pPointHCVabE$y12)/mean(pPointTotalE$y12))*100), ((max(pPointHCVabE$y13)/mean(pPointTotalE$y13))*100), ((max(pPointHCVabE$y14)/mean(pPointTotalE$y14))*100) , ((max(pPointHCVabE$y15)/mean(pPointTotalE$y15))*100) , ((max(pPointHCVabE$y16)/mean(pPointTotalE$y16))*100) , ((max(pPointHCVabE$y17)/mean(pPointTotalE$y17))*100) , ((max(pPointHCVabE$y18)/mean(pPointTotalE$y18))*100) , ((max(pPointHCVabE$y19)/mean(pPointTotalE$y19))*100) , ((max(pPointHCVabE$y20)/mean(pPointTotalE$y20))*100) , ((max(pPointHCVabE$y21)/mean(pPointTotalE$y21))*100) , ((max(pPointHCVabE$y22)/mean(pPointTotalE$y22))*100) , ((max(pPointHCVabE$y23)/mean(pPointTotalE$y23))*100) , ((max(pPointHCVabE$y24)/mean(pPointTotalE$y24))*100) , ((max(pPointHCVabE$y25)/mean(pPointTotalE$y25))*100) , ((max(pPointHCVabE$y26)/mean(pPointTotalE$y26))*100), ((max(pPointHCVabE$y27)/mean(pPointTotalE$y27))*100), ((max(pPointHCVabE$y28)/mean(pPointTotalE$y28))*100), ((max(pPointHCVabE$y29)/mean(pPointTotalE$y29))*100), ((max(pPointHCVabE$y30)/mean(pPointTotalE$y30))*100)  )
HCVEp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVEp$Description <- c("Reduction intermediate scenario")

HCVFp <- data.frame("IncidenceIDU"=c(((mean(pPointHCVabF$y6)/mean(pPointTotalF$y6))*100), ((mean(pPointHCVabF$y7)/mean(pPointTotalF$y7))*100), ((mean(pPointHCVabF$y8)/mean(pPointTotalF$y8))*100), ((mean(pPointHCVabF$y9)/mean(pPointTotalF$y9))*100), ((mean(pPointHCVabF$y10)/mean(pPointTotalF$y10))*100), ((mean(pPointHCVabF$y11)/mean(pPointTotalF$y11))*100), ((mean(pPointHCVabF$y12)/mean(pPointTotalF$y12))*100), ((mean(pPointHCVabF$y13)/mean(pPointTotalF$y13))*100), ((mean(pPointHCVabF$y14)/mean(pPointTotalF$y14))*100) , ((mean(pPointHCVabF$y15)/mean(pPointTotalF$y15))*100) , ((mean(pPointHCVabF$y16)/mean(pPointTotalF$y16))*100) , ((mean(pPointHCVabF$y17)/mean(pPointTotalF$y17))*100) , ((mean(pPointHCVabF$y18)/mean(pPointTotalF$y18))*100) , ((mean(pPointHCVabF$y19)/mean(pPointTotalF$y19))*100) , ((mean(pPointHCVabF$y20)/mean(pPointTotalF$y20))*100) , ((mean(pPointHCVabF$y21)/mean(pPointTotalF$y21))*100) , ((mean(pPointHCVabF$y22)/mean(pPointTotalF$y22))*100) , ((mean(pPointHCVabF$y23)/mean(pPointTotalF$y23))*100) , ((mean(pPointHCVabF$y24)/mean(pPointTotalF$y24))*100) , ((mean(pPointHCVabF$y25)/mean(pPointTotalF$y25))*100) , ((mean(pPointHCVabF$y26)/mean(pPointTotalF$y26))*100), ((mean(pPointHCVabF$y27)/mean(pPointTotalF$y27))*100), ((mean(pPointHCVabF$y28)/mean(pPointTotalF$y28))*100), ((mean(pPointHCVabF$y29)/mean(pPointTotalF$y29))*100), ((mean(pPointHCVabF$y30)/mean(pPointTotalF$y30))*100) ))
HCVFp$IncidenceFloor <- c(((min(pPointHCVabF$y6)/mean(pPointTotalF$y6))*100), ((min(pPointHCVabF$y7)/mean(pPointTotalF$y7))*100), ((min(pPointHCVabF$y8)/mean(pPointTotalF$y8))*100), ((min(pPointHCVabF$y9)/mean(pPointTotalF$y9))*100), ((min(pPointHCVabF$y10)/mean(pPointTotalF$y10))*100), ((min(pPointHCVabF$y11)/mean(pPointTotalF$y11))*100), ((min(pPointHCVabF$y12)/mean(pPointTotalF$y12))*100), ((min(pPointHCVabF$y13)/mean(pPointTotalF$y13))*100), ((min(pPointHCVabF$y14)/mean(pPointTotalF$y14))*100) , ((min(pPointHCVabF$y15)/mean(pPointTotalF$y15))*100) , ((min(pPointHCVabF$y16)/mean(pPointTotalF$y16))*100) , ((min(pPointHCVabF$y17)/mean(pPointTotalF$y17))*100) , ((min(pPointHCVabF$y18)/mean(pPointTotalF$y18))*100) , ((min(pPointHCVabF$y19)/mean(pPointTotalF$y19))*100) , ((min(pPointHCVabF$y20)/mean(pPointTotalF$y20))*100) , ((min(pPointHCVabF$y21)/mean(pPointTotalF$y21))*100) , ((min(pPointHCVabF$y22)/mean(pPointTotalF$y22))*100) , ((min(pPointHCVabF$y23)/mean(pPointTotalF$y23))*100) , ((min(pPointHCVabF$y24)/mean(pPointTotalF$y24))*100) , ((min(pPointHCVabF$y25)/mean(pPointTotalF$y25))*100) , ((min(pPointHCVabF$y26)/mean(pPointTotalF$y26))*100), ((min(pPointHCVabF$y27)/mean(pPointTotalF$y27))*100), ((min(pPointHCVabF$y28)/mean(pPointTotalF$y28))*100), ((min(pPointHCVabF$y29)/mean(pPointTotalF$y29))*100), ((min(pPointHCVabF$y30)/mean(pPointTotalF$y30))*100) )
HCVFp$IncidenceCeiling <- c(((max(pPointHCVabF$y6)/mean(pPointTotalF$y6))*100), ((max(pPointHCVabF$y7)/mean(pPointTotalF$y7))*100), ((max(pPointHCVabF$y8)/mean(pPointTotalF$y8))*100), ((max(pPointHCVabF$y9)/mean(pPointTotalF$y9))*100), ((max(pPointHCVabF$y10)/mean(pPointTotalF$y10))*100), ((max(pPointHCVabF$y11)/mean(pPointTotalF$y11))*100), ((max(pPointHCVabF$y12)/mean(pPointTotalF$y12))*100), ((max(pPointHCVabF$y13)/mean(pPointTotalF$y13))*100), ((max(pPointHCVabF$y14)/mean(pPointTotalF$y14))*100) , ((max(pPointHCVabF$y15)/mean(pPointTotalF$y15))*100) , ((max(pPointHCVabF$y16)/mean(pPointTotalF$y16))*100) , ((max(pPointHCVabF$y17)/mean(pPointTotalF$y17))*100) , ((max(pPointHCVabF$y18)/mean(pPointTotalF$y18))*100) , ((max(pPointHCVabF$y19)/mean(pPointTotalF$y19))*100) , ((max(pPointHCVabF$y20)/mean(pPointTotalF$y20))*100) , ((max(pPointHCVabF$y21)/mean(pPointTotalF$y21))*100) , ((max(pPointHCVabF$y22)/mean(pPointTotalF$y22))*100) , ((max(pPointHCVabF$y23)/mean(pPointTotalF$y23))*100) , ((max(pPointHCVabF$y24)/mean(pPointTotalF$y24))*100) , ((max(pPointHCVabF$y25)/mean(pPointTotalF$y25))*100) , ((max(pPointHCVabF$y26)/mean(pPointTotalF$y26))*100), ((max(pPointHCVabF$y27)/mean(pPointTotalF$y27))*100), ((max(pPointHCVabF$y28)/mean(pPointTotalF$y28))*100), ((max(pPointHCVabF$y29)/mean(pPointTotalF$y29))*100), ((max(pPointHCVabF$y30)/mean(pPointTotalF$y30))*100)  )
HCVFp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVFp$Description <- c("DAA optimistic + OST intermediate scenario")

HCVGp <- data.frame("IncidenceIDU"=c(((mean(pPointHCVabG$y6)/mean(pPointTotalG$y6))*100), ((mean(pPointHCVabG$y7)/mean(pPointTotalG$y7))*100), ((mean(pPointHCVabG$y8)/mean(pPointTotalG$y8))*100), ((mean(pPointHCVabG$y9)/mean(pPointTotalG$y9))*100), ((mean(pPointHCVabG$y10)/mean(pPointTotalG$y10))*100), ((mean(pPointHCVabG$y11)/mean(pPointTotalG$y11))*100), ((mean(pPointHCVabG$y12)/mean(pPointTotalG$y12))*100), ((mean(pPointHCVabG$y13)/mean(pPointTotalG$y13))*100), ((mean(pPointHCVabG$y14)/mean(pPointTotalG$y14))*100) , ((mean(pPointHCVabG$y15)/mean(pPointTotalG$y15))*100) , ((mean(pPointHCVabG$y16)/mean(pPointTotalG$y16))*100) , ((mean(pPointHCVabG$y17)/mean(pPointTotalG$y17))*100) , ((mean(pPointHCVabG$y18)/mean(pPointTotalG$y18))*100) , ((mean(pPointHCVabG$y19)/mean(pPointTotalG$y19))*100) , ((mean(pPointHCVabG$y20)/mean(pPointTotalG$y20))*100) , ((mean(pPointHCVabG$y21)/mean(pPointTotalG$y21))*100) , ((mean(pPointHCVabG$y22)/mean(pPointTotalG$y22))*100) , ((mean(pPointHCVabG$y23)/mean(pPointTotalG$y23))*100) , ((mean(pPointHCVabG$y24)/mean(pPointTotalG$y24))*100) , ((mean(pPointHCVabG$y25)/mean(pPointTotalG$y25))*100) , ((mean(pPointHCVabG$y26)/mean(pPointTotalG$y26))*100), ((mean(pPointHCVabG$y27)/mean(pPointTotalG$y27))*100), ((mean(pPointHCVabG$y28)/mean(pPointTotalG$y28))*100), ((mean(pPointHCVabG$y29)/mean(pPointTotalG$y29))*100), ((mean(pPointHCVabG$y30)/mean(pPointTotalG$y30))*100) ))
HCVGp$IncidenceFloor <- c(((min(pPointHCVabG$y6)/mean(pPointTotalG$y6))*100), ((min(pPointHCVabG$y7)/mean(pPointTotalG$y7))*100), ((min(pPointHCVabG$y8)/mean(pPointTotalG$y8))*100), ((min(pPointHCVabG$y9)/mean(pPointTotalG$y9))*100), ((min(pPointHCVabG$y10)/mean(pPointTotalG$y10))*100), ((min(pPointHCVabG$y11)/mean(pPointTotalG$y11))*100), ((min(pPointHCVabG$y12)/mean(pPointTotalG$y12))*100), ((min(pPointHCVabG$y13)/mean(pPointTotalG$y13))*100), ((min(pPointHCVabG$y14)/mean(pPointTotalG$y14))*100) , ((min(pPointHCVabG$y15)/mean(pPointTotalG$y15))*100) , ((min(pPointHCVabG$y16)/mean(pPointTotalG$y16))*100) , ((min(pPointHCVabG$y17)/mean(pPointTotalG$y17))*100) , ((min(pPointHCVabG$y18)/mean(pPointTotalG$y18))*100) , ((min(pPointHCVabG$y19)/mean(pPointTotalG$y19))*100) , ((min(pPointHCVabG$y20)/mean(pPointTotalG$y20))*100) , ((min(pPointHCVabG$y21)/mean(pPointTotalG$y21))*100) , ((min(pPointHCVabG$y22)/mean(pPointTotalG$y22))*100) , ((min(pPointHCVabG$y23)/mean(pPointTotalG$y23))*100) , ((min(pPointHCVabG$y24)/mean(pPointTotalG$y24))*100) , ((min(pPointHCVabG$y25)/mean(pPointTotalG$y25))*100) , ((min(pPointHCVabG$y26)/mean(pPointTotalG$y26))*100), ((min(pPointHCVabG$y27)/mean(pPointTotalG$y27))*100), ((min(pPointHCVabG$y28)/mean(pPointTotalG$y28))*100), ((min(pPointHCVabG$y29)/mean(pPointTotalG$y29))*100), ((min(pPointHCVabG$y30)/mean(pPointTotalG$y30))*100) )
HCVGp$IncidenceCeiling <- c(((max(pPointHCVabG$y6)/mean(pPointTotalG$y6))*100), ((max(pPointHCVabG$y7)/mean(pPointTotalG$y7))*100), ((max(pPointHCVabG$y8)/mean(pPointTotalG$y8))*100), ((max(pPointHCVabG$y9)/mean(pPointTotalG$y9))*100), ((max(pPointHCVabG$y10)/mean(pPointTotalG$y10))*100), ((max(pPointHCVabG$y11)/mean(pPointTotalG$y11))*100), ((max(pPointHCVabG$y12)/mean(pPointTotalG$y12))*100), ((max(pPointHCVabG$y13)/mean(pPointTotalG$y13))*100), ((max(pPointHCVabG$y14)/mean(pPointTotalG$y14))*100) , ((max(pPointHCVabG$y15)/mean(pPointTotalG$y15))*100) , ((max(pPointHCVabG$y16)/mean(pPointTotalG$y16))*100) , ((max(pPointHCVabG$y17)/mean(pPointTotalG$y17))*100) , ((max(pPointHCVabG$y18)/mean(pPointTotalG$y18))*100) , ((max(pPointHCVabG$y19)/mean(pPointTotalG$y19))*100) , ((max(pPointHCVabG$y20)/mean(pPointTotalG$y20))*100) , ((max(pPointHCVabG$y21)/mean(pPointTotalG$y21))*100) , ((max(pPointHCVabG$y22)/mean(pPointTotalG$y22))*100) , ((max(pPointHCVabG$y23)/mean(pPointTotalG$y23))*100) , ((max(pPointHCVabG$y24)/mean(pPointTotalG$y24))*100) , ((max(pPointHCVabG$y25)/mean(pPointTotalG$y25))*100) , ((max(pPointHCVabG$y26)/mean(pPointTotalG$y26))*100), ((max(pPointHCVabG$y27)/mean(pPointTotalG$y27))*100), ((max(pPointHCVabG$y28)/mean(pPointTotalG$y28))*100), ((max(pPointHCVabG$y29)/mean(pPointTotalG$y29))*100), ((max(pPointHCVabG$y30)/mean(pPointTotalG$y30))*100)  )
HCVGp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVGp$Description <- c("DAA optimistic + OST intermediate + NSP intermediate scenario")

HCVHp <- data.frame("IncidenceIDU"=c(((mean(pPointHCVabH$y6)/mean(pPointTotalH$y6))*100), ((mean(pPointHCVabH$y7)/mean(pPointTotalH$y7))*100), ((mean(pPointHCVabH$y8)/mean(pPointTotalH$y8))*100), ((mean(pPointHCVabH$y9)/mean(pPointTotalH$y9))*100), ((mean(pPointHCVabH$y10)/mean(pPointTotalH$y10))*100), ((mean(pPointHCVabH$y11)/mean(pPointTotalH$y11))*100), ((mean(pPointHCVabH$y12)/mean(pPointTotalH$y12))*100), ((mean(pPointHCVabH$y13)/mean(pPointTotalH$y13))*100), ((mean(pPointHCVabH$y14)/mean(pPointTotalH$y14))*100) , ((mean(pPointHCVabH$y15)/mean(pPointTotalH$y15))*100) , ((mean(pPointHCVabH$y16)/mean(pPointTotalH$y16))*100) , ((mean(pPointHCVabH$y17)/mean(pPointTotalH$y17))*100) , ((mean(pPointHCVabH$y18)/mean(pPointTotalH$y18))*100) , ((mean(pPointHCVabH$y19)/mean(pPointTotalH$y19))*100) , ((mean(pPointHCVabH$y20)/mean(pPointTotalH$y20))*100) , ((mean(pPointHCVabH$y21)/mean(pPointTotalH$y21))*100) , ((mean(pPointHCVabH$y22)/mean(pPointTotalH$y22))*100) , ((mean(pPointHCVabH$y23)/mean(pPointTotalH$y23))*100) , ((mean(pPointHCVabH$y24)/mean(pPointTotalH$y24))*100) , ((mean(pPointHCVabH$y25)/mean(pPointTotalH$y25))*100) , ((mean(pPointHCVabH$y26)/mean(pPointTotalH$y26))*100), ((mean(pPointHCVabH$y27)/mean(pPointTotalH$y27))*100), ((mean(pPointHCVabH$y28)/mean(pPointTotalH$y28))*100), ((mean(pPointHCVabH$y29)/mean(pPointTotalH$y29))*100), ((mean(pPointHCVabH$y30)/mean(pPointTotalH$y30))*100) ))
HCVHp$IncidenceFloor <- c(((min(pPointHCVabH$y6)/mean(pPointTotalH$y6))*100), ((min(pPointHCVabH$y7)/mean(pPointTotalH$y7))*100), ((min(pPointHCVabH$y8)/mean(pPointTotalH$y8))*100), ((min(pPointHCVabH$y9)/mean(pPointTotalH$y9))*100), ((min(pPointHCVabH$y10)/mean(pPointTotalH$y10))*100), ((min(pPointHCVabH$y11)/mean(pPointTotalH$y11))*100), ((min(pPointHCVabH$y12)/mean(pPointTotalH$y12))*100), ((min(pPointHCVabH$y13)/mean(pPointTotalH$y13))*100), ((min(pPointHCVabH$y14)/mean(pPointTotalH$y14))*100) , ((min(pPointHCVabH$y15)/mean(pPointTotalH$y15))*100) , ((min(pPointHCVabH$y16)/mean(pPointTotalH$y16))*100) , ((min(pPointHCVabH$y17)/mean(pPointTotalH$y17))*100) , ((min(pPointHCVabH$y18)/mean(pPointTotalH$y18))*100) , ((min(pPointHCVabH$y19)/mean(pPointTotalH$y19))*100) , ((min(pPointHCVabH$y20)/mean(pPointTotalH$y20))*100) , ((min(pPointHCVabH$y21)/mean(pPointTotalH$y21))*100) , ((min(pPointHCVabH$y22)/mean(pPointTotalH$y22))*100) , ((min(pPointHCVabH$y23)/mean(pPointTotalH$y23))*100) , ((min(pPointHCVabH$y24)/mean(pPointTotalH$y24))*100) , ((min(pPointHCVabH$y25)/mean(pPointTotalH$y25))*100) , ((min(pPointHCVabH$y26)/mean(pPointTotalH$y26))*100), ((min(pPointHCVabH$y27)/mean(pPointTotalH$y27))*100), ((min(pPointHCVabH$y28)/mean(pPointTotalH$y28))*100), ((min(pPointHCVabH$y29)/mean(pPointTotalH$y29))*100), ((min(pPointHCVabH$y30)/mean(pPointTotalH$y30))*100) )
HCVHp$IncidenceCeiling <- c(((max(pPointHCVabH$y6)/mean(pPointTotalH$y6))*100), ((max(pPointHCVabH$y7)/mean(pPointTotalH$y7))*100), ((max(pPointHCVabH$y8)/mean(pPointTotalH$y8))*100), ((max(pPointHCVabH$y9)/mean(pPointTotalH$y9))*100), ((max(pPointHCVabH$y10)/mean(pPointTotalH$y10))*100), ((max(pPointHCVabH$y11)/mean(pPointTotalH$y11))*100), ((max(pPointHCVabH$y12)/mean(pPointTotalH$y12))*100), ((max(pPointHCVabH$y13)/mean(pPointTotalH$y13))*100), ((max(pPointHCVabH$y14)/mean(pPointTotalH$y14))*100) , ((max(pPointHCVabH$y15)/mean(pPointTotalH$y15))*100) , ((max(pPointHCVabH$y16)/mean(pPointTotalH$y16))*100) , ((max(pPointHCVabH$y17)/mean(pPointTotalH$y17))*100) , ((max(pPointHCVabH$y18)/mean(pPointTotalH$y18))*100) , ((max(pPointHCVabH$y19)/mean(pPointTotalH$y19))*100) , ((max(pPointHCVabH$y20)/mean(pPointTotalH$y20))*100) , ((max(pPointHCVabH$y21)/mean(pPointTotalH$y21))*100) , ((max(pPointHCVabH$y22)/mean(pPointTotalH$y22))*100) , ((max(pPointHCVabH$y23)/mean(pPointTotalH$y23))*100) , ((max(pPointHCVabH$y24)/mean(pPointTotalH$y24))*100) , ((max(pPointHCVabH$y25)/mean(pPointTotalH$y25))*100) , ((max(pPointHCVabH$y26)/mean(pPointTotalH$y26))*100), ((max(pPointHCVabH$y27)/mean(pPointTotalH$y27))*100), ((max(pPointHCVabH$y28)/mean(pPointTotalH$y28))*100), ((max(pPointHCVabH$y29)/mean(pPointTotalH$y29))*100), ((max(pPointHCVabH$y30)/mean(pPointTotalH$y30))*100)  )
HCVHp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVHp$Description <- c("Reduction intermediate + DAA optimistic")

HCVIp <- data.frame("IncidenceIDU"=c(((mean(pPointHCVabI$y6)/mean(pPointTotalI$y6))*100), ((mean(pPointHCVabI$y7)/mean(pPointTotalI$y7))*100), ((mean(pPointHCVabI$y8)/mean(pPointTotalI$y8))*100), ((mean(pPointHCVabI$y9)/mean(pPointTotalI$y9))*100), ((mean(pPointHCVabI$y10)/mean(pPointTotalI$y10))*100), ((mean(pPointHCVabI$y11)/mean(pPointTotalI$y11))*100), ((mean(pPointHCVabI$y12)/mean(pPointTotalI$y12))*100), ((mean(pPointHCVabI$y13)/mean(pPointTotalI$y13))*100), ((mean(pPointHCVabI$y14)/mean(pPointTotalI$y14))*100) , ((mean(pPointHCVabI$y15)/mean(pPointTotalI$y15))*100) , ((mean(pPointHCVabI$y16)/mean(pPointTotalI$y16))*100) , ((mean(pPointHCVabI$y17)/mean(pPointTotalI$y17))*100) , ((mean(pPointHCVabI$y18)/mean(pPointTotalI$y18))*100) , ((mean(pPointHCVabI$y19)/mean(pPointTotalI$y19))*100) , ((mean(pPointHCVabI$y20)/mean(pPointTotalI$y20))*100) , ((mean(pPointHCVabI$y21)/mean(pPointTotalI$y21))*100) , ((mean(pPointHCVabI$y22)/mean(pPointTotalI$y22))*100) , ((mean(pPointHCVabI$y23)/mean(pPointTotalI$y23))*100) , ((mean(pPointHCVabI$y24)/mean(pPointTotalI$y24))*100) , ((mean(pPointHCVabI$y25)/mean(pPointTotalI$y25))*100) , ((mean(pPointHCVabI$y26)/mean(pPointTotalI$y26))*100), ((mean(pPointHCVabI$y27)/mean(pPointTotalI$y27))*100), ((mean(pPointHCVabI$y28)/mean(pPointTotalI$y28))*100), ((mean(pPointHCVabI$y29)/mean(pPointTotalI$y29))*100), ((mean(pPointHCVabI$y30)/mean(pPointTotalI$y30))*100) ))
HCVIp$IncidenceFloor <- c(((min(pPointHCVabI$y6)/mean(pPointTotalI$y6))*100), ((min(pPointHCVabI$y7)/mean(pPointTotalI$y7))*100), ((min(pPointHCVabI$y8)/mean(pPointTotalI$y8))*100), ((min(pPointHCVabI$y9)/mean(pPointTotalI$y9))*100), ((min(pPointHCVabI$y10)/mean(pPointTotalI$y10))*100), ((min(pPointHCVabI$y11)/mean(pPointTotalI$y11))*100), ((min(pPointHCVabI$y12)/mean(pPointTotalI$y12))*100), ((min(pPointHCVabI$y13)/mean(pPointTotalI$y13))*100), ((min(pPointHCVabI$y14)/mean(pPointTotalI$y14))*100) , ((min(pPointHCVabI$y15)/mean(pPointTotalI$y15))*100) , ((min(pPointHCVabI$y16)/mean(pPointTotalI$y16))*100) , ((min(pPointHCVabI$y17)/mean(pPointTotalI$y17))*100) , ((min(pPointHCVabI$y18)/mean(pPointTotalI$y18))*100) , ((min(pPointHCVabI$y19)/mean(pPointTotalI$y19))*100) , ((min(pPointHCVabI$y20)/mean(pPointTotalI$y20))*100) , ((min(pPointHCVabI$y21)/mean(pPointTotalI$y21))*100) , ((min(pPointHCVabI$y22)/mean(pPointTotalI$y22))*100) , ((min(pPointHCVabI$y23)/mean(pPointTotalI$y23))*100) , ((min(pPointHCVabI$y24)/mean(pPointTotalI$y24))*100) , ((min(pPointHCVabI$y25)/mean(pPointTotalI$y25))*100) , ((min(pPointHCVabI$y26)/mean(pPointTotalI$y26))*100), ((min(pPointHCVabI$y27)/mean(pPointTotalI$y27))*100), ((min(pPointHCVabI$y28)/mean(pPointTotalI$y28))*100), ((min(pPointHCVabI$y29)/mean(pPointTotalI$y29))*100), ((min(pPointHCVabI$y30)/mean(pPointTotalI$y30))*100) )
HCVIp$IncidenceCeiling <- c(((max(pPointHCVabI$y6)/mean(pPointTotalI$y6))*100), ((max(pPointHCVabI$y7)/mean(pPointTotalI$y7))*100), ((max(pPointHCVabI$y8)/mean(pPointTotalI$y8))*100), ((max(pPointHCVabI$y9)/mean(pPointTotalI$y9))*100), ((max(pPointHCVabI$y10)/mean(pPointTotalI$y10))*100), ((max(pPointHCVabI$y11)/mean(pPointTotalI$y11))*100), ((max(pPointHCVabI$y12)/mean(pPointTotalI$y12))*100), ((max(pPointHCVabI$y13)/mean(pPointTotalI$y13))*100), ((max(pPointHCVabI$y14)/mean(pPointTotalI$y14))*100) , ((max(pPointHCVabI$y15)/mean(pPointTotalI$y15))*100) , ((max(pPointHCVabI$y16)/mean(pPointTotalI$y16))*100) , ((max(pPointHCVabI$y17)/mean(pPointTotalI$y17))*100) , ((max(pPointHCVabI$y18)/mean(pPointTotalI$y18))*100) , ((max(pPointHCVabI$y19)/mean(pPointTotalI$y19))*100) , ((max(pPointHCVabI$y20)/mean(pPointTotalI$y20))*100) , ((max(pPointHCVabI$y21)/mean(pPointTotalI$y21))*100) , ((max(pPointHCVabI$y22)/mean(pPointTotalI$y22))*100) , ((max(pPointHCVabI$y23)/mean(pPointTotalI$y23))*100) , ((max(pPointHCVabI$y24)/mean(pPointTotalI$y24))*100) , ((max(pPointHCVabI$y25)/mean(pPointTotalI$y25))*100) , ((max(pPointHCVabI$y26)/mean(pPointTotalI$y26))*100), ((max(pPointHCVabI$y27)/mean(pPointTotalI$y27))*100), ((max(pPointHCVabI$y28)/mean(pPointTotalI$y28))*100), ((max(pPointHCVabI$y29)/mean(pPointTotalI$y29))*100), ((max(pPointHCVabI$y30)/mean(pPointTotalI$y30))*100)  )
HCVIp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVIp$Description <- c("Reduction intermediate + DAA optimistic + OST intermediate")

HCVJp <- data.frame("IncidenceIDU"=c(((mean(pPointHCVabJ$y6)/mean(pPointTotalJ$y6))*100), ((mean(pPointHCVabJ$y7)/mean(pPointTotalJ$y7))*100), ((mean(pPointHCVabJ$y8)/mean(pPointTotalJ$y8))*100), ((mean(pPointHCVabJ$y9)/mean(pPointTotalJ$y9))*100), ((mean(pPointHCVabJ$y10)/mean(pPointTotalJ$y10))*100), ((mean(pPointHCVabJ$y11)/mean(pPointTotalJ$y11))*100), ((mean(pPointHCVabJ$y12)/mean(pPointTotalJ$y12))*100), ((mean(pPointHCVabJ$y13)/mean(pPointTotalJ$y13))*100), ((mean(pPointHCVabJ$y14)/mean(pPointTotalJ$y14))*100) , ((mean(pPointHCVabJ$y15)/mean(pPointTotalJ$y15))*100) , ((mean(pPointHCVabJ$y16)/mean(pPointTotalJ$y16))*100) , ((mean(pPointHCVabJ$y17)/mean(pPointTotalJ$y17))*100) , ((mean(pPointHCVabJ$y18)/mean(pPointTotalJ$y18))*100) , ((mean(pPointHCVabJ$y19)/mean(pPointTotalJ$y19))*100) , ((mean(pPointHCVabJ$y20)/mean(pPointTotalJ$y20))*100) , ((mean(pPointHCVabJ$y21)/mean(pPointTotalJ$y21))*100) , ((mean(pPointHCVabJ$y22)/mean(pPointTotalJ$y22))*100) , ((mean(pPointHCVabJ$y23)/mean(pPointTotalJ$y23))*100) , ((mean(pPointHCVabJ$y24)/mean(pPointTotalJ$y24))*100) , ((mean(pPointHCVabJ$y25)/mean(pPointTotalJ$y25))*100) , ((mean(pPointHCVabJ$y26)/mean(pPointTotalJ$y26))*100), ((mean(pPointHCVabJ$y27)/mean(pPointTotalJ$y27))*100), ((mean(pPointHCVabJ$y28)/mean(pPointTotalJ$y28))*100), ((mean(pPointHCVabJ$y29)/mean(pPointTotalJ$y29))*100), ((mean(pPointHCVabJ$y30)/mean(pPointTotalJ$y30))*100) ))
HCVJp$IncidenceFloor <- c(((min(pPointHCVabJ$y6)/mean(pPointTotalJ$y6))*100), ((min(pPointHCVabJ$y7)/mean(pPointTotalJ$y7))*100), ((min(pPointHCVabJ$y8)/mean(pPointTotalJ$y8))*100), ((min(pPointHCVabJ$y9)/mean(pPointTotalJ$y9))*100), ((min(pPointHCVabJ$y10)/mean(pPointTotalJ$y10))*100), ((min(pPointHCVabJ$y11)/mean(pPointTotalJ$y11))*100), ((min(pPointHCVabJ$y12)/mean(pPointTotalJ$y12))*100), ((min(pPointHCVabJ$y13)/mean(pPointTotalJ$y13))*100), ((min(pPointHCVabJ$y14)/mean(pPointTotalJ$y14))*100) , ((min(pPointHCVabJ$y15)/mean(pPointTotalJ$y15))*100) , ((min(pPointHCVabJ$y16)/mean(pPointTotalJ$y16))*100) , ((min(pPointHCVabJ$y17)/mean(pPointTotalJ$y17))*100) , ((min(pPointHCVabJ$y18)/mean(pPointTotalJ$y18))*100) , ((min(pPointHCVabJ$y19)/mean(pPointTotalJ$y19))*100) , ((min(pPointHCVabJ$y20)/mean(pPointTotalJ$y20))*100) , ((min(pPointHCVabJ$y21)/mean(pPointTotalJ$y21))*100) , ((min(pPointHCVabJ$y22)/mean(pPointTotalJ$y22))*100) , ((min(pPointHCVabJ$y23)/mean(pPointTotalJ$y23))*100) , ((min(pPointHCVabJ$y24)/mean(pPointTotalJ$y24))*100) , ((min(pPointHCVabJ$y25)/mean(pPointTotalJ$y25))*100) , ((min(pPointHCVabJ$y26)/mean(pPointTotalJ$y26))*100), ((min(pPointHCVabJ$y27)/mean(pPointTotalJ$y27))*100), ((min(pPointHCVabJ$y28)/mean(pPointTotalJ$y28))*100), ((min(pPointHCVabJ$y29)/mean(pPointTotalJ$y29))*100), ((min(pPointHCVabJ$y30)/mean(pPointTotalJ$y30))*100) )
HCVJp$IncidenceCeiling <- c(((max(pPointHCVabJ$y6)/mean(pPointTotalJ$y6))*100), ((max(pPointHCVabJ$y7)/mean(pPointTotalJ$y7))*100), ((max(pPointHCVabJ$y8)/mean(pPointTotalJ$y8))*100), ((max(pPointHCVabJ$y9)/mean(pPointTotalJ$y9))*100), ((max(pPointHCVabJ$y10)/mean(pPointTotalJ$y10))*100), ((max(pPointHCVabJ$y11)/mean(pPointTotalJ$y11))*100), ((max(pPointHCVabJ$y12)/mean(pPointTotalJ$y12))*100), ((max(pPointHCVabJ$y13)/mean(pPointTotalJ$y13))*100), ((max(pPointHCVabJ$y14)/mean(pPointTotalJ$y14))*100) , ((max(pPointHCVabJ$y15)/mean(pPointTotalJ$y15))*100) , ((max(pPointHCVabJ$y16)/mean(pPointTotalJ$y16))*100) , ((max(pPointHCVabJ$y17)/mean(pPointTotalJ$y17))*100) , ((max(pPointHCVabJ$y18)/mean(pPointTotalJ$y18))*100) , ((max(pPointHCVabJ$y19)/mean(pPointTotalJ$y19))*100) , ((max(pPointHCVabJ$y20)/mean(pPointTotalJ$y20))*100) , ((max(pPointHCVabJ$y21)/mean(pPointTotalJ$y21))*100) , ((max(pPointHCVabJ$y22)/mean(pPointTotalJ$y22))*100) , ((max(pPointHCVabJ$y23)/mean(pPointTotalJ$y23))*100) , ((max(pPointHCVabJ$y24)/mean(pPointTotalJ$y24))*100) , ((max(pPointHCVabJ$y25)/mean(pPointTotalJ$y25))*100) , ((max(pPointHCVabJ$y26)/mean(pPointTotalJ$y26))*100), ((max(pPointHCVabJ$y27)/mean(pPointTotalJ$y27))*100), ((max(pPointHCVabJ$y28)/mean(pPointTotalJ$y28))*100), ((max(pPointHCVabJ$y29)/mean(pPointTotalJ$y29))*100), ((max(pPointHCVabJ$y30)/mean(pPointTotalJ$y30))*100)  )
HCVJp$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVJp$Description <- c("Reduction intermediate + DAA optimistic + OST intermediate + NSP intermediate scenario")

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
#PlotB <- ggplot(data=prevHCVAll, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=2.5) + scale_shape_manual(values=c(19, 15, 17))  + scale_linetype_manual(values=c("solid","twodash", "longdash")) + ylab("HCV prevalence\n among total prison population") + scale_color_manual(values=c("#660000", "#006633", "#003366")) + ylim(0, 50) + geom_vline(xintercept=c(9, 13), linetype="dotted") + ggtitle("B") + theme_bw() + theme(legend.position="none", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.05, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 40, hjust = 1))
PlotB <-  ggplot(data=prevHCVAll, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), colour="black", width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=2.5) + scale_shape_manual(values=c(12, 16, 17, 18, 15, 21, 24, 23, 22, 25, 9))  + scale_linetype_manual(values=c("dotted", "solid", "longdash", "twodash", "dashed", "12345678", "F1", "solid", "dotted", "longdash", "dashed")) + ylab("HCV Ab prevalence\n among total prison population") + scale_color_manual(values=c("grey28", "coral", "chocolate", "cadetblue", "burlywood", "brown", "blue", "aquamarine4", "gold", "darkorchid", "darkgreen")) + ylim(0, 50) + geom_vline(xintercept=c(13), linetype="dotted") + ggtitle("B") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.05, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 40, hjust = 1))

legend <- get_legend(PlotLegend)
grid.newpage()
#grid.arrange(arrangeGrob(PlotA, PlotB))
#popPlots <- rbind (ggplotGrob(PlotA), ggplotGrob(PlotB), size="first")
ggdraw() + draw_plot(plot_grid(PlotA + theme(legend.position='none'), PlotB + theme(legend.position='none'), legend, ncol=1, align='hv'), width=0.9) 
#+ draw_plot(legend, x=0.20, y=0.0005, width=0.1, height=0.5)


#############
#On NSP
HCVA <- data.frame("IncidenceIDU"=c(mean(pTotalNSPSumA$y6), mean(pTotalNSPSumA$y7), mean(pTotalNSPSumA$y8), mean(pTotalNSPSumA$y9), mean(pTotalNSPSumA$y10), mean(pTotalNSPSumA$y11), mean(pTotalNSPSumA$y12), mean(pTotalNSPSumA$y13), mean(pTotalNSPSumA$y14), mean(pTotalNSPSumA$y15), mean(pTotalNSPSumA$y16), mean(pTotalNSPSumA$y17), mean(pTotalNSPSumA$y18), mean(pTotalNSPSumA$y19), mean(pTotalNSPSumA$y20), mean(pTotalNSPSumA$y21), mean(pTotalNSPSumA$y22), mean(pTotalNSPSumA$y23), mean(pTotalNSPSumA$y24), mean(pTotalNSPSumA$y25), mean(pTotalNSPSumA$y26), mean(pTotalNSPSumA$y27), mean(pTotalNSPSumA$y28), mean(pTotalNSPSumA$y29), mean(pTotalNSPSumA$y30)))
HCVA$IncidenceFloor <- c(min(pTotalNSPSumA$y6), min(pTotalNSPSumA$y7), min(pTotalNSPSumA$y8), min(pTotalNSPSumA$y9), min(pTotalNSPSumA$y10), min(pTotalNSPSumA$y11), min(pTotalNSPSumA$y12), min(pTotalNSPSumA$y13), min(pTotalNSPSumA$y14), min(pTotalNSPSumA$y15), min(pTotalNSPSumA$y16), min(pTotalNSPSumA$y17), min(pTotalNSPSumA$y18), min(pTotalNSPSumA$y19), min(pTotalNSPSumA$y20), min(pTotalNSPSumA$y21), min(pTotalNSPSumA$y22), min(pTotalNSPSumA$y23), min(pTotalNSPSumA$y24), min(pTotalNSPSumA$y25), min(pTotalNSPSumA$y26), min(pTotalNSPSumA$y27), min(pTotalNSPSumA$y28), min(pTotalNSPSumA$y29), min(pTotalNSPSumA$y30))
HCVA$IncidenceCeiling <- c(max(pTotalNSPSumA$y6), max(pTotalNSPSumA$y7), max(pTotalNSPSumA$y8), max(pTotalNSPSumA$y9), max(pTotalNSPSumA$y10), max(pTotalNSPSumA$y11), max(pTotalNSPSumA$y12), max(pTotalNSPSumA$y13), max(pTotalNSPSumA$y14), max(pTotalNSPSumA$y15), max(pTotalNSPSumA$y16), max(pTotalNSPSumA$y17), max(pTotalNSPSumA$y18), max(pTotalNSPSumA$y19), max(pTotalNSPSumA$y20), max(pTotalNSPSumA$y21), max(pTotalNSPSumA$y22), max(pTotalNSPSumA$y23), max(pTotalNSPSumA$y24), max(pTotalNSPSumA$y25), max(pTotalNSPSumA$y26), max(pTotalNSPSumA$y27), max(pTotalNSPSumA$y28), max(pTotalNSPSumA$y29), max(pTotalNSPSumA$y30))
HCVA$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVA$Description <- c("No NSP provided")

HCVB <- data.frame("IncidenceIDU"=c(mean(pTotalNSPSumB$y6), mean(pTotalNSPSumB$y7), mean(pTotalNSPSumB$y8), mean(pTotalNSPSumB$y9), mean(pTotalNSPSumB$y10), mean(pTotalNSPSumB$y11), mean(pTotalNSPSumB$y12), mean(pTotalNSPSumB$y13), mean(pTotalNSPSumB$y14), mean(pTotalNSPSumB$y15), mean(pTotalNSPSumB$y16), mean(pTotalNSPSumB$y17), mean(pTotalNSPSumB$y18), mean(pTotalNSPSumB$y19), mean(pTotalNSPSumB$y20), mean(pTotalNSPSumB$y21), mean(pTotalNSPSumB$y22), mean(pTotalNSPSumB$y23), mean(pTotalNSPSumB$y24), mean(pTotalNSPSumB$y25), mean(pTotalNSPSumB$y26), mean(pTotalNSPSumB$y27), mean(pTotalNSPSumB$y28), mean(pTotalNSPSumB$y29), mean(pTotalNSPSumB$y30)))
HCVB$IncidenceFloor <- c(min(pTotalNSPSumB$y6), min(pTotalNSPSumB$y7), min(pTotalNSPSumB$y8), min(pTotalNSPSumB$y9), min(pTotalNSPSumB$y10), min(pTotalNSPSumB$y11), min(pTotalNSPSumB$y12), min(pTotalNSPSumB$y13), min(pTotalNSPSumB$y14), min(pTotalNSPSumB$y15), min(pTotalNSPSumB$y16), min(pTotalNSPSumB$y17), min(pTotalNSPSumB$y18), min(pTotalNSPSumB$y19), min(pTotalNSPSumB$y20), min(pTotalNSPSumB$y21), min(pTotalNSPSumB$y22), min(pTotalNSPSumB$y23), min(pTotalNSPSumB$y24), min(pTotalNSPSumB$y25), min(pTotalNSPSumB$y26), min(pTotalNSPSumB$y27), min(pTotalNSPSumB$y28), min(pTotalNSPSumB$y29), min(pTotalNSPSumB$y30))
HCVB$IncidenceCeiling <- c(max(pTotalNSPSumB$y6), max(pTotalNSPSumB$y7), max(pTotalNSPSumB$y8), max(pTotalNSPSumB$y9), max(pTotalNSPSumB$y10), max(pTotalNSPSumB$y11), max(pTotalNSPSumB$y12), max(pTotalNSPSumB$y13), max(pTotalNSPSumB$y14), max(pTotalNSPSumB$y15), max(pTotalNSPSumB$y16), max(pTotalNSPSumB$y17), max(pTotalNSPSumB$y18), max(pTotalNSPSumB$y19), max(pTotalNSPSumB$y20), max(pTotalNSPSumB$y21), max(pTotalNSPSumB$y22), max(pTotalNSPSumB$y23), max(pTotalNSPSumB$y24), max(pTotalNSPSumB$y25), max(pTotalNSPSumB$y26), max(pTotalNSPSumB$y27), max(pTotalNSPSumB$y28), max(pTotalNSPSumB$y29), max(pTotalNSPSumB$y30))
HCVB$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVB$Description <- c("DO")

HCVC <- data.frame("IncidenceIDU"=c(mean(pTotalNSPSumC$y6), mean(pTotalNSPSumC$y7), mean(pTotalNSPSumC$y8), mean(pTotalNSPSumC$y9), mean(pTotalNSPSumC$y10), mean(pTotalNSPSumC$y11), mean(pTotalNSPSumC$y12), mean(pTotalNSPSumC$y13), mean(pTotalNSPSumC$y14), mean(pTotalNSPSumC$y15), mean(pTotalNSPSumC$y16), mean(pTotalNSPSumC$y17), mean(pTotalNSPSumC$y18), mean(pTotalNSPSumC$y19), mean(pTotalNSPSumC$y20), mean(pTotalNSPSumC$y21), mean(pTotalNSPSumC$y22), mean(pTotalNSPSumC$y23), mean(pTotalNSPSumC$y24), mean(pTotalNSPSumC$y25), mean(pTotalNSPSumC$y26), mean(pTotalNSPSumC$y27), mean(pTotalNSPSumC$y28), mean(pTotalNSPSumC$y29), mean(pTotalNSPSumC$y30)))
HCVC$IncidenceFloor <- c(min(pTotalNSPSumC$y6), min(pTotalNSPSumC$y7), min(pTotalNSPSumC$y8), min(pTotalNSPSumC$y9), min(pTotalNSPSumC$y10), min(pTotalNSPSumC$y11), min(pTotalNSPSumC$y12), min(pTotalNSPSumC$y13), min(pTotalNSPSumC$y14), min(pTotalNSPSumC$y15), min(pTotalNSPSumC$y16), min(pTotalNSPSumC$y17), min(pTotalNSPSumC$y18), min(pTotalNSPSumC$y19), min(pTotalNSPSumC$y20), min(pTotalNSPSumC$y21), min(pTotalNSPSumC$y22), min(pTotalNSPSumC$y23), min(pTotalNSPSumC$y24), min(pTotalNSPSumC$y25), min(pTotalNSPSumC$y26), min(pTotalNSPSumC$y27), min(pTotalNSPSumC$y28), min(pTotalNSPSumC$y29), min(pTotalNSPSumC$y30))
HCVC$IncidenceCeiling <- c(max(pTotalNSPSumC$y6), max(pTotalNSPSumC$y7), max(pTotalNSPSumC$y8), max(pTotalNSPSumC$y9), max(pTotalNSPSumC$y10), max(pTotalNSPSumC$y11), max(pTotalNSPSumC$y12), max(pTotalNSPSumC$y13), max(pTotalNSPSumC$y14), max(pTotalNSPSumC$y15), max(pTotalNSPSumC$y16), max(pTotalNSPSumC$y17), max(pTotalNSPSumC$y18), max(pTotalNSPSumC$y19), max(pTotalNSPSumC$y20), max(pTotalNSPSumC$y21), max(pTotalNSPSumC$y22), max(pTotalNSPSumC$y23), max(pTotalNSPSumC$y24), max(pTotalNSPSumC$y25), max(pTotalNSPSumC$y26), max(pTotalNSPSumC$y27), max(pTotalNSPSumC$y28), max(pTotalNSPSumC$y29), max(pTotalNSPSumC$y30))
HCVC$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVC$Description <- c("RDO")

HCVD <- data.frame("IncidenceIDU"=c(mean(pTotalNSPSumD$y6), mean(pTotalNSPSumD$y7), mean(pTotalNSPSumD$y8), mean(pTotalNSPSumD$y9), mean(pTotalNSPSumD$y10), mean(pTotalNSPSumD$y11), mean(pTotalNSPSumD$y12), mean(pTotalNSPSumD$y13), mean(pTotalNSPSumD$y14), mean(pTotalNSPSumD$y15), mean(pTotalNSPSumD$y16), mean(pTotalNSPSumD$y17), mean(pTotalNSPSumD$y18), mean(pTotalNSPSumD$y19), mean(pTotalNSPSumD$y20), mean(pTotalNSPSumD$y21), mean(pTotalNSPSumD$y22), mean(pTotalNSPSumD$y23), mean(pTotalNSPSumD$y24), mean(pTotalNSPSumD$y25), mean(pTotalNSPSumD$y26), mean(pTotalNSPSumD$y27), mean(pTotalNSPSumD$y28), mean(pTotalNSPSumD$y29), mean(pTotalNSPSumD$y30)))
HCVD$IncidenceFloor <- c(min(pTotalNSPSumD$y6), min(pTotalNSPSumD$y7), min(pTotalNSPSumD$y8), min(pTotalNSPSumD$y9), min(pTotalNSPSumD$y10), min(pTotalNSPSumD$y11), min(pTotalNSPSumD$y12), min(pTotalNSPSumD$y13), min(pTotalNSPSumD$y14), min(pTotalNSPSumD$y15), min(pTotalNSPSumD$y16), min(pTotalNSPSumD$y17), min(pTotalNSPSumD$y18), min(pTotalNSPSumD$y19), min(pTotalNSPSumD$y20), min(pTotalNSPSumD$y21), min(pTotalNSPSumD$y22), min(pTotalNSPSumD$y23), min(pTotalNSPSumD$y24), min(pTotalNSPSumD$y25), min(pTotalNSPSumD$y26), min(pTotalNSPSumD$y27), min(pTotalNSPSumD$y28), min(pTotalNSPSumD$y29), min(pTotalNSPSumD$y30))
HCVD$IncidenceCeiling <- c(max(pTotalNSPSumD$y6), max(pTotalNSPSumD$y7), max(pTotalNSPSumD$y8), max(pTotalNSPSumD$y9), max(pTotalNSPSumD$y10), max(pTotalNSPSumD$y11), max(pTotalNSPSumD$y12), max(pTotalNSPSumD$y13), max(pTotalNSPSumD$y14), max(pTotalNSPSumD$y15), max(pTotalNSPSumD$y16), max(pTotalNSPSumD$y17), max(pTotalNSPSumD$y18), max(pTotalNSPSumD$y19), max(pTotalNSPSumD$y20), max(pTotalNSPSumD$y21), max(pTotalNSPSumD$y22), max(pTotalNSPSumD$y23), max(pTotalNSPSumD$y24), max(pTotalNSPSumD$y25), max(pTotalNSPSumD$y26), max(pTotalNSPSumD$y27), max(pTotalNSPSumD$y28), max(pTotalNSPSumD$y29), max(pTotalNSPSumD$y30))
HCVD$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVD$Description <- c("NSP provided to 200 PWID per year")

HCVE <- data.frame("IncidenceIDU"=c(mean(pTotalNSPSumE$y6), mean(pTotalNSPSumE$y7), mean(pTotalNSPSumE$y8), mean(pTotalNSPSumE$y9), mean(pTotalNSPSumE$y10), mean(pTotalNSPSumE$y11), mean(pTotalNSPSumE$y12), mean(pTotalNSPSumE$y13), mean(pTotalNSPSumE$y14), mean(pTotalNSPSumE$y15), mean(pTotalNSPSumE$y16), mean(pTotalNSPSumE$y17), mean(pTotalNSPSumE$y18), mean(pTotalNSPSumE$y19), mean(pTotalNSPSumE$y20), mean(pTotalNSPSumE$y21), mean(pTotalNSPSumE$y22), mean(pTotalNSPSumE$y23), mean(pTotalNSPSumE$y24), mean(pTotalNSPSumE$y25), mean(pTotalNSPSumE$y26), mean(pTotalNSPSumE$y27), mean(pTotalNSPSumE$y28), mean(pTotalNSPSumE$y29), mean(pTotalNSPSumE$y30)))
HCVE$IncidenceFloor <- c(min(pTotalNSPSumE$y6), min(pTotalNSPSumE$y7), min(pTotalNSPSumE$y8), min(pTotalNSPSumE$y9), min(pTotalNSPSumE$y10), min(pTotalNSPSumE$y11), min(pTotalNSPSumE$y12), min(pTotalNSPSumE$y13), min(pTotalNSPSumE$y14), min(pTotalNSPSumE$y15), min(pTotalNSPSumE$y16), min(pTotalNSPSumE$y17), min(pTotalNSPSumE$y18), min(pTotalNSPSumE$y19), min(pTotalNSPSumE$y20), min(pTotalNSPSumE$y21), min(pTotalNSPSumE$y22), min(pTotalNSPSumE$y23), min(pTotalNSPSumE$y24), min(pTotalNSPSumE$y25), min(pTotalNSPSumE$y26), min(pTotalNSPSumE$y27), min(pTotalNSPSumE$y28), min(pTotalNSPSumE$y29), min(pTotalNSPSumE$y30))
HCVE$IncidenceCeiling <- c(max(pTotalNSPSumE$y6), max(pTotalNSPSumE$y7), max(pTotalNSPSumE$y8), max(pTotalNSPSumE$y9), max(pTotalNSPSumE$y10), max(pTotalNSPSumE$y11), max(pTotalNSPSumE$y12), max(pTotalNSPSumE$y13), max(pTotalNSPSumE$y14), max(pTotalNSPSumE$y15), max(pTotalNSPSumE$y16), max(pTotalNSPSumE$y17), max(pTotalNSPSumE$y18), max(pTotalNSPSumE$y19), max(pTotalNSPSumE$y20), max(pTotalNSPSumE$y21), max(pTotalNSPSumE$y22), max(pTotalNSPSumE$y23), max(pTotalNSPSumE$y24), max(pTotalNSPSumE$y25), max(pTotalNSPSumE$y26), max(pTotalNSPSumE$y27), max(pTotalNSPSumE$y28), max(pTotalNSPSumE$y29), max(pTotalNSPSumE$y30))
HCVE$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVE$Description <- c("NSP provided to 200 PWID per year")

HCVF <- data.frame("IncidenceIDU"=c(mean(pTotalNSPSumF$y6), mean(pTotalNSPSumF$y7), mean(pTotalNSPSumF$y8), mean(pTotalNSPSumF$y9), mean(pTotalNSPSumF$y10), mean(pTotalNSPSumF$y11), mean(pTotalNSPSumF$y12), mean(pTotalNSPSumF$y13), mean(pTotalNSPSumF$y14), mean(pTotalNSPSumF$y15), mean(pTotalNSPSumF$y16), mean(pTotalNSPSumF$y17), mean(pTotalNSPSumF$y18), mean(pTotalNSPSumF$y19), mean(pTotalNSPSumF$y20), mean(pTotalNSPSumF$y21), mean(pTotalNSPSumF$y22), mean(pTotalNSPSumF$y23), mean(pTotalNSPSumF$y24), mean(pTotalNSPSumF$y25), mean(pTotalNSPSumF$y26), mean(pTotalNSPSumF$y27), mean(pTotalNSPSumF$y28), mean(pTotalNSPSumF$y29), mean(pTotalNSPSumF$y30)))
HCVF$IncidenceFloor <- c(min(pTotalNSPSumF$y6), min(pTotalNSPSumF$y7), min(pTotalNSPSumF$y8), min(pTotalNSPSumF$y9), min(pTotalNSPSumF$y10), min(pTotalNSPSumF$y11), min(pTotalNSPSumF$y12), min(pTotalNSPSumF$y13), min(pTotalNSPSumF$y14), min(pTotalNSPSumF$y15), min(pTotalNSPSumF$y16), min(pTotalNSPSumF$y17), min(pTotalNSPSumF$y18), min(pTotalNSPSumF$y19), min(pTotalNSPSumF$y20), min(pTotalNSPSumF$y21), min(pTotalNSPSumF$y22), min(pTotalNSPSumF$y23), min(pTotalNSPSumF$y24), min(pTotalNSPSumF$y25), min(pTotalNSPSumF$y26), min(pTotalNSPSumF$y27), min(pTotalNSPSumF$y28), min(pTotalNSPSumF$y29), min(pTotalNSPSumF$y30))
HCVF$IncidenceCeiling <- c(max(pTotalNSPSumF$y6), max(pTotalNSPSumF$y7), max(pTotalNSPSumF$y8), max(pTotalNSPSumF$y9), max(pTotalNSPSumF$y10), max(pTotalNSPSumF$y11), max(pTotalNSPSumF$y12), max(pTotalNSPSumF$y13), max(pTotalNSPSumF$y14), max(pTotalNSPSumF$y15), max(pTotalNSPSumF$y16), max(pTotalNSPSumF$y17), max(pTotalNSPSumF$y18), max(pTotalNSPSumF$y19), max(pTotalNSPSumF$y20), max(pTotalNSPSumF$y21), max(pTotalNSPSumF$y22), max(pTotalNSPSumF$y23), max(pTotalNSPSumF$y24), max(pTotalNSPSumF$y25), max(pTotalNSPSumF$y26), max(pTotalNSPSumF$y27), max(pTotalNSPSumF$y28), max(pTotalNSPSumF$y29), max(pTotalNSPSumF$y30))
HCVF$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVF$Description <- c("NSP provided to 200 PWID per year")

incHCVIDU <- rbind(HCVA, HCVB, HCVC, HCVD, HCVE, HCVF)
#PlotA <- ggplot(data=incHCVIDU, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=2.5) + scale_linetype_manual(values=c("solid","twodash","dotted", "longdash", "dotdash")) + scale_shape_manual(values=c(19, 15, 8, 17, 4))  + ylab("HCV incidence\n among PWID") + geom_vline(xintercept=c(9, 13), linetype="dotted") + scale_color_manual(values=c("#660000", "#006633", "#000000", "#003366", "#000000")) + ylim(0, 30) + geom_point(data=HCVEvan, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4) + geom_errorbar(data=HCVEvan, mapping=aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI), colour="black", width=.1) + geom_point(data=HCVStopc, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4) + ggtitle("A") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.05, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 40, hjust = 1))
PlotA <- ggplot(data=incHCVIDU, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=2.5) + scale_linetype_manual(values=c("dotted", "solid", "longdash", "twodash", "dotdash", "dashed", "12345678", "F1")) + scale_shape_manual(values=c(8, 19, 17, 15, 4, 0, 6, 5))  + ylab("Number of individuals\n on NSP") + geom_vline(xintercept=c(13), linetype="dotted") + scale_color_manual(values=c("#000000", "#660000", "#003366", "#006633", "#000000", "#FFFF00", "#800080", "#008080")) + ylim(0, 7000) + ggtitle("A") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.05, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 40, hjust = 1))

#NewCases
HCVA <- data.frame("IncidenceIDU"=c(mean(pNewCasesSumA$y6), mean(pNewCasesSumA$y7), mean(pNewCasesSumA$y8), mean(pNewCasesSumA$y9), mean(pNewCasesSumA$y10), mean(pNewCasesSumA$y11), mean(pNewCasesSumA$y12), mean(pNewCasesSumA$y13), mean(pNewCasesSumA$y14), mean(pNewCasesSumA$y15), mean(pNewCasesSumA$y16), mean(pNewCasesSumA$y17), mean(pNewCasesSumA$y18), mean(pNewCasesSumA$y19), mean(pNewCasesSumA$y20), mean(pNewCasesSumA$y21), mean(pNewCasesSumA$y22), mean(pNewCasesSumA$y23), mean(pNewCasesSumA$y24), mean(pNewCasesSumA$y25), mean(pNewCasesSumA$y26), mean(pNewCasesSumA$y27), mean(pNewCasesSumA$y28), mean(pNewCasesSumA$y29), mean(pNewCasesSumA$y30)))
HCVA$IncidenceFloor <- c(min(pNewCasesSumA$y6), min(pNewCasesSumA$y7), min(pNewCasesSumA$y8), min(pNewCasesSumA$y9), min(pNewCasesSumA$y10), min(pNewCasesSumA$y11), min(pNewCasesSumA$y12), min(pNewCasesSumA$y13), min(pNewCasesSumA$y14), min(pNewCasesSumA$y15), min(pNewCasesSumA$y16), min(pNewCasesSumA$y17), min(pNewCasesSumA$y18), min(pNewCasesSumA$y19), min(pNewCasesSumA$y20), min(pNewCasesSumA$y21), min(pNewCasesSumA$y22), min(pNewCasesSumA$y23), min(pNewCasesSumA$y24), min(pNewCasesSumA$y25), min(pNewCasesSumA$y26), min(pNewCasesSumA$y27), min(pNewCasesSumA$y28), min(pNewCasesSumA$y29), min(pNewCasesSumA$y30))
HCVA$IncidenceCeiling <- c(max(pNewCasesSumA$y6), max(pNewCasesSumA$y7), max(pNewCasesSumA$y8), max(pNewCasesSumA$y9), max(pNewCasesSumA$y10), max(pNewCasesSumA$y11), max(pNewCasesSumA$y12), max(pNewCasesSumA$y13), max(pNewCasesSumA$y14), max(pNewCasesSumA$y15), max(pNewCasesSumA$y16), max(pNewCasesSumA$y17), max(pNewCasesSumA$y18), max(pNewCasesSumA$y19), max(pNewCasesSumA$y20), max(pNewCasesSumA$y21), max(pNewCasesSumA$y22), max(pNewCasesSumA$y23), max(pNewCasesSumA$y24), max(pNewCasesSumA$y25), max(pNewCasesSumA$y26), max(pNewCasesSumA$y27), max(pNewCasesSumA$y28), max(pNewCasesSumA$y29), max(pNewCasesSumA$y30))
HCVA$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVA$Description <- c("No NSP provided")

HCVB <- data.frame("IncidenceIDU"=c(mean(pNewCasesSumB$y6), mean(pNewCasesSumB$y7), mean(pNewCasesSumB$y8), mean(pNewCasesSumB$y9), mean(pNewCasesSumB$y10), mean(pNewCasesSumB$y11), mean(pNewCasesSumB$y12), mean(pNewCasesSumB$y13), mean(pNewCasesSumB$y14), mean(pNewCasesSumB$y15), mean(pNewCasesSumB$y16), mean(pNewCasesSumB$y17), mean(pNewCasesSumB$y18), mean(pNewCasesSumB$y19), mean(pNewCasesSumB$y20), mean(pNewCasesSumB$y21), mean(pNewCasesSumB$y22), mean(pNewCasesSumB$y23), mean(pNewCasesSumB$y24), mean(pNewCasesSumB$y25), mean(pNewCasesSumB$y26), mean(pNewCasesSumB$y27), mean(pNewCasesSumB$y28), mean(pNewCasesSumB$y29), mean(pNewCasesSumB$y30)))
HCVB$IncidenceFloor <- c(min(pNewCasesSumB$y6), min(pNewCasesSumB$y7), min(pNewCasesSumB$y8), min(pNewCasesSumB$y9), min(pNewCasesSumB$y10), min(pNewCasesSumB$y11), min(pNewCasesSumB$y12), min(pNewCasesSumB$y13), min(pNewCasesSumB$y14), min(pNewCasesSumB$y15), min(pNewCasesSumB$y16), min(pNewCasesSumB$y17), min(pNewCasesSumB$y18), min(pNewCasesSumB$y19), min(pNewCasesSumB$y20), min(pNewCasesSumB$y21), min(pNewCasesSumB$y22), min(pNewCasesSumB$y23), min(pNewCasesSumB$y24), min(pNewCasesSumB$y25), min(pNewCasesSumB$y26), min(pNewCasesSumB$y27), min(pNewCasesSumB$y28), min(pNewCasesSumB$y29), min(pNewCasesSumB$y30))
HCVB$IncidenceCeiling <- c(max(pNewCasesSumB$y6), max(pNewCasesSumB$y7), max(pNewCasesSumB$y8), max(pNewCasesSumB$y9), max(pNewCasesSumB$y10), max(pNewCasesSumB$y11), max(pNewCasesSumB$y12), max(pNewCasesSumB$y13), max(pNewCasesSumB$y14), max(pNewCasesSumB$y15), max(pNewCasesSumB$y16), max(pNewCasesSumB$y17), max(pNewCasesSumB$y18), max(pNewCasesSumB$y19), max(pNewCasesSumB$y20), max(pNewCasesSumB$y21), max(pNewCasesSumB$y22), max(pNewCasesSumB$y23), max(pNewCasesSumB$y24), max(pNewCasesSumB$y25), max(pNewCasesSumB$y26), max(pNewCasesSumB$y27), max(pNewCasesSumB$y28), max(pNewCasesSumB$y29), max(pNewCasesSumB$y30))
HCVB$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVB$Description <- c("DO")

HCVC <- data.frame("IncidenceIDU"=c(mean(pNewCasesSumC$y6), mean(pNewCasesSumC$y7), mean(pNewCasesSumC$y8), mean(pNewCasesSumC$y9), mean(pNewCasesSumC$y10), mean(pNewCasesSumC$y11), mean(pNewCasesSumC$y12), mean(pNewCasesSumC$y13), mean(pNewCasesSumC$y14), mean(pNewCasesSumC$y15), mean(pNewCasesSumC$y16), mean(pNewCasesSumC$y17), mean(pNewCasesSumC$y18), mean(pNewCasesSumC$y19), mean(pNewCasesSumC$y20), mean(pNewCasesSumC$y21), mean(pNewCasesSumC$y22), mean(pNewCasesSumC$y23), mean(pNewCasesSumC$y24), mean(pNewCasesSumC$y25), mean(pNewCasesSumC$y26), mean(pNewCasesSumC$y27), mean(pNewCasesSumC$y28), mean(pNewCasesSumC$y29), mean(pNewCasesSumC$y30)))
HCVC$IncidenceFloor <- c(min(pNewCasesSumC$y6), min(pNewCasesSumC$y7), min(pNewCasesSumC$y8), min(pNewCasesSumC$y9), min(pNewCasesSumC$y10), min(pNewCasesSumC$y11), min(pNewCasesSumC$y12), min(pNewCasesSumC$y13), min(pNewCasesSumC$y14), min(pNewCasesSumC$y15), min(pNewCasesSumC$y16), min(pNewCasesSumC$y17), min(pNewCasesSumC$y18), min(pNewCasesSumC$y19), min(pNewCasesSumC$y20), min(pNewCasesSumC$y21), min(pNewCasesSumC$y22), min(pNewCasesSumC$y23), min(pNewCasesSumC$y24), min(pNewCasesSumC$y25), min(pNewCasesSumC$y26), min(pNewCasesSumC$y27), min(pNewCasesSumC$y28), min(pNewCasesSumC$y29), min(pNewCasesSumC$y30))
HCVC$IncidenceCeiling <- c(max(pNewCasesSumC$y6), max(pNewCasesSumC$y7), max(pNewCasesSumC$y8), max(pNewCasesSumC$y9), max(pNewCasesSumC$y10), max(pNewCasesSumC$y11), max(pNewCasesSumC$y12), max(pNewCasesSumC$y13), max(pNewCasesSumC$y14), max(pNewCasesSumC$y15), max(pNewCasesSumC$y16), max(pNewCasesSumC$y17), max(pNewCasesSumC$y18), max(pNewCasesSumC$y19), max(pNewCasesSumC$y20), max(pNewCasesSumC$y21), max(pNewCasesSumC$y22), max(pNewCasesSumC$y23), max(pNewCasesSumC$y24), max(pNewCasesSumC$y25), max(pNewCasesSumC$y26), max(pNewCasesSumC$y27), max(pNewCasesSumC$y28), max(pNewCasesSumC$y29), max(pNewCasesSumC$y30))
HCVC$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVC$Description <- c("NSP provided to 1400 PWID per year")

HCVD <- data.frame("IncidenceIDU"=c(mean(pNewCasesSumD$y6), mean(pNewCasesSumD$y7), mean(pNewCasesSumD$y8), mean(pNewCasesSumD$y9), mean(pNewCasesSumD$y10), mean(pNewCasesSumD$y11), mean(pNewCasesSumD$y12), mean(pNewCasesSumD$y13), mean(pNewCasesSumD$y14), mean(pNewCasesSumD$y15), mean(pNewCasesSumD$y16), mean(pNewCasesSumD$y17), mean(pNewCasesSumD$y18), mean(pNewCasesSumD$y19), mean(pNewCasesSumD$y20), mean(pNewCasesSumD$y21), mean(pNewCasesSumD$y22), mean(pNewCasesSumD$y23), mean(pNewCasesSumD$y24), mean(pNewCasesSumD$y25), mean(pNewCasesSumD$y26), mean(pNewCasesSumD$y27), mean(pNewCasesSumD$y28), mean(pNewCasesSumD$y29), mean(pNewCasesSumD$y30)))
HCVD$IncidenceFloor <- c(min(pNewCasesSumD$y6), min(pNewCasesSumD$y7), min(pNewCasesSumD$y8), min(pNewCasesSumD$y9), min(pNewCasesSumD$y10), min(pNewCasesSumD$y11), min(pNewCasesSumD$y12), min(pNewCasesSumD$y13), min(pNewCasesSumD$y14), min(pNewCasesSumD$y15), min(pNewCasesSumD$y16), min(pNewCasesSumD$y17), min(pNewCasesSumD$y18), min(pNewCasesSumD$y19), min(pNewCasesSumD$y20), min(pNewCasesSumD$y21), min(pNewCasesSumD$y22), min(pNewCasesSumD$y23), min(pNewCasesSumD$y24), min(pNewCasesSumD$y25), min(pNewCasesSumD$y26), min(pNewCasesSumD$y27), min(pNewCasesSumD$y28), min(pNewCasesSumD$y29), min(pNewCasesSumD$y30))
HCVD$IncidenceCeiling <- c(max(pNewCasesSumD$y6), max(pNewCasesSumD$y7), max(pNewCasesSumD$y8), max(pNewCasesSumD$y9), max(pNewCasesSumD$y10), max(pNewCasesSumD$y11), max(pNewCasesSumD$y12), max(pNewCasesSumD$y13), max(pNewCasesSumD$y14), max(pNewCasesSumD$y15), max(pNewCasesSumD$y16), max(pNewCasesSumD$y17), max(pNewCasesSumD$y18), max(pNewCasesSumD$y19), max(pNewCasesSumD$y20), max(pNewCasesSumD$y21), max(pNewCasesSumD$y22), max(pNewCasesSumD$y23), max(pNewCasesSumD$y24), max(pNewCasesSumD$y25), max(pNewCasesSumD$y26), max(pNewCasesSumD$y27), max(pNewCasesSumD$y28), max(pNewCasesSumD$y29), max(pNewCasesSumD$y30))
HCVD$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVD$Description <- c("NSP provided to 1400 PWID per year")

HCVE <- data.frame("IncidenceIDU"=c(mean(pNewCasesSumE$y6), mean(pNewCasesSumE$y7), mean(pNewCasesSumE$y8), mean(pNewCasesSumE$y9), mean(pNewCasesSumE$y10), mean(pNewCasesSumE$y11), mean(pNewCasesSumE$y12), mean(pNewCasesSumE$y13), mean(pNewCasesSumE$y14), mean(pNewCasesSumE$y15), mean(pNewCasesSumE$y16), mean(pNewCasesSumE$y17), mean(pNewCasesSumE$y18), mean(pNewCasesSumE$y19), mean(pNewCasesSumE$y20), mean(pNewCasesSumE$y21), mean(pNewCasesSumE$y22), mean(pNewCasesSumE$y23), mean(pNewCasesSumE$y24), mean(pNewCasesSumE$y25), mean(pNewCasesSumE$y26), mean(pNewCasesSumE$y27), mean(pNewCasesSumE$y28), mean(pNewCasesSumE$y29), mean(pNewCasesSumE$y30)))
HCVE$IncidenceFloor <- c(min(pNewCasesSumE$y6), min(pNewCasesSumE$y7), min(pNewCasesSumE$y8), min(pNewCasesSumE$y9), min(pNewCasesSumE$y10), min(pNewCasesSumE$y11), min(pNewCasesSumE$y12), min(pNewCasesSumE$y13), min(pNewCasesSumE$y14), min(pNewCasesSumE$y15), min(pNewCasesSumE$y16), min(pNewCasesSumE$y17), min(pNewCasesSumE$y18), min(pNewCasesSumE$y19), min(pNewCasesSumE$y20), min(pNewCasesSumE$y21), min(pNewCasesSumE$y22), min(pNewCasesSumE$y23), min(pNewCasesSumE$y24), min(pNewCasesSumE$y25), min(pNewCasesSumE$y26), min(pNewCasesSumE$y27), min(pNewCasesSumE$y28), min(pNewCasesSumE$y29), min(pNewCasesSumE$y30))
HCVE$IncidenceCeiling <- c(max(pNewCasesSumE$y6), max(pNewCasesSumE$y7), max(pNewCasesSumE$y8), max(pNewCasesSumE$y9), max(pNewCasesSumE$y10), max(pNewCasesSumE$y11), max(pNewCasesSumE$y12), max(pNewCasesSumE$y13), max(pNewCasesSumE$y14), max(pNewCasesSumE$y15), max(pNewCasesSumE$y16), max(pNewCasesSumE$y17), max(pNewCasesSumE$y18), max(pNewCasesSumE$y19), max(pNewCasesSumE$y20), max(pNewCasesSumE$y21), max(pNewCasesSumE$y22), max(pNewCasesSumE$y23), max(pNewCasesSumE$y24), max(pNewCasesSumE$y25), max(pNewCasesSumE$y26), max(pNewCasesSumE$y27), max(pNewCasesSumE$y28), max(pNewCasesSumE$y29), max(pNewCasesSumE$y30))
HCVE$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVE$Description <- c("NSP provided to 1400 PWID per year")

HCVF <- data.frame("IncidenceIDU"=c(mean(pNewCasesSumF$y6), mean(pNewCasesSumF$y7), mean(pNewCasesSumF$y8), mean(pNewCasesSumF$y9), mean(pNewCasesSumF$y10), mean(pNewCasesSumF$y11), mean(pNewCasesSumF$y12), mean(pNewCasesSumF$y13), mean(pNewCasesSumF$y14), mean(pNewCasesSumF$y15), mean(pNewCasesSumF$y16), mean(pNewCasesSumF$y17), mean(pNewCasesSumF$y18), mean(pNewCasesSumF$y19), mean(pNewCasesSumF$y20), mean(pNewCasesSumF$y21), mean(pNewCasesSumF$y22), mean(pNewCasesSumF$y23), mean(pNewCasesSumF$y24), mean(pNewCasesSumF$y25), mean(pNewCasesSumF$y26), mean(pNewCasesSumF$y27), mean(pNewCasesSumF$y28), mean(pNewCasesSumF$y29), mean(pNewCasesSumF$y30)))
HCVF$IncidenceFloor <- c(min(pNewCasesSumF$y6), min(pNewCasesSumF$y7), min(pNewCasesSumF$y8), min(pNewCasesSumF$y9), min(pNewCasesSumF$y10), min(pNewCasesSumF$y11), min(pNewCasesSumF$y12), min(pNewCasesSumF$y13), min(pNewCasesSumF$y14), min(pNewCasesSumF$y15), min(pNewCasesSumF$y16), min(pNewCasesSumF$y17), min(pNewCasesSumF$y18), min(pNewCasesSumF$y19), min(pNewCasesSumF$y20), min(pNewCasesSumF$y21), min(pNewCasesSumF$y22), min(pNewCasesSumF$y23), min(pNewCasesSumF$y24), min(pNewCasesSumF$y25), min(pNewCasesSumF$y26), min(pNewCasesSumF$y27), min(pNewCasesSumF$y28), min(pNewCasesSumF$y29), min(pNewCasesSumF$y30))
HCVF$IncidenceCeiling <- c(max(pNewCasesSumF$y6), max(pNewCasesSumF$y7), max(pNewCasesSumF$y8), max(pNewCasesSumF$y9), max(pNewCasesSumF$y10), max(pNewCasesSumF$y11), max(pNewCasesSumF$y12), max(pNewCasesSumF$y13), max(pNewCasesSumF$y14), max(pNewCasesSumF$y15), max(pNewCasesSumF$y16), max(pNewCasesSumF$y17), max(pNewCasesSumF$y18), max(pNewCasesSumF$y19), max(pNewCasesSumF$y20), max(pNewCasesSumF$y21), max(pNewCasesSumF$y22), max(pNewCasesSumF$y23), max(pNewCasesSumF$y24), max(pNewCasesSumF$y25), max(pNewCasesSumF$y26), max(pNewCasesSumF$y27), max(pNewCasesSumF$y28), max(pNewCasesSumF$y29), max(pNewCasesSumF$y30))
HCVF$Year <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030")
HCVF$Description <- c("NSP provided to 1400 PWID per year")

incHCVIDU <- rbind(HCVA, HCVB, HCVC, HCVD, HCVE, HCVF)
#PlotA <- ggplot(data=incHCVIDU, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=2.5) + scale_linetype_manual(values=c("solid","twodash","dotted", "longdash", "dotdash")) + scale_shape_manual(values=c(19, 15, 8, 17, 4))  + ylab("HCV incidence\n among PWID") + geom_vline(xintercept=c(9, 13), linetype="dotted") + scale_color_manual(values=c("#660000", "#006633", "#000000", "#003366", "#000000")) + ylim(0, 30) + geom_point(data=HCVEvan, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4) + geom_errorbar(data=HCVEvan, mapping=aes(ymin=IncidenceIDU-IncidenceIDUCI, ymax=IncidenceIDU+IncidenceIDUCI), colour="black", width=.1) + geom_point(data=HCVStopc, mapping=aes(x=Year, y=IncidenceIDU, shape=Description), size=4) + ggtitle("A") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.05, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 40, hjust = 1))
PlotB <- ggplot(data=incHCVIDU, aes(x=Year, y=IncidenceIDU, group=Description, col=Description, linetype=Description)) + geom_errorbar(aes(ymin=IncidenceFloor, ymax=IncidenceCeiling), width=.1) + geom_line(aes(linetype=Description, color=Description)) + geom_point(aes(shape=Description), size=2.5) + scale_linetype_manual(values=c("dashed", "solid", "longdash", "twodash", "dotdash", "dashed", "12345678", "F1", "solid", "dotted", "longdash", "dashed")) + scale_shape_manual(values=c(12, 16, 17, 18, 15, 21, 24, 23, 22, 25, 9))  + ylab("HCV incidence\n among PWID") + geom_vline(xintercept=c(13), linetype="dotted") + scale_color_manual(values=c("grey28", "coral", "chocolate", "cadetblue", "burlywood", "brown", "blue", "aquamarine4", "gold", "darkorchid", "darkgreen")) + ylim(0, 1000) + ggtitle("A") + theme_bw() + theme(legend.position="right", text=element_text(size=15), legend.title=element_blank(), plot.title = element_text(hjust = -0.05, vjust=1), panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"), axis.text.x = element_text(angle = 40, hjust = 1))

grid.newpage()
grid.arrange(arrangeGrob(PlotA, PlotB))
popPlots <- rbind (ggplotGrob(PlotA), ggplotGrob(PlotB), size="first")
grid.draw(popPlots)

