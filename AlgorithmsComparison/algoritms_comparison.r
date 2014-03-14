#V1=tecnica, V2=dataset, V3=f05
#V3=Taste   Wine=V1 Taster=V2
#friedman.test.with.post.hoc(Taste ~ Wine | Taster ,WineTasting)

setwd("C:/Users/Igor/SkyDrive/FSE/summary/4_1-Analysis_Algorithms_Comparison")  # note / instead of \ in window

### F05 Changed ###
source("friedman_Nimenyi_post_hoc.r")
data<-read.table("F05Changed_Algorithm.dat")
friedman.test.with.post.hoc(V3 ~ V1 | V2 ,data, to.plot.parallel = F)
friedman.test.with.post.hoc(V3 ~ V1 | V2 ,data, to.plot.boxplot = F)

##### MCC Analysis ###
data<-read.table("MCC_Algorithm.dat")
friedman.test.with.post.hoc(V3 ~ V1 | V2 ,data, to.plot.parallel = F)
friedman.test.with.post.hoc(V3 ~ V1 | V2 ,data, to.plot.boxplot = F)
