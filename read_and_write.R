my_read <- function(directory) {
  
  df = read.table(file = directory, sep = '\t', header = FALSE)
  write.table(df[1,-1],'field_id_0.csv',sep=',',row.names = FALSE,col.names = FALSE)
  write.table(df[,1],'subject_id_0.csv',sep=',',row.names = FALSE,col.names = FALSE)
  write.table(df[,-1],'value_0.csv',sep=',',row.names = FALSE,col.names = FALSE)
  
}


my_write <- function(field_id,subject_id,value,directory) {
  df1 = read.table(file = field_id, sep = ',', header = FALSE)
  df2 = read.table(file = subject_id, sep = ',', header = FALSE)
  df3 = read.table(file = value, sep = ',', header = FALSE)
  df3[] <- sapply(df3,as.character) 
  #df4 = rbind(df1,df3)
  df5 = cbind(df2, df3)
  write.table(df5,directory,sep=',',row.names = FALSE,col.names = FALSE)
}
