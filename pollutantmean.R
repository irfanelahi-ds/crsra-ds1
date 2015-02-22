pollutantmean<-function(directory, pollutant,id=1:330){
  
  file_n<-list.files(directory,full.names=TRUE)
  final_clean_pollutant<-vector("numeric",length=0)
  
  for (i in id){
    my_df<-read.csv(file_n[i]) #csv file read.
    pollutant_column<-my_df[,pollutant] #with NA values.
    bad<-is.na(pollutant_column) #removing NA values
    clean_pollutant<-pollutant_column[!bad] #removing NA values
    final_clean_pollutant<-append(final_clean_pollutant,clean_pollutant,after=length(final_clean_pollutant)) #creating a vector comprising of pollutant values
    }
  mean(final_clean_pollutant)
}
  