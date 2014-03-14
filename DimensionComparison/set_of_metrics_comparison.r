#V1=tecnica, V2=dataset, V3=f05
#V3=Taste   Wine=V1 Taster=V2
#friedman.test.with.post.hoc(Taste ~ Wine | Taster ,WineTasting)

setwd("C:/Users/Igor/SkyDrive/FSE/summary/4_2-AllDatasets_Together_DimensionComparison")  # note / instead of \ in windows

### F05 Changed ###
source("friedman_Nimenyi_post_hoc.r")
data<-read.table("F05Changed_AllMetrics.dat")
#data<-read.table("MCC_AllMetrics.dat")
#data<-read.table("G1_F05Changed_AllMetrics.dat")
#data<-read.table("G1_MCC_AllMetrics.dat")
#data<-read.table("G2_F05Changed_AllMetrics.dat")
#data<-read.table("G2_MCC_AllMetrics.dat")
#data<-read.table("G3_F05Changed_AllMetrics.dat")
#data<-read.table("G3_MCC_AllMetrics.dat")
#par(cex.lab=0.8)
par(cex.axis=0.8)
friedman.test.with.post.hoc(V3 ~ V1 | V2 ,data, to.plot.parallel = F)
friedman.test.with.post.hoc(V3 ~ V1 | V2 ,data, to.plot.boxplot = F)

##### MCC Analysis ###
data<-read.table("MCC_AllMetrics.dat")
friedman.test.with.post.hoc(V3 ~ V1 | V2 ,data, to.plot.parallel = F)
friedman.test.with.post.hoc(V3 ~ V1 | V2 ,data, to.plot.boxplot = F)

### F05 Changed - Ratio Group1 ###
data<-read.table("G1_F05Changed_AllMetrics.dat")
friedman.test.with.post.hoc(V3 ~ V1 | V2 ,data, to.plot.parallel = F)
friedman.test.with.post.hoc(V3 ~ V1 | V2 ,data, to.plot.boxplot = F)

### F05 Changed - Ratio Group2 ###
data<-read.table("G2_F05Changed_AllMetrics.dat")
friedman.test.with.post.hoc(V3 ~ V1 | V2 ,data, to.plot.parallel = F)
friedman.test.with.post.hoc(V3 ~ V1 | V2 ,data, to.plot.boxplot = F)

### F05 Changed - Ratio Group3 ###
data<-read.table("G3_F05Changed_AllMetrics.dat")
friedman.test.with.post.hoc(V3 ~ V1 | V2 ,data, to.plot.parallel = F)
friedman.test.with.post.hoc(V3 ~ V1 | V2 ,data, to.plot.boxplot = F)

