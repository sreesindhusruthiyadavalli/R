x<-seq(0,3,0.1)
z<-round(pnorm(x,0,1),4)
ztable <- cbind(z=x,prob=z)
head(ztable)
