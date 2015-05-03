pollutantmean<-function(directory,pollutant,id=1:332){
  total_sum<-0
  total_length<-0
  for(i in id){
    if(i<10){
      path<-paste("C:/Users/shadowfiend/Documents/",directory,"/00",i,".csv",sep="") 
    }else if(i>=10&i<100){
      path<-paste("C:/Users/shadowfiend/Documents/",directory,"/0",i,".csv",sep="") 
    }else{
      path<-paste("C:/Users/shadowfiend/Documents/",directory,"/",i,".csv",sep="")
    }
    data.frame<-read.csv(path) 
    vectors<-data.frame[,pollutant]
    vectors_nona<-vectors[!is.na(vectors)]
    total_sum<-sum(vectors,na.rm=TRUE)+total_sum
    total_length<-length(vectors_nona)+total_length
  }
  total_sum/total_length
}