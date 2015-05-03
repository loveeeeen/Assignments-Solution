complete<-function(directory,id=1:322){
  frame<-data.frame()
  for(i in id){
    if(i<10){
      path<-paste("C:/Users/shadowfiend/Documents/",directory,"/00",i,".csv",sep="") 
    }else if(i>=10&i<100){
      path<-paste("C:/Users/shadowfiend/Documents/",directory,"/0",i,".csv",sep="") 
    }else{
      path<-paste("C:/Users/shadowfiend/Documents/",directory,"/",i,".csv",sep="")
    }
    data.frame<-read.csv(path) 
    nob_sum<-sum(complete.cases(data.frame))
    frame1<-data.frame(i,nob_sum)
    frame<-rbind(frame,frame1)
  }
  colnames(frame)<-c("id","nobs")
  frame
}
complete("specdata",1)