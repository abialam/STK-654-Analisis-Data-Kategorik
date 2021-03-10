#----INPUT DATA PILPRES----#
pilpres<-matrix(c(200,406,418,418), nrow=2,byrow=TRUE)
colnames(pilpres)<-c("clinton","obama")
rownames(pilpres)<-c("M","F")
tabelpilpres<-as.table(pilpres)
tabelpilpres
datapilpres<-as.data.frame(pilpres)
datapilpres
#----jawab contoh 1---#
addmargins(tabelpilpres)
#a
a<-618/1442
a
#b
b<-824/1442
b
prop.table(tabelpilpres)
#c-f
prop.table(tabelpilpres,margin=1)

#----INPUT DATA SAKIT----#
sakit<-matrix(c(1,12,0,87), nrow=2,byrow=TRUE)
predicted<-rownames(sakit)<-c("pos","neg")
actual<-colnames(sakit)<-c("sakit","sehat")
tabelsakit<-as.table(sakit)
tabelsakit
#---jawab contoh 2---#
install.packages("epiR")
library("epiR")
epi.tests(tabelsakit,conf.level=0.95)

#---jawab contoh 3---#
prop.out <- prop.table(tabelpilpres, margin = 1)
# relative risk of male vs. female
prop.out[1,1]/prop.out[2,1]

#---jawab contoh 4---#
# odds of Male
prop.out[1,1]/prop.out[1,2]
# odds of Female
prop.out[2,1]/prop.out[2,2]
install.packages("epitools")
library("epitools")
or.out <- oddsratio(tabelpilpres, rev="b")
or.out$measure

#----jawab contoh 5----#
chisq.test(tabelpilpres,correct=FALSE)
#fisher.test(tabelpilpres)
#install.packages("DescTools")
#library("DescTools")
#GTest(tabelpilpres)

#----jawab contoh 6----#
pilpres2<-matrix(c(3,1,1,3), nrow=2,byrow=TRUE)
colnames(pilpres2)<-c("clinton","obama")
rownames(pilpres2)<-c("M","F")
tabelpilpres2<-as.table(pilpres2)
tabelpilpres2
fisher.test(tabelpilpres2)
