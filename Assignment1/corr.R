corr<-function(directory,threshold=0){
  x<-c()
  for(filename in dir(directory)){
    path<-paste("C:/Users/shadowfiend/Documents/",directory,"/",filename,sep="") 
    data.frame<-read.csv(path) 
    nob_sum<-sum(complete.cases(data.frame))
    if(nob_sum>threshold){
    x<-c(x,cor(data.frame$nitrate,data.frame$sulfate,use="na.or.complete"))
    }
  }
  x
}

