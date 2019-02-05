//
//  individual.c
//  HCV Model
//
//  Created by Neil Bretana on 1/10/2014.
//  Copyright (c) 2014 Neil Bretana. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <math.h>
#include <gsl/gsl_randist.h>
#include "individual.h"

#define COLCTR 12  //Array of locations containing:
//[row][0] IDU+; HCV+; ATSI
//[row][1] IDU+; HCV+; NON-ATSI
//[row][2] IDU+; HCV-; ATSI; PREV. EXPOSED
//[row][3] IDU+; HCV-; ATSI; SUSCEPTIBLE
//[row][4] IDU+; HCV-; NON-ATSI; PREV. EXPOSED
//[row][5] IDU+; HCV-; NON-ATSI; SUSCEPTIBLE
//[row][6] IDU-; HCV+; ATSI
//[row][7] IDU-; HCV+; NON-ATSI
//[row][8] IDU-; HCV-; ATSI; PREV. EXPOSED
//[row][9] IDU-; HCV-; ATSI; SUSCEPTIBLE
//[row][10] IDU-; HCV-; NON-ATSI; PREV. EXPOSED
//[row][11] IDU-; HCV-; NON-ATSI; SUSCEPTIBLE
#define ROWPRIS 4 //# prisons +1
#define RGROUPS 7 //Risk groups: 0: non-injecting; 1: injecting less than daily, not sharing; 2: injecting daily or more, not sharing; 3: injecting less than daily, sharing less than daily; 4: injecting less than daily, sharing daily or more; 5: injecting daily or more, sharing less than daily; 6: injecting daily or more, sharing daily or more

int generateRand(){
    int rNum;
    
    rNum= rand();
    //rNum = rand()%10 +1;
    return rNum;
}

int draw_multinom(gsl_rng **r, int nEvents, double probsInput[]){
    int nIndex=999, iFlag=0, iCrawl=0;
    unsigned outArray[nEvents];
    
    gsl_ran_multinomial(*r, nEvents, 1, probsInput, outArray);
    
    while(iFlag==0){
        if(outArray[iCrawl]==1){
            nIndex=iCrawl;
            iFlag=1;
        }
        iCrawl++;
    }
    
    return nIndex;
}

int distributePop(int input){
    int n;
    do
        n=generateRand();
    while(n<=0||n>input);
    return n;
}

//sIndiv *newIndiv (sIndiv **pHeadCopy, sIndiv **pTailCopy){
//sIndiv *newIndiv (sIndiv **pHeadCopy, sIndiv **pTailCopy){
void newIndiv (int *idGlobal, int *HCVentry, int *HCVentryAb, int currDay, sIndiv **pHeadCopy, sIndiv **pTailCopy, gsl_rng **r, int nEvents, int (*pLocArray2)[ROWPRIS][COLCTR], int prison, int category){
    sIndiv *obj;
    int objAge, objLoc, objMeta, binIDU, binATSI, binHCV, binPREV, binInjFrq, binOpd, binSha, binShaFrq, binEverIDU, categoryFlag=0;
    float rMin, rMed, rMax, lb, ub;
    double historyIDU;
    double probsMove[ROWPRIS];//array to move people from community to prison
    double probsMeta[4];
    double probsRisk[2]; //for proportion of IDUs
    double probsR[2];
    gsl_rng *rCopy;
    rCopy=*r;
    
    obj=(sIndiv *)malloc(sizeof(sIndiv));
    
    //Fill in characteristics
    obj->ID=*idGlobal;
    (*idGlobal)++;
    
    //Age
    do
        objAge=generateRand();
    while(objAge<18||objAge>100);
    obj->age=objAge;
    
    //set DAA OST NSP
    obj->DAA=0;
    obj->OST=0;
    
    //BASIC ATTRBUTES
    if(category==0||category==2||category==3||category==6||category==8||category==9){
        obj->atsi=1;
        obj->timeOfImprisonment=0;
    }else if(category==1||category==4||category==5||category==7||category==10||category==11){
        obj->atsi=0;
        obj->timeOfImprisonment=0;
    }else if(category==99){//new individuals from the community
        //assign injecting category
        //check first if enough people in this category
        //choose if injector or not p=0.16 (dummy: NSW Inmate Health Survey 2009)
        //loop for if category count is 0
        obj->timeOfImprisonment=currDay;
        
        while(categoryFlag==0){
            //binIDU=gsl_ran_binomial(*r, 0.16, 1);
            //binIDU=gsl_ran_binomial(*r, 0, 0.16);
            probsRisk[0]=1-0.30;//.20//1-0.164; //not IDU
            probsRisk[1]=0.30;//0.20//0.164; //probability of being an IDU
            binIDU=draw_multinom(&rCopy, 2, probsRisk);
            if(binIDU==1){ //IDU
                //probability of being ATSI; p=.204 (NSW Inmate Health Survey 2009)
                //binATSI=gsl_ran_binomial(*r, 0.204, 1);
                probsRisk[0]=1-0.20; //not IDU
                probsRisk[1]=0.20; //probability of being an IDU
                binATSI=draw_multinom(&rCopy, 2, probsRisk);
                if(binATSI==1){
                    obj->atsi=1; //IDU ATSI
                    //probability of being infected with HCV upon entry IDU ATSI p= 36% antibody prev
                    //binHCV=gsl_ran_binomial(*r, 0.36, 1);
                    probsRisk[0]=1-0.68;//0.70//0.60//1-0.36; //not HCV infected
                    probsRisk[1]=0.68;//0.70//0.60//0.36; //probability of being HCV infected
                    binHCV=draw_multinom(&rCopy, 2, probsRisk);
                    if(binHCV==1){ //IDU ATSI HCV
                        (*HCVentryAb)++;
                        //probability of being viremic (as opposed to prev. exposed) IDU ATSI p= 80% antibody prev
                        //binPREV=gsl_ran_binomial(*r, 0.80, 1);
                        probsRisk[0]=1-0.75;//1-0.80; //not viraemic
                        probsRisk[1]=0.75;//0.80; //probability of being viraemic
                        binPREV=draw_multinom(&rCopy, 2, probsRisk);
                        if(binPREV==1){
                            //IDU ATSI HCV VIREMIC
                            category=0;
                            (*HCVentry)++;
                        }else{
                            //IDU ATSI HCV PREV.EXP
                            category=2;
                        }
                    }else{ //IDU ATSI HCV- NEVER BEEN EXPOSED
                        category=3;
                    }
                }else{
                    obj->atsi=0; //IDU non-ATSI
                    //probability of being infected with HCV upon entry IDU non-ATSI p= 23.9% antibody prev
                    //binHCV=gsl_ran_binomial(*r, 0.239, 1);
                    probsRisk[0]=1-0.50;//0.524;//0.424//1-0.239; //not IDU
                    probsRisk[1]=0.50;//0.524;//0.474//0.239; //probability of being an IDU
                    binHCV=draw_multinom(&rCopy, 2, probsRisk);
                    if(binHCV==1){ //IDU non-ATSI HCV
                        (*HCVentryAb)++;
                        //probability of being viremic (as opposed to prev. exposed) IDU ATSI p= 80% antibody prev
                        //binPREV=gsl_ran_binomial(*r, 0.80, 1);
                        probsRisk[0]=1-0.75;//1-0.80; //not IDU
                        probsRisk[1]=0.75;//0.80; //probability of being an IDU
                        binPREV=draw_multinom(&rCopy, 2, probsRisk);
                        if(binPREV==1){
                            //IDU non-ATSI HCV VIREMIC
                            category=1;
                            (*HCVentry)++;
                        }else{
                            //IDU non-ATSI HCV PREV.EXP
                            category=4;
                        }
                    }else{ //IDU ATSI HCV- NEVER BEEN EXPOSED
                        category=5;
                    }
                }
            }else{ //non-IDU
                //probability of being ATSI for non-injectors; p=.204 (NSW Inmate Health Survey 2009)
                //binATSI=gsl_ran_binomial(*r, 0.16, 1);
                probsRisk[0]=1-0.20; //not IDU
                probsRisk[1]=0.20; //probability of being an IDU
                binATSI=draw_multinom(&rCopy, 2, probsRisk);
                if(binATSI==1){
                    obj->atsi=1; //non-IDU ATSI
                    //probability of being infected with HCV upon entry IDU ATSI p= dummy
                    //binHCV=gsl_ran_binomial(*r, 0.05, 1);
                    probsRisk[0]=1-0.37;//0.39;//0.29//1-0.05; //not IDU
                    probsRisk[1]=0.37;//0.39;//0.29//0.05; //probability of being an IDU
                    binHCV=draw_multinom(&rCopy, 2, probsRisk);
                    if(binHCV==1){ //non-IDU ATSI HCV
                        (*HCVentryAb)++;
                        //probability of being viremic (as opposed to prev. exposed) IDU ATSI p= 80% antibody prev
                        //binPREV=gsl_ran_binomial(*r, 0.80, 1);
                        probsRisk[0]=1-0.75;//1-0.80; //not IDU
                        probsRisk[1]=0.75;//0.80; //probability of being an IDU
                        binPREV=draw_multinom(&rCopy, 2, probsRisk);
                        if(binPREV==1){
                            //non-IDU ATSI HCV VIREMIC
                            category=6;
                            (*HCVentry)++;
                        }else{
                            //non-IDU ATSI HCV PREV.EXP
                            category=8;
                        }
                    }else{ //non-IDU ATSI HCV- NEVER BEEN EXPOSED
                        category=9;
                    }
                }else{
                    obj->atsi=0; //non-IDU non-ATSI
                    //probability of being infected with HCV upon entry IDU ATSI p= dummy
                    //binHCV=gsl_ran_binomial(*r, 0.01, 1);
                    probsRisk[0]=1-0.33;//0.35;//0.30//1-0.01; //not IDU
                    probsRisk[1]=0.33;//0.35;//0.30//0.01; //probability of being an IDU
                    binHCV=draw_multinom(&rCopy, 2, probsRisk);
                    if(binHCV==1){ //non-IDU ATSI HCV
                        (*HCVentryAb)++;
                        //probability of being viremic (as opposed to prev. exposed) IDU ATSI p= 80% antibody prev
                        //binPREV=gsl_ran_binomial(*r, 0.80, 1);
                        probsRisk[0]=1-0.75;//1-0.80; //not IDU
                        probsRisk[1]=0.75;//0.80; //probability of being an IDU
                        binPREV=draw_multinom(&rCopy, 2, probsRisk);
                        if(binPREV==1){
                            //non-IDU ATSI HCV VIREMIC
                            category=7;
                            (*HCVentry)++;
                        }else{
                            //non-IDU ATSI HCV PREV.EXP
                            category=10;
                        }
                    }else{ //non-IDU ATSI HCV- NEVER BEEN EXPOSED
                        category=11;
                    }
                }
                //probability of being infected with HCV upon entry
            }
            
            if((*pLocArray2)[0][category]>0){
                categoryFlag=1;
            }
        }//while
    }
    
    //Infected?
    if(category==0||category==1||category==6||category==7){
        probsMeta[0]=0.67; //F0-F1
        probsMeta[1]=0.11; //F2
        probsMeta[2]=0.11; //F3
        probsMeta[3]=0.12; //F4
        objMeta=draw_multinom(&rCopy, 4, probsMeta);
        obj->metavir=objMeta+1;
        obj->infectionNumber=0; //counting only reinfected in prison
    }else{
        if(category==2||category==4||category==8||category==10){
            obj->metavir=5; //previously infected
            obj->infectionNumber=0; //counting only reinfections in prison
        }
        else if(category==3||category==5||category==9||category==11){
            obj->metavir=6; //susceptible
            obj->infectionNumber=0; //counting only reinfections in prison
        }
    }/*else{ //place probabilities
        sRand=generateRand();
        if((sRand&1)==0){
            sRand=generateRand();
            if((sRand&1)==0)
                obj->metavir=6; //non-infected
            else
                obj->metavir=5; //re-infected
        }else{
            obj->metavir=0; //infected
        }
    }*/
    
    //Category and risks
    if(category<6){//injecting/at-risk?
        obj->injecting=1;
        obj->everIDU=1;
        //binInjFrq=gsl_ran_binomial(*r, 0.1646, 1); //InjFreq p=0.1646 from HITS dataset
        probsR[0]=1-0.1646; //not frequent
        probsR[1]=0.1646; //probability of being an IDU
        binInjFrq=draw_multinom(&rCopy, 2, probsR);
        if(binInjFrq==1){
            obj->injFreq=2; //daily or more
        }else{
            obj->injFreq=1; //less than daily
        }
        //binOpd=gsl_ran_binomial(*r, 0.8537, 1); //Opioid p=0.8537 from HITS dataset
        probsR[0]=1-0.85;//1-0.112; //no opioid
        probsR[1]=0.85;//0.112; //probability of being an opioid user
        binOpd=draw_multinom(&rCopy, 2, probsR);
        if(binOpd==1){
            obj->injOpd=1; //Yes
        }else{
            obj->injOpd=0; //No
        }
        //binSha=gsl_ran_binomial(*r, 0.8957, 1); //Sharing p=0.8957 from HITS dataset
        probsR[0]=1-0.8957; //no opioid
        probsR[1]=0.8957; //probability of being an opioid user
        binSha=draw_multinom(&rCopy, 2, probsR);
        if(binSha==1){ //Sharing
            obj->sharing=1;
            if(obj->injFreq==1&&obj->injOpd==0){//injecting less than daily; non-opioid; sharing less than daily
                obj->risk=5;
            }if(obj->injFreq==1&&obj->injOpd==1){//injecting less than daily; opioid; sharing less than daily
                obj->risk=2;
            }if(obj->injFreq==2&&obj->injOpd==0){//injecting daily or more; non-opioid; sharing less than daily
                obj->risk=11;
            }else if(obj->injFreq==2&&obj->injOpd==1){//injecting daily or more; opioid; sharing less than daily
                obj->risk=8;
            }
            //binShaFrq=gsl_ran_binomial(*r, 0.1148, 1); //SharingFreq p=0.8957 from HITS dataset
            //if(binShaFrq==1){
                //obj->shaFreq=2; //daily or more
                //if(obj->injFreq==1&&obj->injOpd==0){//injecting less than daily; non-opioid; sharing daily or more
                //    obj->risk=6;
                //}if(obj->injFreq==1&&obj->injOpd==1){//injecting less than daily; opioid; sharing daily or more
                //    obj->risk=3;
                //}if(obj->injFreq==2&&obj->injOpd==0){//injecting daily or more; non-opioid; sharing daily or more
                //    obj->risk=12;
                //}else if(obj->injFreq==2&&obj->injOpd==1){//injecting daily or more; opioid; sharing daily or more
                //    obj->risk=9;
                //}
            //}else{
            //    obj->shaFreq=1; //less than daily
            //    if(obj->injFreq==1&&obj->injOpd==0){//injecting less than daily; non-opioid; sharing less than daily
            //        obj->risk=5;
            //    }if(obj->injFreq==1&&obj->injOpd==1){//injecting less than daily; opioid; sharing less than daily
            //        obj->risk=2;
            //    }if(obj->injFreq==2&&obj->injOpd==0){//injecting daily or more; non-opioid; sharing less than daily
            //        obj->risk=11;
            //    }else if(obj->injFreq==2&&obj->injOpd==1){//injecting daily or more; opioid; sharing less than daily
            //        obj->risk=8;
            //    }
            //}
        }else{
            obj->sharing=0; //Not Sharing
            obj->shaFreq=0;
            if(obj->injFreq==1&&obj->injOpd==0){//injecting less than daily; non-opioid; not sharing
                obj->risk=4;
            }if(obj->injFreq==1&&obj->injOpd==1){//injecting less than daily; opioid; not sharing
                obj->risk=1;
            }if(obj->injFreq==2&&obj->injOpd==0){//injecting daily or more; non-opioid; not sharing
                obj->risk=10;
            }else if(obj->injFreq==2&&obj->injOpd==1){//injecting daily or more; opioid; not sharing
                obj->risk=7;
            }
        }
    }else if(category>5){//not injecting
        obj->injecting=0;
        obj->injFreq=0;
        obj->sharing=0;
        obj->shaFreq=0;
        obj->injOpd=0;
        obj->risk=0;
        
    	//probsR[0]=1-(0.4249/2.5); //no opioid
		//probsR[1]=(0.4249/2.5); //probability of being an opioid user
        //historyIDU=gsl_ran_flat(*r, 0.165, 0.29);
        historyIDU=gsl_ran_flat(*r, 0.265, 0.39); //0.265, 0.39); from 0.365, 0.49
     	probsR[0]=1-historyIDU; //not ever IDU
		probsR[1]=historyIDU; //ever IDU
		binEverIDU=draw_multinom(&rCopy, 2, probsR);
    	if(binEverIDU==1){
			obj->everIDU=1;
		}else{
			obj->everIDU=0;
		}
    }
    
    obj->timeOfInfection=0;//set to 0 everytime cleared.
    obj->timeStartDAA=0;//set to 0 everytime cleared.
    //where did the infected get infected?
    obj->placeInfected=0; //NA for now
    
    //ever-IDU
    //probsR[0]=1-0.40; //no opioid
	//probsR[1]=0.40; //probability of being an opioid user
    //binEverIDU=draw_multinom(&rCopy, 2, probsR);
    //if(binEverIDU==1){
	//	obj->everIDU=1;
	//}else{
	//	obj->everIDU=0;
	//}
    
    if(prison==99){ //random injector from community to be converted into individual
        //memcpy(probsCopy, probsInput[0], ROWPRIS*sizeof(double)); //grab movement probs from community
        probsMove[0]=0.0;
        
        //lb=0.000902778; //FRom NSW Inmate census (min, max)
        //ub=0.00125;
        //rMin=gsl_ran_flat(*r, lb, ub);
        //rMin=0.001011111; //9010parameters.xlsx Mean
        //rMin=gsl_ran_beta(*r, 0.02379929, 2379.905); //updated cleaned 9010 parametes.xlsx ave. annual/ave annual pop.
        rMin=gsl_ran_exponential(*r, 0.000901111);
        probsMove[1]=rMin;
        //lb=0.000475;
        //ub=0.000733333;
        //rMed=gsl_ran_flat(*r, lb, ub);
        //rMed=0.000650278;
        //rMed=gsl_ran_beta(*r, 0.6544781, 3631.3);
        rMed=gsl_ran_exponential(*r, 0.000840278);
        probsMove[2]=rMed;
        //lb=0.00085;
        //ub=0.001144444;
        //rMax=gsl_ran_flat(*r, lb, ub);
        //rMax=0.000999167;
        //rMax=gsl_ran_beta(*r, 0.5151753, 887.7181);
        if(currDay<3650){
            rMax=gsl_ran_exponential(*r, 0.000739167);
        }else if(currDay>=3650){
            rMax=gsl_ran_exponential(*r, 0.000959167);
        }
        probsMove[3]=rMax;
        objLoc=draw_multinom(&rCopy, ROWPRIS, probsMove);
        (*pLocArray2)[0][category]--; //subtract this individual from community population count
        
        //set where individual got infected
        if(category==0||category==1||category==6||category==7){
            obj->placeInfected=4; //infected in community
        }else{
            obj->placeInfected=0; //not infected
        }
        
    }else{ //input from user
        objLoc=prison;
        
        //set where individual got infected
        if(category==0||category==1||category==6||category==7){
            obj->placeInfected=prison; //infected in community
        }else{
            obj->placeInfected=0; //not infected
        }

    }
    obj->group=category; //printf("new indiv group: %d . new indiv loc: %d\n", category, objLoc);
    obj->location=objLoc;
    //printf("ID: %d, ATSI: %d, Location: %d, metavir: %d, injFreq: %d, sharing: %d, shaFreq: %d, injOpd: %d\n", obj->ID, obj->atsi, obj->location, obj->metavir, obj->injFreq, obj->sharing, obj->shaFreq, obj->injOpd);
    (*pLocArray2)[objLoc][category]++;//add count of at risk or not-at-risk individuals
    
    //Set Head and Tails
    if(*pHeadCopy==NULL){
        obj->prevIndiv=NULL;
        obj->nextIndiv=NULL;
        *pHeadCopy=obj;
    }else{
        (*pTailCopy)->nextIndiv=obj;
        obj->prevIndiv=*pTailCopy;
        obj->nextIndiv=NULL;
    }
    *pTailCopy=obj;
}

void traverse (sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    while(current!=NULL){
        //printf("traversing: ID: %d, loc: %d, group: %d\n",current->ID, current->location, current->group);
        //printf("traversing: ID: %d, Age: %d, ATSI: %d, loc: %d, metavir: %d, injFreq: %d, sharing: %d, shaFreq: %d, injOpd: %d, group: %d\n",current->ID, current->age, current->atsi, current->location, current->metavir, current->injFreq, current->sharing, current->shaFreq, current->injOpd, current->group);
        current=current->nextIndiv;
    }
}

int countHCVpris (sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){

        if(current->placeInfected==1||current->placeInfected==2||current->placeInfected==3){ //means infected in a prison
            num++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

int countOpd (sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){

        if(current->injOpd==1){ //means infected in a prison
            num++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

int countOpdNotOST (sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){
        
        if(current->risk==1||current->risk==2||current->risk==3||current->risk==7||current->risk==8||current->risk==9){ //injecting opioid
            if(current->OST==0){ //if injecting opioid and not on OST
                num++;
            }
        }
        
        current=current->nextIndiv;
    }
    return num;
}

int countEverIDU (sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){

        if(current->everIDU==1){ //means infected in a prison
            num++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

int countHCVCom (sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){
        
        if(current->placeInfected==4){ //means infected in a prison
            num ++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

int countHCVantibody (sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){
        
        if(current->metavir<=5){ //means infected in a prison
            num ++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

int countHCVRNA (sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){
        
        if(current->metavir<5){ //means infected in a prison
            num ++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

int countAveStay (sIndiv **pHeadCopy, sIndiv **pTailCopy, int currDay){
    sIndiv *current;
    current=*pHeadCopy;
    int totalDays=0;
    int totalSubjects=0;
    int average=0;
    int deltaDays=0;
    
    while(current!=NULL){
        deltaDays=currDay-(current->timeOfImprisonment);
        totalDays=totalDays+deltaDays;
        totalSubjects++;
        
        current=current->nextIndiv;
    }
    average=totalDays/totalSubjects;
    return average;
}

//0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 This is for the injecting risk group
int count0(sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){
        
        if(current->risk==0){ //means infected in a prison
            num ++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

//0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 This is for the injecting risk group
int count1(sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){
        
        if(current->risk==1){ //means infected in a prison
            num ++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

//0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 This is for the injecting risk group
int count2(sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){
        
        if(current->risk==2){ //means infected in a prison
            num ++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

int count3(sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){
        
        if(current->risk==3){ //means infected in a prison
            num ++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

int count4(sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){
        
        if(current->risk==4){ //means infected in a prison
            num ++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

int count5(sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){
        
        if(current->risk==5){ //means infected in a prison
            num ++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

int count6(sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){
        
        if(current->risk==6){ //means infected in a prison
            num ++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

int count7(sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){
        
        if(current->risk==7){ //means infected in a prison
            num ++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

int count8(sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){
        
        if(current->risk==8){ //means infected in a prison
            num ++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

int count9(sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){
        
        if(current->risk==9){ //means infected in a prison
            num ++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

int count10(sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){
        
        if(current->risk==10){ //means infected in a prison
            num ++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

int count11(sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){
        
        if(current->risk==11){ //means infected in a prison
            num ++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

int count12(sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){
        
        if(current->risk==12){ //means infected in a prison
            num ++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

int countR(sIndiv **pHeadCopy, sIndiv **pTailCopy){
    sIndiv *current;
    current=*pHeadCopy;
    int num=0;
    
    while(current!=NULL){
        
        if(current->infectionNumber>0){ //means re-infected in a prison
            num ++;
        }
        
        current=current->nextIndiv;
    }
    return num;
}

//float probAge(sIndiv **pTarget){ //Probability to age //MOVE TO OUTSIDE
  //  return 0.1;
//}

/*
 //normal
 double normMean;
 double normSigma=1.581139; //standard deviation of normalized vector (0-1) and minus the mean to adjust to mean 0.
 xI=gsl_ran_gaussian(r, normSigma);
 xI=xI+normMean; //to adjust back to a number between 0 and 1, add the normalised mean to the random number
 //printf("%f\n", xI);

 */

double probNtrDeath(gsl_rng **r, sIndiv **pTarget){ //Probability to die of natural causes (age)
    //uniform distribution
    double rN; double ub=5.35469E-06; double lb=4.23625E-06;
    rN=gsl_ran_flat(*r, lb, ub);
    return rN;
}

double probStopInj(gsl_rng **r, sIndiv **pTarget){ //Probability to change risk group
    sIndiv *current;
    current=*pTarget;
    //Risk groups: 0: non-injecting; 1: injecting less than daily, not sharing; 2: injecting daily or more, not sharing; 3: injecting less than daily, sharing less than daily; 4: injecting less than daily, sharing daily or more; 5: injecting daily or more, sharing less than daily; 6: injecting daily or more, sharing daily or more
    //NOT USING SHARING FREQUENCY SO SHARING LESS THAN DAILY == SHARING (IN GENERAL)
    double pChange;
    
    if(current->OST==2){ //under OST, return 0
        pChange=gsl_ran_flat(*r, .55, .75); //pChange for OST == 2
        if(current->risk==1){//injecting less daily, opioid, no sharing
            //return gsl_ran_beta(*r, 1.502713, 37472.63);
            //return gsl_ran_poisson_pdf(1, gsl_ran_flat(*r, 1.68E-05, 4.76E-05));
            //return 2.93409E-05;
            //return 4.77E-06;
            return 0.002009895 + (0.002009895 *pChange);//5.50656E-06;
        }else if(current->risk==2){//injecting less daily, opioid, sharing less daily
            //return gsl_ran_beta(*r, 1.502713, 37472.63);
            //return gsl_ran_poisson_pdf(1, gsl_ran_flat(*r, 7.92E-05, 0.000135427));
            //return 0.000104527;
            //return 0.000128695;
            return 0.001054254 + (0.001054254 *pChange);//2.88837E-06;
        }else if(current->risk==3){//injecting less daily, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==4){//injecting less daily, non-opioid, no sharing
            //return gsl_ran_beta(*r, 1.502713, 37472.63);
            //return gsl_ran_poisson_pdf(1, gsl_ran_flat(*r, 3.26E-05, 7.20E-05));
            //return 4.95128E-05;
            //return 1.43E-05;
            return 0.003284843 + (0.003284843 *pChange);//8.99957E-06;
        }else if(current->risk==5){//injecting less daily, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 1.502713, 37472.63);
            //return gsl_ran_poisson_pdf(1, gsl_ran_flat(*r, 1.54E-05, 4.54E-05));
            //return 2.75071E-05;
            //return 9.53E-06;
            return 0.002003473 + (0.002003473 *pChange);//5.48897E-06;
        }else if(current->risk==6){//injecting less daily, non-opioid, sharing daily more
            return 0.0;
        }else if(current->risk==7){//injecting daily more, opioid, no sharing
            //return gsl_ran_beta(*r, 1.502713, 37472.63);
            //return gsl_ran_poisson_pdf(1, gsl_ran_flat(*r, 1.27E-05, 4.08E-05));
            //return 2.38395E-05;
            //return 0;
            return 0.001782042 + (0.001782042 *pChange);//4.88231E-06;
        }else if(current->risk==8){//injecting daily more, opioid, sharing less daily
            //return gsl_ran_beta(*r, 1.502713, 37472.63);
            //return gsl_ran_poisson_pdf(1, gsl_ran_flat(*r, 4.62E-05, 9.14E-05));
            //return 6.6017E-05;
            //return 4.29E-05;
            return 0.002455938 + (0.002455938 *pChange);//6.7286E-06;
        }else if(current->risk==9){//injecting daily more, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==10){//injecting daily more, non-opioid, no sharing
            //return gsl_ran_beta(*r, 1.502713, 37472.63);
            //return gsl_ran_poisson_pdf(1, gsl_ran_flat(*r, 1.01E-05, 3.61E-05));
            //return 2.01719E-05;
            //return 0.0;
            return 0.004616477 + (0.004616477 *pChange);//1.26479E-05;
        }else if(current->risk==11){//injecting daily more, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 1.502713, 37472.63);
            //return gsl_ran_poisson_pdf(1, gsl_ran_flat(*r, 0, 6.76E-06));
            //return 0.0;
            //return 0.0;
            return 0.000268528 + (0.000268528 *pChange);//7.35694E-07;
        }else if(current->risk==12){//injecting daily more, non-opioid, sharing daily more
            return 0.0;
        }else //if already not injecting; STAY THE SAME
            //return gsl_ran_flat(*r, 0.00092429, 0.00109461);
            //return gsl_ran_beta(*r, 0.01481423, 14.69996);
            //return gsl_ran_poisson_pdf(1, gsl_ran_flat(*r, 0.000924295, 0.001094608));
            //return 0.001006759;
            //return 0.000776938;
            return 0.002752032 + (0.002752032 *pChange);//7.53981E-06;
    }else{
        if(current->risk==1){//injecting less daily, opioid, no sharing
            //return gsl_ran_beta(*r, 1.502713, 37472.63);
            //return gsl_ran_poisson_pdf(1, gsl_ran_flat(*r, 1.68E-05, 4.76E-05));
            //return 2.93409E-05;
            //return 4.77E-06;
            return 0.002009895;//5.50656E-06;
        }else if(current->risk==2){//injecting less daily, opioid, sharing less daily
            //return gsl_ran_beta(*r, 1.502713, 37472.63);
            //return gsl_ran_poisson_pdf(1, gsl_ran_flat(*r, 7.92E-05, 0.000135427));
            //return 0.000104527;
            //return 0.000128695;
            return 0.001054254;//2.88837E-06;
        }else if(current->risk==3){//injecting less daily, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==4){//injecting less daily, non-opioid, no sharing
            //return gsl_ran_beta(*r, 1.502713, 37472.63);
            //return gsl_ran_poisson_pdf(1, gsl_ran_flat(*r, 3.26E-05, 7.20E-05));
            //return 4.95128E-05;
            //return 1.43E-05;
            return 0.003284843;//8.99957E-06;
        }else if(current->risk==5){//injecting less daily, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 1.502713, 37472.63);
            //return gsl_ran_poisson_pdf(1, gsl_ran_flat(*r, 1.54E-05, 4.54E-05));
            //return 2.75071E-05;
            //return 9.53E-06;
            return 0.002003473;//5.48897E-06;
        }else if(current->risk==6){//injecting less daily, non-opioid, sharing daily more
            return 0.0;
        }else if(current->risk==7){//injecting daily more, opioid, no sharing
            //return gsl_ran_beta(*r, 1.502713, 37472.63);
            //return gsl_ran_poisson_pdf(1, gsl_ran_flat(*r, 1.27E-05, 4.08E-05));
            //return 2.38395E-05;
            //return 0;
            return 0.001782042;//4.88231E-06;
        }else if(current->risk==8){//injecting daily more, opioid, sharing less daily
            //return gsl_ran_beta(*r, 1.502713, 37472.63);
            //return gsl_ran_poisson_pdf(1, gsl_ran_flat(*r, 4.62E-05, 9.14E-05));
            //return 6.6017E-05;
            //return 4.29E-05;
            return 0.002455938;//6.7286E-06;
        }else if(current->risk==9){//injecting daily more, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==10){//injecting daily more, non-opioid, no sharing
            //return gsl_ran_beta(*r, 1.502713, 37472.63);
            //return gsl_ran_poisson_pdf(1, gsl_ran_flat(*r, 1.01E-05, 3.61E-05));
            //return 2.01719E-05;
            //return 0.0;
            return 0.004616477;//1.26479E-05;
        }else if(current->risk==11){//injecting daily more, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 1.502713, 37472.63);
            //return gsl_ran_poisson_pdf(1, gsl_ran_flat(*r, 0, 6.76E-06));
            //return 0.0;
            //return 0.0;
            return 0.000268528;//7.35694E-07;
        }else if(current->risk==12){//injecting daily more, non-opioid, sharing daily more
            return 0.0;
        }else //if already not injecting; STAY THE SAME
            //return gsl_ran_flat(*r, 0.00092429, 0.00109461);
            //return gsl_ran_beta(*r, 0.01481423, 14.69996);
            //return gsl_ran_poisson_pdf(1, gsl_ran_flat(*r, 0.000924295, 0.001094608));
            //return 0.001006759;
            //return 0.000776938;
            return 0.002752032;//7.53981E-06;
    }
}

double probInjLdOpNoSh(gsl_rng **r, sIndiv **pTarget){ //Probability to change risk group
    sIndiv *current;
    current=*pTarget;
    
    if(current->OST==1&&current->OST==2){ //under OST, return 0
        return 0.0;
    }else{
        if(current->risk==0){//non-injecting
            //return gsl_ran_beta(*r, 4.971834, 91557.35);
            //return gsl_ran_poisson (*r, 5.6848E-05);
            //return 5.6848E-05;
            //return 6.20E-05;
            return 5.76071E-05;//4.76071E-05;//1.3043E-07;
        }else if(current->risk==2){//injecting less daily, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 1.65043E-05);
            //return 1.65043E-05;
            //return 2.38E-05;
            return 0.000162193;//0.000162193;//4.44364E-07;
        }else if(current->risk==3){//injecting less daily, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==4){//injecting less daily, non-opioid, no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.000217316;//0.000117316;//3.21413E-07;
        }else if(current->risk==5){//injecting less daily, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return gsl_ran_poisson (*r, 3.66761E-06);
            //return 3.66761E-06;
            return 0.0;
        }else if(current->risk==6){//injecting less daily, non-opioid, sharing daily more
            return 0.0;
        }else if(current->risk==7){//injecting daily more, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return gsl_ran_poisson (*r, 1.10028E-05);
            //return 1.10028E-05;
            //return 0.0;
            return 0.000411241;//0.000411241;//1.12669E-06;
        }else if(current->risk==8){//injecting daily more, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 9.16903E-06);
            //return 9.16903E-06;
            return 0.0;
        }else if(current->risk==9){//injecting daily more, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==10){//injecting daily more, non-opioid, no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.000455114;//0.000355114;//9.72914E-07;
        }else if(current->risk==11){//injecting daily more, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return 0.0;
            //return 0.0;
            return 0.000368528;//0.000268528;//7.35694E-07;
        }else if(current->risk==12){//injecting daily more, non-opioid, sharing daily more
            return 0.0;
        }else //injecting less daily, opioid, no sharing
            //return gsl_ran_beta(*r, 0.6942848, 22110.29);
            //return gsl_ran_poisson (*r, 0.000137535);
            //return 0.000137535;
            //return 1.43E-05;
            return 0.000718429;//0.000618429;//1.69433E-06;
    }
}

double probInjLdOpShLd(gsl_rng **r, sIndiv **pTarget){ //Probability to change risk group
    sIndiv *current;
    current=*pTarget;
    
    if(current->OST==1&&current->OST==2){ //under OST, return 0
        return 0.0;
    }else{
        if(current->risk==0){//non-injecting
            //return gsl_ran_beta(*r, 4.971834, 91557.35);
            //return gsl_ran_poisson (*r, 8.43551E-05);
            //return 8.43551E-05;
            //return 7.15E-05;
            return 7.12091E-05;//6.12091E-05;//1.67696E-07;//1.67696E-07;
        }else if(current->risk==1){//injecting less daily, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return gsl_ran_poisson (*r, 1.65043E-05);
            //return 1.65043E-05;
            //return 0.0;
            return 0.000309215;//8.47163E-07;
        }else if(current->risk==3){//injecting less daily, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==4){//injecting less daily, non-opioid, no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_poisson (*r, 5.50142E-06);
            //return 5.50142E-06;
            //return 0.0;
            return 0.000451947;//0.000351947;//9.6424E-07;
        }else if(current->risk==5){//injecting less daily, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return gsl_ran_poisson (*r, 1.83381E-05);
            //return 1.83381E-05;
            //return 9.53E-06;
            return 0.000233565;//0.000133565;//3.65931E-07;
        }else if(current->risk==6){//injecting less daily, non-opioid, sharing daily more
            return 0.0;
        }else if(current->risk==7){//injecting daily more, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return gsl_ran_poisson (*r, 1.46704E-05);
            //return 1.46704E-05;
            //return 0.0;
            return 0.000511241;//0.000411241;//1.12669E-06;
        }else if(current->risk==8){//injecting daily more, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 3.66761E-05);
            //return 3.66761E-05;
            //return 1.91E-05;
            return 0.000433401;//0.000433401;//1.1874E-06;
        }else if(current->risk==9){//injecting daily more, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==10){//injecting daily more, non-opioid, no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_poisson (*r, 5.50142E-06);
            //return 5.50142E-06;
            //return 0.0;
            return 0.000455114;//0.000355114;//9.72914E-07;
        }else if(current->risk==11){//injecting daily more, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return gsl_ran_poisson (*r, 3.66761E-06);
            //return 3.66761E-06;
            //return 0.0;
            return 0.000368528;//0.000268528;//7.35694E-07;
        }else if(current->risk==12){//injecting daily more, non-opioid, sharing daily more
            return 0.0;
        }else //injecting less daily, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.6942848, 22110.29);
            //return gsl_ran_poisson (*r, 0.001861313);
            //return 0.001861313;
            //return 7.15E-05;
            return 0.000748771;//0.000648771;//1.77746E-06;
    }
}

//NOT USED
double probInjLdOpShDm(gsl_rng **r, sIndiv **pTarget){ //Probability to change risk group
    sIndiv *current;
    current=*pTarget;
    
    if(current->OST==1){ //under OST, return 0
        return 0.0;
    }else{
        if(current->risk==0){//non-injecting
            return 0.03;//0.3;
        }else if(current->risk==1){//injecting less daily, opioid, no sharing
            return 0.3;
        }else if(current->risk==2){//injecting less daily, opioid, sharing less daily
            return 0.3;
        }else if(current->risk==4){//injecting less daily, non-opioid, no sharing
            return 0.3;
        }else if(current->risk==5){//injecting less daily, non-opioid, sharing less daily
            return 0.3;
        }else if(current->risk==6){//injecting less daily, non-opioid, sharing daily more
            return 0.3;
        }else if(current->risk==7){//injecting daily more, opioid, no sharing
            return 0.3;
        }else if(current->risk==8){//injecting daily more, opioid, sharing less daily
            return 0.3;
        }else if(current->risk==9){//injecting daily more, opioid, sharing daily more
            return 0.3;
        }else if(current->risk==10){//injecting daily more, non-opioid, no sharing
            return 0.3;
        }else if(current->risk==11){//injecting daily more, non-opioid, sharing less daily
            return 0.3;
        }else if(current->risk==12){//injecting daily more, non-opioid, sharing daily more
            return 0.3;
        }else //injecting less daily, opioid, sharing daily more
            return 0.0;
    }
}

double probInjLdNoNoSh(gsl_rng **r, sIndiv **pTarget){ //Probability to change risk group
    sIndiv *current;
    current=*pTarget;
    double pChange;
    
    if(current->OST==2){ //under OST, return 0
        pChange=gsl_ran_flat(*r, .47, .73); //pChange for OST == 2
        if(current->risk==0){//non-injecting //already non-injecting so don't increase probability
            //return gsl_ran_beta(*r, 4.971834, 91557.35);
            //return gsl_ran_poisson (*r, 8.06875E-05);
            //return 8.06875E-05;
            //return 0.000100096;
            return 2.7204E-05;//7.45316E-08;//7.45316E-08;
        }else if(current->risk==1){//injecting less daily, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.000463822;//1.27074E-06;
        }else if(current->risk==2){//injecting less daily, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 1.28366E-05);
            //return 1.28366E-05;
            //return 9.53E-06;
            return 8.10964E-05 + (8.10964E-05*pChange);//2.22182E-07;
        }else if(current->risk==3){//injecting less daily, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==5){//injecting less daily, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return gsl_ran_poisson (*r, 7.33522E-06);
            //return 7.33522E-06;
            //return 1.43E-05;
            return 0.000534259 + (0.000534259*pChange);//1.46372E-06;
        }else if(current->risk==6){//injecting less daily, non-opioid, sharing daily more
            return 0.0;
        }else if(current->risk==7){//injecting daily more, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.0;
        }else if(current->risk==8){//injecting daily more, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 5.50142E-06);
            //return 5.50142E-06;
            //return 0.0;
            return 0.000433401 + (0.000433401*pChange);//1.1874E-06;
        }else if(current->risk==9){//injecting daily more, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==10){//injecting daily more, non-opioid, no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_poisson (*r, 5.50142E-06);
            //return 5.50142E-06;
            //return 0.0;
            pChange=gsl_ran_flat(*r, .55, .75);
            return 0.000355114 + (0.000355114*pChange);//9.72914E-07;
        }else if(current->risk==11){//injecting daily more, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.000268528 + (0.000268528*pChange);//7.35694E-07;
        }else if(current->risk==12){//injecting daily more, non-opioid, sharing daily more
            return 0.0;
        }else //injecting less daily, non-opioid, no sharing
            //return gsl_ran_beta(*r, 0.6942848, 22110.29);
            //return gsl_ran_poisson (*r, 1.46704E-05);
            //return 1.46704E-05;
            //return 0.0;
            return 0.000351947 + (0.000351947*pChange);//9.6424E-07;
    }else{
        if(current->risk==0){//non-injecting
            //return gsl_ran_beta(*r, 4.971834, 91557.35);
            //return gsl_ran_poisson (*r, 8.06875E-05);
            //return 8.06875E-05;
            //return 0.000100096;
            return 2.7204E-05;//7.45316E-08;//7.45316E-08;
        }else if(current->risk==1){//injecting less daily, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.000463822;//1.27074E-06;
        }else if(current->risk==2){//injecting less daily, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 1.28366E-05);
            //return 1.28366E-05;
            //return 9.53E-06;
            return 8.10964E-05;//2.22182E-07;
        }else if(current->risk==3){//injecting less daily, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==5){//injecting less daily, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return gsl_ran_poisson (*r, 7.33522E-06);
            //return 7.33522E-06;
            //return 1.43E-05;
            return 0.000534259;//1.46372E-06;
        }else if(current->risk==6){//injecting less daily, non-opioid, sharing daily more
            return 0.0;
        }else if(current->risk==7){//injecting daily more, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.0;
        }else if(current->risk==8){//injecting daily more, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 5.50142E-06);
            //return 5.50142E-06;
            //return 0.0;
            return 0.000433401;//1.1874E-06;
        }else if(current->risk==9){//injecting daily more, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==10){//injecting daily more, non-opioid, no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_poisson (*r, 5.50142E-06);
            //return 5.50142E-06;
            //return 0.0;
            return 0.000355114;//9.72914E-07;
        }else if(current->risk==11){//injecting daily more, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.000268528;//7.35694E-07;
        }else if(current->risk==12){//injecting daily more, non-opioid, sharing daily more
            return 0.0;
        }else //injecting less daily, non-opioid, no sharing
            //return gsl_ran_beta(*r, 0.6942848, 22110.29);
            //return gsl_ran_poisson (*r, 1.46704E-05);
            //return 1.46704E-05;
            //return 0.0;
            return 0.000351947;//9.6424E-07;
    }
}

double probInjLdNoShLd(gsl_rng **r, sIndiv **pTarget){ //Probability to change risk group
    sIndiv *current;
    current=*pTarget;
    
    if(current->OST==1){ //under OST, return 0
        if(current->risk==0){//non-injecting
            //return gsl_ran_beta(*r, 4.971834, 91557.35);
            //return gsl_ran_poisson (*r, 4.03437E-05);
            //return 4.03437E-05;
            //return 5.72E-05;
            return 8.16121E-05 + (8.16121E-05*.11);//2.23595E-07;//2.23595E-07;
        }else if(current->risk==1){//injecting less daily, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return gsl_ran_poisson (*r, 3.66761E-06);
            //return 3.66761E-06;
            //return 0.0;
            return 0.000309215 + (0.000309215*.11);//8.47163E-07;
        }else if(current->risk==2){//injecting less daily, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 2.20057E-05);
            //return 2.20057E-05;
            //return 1.91E-05;
            return 0.000486579 + (0.000486579*.11);//1.33309E-06;
        }else if(current->risk==3){//injecting less daily, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==4){//injecting less daily, non-opioid, sharing no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_poisson (*r, 3.66761E-06);
            //return 3.66761E-06;
            //return 0.0;
            return 0.000234632 + (0.000234632*.11);//6.42826E-07;
        }else if(current->risk==6){//injecting less daily, non-opioid, sharing daily more
            return 0.0;
        }else if(current->risk==7){//injecting daily more, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return 0.0;
            //return 0.0;
            return 0.000548321 + (0.000548321*.11);//1.50225E-06;
        }else if(current->risk==8){//injecting daily more, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 9.16903E-06);
            //return 9.16903E-06;
            //return 1.43E-05;
            return 0.000288934 + (0.000288934*.11);//7.916E-07;
        }else if(current->risk==9){//injecting daily more, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==10){//injecting daily more, non-opioid, no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_poisson (*r, 5.50142E-06);
            //return 5.50142E-06;
            //return 0.0;
            return 0.000355114 + (0.000355114*.11);//9.72914E-07;
        }else if(current->risk==11){//injecting daily more, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return 0.0;
            //return 0.0;
            return 0.000805585 + (0.000805585*.11);//7.35694E-07;
        }else if(current->risk==12){//injecting daily more, non-opioid, sharing daily more
            return 0.0;
        }else //injecting less daily, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.6942848, 22110.29);
            //return gsl_ran_poisson (*r, 1.83381E-05);
            //return 1.83381E-05;
            //return 9.53E-06;
            return 0.001469213 + (0.001469213*.11);//4.02524E-06;
    }else{
        if(current->risk==0){//non-injecting
            //return gsl_ran_beta(*r, 4.971834, 91557.35);
            //return gsl_ran_poisson (*r, 4.03437E-05);
            //return 4.03437E-05;
            //return 5.72E-05;
            return 8.16121E-05;//2.23595E-07;//2.23595E-07;
        }else if(current->risk==1){//injecting less daily, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return gsl_ran_poisson (*r, 3.66761E-06);
            //return 3.66761E-06;
            //return 0.0;
            return 0.000309215;//8.47163E-07;
        }else if(current->risk==2){//injecting less daily, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 2.20057E-05);
            //return 2.20057E-05;
            //return 1.91E-05;
            return 0.000486579;//1.33309E-06;
        }else if(current->risk==3){//injecting less daily, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==4){//injecting less daily, non-opioid, sharing no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_poisson (*r, 3.66761E-06);
            //return 3.66761E-06;
            //return 0.0;
            return 0.000234632;//6.42826E-07;
        }else if(current->risk==6){//injecting less daily, non-opioid, sharing daily more
            return 0.0;
        }else if(current->risk==7){//injecting daily more, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return 0.0;
            //return 0.0;
            return 0.000548321;//1.50225E-06;
        }else if(current->risk==8){//injecting daily more, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 9.16903E-06);
            //return 9.16903E-06;
            //return 1.43E-05;
            return 0.000288934;//7.916E-07;
        }else if(current->risk==9){//injecting daily more, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==10){//injecting daily more, non-opioid, no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_poisson (*r, 5.50142E-06);
            //return 5.50142E-06;
            //return 0.0;
            return 0.000355114;//9.72914E-07;
        }else if(current->risk==11){//injecting daily more, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return 0.0;
            //return 0.0;
            return 0.000805585;//7.35694E-07;
        }else if(current->risk==12){//injecting daily more, non-opioid, sharing daily more
            return 0.0;
        }else //injecting less daily, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.6942848, 22110.29);
            //return gsl_ran_poisson (*r, 1.83381E-05);
            //return 1.83381E-05;
            //return 9.53E-06;
            return 0.001469213;//4.02524E-06;
    }
}

//NOT IN USE
double probInjLdNoShDm(gsl_rng **r, sIndiv **pTarget){ //Probability to change risk group
    sIndiv *current;
    current=*pTarget;
    
    if(current->risk==0){//non-injecting
        return 0.3;//0.3;
    }else if(current->risk==1){//injecting less daily, opioid, no sharing
        return 0.3;
    }else if(current->risk==2){//injecting less daily, opioid, sharing less daily
        return 0.3;
    }else if(current->risk==3){//injecting less daily, opioid, sharing daily more
        return 0.3;
    }else if(current->risk==4){//injecting less daily, non-opioid, sharing no sharing
        return 0.3;
    }else if(current->risk==5){//injecting less daily, non-opioid, sharing less daily
        return 0.3;
    }else if(current->risk==7){//injecting daily more, opioid, no sharing
        return 0.3;
    }else if(current->risk==8){//injecting daily more, opioid, sharing less daily
        return 0.3;
    }else if(current->risk==9){//injecting daily more, opioid, sharing daily more
        return 0.3;
    }else if(current->risk==10){//injecting daily more, non-opioid, no sharing
        return 0.3;
    }else if(current->risk==11){//injecting daily more, non-opioid, sharing less daily
        return 0.3;
    }else if(current->risk==12){//injecting daily more, non-opioid, sharing daily more
        return 0.3;
    }else //injecting less daily, non-opioid, sharing daily more
        return 0.0;
}

double probInjDmOpNoSh(gsl_rng **r, sIndiv **pTarget){ //Probability to change risk group
    sIndiv *current;
    current=*pTarget;
    
    if(current->OST==1&&current->OST==2){ //under OST, return 0
        return 0.0;
    }else{
        if(current->risk==0){//non-injecting
            //return gsl_ran_beta(*r, 4.971834, 91557.35);
            //return gsl_ran_poisson (*r, 5.31804E-05);
            //return 5.31804E-05;
            //return 6.67E-05;
            return 7.80101E-06;//6.80101E-06;//1.86329E-08;//1.86329E-08;
        }else if(current->risk==1){//injecting less daily, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return gsl_ran_poisson (*r, 7.33522E-06);
            //return 7.33522E-06;
            //return 4.77E-06;
            return 0.000154607;//0.000154607;//4.23582E-07;
        }else if(current->risk==2){//injecting less daily, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 1.28366E-05);
            //return 1.28366E-05;
            //return 1.43E-05;
            return 0.0;
        }else if(current->risk==3){//injecting less daily, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==4){//injecting less daily, non-opioid, sharing no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_poisson (*r, 3.66761E-06);
            //return 3.66761E-06;
            //return 0.0;
            return 0.0;
        }else if(current->risk==5){//injecting less daily, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.0;
        }else if(current->risk==6){//injecting less daily, non-opioid, sharing daily more
            return 0.0;
        }else if(current->risk==8){//injecting daily more, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 1.83381E-05);
            //return 1.83381E-05;
            //return 4.77E-06;
            return 0.000144467;//3.958E-07;
        }else if(current->risk==9){//injecting daily more, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==10){//injecting daily more, non-opioid, no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_poisson (*r, 3.66761E-06);
            //return 3.66761E-06;
            //return 0.0;
            return 0.0;
        }else if(current->risk==11){//injecting daily more, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return 0.0;
            //return 0.0;
            return 0.0;//2.20708E-06;
        }else if(current->risk==12){//injecting daily more, non-opioid, sharing daily more
            return 0.0;
        }else //injecting daily more, opioid, no sharing
            //return gsl_ran_beta(*r, 0.6942848, 22110.29);
            //return gsl_ran_poisson (*r, 7.33522E-06);
            //return 7.33522E-06;
            //return 0.0;
            return 0.00023708;//0.00013708;//3.75562E-07;
    }
}

double probInjDmOpShLd(gsl_rng **r, sIndiv **pTarget){ //Probability to change risk group
    sIndiv *current;
    current=*pTarget;
    
    if(current->OST==1&&current->OST==2){ //under OST, return 0
        return 0.0;
    }else{
        if(current->risk==0){//non-injecting
            //return gsl_ran_beta(*r, 4.971834, 91557.35);
            //return gsl_ran_poisson (*r, 6.41832E-05);
            //return 6.41832E-05;
            //return 8.10E-05;
            return 7.80101E-06;//6.80101E-06;//1.86329E-08;//1.86329E-08;
        }else if(current->risk==1){//injecting less daily, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return gsl_ran_poisson (*r, 1.83381E-05);
            //return 1.83381E-05;
            //return 9.53E-06;
            return 0.0;
        }else if(current->risk==2){//injecting less daily, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 6.96846E-05);
            //return 6.96846E-05;
            //return 6.67E-05;
            return 0.000243289;//0.000243289;//6.66546E-07;
        }else if(current->risk==3){//injecting less daily, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==4){//injecting less daily, non-opioid, sharing no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_poisson (*r, 9.16903E-06);
            //return 9.16903E-06;
            //return 4.77E-06;
            return 0.000217316;//0.000117316;//3.21413E-07;
        }else if(current->risk==5){//injecting less daily, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return gsl_ran_poisson (*r, 1.28366E-05);
            //return 1.28366E-05;
            //return 4.77E-06;
            return 0.000233565;//0.000133565;//3.65931E-07;
        }else if(current->risk==6){//injecting less daily, non-opioid, sharing daily more
            return 0.0;
        }else if(current->risk==7){//injecting daily more, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return gsl_ran_poisson (*r, 1.28366E-05);
            //return 1.28366E-05;
            //return 0.0;
            return 0.00013708;//0.00013708;//3.75562E-07;
        }else if(current->risk==9){//injecting daily more, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==10){//injecting daily more, non-opioid, no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_poisson (*r, 9.16903E-06);
            //return 9.16903E-06;
            //return 0.0;
            return 0.0;
        }else if(current->risk==11){//injecting daily more, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return gsl_ran_poisson (*r, 3.66761E-06);
            //return 3.66761E-06;
            //return 0.0;
            return 0.000368528;//0.000268528;//0.0;
        }else if(current->risk==12){//injecting daily more, non-opioid, sharing daily more
            return 0.0;
        }else //injecting daily more, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.6942848, 22110.29);
            //return gsl_ran_poisson (*r, 7.88537E-05);
            //return 7.88537E-05;
            //return 2.38E-05;
            return 0.000244467;//0.000144467;//3.958E-07;
    }
}

//NOT IN USE
double probInjDmOpShDm(gsl_rng **r, sIndiv **pTarget){ //Probability to change risk group
    sIndiv *current;
    current=*pTarget;
    
    if(current->OST==1){ //under OST, return 0
        return 0.0;
    }else{
        if(current->risk==0){//non-injecting
            return 0.3;//0.3;
        }else if(current->risk==1){//injecting less daily, opioid, no sharing
            return 0.3;//0.3;
        }else if(current->risk==2){//injecting less daily, opioid, sharing less daily
            return 0.3;//0.3;
        }else if(current->risk==3){//injecting less daily, opioid, sharing daily more
            return 0.3;//0.3;
        }else if(current->risk==4){//injecting less daily, non-opioid, sharing no sharing
            return 0.3;//0.3;
        }else if(current->risk==5){//injecting less daily, non-opioid, sharing less daily
            return 0.3;//0.3;
        }else if(current->risk==6){//injecting less daily, non-opioid, sharing daily more
            return 0.3;//0.3;
        }else if(current->risk==7){//injecting daily more, opioid, no sharing
            return 0.3;//0.3;
        }else if(current->risk==8){//injecting daily more, opioid, sharing less daily
            return 0.3;//0.3;
        }else if(current->risk==10){//injecting daily more, non-opioid, no sharing
            return 0.3;//0.3;
        }else if(current->risk==11){//injecting daily more, non-opioid, sharing less daily
            return 0.3;//0.3;
        }else if(current->risk==12){//injecting daily more, non-opioid, sharing daily more
            return 0.3;//0.3;
        }else //injecting daily more, opioid, sharing daily more
            return 0.0;
    }
}

double probInjDmNoNoSh(gsl_rng **r, sIndiv **pTarget){ //Probability to change risk group
    sIndiv *current;
    current=*pTarget;
    double pChange;
    
    if(current->OST==1){ //under OST, return 0
        if(current->risk==0){//non-injecting
            //return gsl_ran_beta(*r, 4.971834, 91557.35);
            //return gsl_ran_poisson (*r, 4.7679E-05);
            //return 4.7679E-05;
            //return 7.63E-05;
            return 0.0;
        }else if(current->risk==1){//injecting less daily, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 4.77E-06;
            return 0.0;
        }else if(current->risk==2){//injecting less daily, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 5.50142E-06);
            //return 5.50142E-06;
            //return 9.53E-06;
            return 0.0;
        }else if(current->risk==3){//injecting less daily, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==4){//injecting less daily, non-opioid, sharing no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.000117316 + (0.000117316*0.035);//3.21413E-07;
        }else if(current->risk==5){//injecting less daily, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return gsl_ran_poisson (*r, 7.33522E-06);
            //return 7.33522E-06;
            //return 1.43E-05;
            return 0.0;
        }else if(current->risk==6){//injecting less daily, non-opioid, sharing daily more
            return 0.0;
        }else if(current->risk==7){//injecting daily more, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return 0.0;
            //return 0.0;
            return 0.0;
        }else if(current->risk==8){//injecting daily more, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return 0.0;
            //return 0.0;
            return 0.0;
        }else if(current->risk==9){//injecting daily more, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==11){//injecting daily more, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.000268528 + (0.000268528*0.035);//7.35694E-07;
        }else if(current->risk==12){//injecting daily more, non-opioid, sharing daily more
            return 0.0;
        }else //injecting daily more, non-opioid, no sharing
            //return gsl_ran_beta(*r, 0.6942848, 22110.29);
            //return gsl_ran_poisson (*r, 1.10028E-05);
            //return 1.10028E-05;
            //return 4.77E-06;
            return 0.000355114 + (0.000355114*0.035);//9.72914E-07;
    }else if(current->OST==2){
        pChange=gsl_ran_flat(*r, .47, .73); //pChange for OST == 2
        if(current->risk==0){//non-injecting
            //return gsl_ran_beta(*r, 4.971834, 91557.35);
            //return gsl_ran_poisson (*r, 4.7679E-05);
            //return 4.7679E-05;
            //return 7.63E-05;
            return 0.0;
        }else if(current->risk==1){//injecting less daily, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 4.77E-06;
            return 0.0;
        }else if(current->risk==2){//injecting less daily, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 5.50142E-06);
            //return 5.50142E-06;
            //return 9.53E-06;
            return 0.0;
        }else if(current->risk==3){//injecting less daily, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==4){//injecting less daily, non-opioid, sharing no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.000117316 + (0.000117316*pChange);//3.21413E-07;
        }else if(current->risk==5){//injecting less daily, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return gsl_ran_poisson (*r, 7.33522E-06);
            //return 7.33522E-06;
            //return 1.43E-05;
            return 0.0;
        }else if(current->risk==6){//injecting less daily, non-opioid, sharing daily more
            return 0.0;
        }else if(current->risk==7){//injecting daily more, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return 0.0;
            //return 0.0;
            return 0.0;
        }else if(current->risk==8){//injecting daily more, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return 0.0;
            //return 0.0;
            return 0.0;
        }else if(current->risk==9){//injecting daily more, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==11){//injecting daily more, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.000268528 + (0.000268528*pChange);//7.35694E-07;
        }else if(current->risk==12){//injecting daily more, non-opioid, sharing daily more
            return 0.0;
        }else //injecting daily more, non-opioid, no sharing
            //return gsl_ran_beta(*r, 0.6942848, 22110.29);
            //return gsl_ran_poisson (*r, 1.10028E-05);
            //return 1.10028E-05;
            //return 4.77E-06;
            return 0.000355114 + (0.000355114*pChange);//9.72914E-07;
    }else{
        if(current->risk==0){//non-injecting
            //return gsl_ran_beta(*r, 4.971834, 91557.35);
            //return gsl_ran_poisson (*r, 4.7679E-05);
            //return 4.7679E-05;
            //return 7.63E-05;
            return 0.0;
        }else if(current->risk==1){//injecting less daily, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 4.77E-06;
            return 0.0;
        }else if(current->risk==2){//injecting less daily, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 5.50142E-06);
            //return 5.50142E-06;
            //return 9.53E-06;
            return 0.0;
        }else if(current->risk==3){//injecting less daily, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==4){//injecting less daily, non-opioid, sharing no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.000117316;//3.21413E-07;
        }else if(current->risk==5){//injecting less daily, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return gsl_ran_poisson (*r, 7.33522E-06);
            //return 7.33522E-06;
            //return 1.43E-05;
            return 0.0;
        }else if(current->risk==6){//injecting less daily, non-opioid, sharing daily more
            return 0.0;
        }else if(current->risk==7){//injecting daily more, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return 0.0;
            //return 0.0;
            return 0.0;
        }else if(current->risk==8){//injecting daily more, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return 0.0;
            //return 0.0;
            return 0.0;
        }else if(current->risk==9){//injecting daily more, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==11){//injecting daily more, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.000268528;//7.35694E-07;
        }else if(current->risk==12){//injecting daily more, non-opioid, sharing daily more
            return 0.0;
        }else //injecting daily more, non-opioid, no sharing
            //return gsl_ran_beta(*r, 0.6942848, 22110.29);
            //return gsl_ran_poisson (*r, 1.10028E-05);
            //return 1.10028E-05;
            //return 4.77E-06;
            return 0.000355114;//9.72914E-07;
    }
}

double probInjDmNoShLd(gsl_rng **r, sIndiv **pTarget){ //Probability to change risk group
    sIndiv *current;
    current=*pTarget;
    
    if(current->OST==1){ //under OST, return 0
        if(current->risk==0){//non-injecting
            //return gsl_ran_beta(*r, 4.971834, 91557.35);
            //return gsl_ran_poisson (*r, 7.33522E-06);
            //return 7.33522E-06;
            //return 4.77E-06;
            return 1.3602E-05 + (1.3602E-05*0.145);//3.72658E-08;//3.72658E-08;
        }else if(current->risk==1){//injecting less daily, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return 0.0;
            //return 0.0;
            return 0.0;
        }else if(current->risk==2){//injecting less daily, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 7.33522E-06);
            //return 7.33522E-06;
            //return 9.53E-06;
            return 8.10964E-05 + (8.10964E-05*0.145);//2.22182E-07;
        }else if(current->risk==3){//injecting less daily, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==4){//injecting less daily, non-opioid, sharing no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_beta(*r, , );
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.000117316 + (0.000117316*0.145);//3.21413E-07;
        }else if(current->risk==5){//injecting less daily, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return gsl_ran_beta(*r, , );
            //return gsl_ran_poisson (*r, 1.83381E-05);
            //return 1.83381E-05;
            //return 9.53E-06;
            return 0.000400695 + (0.000400695*0.145);//1.09779E-06;
        }else if(current->risk==6){//injecting less daily, non-opioid, sharing daily more
            return 0.0;
        }else if(current->risk==7){//injecting daily more, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return gsl_ran_beta(*r, , );
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.00027416 + (0.00027416*0.145);//7.51124E-07;
        }else if(current->risk==8){//injecting daily more, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_beta(*r, , );
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.000433401 + (0.000433401*0.145);//1.1874E-06;
        }else if(current->risk==9){//injecting daily more, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==10){//injecting daily more, non-opioid, no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_beta(*r, , );
            //return 0.0;
            //return 0.0;
            return 0.0;
        }else if(current->risk==12){//injecting daily more, non-opioid, sharing daily more
            return 0.0;
        }else //injecting daily more, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.6942848, 22110.29);
            //return gsl_ran_beta(*r, , );
            //return 0.0;
            //return 0.0;
            return 0.001074114 + (0.001074114*0.145);//2.94278E-06;
    }else{
        if(current->risk==0){//non-injecting
            //return gsl_ran_beta(*r, 4.971834, 91557.35);
            //return gsl_ran_poisson (*r, 7.33522E-06);
            //return 7.33522E-06;
            //return 4.77E-06;
            return 1.3602E-05;//3.72658E-08;//3.72658E-08;
        }else if(current->risk==1){//injecting less daily, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return 0.0;
            //return 0.0;
            return 0.0;
        }else if(current->risk==2){//injecting less daily, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_poisson (*r, 7.33522E-06);
            //return 7.33522E-06;
            //return 9.53E-06;
            return 8.10964E-05;//2.22182E-07;
        }else if(current->risk==3){//injecting less daily, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==4){//injecting less daily, non-opioid, sharing no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_beta(*r, , );
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.000117316;//3.21413E-07;
        }else if(current->risk==5){//injecting less daily, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8171718, 141869.3);
            //return gsl_ran_beta(*r, , );
            //return gsl_ran_poisson (*r, 1.83381E-05);
            //return 1.83381E-05;
            //return 9.53E-06;
            return 0.000400695;//1.09779E-06;
        }else if(current->risk==6){//injecting less daily, non-opioid, sharing daily more
            return 0.0;
        }else if(current->risk==7){//injecting daily more, opioid, no sharing
            //return gsl_ran_beta(*r, 0.9470623, 144588.7);
            //return gsl_ran_beta(*r, , );
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.00027416;//7.51124E-07;
        }else if(current->risk==8){//injecting daily more, opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.8074784, 49843.54);
            //return gsl_ran_beta(*r, , );
            //return gsl_ran_poisson (*r, 1.83381E-06);
            //return 1.83381E-06;
            //return 0.0;
            return 0.000433401;//1.1874E-06;
        }else if(current->risk==9){//injecting daily more, opioid, sharing daily more
            return 0.0;
        }else if(current->risk==10){//injecting daily more, non-opioid, no sharing
            //return gsl_ran_beta(*r, 2.3502, 560904.6);
            //return gsl_ran_beta(*r, , );
            //return 0.0;
            //return 0.0;
            return 0.0;
        }else if(current->risk==12){//injecting daily more, non-opioid, sharing daily more
            return 0.0;
        }else //injecting daily more, non-opioid, sharing less daily
            //return gsl_ran_beta(*r, 0.6942848, 22110.29);
            //return gsl_ran_beta(*r, , );
            //return 0.0;
            //return 0.0;
            return 0.001074114;//2.94278E-06;
    }
}

//NOT IN USE
double probInjDmNoShDm(gsl_rng **r, sIndiv **pTarget){ //Probability to change risk group
    sIndiv *current;
    current=*pTarget;
    
    if(current->risk==0){//non-injecting
        return 0.3;//0.3;
    }else if(current->risk==1){//injecting less daily, opioid, no sharing
        return 0.3;
    }else if(current->risk==2){//injecting less daily, opioid, sharing less daily
        return 0.3;
    }else if(current->risk==3){//injecting less daily, opioid, sharing daily more
        return 0.3;
    }else if(current->risk==4){//injecting less daily, non-opioid, sharing no sharing
        return 0.3;
    }else if(current->risk==5){//injecting less daily, non-opioid, sharing less daily
        return 0.3;
    }else if(current->risk==6){//injecting less daily, non-opioid, sharing daily more
        return 0.3;
    }else if(current->risk==7){//injecting daily more, opioid, no sharing
        return 0.3;
    }else if(current->risk==8){//injecting daily more, opioid, sharing less daily
        return 0.3;
    }else if(current->risk==9){//injecting daily more, opioid, sharing daily more
        return 0.3;
    }else if(current->risk==10){//injecting daily more, non-opioid, no sharing
        return 0.3;
    }else if(current->risk==11){//injecting daily more, non-opioid, sharing less daily
        return 0.3;
    }else //injecting daily more, non-opioid, sharing daily more
        return 0.0;
}

//float probMoveCom(gsl_rng **r, sIndiv **pTarget, double probsInput[ROWPRIS][ROWPRIS]){ //Probability to move locations
double probMoveCom(gsl_rng **r, sIndiv **pTarget, int currDay){ //Probability to get released
    sIndiv *current;
    current=*pTarget;
    double rN, lb, ub;
    
    if(current->location==1){//prison 1 MIN to Community *from 9010parameters.xlsx
        //lb=0.00210467;
        //ub=0.00458667;
        //lb=3.06E-03; //left CI
        //ub=3.25E-03; //right CI
        //rN=gsl_ran_flat(*r, lb, ub);
        //rN=gsl_ran_gamma(*r, 40.66405, 7.75E-05); //shape, scale
        //rN=gsl_ran_exponential(*r, 0.001767); //smaller efflux rates
        //rN=gsl_ran_exponential(*r, 0.0001767); //smaller efflux rates
        //rN=gsl_ran_exponential(*r, 0.00097185);//0.00097185
        //rN=gsl_ran_beta(*r, 2.14E+00, 7.33E+03); //9010 parameters.xlsx alpha beta for beta distribution
        //////rN=gsl_ran_exponential(*r, 2.92E-04); <-last used
        //rN=gsl_ran_exponential(*r, 0.003151667);
        //rN=gsl_ran_exponential(*r, 2.92E-04); //9010 parameters.xlsx using actual DCS mincom averaged yearly / averaged yearly population = /365
        //rN=0.003151667;//9010parameters.xlsx Mean
        //rN=gsl_ran_flat(*r, 0.002104667, 0.004586667);
        //rN=gsl_ran_exponential(*r, 0.0031517);
        //rN=gsl_ran_exponential(*r, 0.00035);
        rN=gsl_ran_exponential(*r, 0.006178163);
    }else if(current->location==2){//prison 2 MED to Community
        //lb=0.00139067;
        //ub=0.00627667;
        //lb=0.003467901; //left CI
        //ub=0.003870099; //right CI
        //rN=gsl_ran_flat(*r, lb, ub); //uniform distribution
        //rN=gsl_ran_gamma(*r, 12.10946, 0.000302951);
        //rN=gsl_ran_exponential(*r, 0.001435); //originally 0.001435, adjusted for prison population
        //rN=gsl_ran_exponential(*r, 0.0001435); //originally 0.001435, adjusted for prison population
        //rN=gsl_ran_exponential(*r, 0.00078925);
        //rN=gsl_ran_beta(*r, 1.281425, 2788.671);
        //rN=gsl_ran_exponential(*r, 0.0004593);
        /////rN=gsl_ran_exponential(*r, 0.000252615); //(0.0004593+0.00004593)/2 <- last used
        //rN=gsl_ran_exponential(*r, 0.00367);
		//rN=gsl_ran_exponential(*r, 0.0004593); //9010 parameters.xlsx using actual DCS mincom averaged yearly / averaged yearly population = /365
        //rN=0.00367;
        //rN=gsl_ran_flat(*r, 0.001390667, 0.006276667);
        //rN=gsl_ran_exponential(*r, 0.00367);
        //rN=gsl_ran_exponential(*r, 0.000257);
        rN=gsl_ran_exponential(*r, 0.005177097);
    }else if(current->location==3){//prison 3 MAX to Community
        //lb=0.00010417;
        //ub=0.00264067;
        //lb=1.32E-06; //left CI
        //ub=1.54E-06; //right CI
        //rN=gsl_ran_flat(*r, lb, ub); //uniform distribution
        //rN=gsl_ran_gamma(*r, 5.714889, 0.000225437);
        //rN=gsl_ran_exponential(*r, 4.53E-04);
        //rN=gsl_ran_exponential(*r, 4.53E-05);
        //rN=gsl_ran_exponential(*r, 0.00024915);
        //rN=gsl_ran_beta(*r, 0.7270888, 13463.88);
        /////rN=gsl_ran_exponential(*r, 5.40E-05); <- last used
        //rN=gsl_ran_exponential(*r, 0.001288333);
        //rN=gsl_ran_exponential(*r, 5.40E-05); //9010 parameters.xlsx using actual DCS mincom averaged yearly / averaged yearly population = /365
        //rN=0.001288333;
        //rN=gsl_ran_flat(*r, 0.000104167, 0.002640667);
        //rN=gsl_ran_exponential(*r, 0.0012883);
        //rN=gsl_ran_exponential(*r, 0.00003);
        if(currDay<3286){
            rN=gsl_ran_exponential(*r, 0.002700223);//0.001800229);
        }else if(currDay>3285&&currDay<4381){
            rN=gsl_ran_exponential(*r, 0.001700223);//0.001800229);
        }else if(currDay>4380){
            rN=gsl_ran_exponential(*r, 0.002700223);//0.001800229);
        }
    }
    return rN;
}

double probMoveP1(gsl_rng **r, sIndiv **pTarget){ //Probability to move to MIN
    sIndiv *current;
    current=*pTarget;
    double rN, lb, ub;
    
    if(current->location==2){//prison 2 MED to MIN
        //lb=0.0001315;
        //ub=0.01086333;
        //lb=0.001668449; //Confidence Interval
        //ub=0.002375551;
        //rN=gsl_ran_flat(*r, lb, ub);
        //rN=gsl_ran_gamma(*r, 1.189621, 0.001699305);
        //rN=gsl_ran_exponential(*r, 0.002022);
        //rN=gsl_ran_exponential(*r, 8.08E-03);
        //rN=gsl_ran_beta(*r, 0.05490849, 11.51939);
        /////rN=gsl_ran_exponential(*r, 2.02E-04); <- last used
        //rN=gsl_ran_exponential(*r, 0.002021667);
        //rN=0.002021667;
        //rN=gsl_ran_flat(*r, 0.0001315, 0.01086333);
        //rN=gsl_ran_exponential(*r, 0.001111935);
        rN=gsl_ran_exponential(*r, 0.003022);
    }else if(current->location==3){//prison 3 MAX to MIN
        //lb=0;
        //ub=0.001785;
        //lb=4.69E-04;
        //ub=5.91E-04;
        //rN=gsl_ran_flat(*r, lb, ub); //uniform distribution
        //rN=gsl_ran_gamma(*r, 2.734716, 0.000193838);
        //rN=gsl_ran_exponential(*r, 0.0005301);
        //rN=gsl_ran_exponential(*r, 4.70E-03);
        //rN=gsl_ran_beta(*r, 0, 0.001785);
        /////rN=gsl_ran_exponential(*r, 2.04E-04); <- last used
        //rN=gsl_ran_exponential(*r, 0.00053);
        //rN=0.00053;
        //rN=gsl_ran_flat(*r, 0, 0.001785);
        //rN=gsl_ran_exponential(*r, 0.0002915);
        rN=gsl_ran_exponential(*r, 0.0005001);
    }else{//ALREADY in MIN, STAY IN MIN
        //lb=0.0000342;
        //ub=0.003723333;
        //lb=0.000643347;
        //ub=0.000944654;
        //rN=gsl_ran_flat(*r, lb, ub);
        //rN=gsl_ran_gamma(*r, 1.010257, 0.000785756);
        //rN=gsl_ran_exponential(*r, 7.94E-04);
        //rN=gsl_ran_exponential(*r, 7.60E-05);
        //rN=gsl_ran_beta(*r, 0.2034244, 3068.038);
        /////rN=gsl_ran_exponential(*r, 4.86E-05); <- last used
        //rN=gsl_ran_exponential(*r, 0.000793667);
        //rN=0.000793667;
        //rN=gsl_ran_flat(*r, 0.0000342, 0.003723333);
        //rN=gsl_ran_exponential(*r, 0.0006937);
        rN=gsl_ran_exponential(*r, 7.94E-04);
    }
    return rN;
}

double probMoveP2(gsl_rng **r, sIndiv **pTarget){ //Probability to move to MED
    sIndiv *current;
    current=*pTarget;
    double rN, lb, ub;
    
    if(current->location==1){//prison 1 MIN to MED
        //lb=0;
        //ub=0.001054667;
        //lb=1.11E-05;
        //ub=1.43E-05;
        //rN=gsl_ran_flat(*r, lb, ub);
        //rN=gsl_ran_gamma(*r, 2.330561, 0.000163966);
        //rN=gsl_ran_exponential(*r, 3.82E-04);
        //rN=gsl_ran_exponential(*r, 6.91E-04);
        //rN=gsl_ran_beta(*r, 0.06211339, 149.9702);
        ////rN=gsl_ran_exponential(*r, 3.27E-05); <- last used
        //rN=gsl_ran_exponential(*r, 0.000382);
        //rN=0.000382;
        //rN=gsl_ran_flat(*r, 0, 0.00105467);
        //rN=gsl_ran_exponential(*r, 0.000382);
        rN=gsl_ran_exponential(*r, 3.82E-04);
    }else if(current->location==3){//prison 3 MAX to MED
        //lb=0;
        //ub=0.002045;
        //lb=3.35E-04;
        //ub=4.73E-04;
        //rN=gsl_ran_flat(*r, lb, ub); //uniform distribution
        //rN=gsl_ran_gamma(*r, 1.254205, 0.000321995);
        //rN=gsl_ran_exponential(*r, 0.0004038);
        //rN=gsl_ran_exponential(*r, 2.82E-03);
        //rN=gsl_ran_beta(*r, 0.0697243, 23.40647);
        ////rN=gsl_ran_exponential(*r, 1.41E-04); <- last used
        //rN=gsl_ran_exponential(*r, 0.000404);
        //rN=0.000404;
        //rN=gsl_ran_flat(*r, 0, 0.002045);
        //rN=gsl_ran_exponential(*r, 0.000404);
		//rN=gsl_ran_exponential(*r, 0.000404);
        rN=gsl_ran_exponential(*r, 0.0005038);
    }else{//ALREADY IN MED, STAY IN MED
        //lb=0;
        //ub=0.002124333;
        //lb=2.83E-04;
        //ub=4.43E-04;
        //rN=gsl_ran_flat(*r, lb, ub);
        //rN=gsl_ran_gamma(*r, 0.749626, 0.00048439);
        //rN=gsl_ran_exponential(*r, 0.0003631);
        //rN=gsl_ran_exponential(*r, 4.71E-05);
        //rN=gsl_ran_beta(*r, 0.5777743, 13190.62);
        ////rN=gsl_ran_exponential(*r, 4.69E-05); <- last used
        //rN=gsl_ran_exponential(*r, 0.000363);
        //rN=0.000363;
        //rN=gsl_ran_flat(*r, 0, 0.002124333);
        //rN=gsl_ran_exponential(*r, 0.000363);
        //rN=gsl_ran_exponential(*r, 0.00363);
        rN=gsl_ran_exponential(*r, 0.0004631);
    }
    return rN;
}

double probMoveP3(gsl_rng **r, sIndiv **pTarget){ //Probability to move to MAX
    sIndiv *current;
    current=*pTarget;
    double rN, lb, ub;
    
    if(current->location==1){//prison 1 MIN to MAX
        //lb=0;
        //ub=0.0008643333;
        //lb=1.93E-04;
        //ub=2.57E-04;
        //rN=gsl_ran_flat(*r, lb, ub);
        //rN=gsl_ran_gamma(*r, 1.804929, 0.000124651);
        //rN=gsl_ran_exponential(*r, 0.000225);
        //rN=gsl_ran_exponential(*r, 7.56E-04);
        //rN=gsl_ran_beta(*r, 0.06522941, 174.8125);
        ////rN=gsl_ran_exponential(*r, 3.59E-05); <- last used
        //rN=gsl_ran_exponential(*r, 0.000225);
        //rN=0.000225;
        //rN=gsl_ran_flat(*r, 0, 0.00086433);
        //rN=gsl_ran_exponential(*r, 0.000225);
        rN=gsl_ran_exponential(*r, 0.000225);
    }else if(current->location==2){//prison 2 MED to MAX
        //lb=0;
        //ub=0.001746333;
        //lb=2.21E-04;
        //ub=3.55E-04;
        //rN=gsl_ran_flat(*r, lb, ub); //uniform distribution
        //rN=gsl_ran_gamma(*r, 0.6671442, 0.000432267);
        //rN=gsl_ran_exponential(*r, 2.88E-04);
        //rN=gsl_ran_exponential(*r, 1.30E-03);
        //rN=gsl_ran_beta(*r, 0.0504019, 82.2922);
        ////rN=gsl_ran_exponential(*r, 9.38E-05); <- last used
        //rN=gsl_ran_exponential(*r, 0.0002884);
        //rN=0.0002884;
        //rN=gsl_ran_flat(*r, 0, 0.00174633);
        //rN=gsl_ran_exponential(*r, 0.0002884);
        rN=gsl_ran_exponential(*r, 2.88E-04);
    }else{//ALREADY IN MAX, STAY IN MAX
        //lb=0;
        //ub=0.001821667;
        //lb=4.99E-04;
        //ub=6.31E-04;
        //rN=gsl_ran_flat(*r, lb, ub);
        //rN=gsl_ran_gamma(*r, 2.679636, 0.000210955);
        //rN=gsl_ran_exponential(*r, 0.0005653);
        //rN=gsl_ran_exponential(*r, 4.71E-05);
        //rN=gsl_ran_beta(*r, 3.369064, 72062.16);
        ////rN=gsl_ran_exponential(*r, 1.93E-04); <- last used
        //rN=gsl_ran_exponential(*r, 0.000565333);
        //rN=0.000565333;
        //rN=gsl_ran_flat(*r, 0, 0.001821667);
        //rN=gsl_ran_exponential(*r, 0.0005653);
        //rN=gsl_ran_exponential(*r, 0.004653);
        rN=gsl_ran_exponential(*r, 0.0008053);
    }
    return rN;
}

double probInfectIndiv(gsl_rng **r, sIndiv **pTarget, int currDay){ //PROBABILITY OF SHARING
    sIndiv *current;
    current=*pTarget;
    double pChange;
    //double beta=0.0057; //0.57%
    //int sharingEvents=1;
    
    /*if(current->metavir<5&&current->sharing==1){ //if infected and sharing, then can infect others
     return (1-(1-beta))*sharingEvents; //Formula from per-event probability paper (Boelen, et al., 2014)
     }else{ //else do not infect others
     return 0.0;
     }*/
    //if(current->metavir<5){ //if infected with chronic HCV, can infect others
    //check if sharing
    if(current->OST==2){
        pChange=gsl_ran_flat(*r, .55, .75); //pChange for OST == 2
        if(current->risk==2||current->risk==5){ //IDU LD
            //return 0.3753;
            //return 0.1325692841; //cons/int
            //return 1.3858; //prog
            //return 0.044375; //Rate from Brigid HITS
            return 0.144375-(0.144375*pChange);//0.159375;//0.044375;
        }else if(current->risk==8||current->risk==11){ //IDU DM
            //return 0.1415705635; //cons/int
            //return 0.249; //prog
            //return 0.16004902; //Rate from Brigid HITS
            return 0.26004902-(0.26004902*pChange);//0.2654902;//0.16004902;
        }else{
            return 0.0;
        }
    }else{
        if(current->risk==2||current->risk==5){ //IDU LD
            //return 0.3753;
            //return 0.1325692841; //cons/int
            //return 1.3858; //prog
            //return 0.044375; //Rate from Brigid HITS
            return 0.144375;//0.159375;//0.044375;
        }else if(current->risk==8||current->risk==11){ //IDU DM
            //return 0.1415705635; //cons/int
            //return 0.249; //prog
            //return 0.16004902; //Rate from Brigid HITS
            return 0.26004902;//0.2654902;//0.16004902;
        }else{
            return 0.0;
        }
    }
    //}else
    //    return 0.0;
}

double probNtrClear(gsl_rng **r, sIndiv **pTarget, int currDay){ //Probability to clear HCV (only if infected and metavir scale low && infection < 6 mths)
    sIndiv *current;
    current=*pTarget;
    int deltaTime;
    double rN;
    double normMean;
    
    deltaTime=currDay-(current->timeOfInfection);
    if(current->metavir<3&&deltaTime<=180){ //infected and less than 180 days
        //exponential
        normMean=0.02/365;//0.05/365;
        rN=gsl_ran_exponential(*r, normMean);
        //rN=0.001150685;
        ////rN=0.115068493;
        //rN=0.139726;
        return rN; //In function for clearing add condition, if lower than threshold (mean) then clear.
    }else if(current->metavir<3&&(deltaTime>180&&deltaTime<360)){ //infected and over 180 days, different rate
        normMean=0.009/365; //0.01
        rN=gsl_ran_exponential(*r, normMean);
        //rN=0.000273973;
        ////rN=0.02739726;
        //rN=0.03561643836;
        return rN;
    }else //not infected
        return 0.0;
}

double probProgress(gsl_rng **r, sIndiv **pTarget){ //Probability to progress metavir scale
    sIndiv *current;
    current=*pTarget;
    double rN, lb, ub;
    
    if(current->metavir==0){ //infected
        lb=0.00016;
        ub=0.000077;
        rN=gsl_ran_flat(*r, lb, ub);
        return rN;
    }else if(current->metavir==1){
        lb=0.00018;
        ub=0.00030;
        rN=gsl_ran_flat(*r, lb, ub);
        return rN;
    }else if(current->metavir==2){
        lb=0.00013;
        ub=0.00040;
        rN=gsl_ran_flat(*r, lb, ub);
        return rN;
    }else if(current->metavir==3){
        lb=0.00015;
        ub=0.00087;
        rN=gsl_ran_flat(*r, lb, ub);
        return rN;
    }else //not infected
        return 0.0;
    
}

double probHCVdeath(gsl_rng **r, sIndiv **pTarget){ //Probability to die via HCV (only if infected and metavir scale up)
    sIndiv *current;
    current=*pTarget;
    double rN, lb, ub;
    
    if(current->metavir==4){ //infected
        lb=4.23625E-06/365;
        ub=5.35469E-06/365;
        rN=gsl_ran_flat(*r, lb, ub);
        return rN;
    }else //not infected
        return 0.0;
}

double probOSTstart(gsl_rng **r, sIndiv **pTarget, int nOST, int nDailyOST, int nOSTDailyCap, int currDay){ //Probability to start DAA therapy (only if infected)
    sIndiv *current;
    current=*pTarget;
    
    if(currDay<=4380){
        if(current->risk==1||current->risk==2||current->risk==3||current->risk==7||current->risk==8||current->risk==9){ // only to opioid users
            if(nOST>0){
                if(nDailyOST<nOSTDailyCap){
                    if(current->OST==0){ //not yet on OST
                        return 0.9;
                    }else //not infected
                        return 0.0;
                }
            }
        }else
            return 0.0;
    }else if(currDay>4380){
        if(current->risk==1||current->risk==2||current->risk==3||current->risk==7||current->risk==8||current->risk==9){ // only to opioid users
            if(nOST>0){
                if(nDailyOST<nOSTDailyCap){
                    if(current->OST==0){ //not yet on OST
                        return 0.9;
                    }else //not infected
                        return 0.0;
                }
            }
        }else
            return 0.0;
    }
}

double probOSTstop(gsl_rng **r, sIndiv **pTarget){ //Probability to start DAA therapy (only if infected)
    sIndiv *current;
    current=*pTarget;
    
    if(current->OST==1){ //on OST
        return 0.049;
    }else //not infected
        return 0.0;
}

double probDAAstart(gsl_rng **r, sIndiv **pTarget, int nDAA, int currDay, int nDaily, int nDailyCap){ //Probability to start DAA therapy (only if infected)
    sIndiv *current;
    current=*pTarget;
    
    if(nDAA>0){
        if(nDaily<nDailyCap){
            if(current->metavir<5&&current->DAA==0){ //infected and is not yet on DAA
                return 0.9; //200/730
            }else //not infected
                return 0.0;
        }else if(nDaily>=nDailyCap)
            return 0.0;
    }else //no more DAA
        return 0.0;
}

double probDAAstop(gsl_rng **r, sIndiv **pTarget){ //Probability to start DAA therapy (only if infected)
    sIndiv *current;
    current=*pTarget;
    
    if(current->metavir<5&&current->DAA==1){ //infected and is not yet on DAA
        return 0.0;
    }else //not infected
        return 0.0;
}

double probDAAclear(gsl_rng **r, sIndiv **pTarget, int currDay){ //Probability to clear HCV via DAA (only if infected)
    sIndiv *current;
    int deltaDays, deltaWeeks;
    current=*pTarget;
    
    if(current->DAA==1){ //infected and is on DAA
        if(current->metavir<5){
        //compute for time undergoing DAA
        // 12 weeks=84 days
            deltaDays=currDay-(current->timeStartDAA);
            deltaWeeks=deltaDays/7;
            if(deltaWeeks<12){
                return 0.0792*deltaWeeks; //7.92 from 95% clearance in 12-week regimen (Martin, NK, et al.)
            }else
                return 0.0;
        }else //not infected
            return 0.0;
    }else
        return 0.0;
}

void age(sIndiv **pTargetCopy){
    sIndiv *current;
    current=*pTargetCopy;
    current->age++;
}

void removeIndiv(sIndiv **pTarget, sIndiv **pHeadCopy, sIndiv **pTailCopy, int (*pLocArray2)[ROWPRIS][COLCTR]){
    //If target is the head
    sIndiv *temp, *current;
    int currLoc, currGroup;
    current=*pTarget;
    currLoc=current->location;
    currGroup=current->group;
    
    //subtract from current population
    //printf("Remove individual from loction %d group %d\n", currLoc, currGroup);
        (*pLocArray2)[currLoc][currGroup]--;
    
    if(*pTarget==*pHeadCopy&&*pTarget!=*pTailCopy){
        *pHeadCopy=(*pTarget)->nextIndiv;
        temp=(*pTarget)->nextIndiv;
        temp->prevIndiv=NULL;
    }
    //If target is the tail
    else if(*pTarget==*pTailCopy&&*pTarget!=*pHeadCopy){
        temp=(*pTarget)->prevIndiv;
        temp->nextIndiv=NULL;
        *pTailCopy=(*pTarget)->prevIndiv;
    }
    //If target is both head and tails
    else if(*pTarget==*pTailCopy&&*pTarget==*pHeadCopy){
        *pHeadCopy=NULL;
        *pTailCopy=NULL;
    }
    //Otherwise, if target is just in the middle (neither head nor tail)
    else{
        temp=(*pTarget)->prevIndiv;
        temp->nextIndiv=(*pTarget)->nextIndiv;
        temp=(*pTarget)->nextIndiv;
        temp->prevIndiv=(*pTarget)->prevIndiv;
    }
    temp=*pTarget;
    *pTarget=(*pTarget)->nextIndiv;
    free(temp);
}

void changeRisk(sIndiv **pTargetCopy, int (*pLocArray2)[ROWPRIS][COLCTR], int newRisk){
    sIndiv *current;
    current=*pTargetCopy;
    int currGroup, currLoc, newGroup=99;
    
    currGroup=current->group; //Get current population group
    currLoc=current->location; //Current Location
    
        switch(newRisk){
            case 0: //stopInj
                current->injecting=0; //stop sharing and injecting opioid
                current->injFreq=0;
                current->sharing=0;
                current->shaFreq=0;
                current->injOpd=0;
                current->risk=0;
                //turn into non injecting
                if(currGroup<6){//if previously injecting, turn into non-injecting group
                    newGroup=currGroup+6;
                }else
                    newGroup=currGroup;
                break;
            case 1: //injLdOpNoSh
                current->injecting=1; //stop sharing and injecting opioid
                current->injFreq=1;
                current->sharing=0;
                current->shaFreq=0;
                current->injOpd=1;
                current->risk=1;
                current->everIDU=1;
                //turn into injecting group if originally not injecting
                if(currGroup>5){//if previously not-injecting, turn into injecting group
                    newGroup=currGroup-6;
                }else //if already injecting, retain in current group
                    newGroup=currGroup;
                break;
            case 2: //injLdOpShLd
                current->injecting=1; //stop sharing and injecting opioid
                current->injFreq=1;
                current->sharing=1;
                current->shaFreq=1;
                current->injOpd=1;
                current->risk=2;
                current->everIDU=1;
                //turn into injecting group if originally not injecting
                if(currGroup>5){//if previously not-injecting, turn into injecting group
                    newGroup=currGroup-6;
                }else //if already injecting, retain in current group
                    newGroup=currGroup;
                current->group=newGroup;
                break;
            case 3: //injLdOpShDm
                current->injecting=1; //stop sharing and injecting opioid
                current->injFreq=1;
                current->sharing=1;
                current->shaFreq=2;
                current->injOpd=1;
                current->risk=3;
                current->everIDU=1;
                //turn into injecting group if originally not injecting
                if(currGroup>5){//if previously not-injecting, turn into injecting group
                    newGroup=currGroup-6;
                }else //if already injecting, retain in current group
                    newGroup=currGroup;
                
                break;
            case 4: //injLdNoNoSh
                current->injecting=1; //stop sharing and injecting opioid
                current->injFreq=1;
                current->sharing=0;
                current->shaFreq=0;
                current->injOpd=0;
                current->risk=4;
                current->everIDU=1;
                //turn into injecting group if originally not injecting
                if(currGroup>5){//if previously not-injecting, turn into injecting group
                    newGroup=currGroup-6;
                }else //if already injecting, retain in current group
                    newGroup=currGroup;
                break;
            case 5: //injLdNoShLd
                current->injecting=1; //stop sharing and injecting opioid
                current->injFreq=1;
                current->sharing=1;
                current->shaFreq=1;
                current->injOpd=0;
                current->risk=5;
                current->everIDU=1;
                //turn into injecting group if originally not injecting
                if(currGroup>5){//if previously not-injecting, turn into injecting group
                    newGroup=currGroup-6;
                }else //if already injecting, retain in current group
                    newGroup=currGroup;
                break;
            case 6: //injLdNoShDm
                current->injecting=1; //stop sharing and injecting opioid
                current->injFreq=1;
                current->sharing=1;
                current->shaFreq=2;
                current->injOpd=0;
                current->risk=6;
                current->everIDU=1;
                //turn into injecting group if originally not injecting
                if(currGroup>5){//if previously not-injecting, turn into injecting group
                    newGroup=currGroup-6;
                }else //if already injecting, retain in current group
                    newGroup=currGroup;
                break;
            case 7: //injDmOpNoSh
                current->injecting=1; //stop sharing and injecting opioid
                current->injFreq=2;
                current->sharing=0;
                current->shaFreq=0;
                current->injOpd=1;
                current->risk=7;
                current->everIDU=1;
                //turn into injecting group if originally not injecting
                if(currGroup>5){//if previously not-injecting, turn into injecting group
                    newGroup=currGroup-6;
                }else //if already injecting, retain in current group
                    newGroup=currGroup;
                break;
            case 8: //injDmOpShLd
                current->injecting=1; //stop sharing and injecting opioid
                current->injFreq=2;
                current->sharing=1;
                current->shaFreq=1;
                current->injOpd=1;
                current->risk=8;
                current->everIDU=1;
                //turn into injecting group if originally not injecting
                if(currGroup>5){//if previously not-injecting, turn into injecting group
                    newGroup=currGroup-6;
                }else //if already injecting, retain in current group
                    newGroup=currGroup;
                break;
            case 9: //injDmOpShDm
                current->injecting=1; //stop sharing and injecting opioid
                current->injFreq=2;
                current->sharing=1;
                current->shaFreq=2;
                current->injOpd=1;
                current->risk=9;
                current->everIDU=1;
                //turn into injecting group if originally not injecting
                if(currGroup>5){//if previously not-injecting, turn into injecting group
                    newGroup=currGroup-6;
                }else //if already injecting, retain in current group
                    newGroup=currGroup;
                break;
            case 10: //injDmNoNoSh
                current->injecting=1; //stop sharing and injecting opioid
                current->injFreq=2;
                current->sharing=0;
                current->shaFreq=0;
                current->injOpd=0;
                current->risk=10;
                current->everIDU=1;
                //turn into injecting group if originally not injecting
                if(currGroup>5){//if previously not-injecting, turn into injecting group
                    newGroup=currGroup-6;
                }else //if already injecting, retain in current group
                    newGroup=currGroup;
                break;
            case 11: //injDmNoShLd
                current->injecting=1; //stop sharing and injecting opioid
                current->injFreq=2;
                current->sharing=1;
                current->shaFreq=1;
                current->injOpd=0;
                current->risk=11;
                current->everIDU=1;
                //turn into injecting group if originally not injecting
                if(currGroup>5){//if previously not-injecting, turn into injecting group
                    newGroup=currGroup-6;
                }else //if already injecting, retain in current group
                    newGroup=currGroup;
                break;
            case 12: //injDmNoShDm
                current->injecting=1; //stop sharing and injecting opioid
                current->injFreq=2;
                current->sharing=1;
                current->shaFreq=2;
                current->injOpd=0;
                current->risk=12;
                current->everIDU=1;
                //turn into injecting group if originally not injecting
                if(currGroup>5){//if previously not-injecting, turn into injecting group
                    newGroup=currGroup-6;
                }else //if already injecting, retain in current group
                    newGroup=currGroup;
                break;
        }

    
    current->group=newGroup;
    current->risk=newRisk;
    
    //update pLocArray
    (*pLocArray2)[currLoc][currGroup]--;
    (*pLocArray2)[currLoc][newGroup]++;
    printf("ex-group: %d . new group: %d\n",currGroup,newGroup);
    printf("Pop ex-group: %d . Pop new group: %d\n",(*pLocArray2)[currLoc][currGroup],(*pLocArray2)[currLoc][newGroup]);
}

void moveLocation(sIndiv **pTargetCopy, int (*pLocArray2)[ROWPRIS][COLCTR], int newLoc){ //loc=0,1,2
    sIndiv *current;
    current=*pTargetCopy;
    int currLoc, currGroup;
    
    currGroup=current->group; //Current population group
    currLoc=current->location; //Current Location
    
    //printf("current location: %d -> new location: %d\n", current->location, newLoc);
    
    if(newLoc!=current->location){
        if(newLoc==0){
            //printf("MOVE TO COMMUNITY!!!\n");
            (*pLocArray2)[0][currGroup]++; //move to at-risk Community, no need to subtract from current location as that is done in the function removeIndiv
            //return 2;//individual went to community; raise dead flag
        }else{
            //printf("MOVE TO PRISON %d!!!\n", newLoc);
            (*pLocArray2)[currLoc][currGroup]--; //remove infected (at-risk) from current loc/group
            //printf("delete from %d\n", current->location);
            current->location=newLoc;
            (*pLocArray2)[newLoc][currGroup]++; //add infected (at-risk) from list
            //return 1; //changed location
        }
    }
    //return 0; //no change in location
    printf("ex-location: %d . new location: %d\n",currLoc,newLoc);
    printf("Pop ex-loc: %d . Pop new loc: %d\n",(*pLocArray2)[currLoc][currGroup],(*pLocArray2)[newLoc][currGroup]);
}

int infect(gsl_rng **r, int nEvents, sIndiv **pTargetCopy, sIndiv **pHeadCopy, sIndiv **pTailCopy, int (*pLocArray2)[ROWPRIS][COLCTR], int currDay){
    sIndiv *target, *tempCurrent;
    target=*pTargetCopy;
    gsl_rng *rCopy;
    rCopy=*r;
    int rStatus, eInf=999;
    int targetLocation=target->location, aCtr, iTarget, currLoc, currGroup, newGroup, eFlag=0;
    int totalAtRisk=(*pLocArray2)[target->location][0]+(*pLocArray2)[target->location][1]+(*pLocArray2)[target->location][2]+(*pLocArray2)[target->location][3]+(*pLocArray2)[target->location][4]+(*pLocArray2)[target->location][5]; //add all at risk
    sIndiv *refInfectList[totalAtRisk];
    double probInfectList[totalAtRisk];
    double eventDraw[2]; //proability of recipient to get infected
    double probInf[2]; //probability of source infecting recipient using per event probability
    int success, eventDecision;
    success=0;
    eventDraw[0]=0; eventDraw[1]=0;
    aCtr=0;
    //Go through list of individuals
    tempCurrent=*pHeadCopy; //Target points to the individual at the beginning of the list
    //printf("total at-risk agents in prison %d: %d\n", targetLocation, totalAtRisk);
    while(tempCurrent!=NULL){
        //add if injecting
        if((targetLocation==tempCurrent->location)&&(tempCurrent!=target)){//susceptible if same location and not same indiv
            if((tempCurrent->sharing==1)&&(tempCurrent->metavir>4)){//susceptible 5 & 6 if sharing and not infected
                probInfectList[aCtr]=((2.28*tempCurrent->atsi)+(2.22*(tempCurrent->injFreq-1))+(4.15*tempCurrent->injOpd))/(2.28+2.22+4.15);//formula to compute for the probability of getting infected //injFreq-1 because 0, 1 less than daily, 2 daily or more
                //(1-(1-0.0057)) //
                refInfectList[aCtr]=tempCurrent;
                if(probInfectList[aCtr]>0.0){
                    eFlag=1; //there is someone to infect
                }
                //printf("Infect %d [ID: %d](%p), with probability %f?\n", aCtr, tempCurrent->ID, tempCurrent, probInfectList[aCtr]);
                aCtr++;
            }
        }else{
            probInfectList[aCtr]=0.0;
        }
        tempCurrent=tempCurrent->nextIndiv;
    }
    
    if(eFlag==1){//there is someone to infect
        //select who to infect based on array index
    /*
        for(iTarget=0;iTarget<aCtr;iTarget++){//for iTarget=0 to < aCtr or to actr-1 {
            if(probInfectList[iTarget]>0.0){ //if individual has risk of infection
                //Draw first if source is infecting this individual using the per-event probability || test for sharing event with potential recipient
                //Assuming every susceptible individual in the same prison injects with the source, only 0.0057 (0.0032-0.0105) will lead to an infection (Boelen, L., et al., Per-event probability paper
                //probInf[1]=gsl_ran_exponential(*r, 0.0057);
                //probInf[0]=1-probInf[1];
                //eInf=draw_multinom(&rCopy, 2, probInf);
                //eInf=1;
                //if(eInf==1){ //if per-event infection is drawn
                    //Assuming every susceptible individual injects with the source, infection depends on probability based on associated risk factors -- * I think we can get away without this?*
                    eventDraw[0]=1-probInfectList[iTarget];
                    eventDraw[1]=probInfectList[iTarget];
                    eventDecision=draw_multinom(&rCopy, 2, eventDraw);
                    //eventDecision=1;
                    if(eventDecision==1){ // individual set to share with source //individual to be infected?
                        //Assuming every susceptible individual in the same prison injects with the source, only 0.0057 (0.0032-0.0105) will lead to an infection (Boelen, L., et al., Per-event probability paper
                        probInf[1]=gsl_ran_exponential(*r, 0.0057); //perEvent probability
                        probInf[0]=1-probInf[1];
                        eInf=draw_multinom(&rCopy, 2, probInf);
                        if(eInf==1){
                            //do below
                            rStatus = refInfectList[iTarget]->metavir;
                            if(rStatus==5){
                                refInfectList[iTarget]->infectionNumber++;
                            }
                            refInfectList[iTarget]->metavir=0; // infected!!
                            currLoc=refInfectList[iTarget]->location;
                            refInfectList[iTarget]->placeInfected=currLoc;
                            ////////UPDATE SUBGROUP WHEN INFECTED AND UPDATE BUCKETS
                            currGroup=refInfectList[iTarget]->group;
                            switch(currGroup){
                                case 0: //[currLoc][0] IDU+; HCV+; ATSI;  already infected
                                    printf("NOT SUPPOSED TO HAPPEN 0");
                                    break;
                                case 1: //[currLoc][1] IDU+; HCV+; NON-ATSI already infected
                                    printf("NOT SUPPOSED TO HAPPEN 1");
                                    break;
                                case 2: //[currLoc][2] IDU+; HCV-; ATSI; PREV. EXPOSED not yet infected
                                    newGroup=0;
                                    break;
                                case 3: //[currLoc][3] IDU+; HCV-; ATSI; SUSCEPTIBLE not yet infected
                                    newGroup=0;
                                    break;
                                case 4: //[currLoc][4] IDU+; HCV-; NON-ATSI; PREV. EXPOSED not yet infected
                                    newGroup=1;
                                    break;
                                case 5: //[currLoc][5] IDU+; HCV-; NON-ATSI; SUSCEPTIBLE not yet infected
                                    newGroup=1;
                                    break;
                                case 6: //[currLoc][6] IDU-; HCV+; ATSI
                                    printf("NOT SUPPOSED TO HAPPEN 6");
                                    break;
                                case 7: //[currLoc][7] IDU-; HCV+; NON-ATSI
                                    printf("NOT SUPPOSED TO HAPPEN 7");
                                    break;
                                case 8: //[currLoc][8] IDU-; HCV-; ATSI; PREV. EXPOSED not yet infected
                                    newGroup=6;
                                    break;
                                case 9: //[currLoc][9] IDU-; HCV-; ATSI; SUSCEPTIBLE not yet infected
                                    newGroup=6;
                                    break;
                                case 10://[currLoc][10] IDU-; HCV-; NON-ATSI; PREV. EXPOSED not yet infected
                                    newGroup=7;
                                    break;
                                case 11://[currLoc][11] IDU-; HCV-; NON-ATSI; SUSCEPTIBLE not yet infected
                                    newGroup=7;
                                    break;
                                    
                            } // Switch
                            refInfectList[iTarget]->group=newGroup;
                            refInfectList[iTarget]->timeOfInfection=currDay; //Record date of infection
                            (*pLocArray2)[currLoc][currGroup]--;
                            (*pLocArray2)[currLoc][newGroup]++;
                        
                            success++;
                            //printf("Infected ID %d on day %d!!!\n", refInfectList[iTarget]->ID, refInfectList[iTarget]->timeOfInfection);
                            printf("Inf ex-group: %d . Inf new group: %d\n",currGroup,newGroup);
                            printf("Inf Pop ex-group: %d . Inf Pop new group: %d\n",(*pLocArray2)[currLoc][currGroup],(*pLocArray2)[currLoc][newGroup]);
                    
                    }//eInf after selecting sharing partners
                    //} //eInf infection event
                } //if iTarget is susceptible
            } //iTarget go through individuals susceptible
        }//} // eFlag
        */
        
         iTarget=draw_multinom(&rCopy, aCtr, probInfectList);
         //printf("Infectibles: %d. Infect index %d at %p\n", aCtr, iTarget, refInfectList[iTarget]);
         //Look for indiv to infect by counting from top of linked list until target index found
         //Assuming iTarget injects with the source, only 0.0057 (0.0032-0.0105) it will lead to an infection (Boelen, L., et al., Per-event probability paper
         probInf[1]=gsl_ran_exponential(*r, 0.0083); //gsl_ran_exponential(*r, 0.0057); //perEvent probability
         probInf[0]=1-probInf[1];
         eInf=draw_multinom(&rCopy, 2, probInf);
         if(eInf==1){ //Target is to be infected
             rStatus = refInfectList[iTarget]->metavir;
             if(rStatus==5){
             refInfectList[iTarget]->infectionNumber++;
             }
             refInfectList[iTarget]->metavir=0; // infected!!
             currLoc=refInfectList[iTarget]->location;
             refInfectList[iTarget]->placeInfected=currLoc;
             ////////UPDATE SUBGROUP WHEN INFECTED AND UPDATE BUCKETS
             currGroup=refInfectList[iTarget]->group;
             switch(currGroup){
             case 0: //[currLoc][0] IDU+; HCV+; ATSI;  already infected
             printf("NOT SUPPOSED TO HAPPEN 0");
             break;
             case 1: //[currLoc][1] IDU+; HCV+; NON-ATSI already infected
             printf("NOT SUPPOSED TO HAPPEN 1");
             break;
             case 2: //[currLoc][2] IDU+; HCV-; ATSI; PREV. EXPOSED not yet infected
             newGroup=0;
             break;
             case 3: //[currLoc][3] IDU+; HCV-; ATSI; SUSCEPTIBLE not yet infected
             newGroup=0;
             break;
             case 4: //[currLoc][4] IDU+; HCV-; NON-ATSI; PREV. EXPOSED not yet infected
             newGroup=1;
             break;
             case 5: //[currLoc][5] IDU+; HCV-; NON-ATSI; SUSCEPTIBLE not yet infected
             newGroup=1;
             break;
             case 6: //[currLoc][6] IDU-; HCV+; ATSI
             printf("NOT SUPPOSED TO HAPPEN 6");
             break;
             case 7: //[currLoc][7] IDU-; HCV+; NON-ATSI
             printf("NOT SUPPOSED TO HAPPEN 7");
             break;
             case 8: //[currLoc][8] IDU-; HCV-; ATSI; PREV. EXPOSED not yet infected
             newGroup=6;
             break;
             case 9: //[currLoc][9] IDU-; HCV-; ATSI; SUSCEPTIBLE not yet infected
             newGroup=6;
             break;
             case 10://[currLoc][10] IDU-; HCV-; NON-ATSI; PREV. EXPOSED not yet infected
             newGroup=7;
             break;
             case 11://[currLoc][11] IDU-; HCV-; NON-ATSI; SUSCEPTIBLE not yet infected
             newGroup=7;
             break;
         
             }
             refInfectList[iTarget]->group=newGroup;
             refInfectList[iTarget]->timeOfInfection=currDay; //Record date of infection
             (*pLocArray2)[currLoc][currGroup]--;
             (*pLocArray2)[currLoc][newGroup]++;
         
             success=1;
             //printf("Infected ID %d on day %d!!!\n", refInfectList[iTarget]->ID, refInfectList[iTarget]->timeOfInfection);
             printf("Inf ex-group: %d . Inf new group: %d\n",currGroup,newGroup);
             printf("Inf Pop ex-group: %d . Inf Pop new group: %d\n",(*pLocArray2)[currLoc][currGroup],(*pLocArray2)[currLoc][newGroup]);
        }
    }else{
        printf("No one to infect.\n");
        success=0;
    }
    return success;
}

//void clearHCV(sIndiv **pTargetCopy, float clearRate, float normMean, int (*pLocArray2)[ROWPRIS][COLCTR]){
void clearHCV(sIndiv **pTargetCopy, int (*pLocArray2)[ROWPRIS][COLCTR]){
    sIndiv *target;
    target=*pTargetCopy;
    int currLoc, newGroup=0, currGroup;

    if(target->metavir<5){
	    target->metavir=5; //clear if less than equal to selected threshold
    	target->placeInfected=0; //NA
    	target->timeOfInfection=0;
    	if(target->DAA==1){
        	target->DAA=0; //set DAA to 0
        	target->timeStartDAA=0; //set to 0
    	}
    
    	currLoc=target->location;
    	currGroup=target->group;
    
    	switch(currGroup){
        	case 0:
            	newGroup=2;
            	break;
        	case 1:
            	newGroup=4;
            	break;
        	case 2:
            	printf("CLEAR HCV ERROR");
            	break;
        	case 3:
            	printf("CLEAR HCV ERROR");
            	break;
        	case 4:
            	printf("CLEAR HCV ERROR");
            	break;
        	case 5:
            	printf("CLEAR HCV ERROR");
            	break;
        	case 6:
            	newGroup=8;
            	break;
        	case 7:
            	newGroup=10;
            	break;
        	case 8:
            	printf("CLEAR HCV ERROR");
            	break;
        	case 9:
            	printf("CLEAR HCV ERROR");
            	break;
        	case 10:
            	printf("CLEAR HCV ERROR");
            	break;
        	case 11:
            	printf("CLEAR HCV ERROR");
    	}
    	target->group=newGroup;
    	//update pLocArray; move to HCV-, prev. exposed
    	(*pLocArray2)[currLoc][currGroup]--;
    	(*pLocArray2)[currLoc][newGroup]++;
    	printf("Clr ex-group: %d . Clr new group: %d\n",currGroup,newGroup);
    	printf("Clr Pop ex-group: %d . Clr Pop new group: %d\n",(*pLocArray2)[currLoc][currGroup],(*pLocArray2)[currLoc][newGroup]);
    }
}

void progressHCV(sIndiv **pTargetCopy){
    sIndiv *target;
    target=*pTargetCopy;
    
    if(target->metavir<3){
        target->metavir++;
    }//else
        //printf("HCV liver fibrosis at max!\n");
}

int deathHCV(sIndiv **pTargetCopy){ //NOT IN USE
    sIndiv *target;
    int sRand, clrThresh;
    target=*pTargetCopy;
    
    clrThresh=50; //uniform distribution
    
    do
        sRand=generateRand();
    while(sRand<1||sRand>100);
    
    if(sRand<=clrThresh){
        return 1; //remove Indiv
        //remove in the main program
    }else{
        return 0;
    }
}

void startOST(sIndiv **pTargetCopy, int currDay){
    sIndiv *target;
    target=*pTargetCopy;
    
    if(currDay<=4380){
        target->OST=1;
        target->timeStartOST=currDay;
    }else if(currDay>4380){
        target->OST=2;
        target->timeStartOST=currDay;
    }
}

void stopOST(sIndiv **pTargetCopy){
    sIndiv *target;
    target=*pTargetCopy;
    
    target->OST=0;
    target->timeStartOST=0;
}

void startDAA(sIndiv **pTargetCopy, int currDay){
    sIndiv *target;
    target=*pTargetCopy;
    
    target->DAA=1;
    target->timeStartDAA=currDay;
}

void stopDAA(sIndiv **pTargetCopy){
    sIndiv *target;
    target=*pTargetCopy;
    
    target->DAA=0;
    target->timeStartDAA=0;
}

void clearDAA(sIndiv **pTargetCopy, int (*pLocArray2)[ROWPRIS][COLCTR]){
    sIndiv *target;
    target=*pTargetCopy;
    int currLoc, newGroup=0, currGroup;
    
    if(target->metavir<5){
    	target->metavir=5; //clear if less than equal to selected threshold
    	target->placeInfected=0; //NA
    	target->timeOfInfection=0;
    	if(target->DAA==1){
        	target->DAA=0; //set DAA to 0
        	target->timeStartDAA=0; //set to 0
    	}
    
    	currLoc=target->location;
    	currGroup=target->group;
    
    	switch(currGroup){
        	case 0:
            	newGroup=2;
            	break;
        	case 1:
            	newGroup=4;
            	break;
        	case 2:
            	printf("CLEAR HCV ERROR");
            	break;
        	case 3:
            	printf("CLEAR HCV ERROR");
            	break;
        	case 4:
            	printf("CLEAR HCV ERROR");
            	break;
        	case 5:
            	printf("CLEAR HCV ERROR");
            	break;
        	case 6:
            	newGroup=8;
            	break;
        	case 7:
            	newGroup=10;
            break;
        	case 8:
            	printf("CLEAR HCV ERROR");
            	break;
        	case 9:
            	printf("CLEAR HCV ERROR");
            	break;
        	case 10:
            	printf("CLEAR HCV ERROR");
            	break;
        	case 11:
        	    printf("CLEAR HCV ERROR");
    	}
    	target->group=newGroup;
    	//update pLocArray; move to HCV-, prev. exposed
    	(*pLocArray2)[currLoc][currGroup]--;
    	(*pLocArray2)[currLoc][newGroup]++;
    	printf("Clr DAA ex-group: %d . Clr new group: %d\n",currGroup,newGroup);
    	printf("Clr DAA Pop ex-group: %d . Clr Pop new group: %d\n",(*pLocArray2)[currLoc][currGroup],(*pLocArray2)[currLoc][newGroup]);
	}
}
