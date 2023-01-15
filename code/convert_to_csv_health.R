LR_models<-readRDS(url("https://github.com/transplantation/unos-ht/raw/master/data/_pred_LR1124.rds"))

#for prediction results of first month:
LR_models[2,1] 
#for prediction results of fifth year:
LR_models[2,6] 
#for prediction results of tenth year:
LR_models[2,11]
# similarly for important variables in each year:
LR_models[4,1]
LR_models[4,6]
LR_models[4,11]

year0_prediction <- data.frame(LR_models[2,1])
year1_prediction <- data.frame(LR_models[2,2])
year2_prediction <- data.frame(LR_models[2,3])
year3_prediction <- data.frame(LR_models[2,4])
year4_prediction <- data.frame(LR_models[2,5])
year5_prediction <- data.frame(LR_models[2,6])
year6_prediction <- data.frame(LR_models[2,7])
year7_prediction <- data.frame(LR_models[2,8])
year8_prediction <- data.frame(LR_models[2,9])
year9_prediction <- data.frame(LR_models[2,10])
year10_prediction <- data.frame(LR_models[2,11])

#convert prediction to dataframe
year0_prediction <- as.data.frame(matrix(unlist(year0_prediction), nrow=length(unlist(year0_prediction[1]))))
year1_prediction <- as.data.frame(matrix(unlist(year1_prediction), nrow=length(unlist(year1_prediction[1]))))
year2_prediction <- as.data.frame(matrix(unlist(year2_prediction), nrow=length(unlist(year2_prediction[1]))))
year3_prediction <- as.data.frame(matrix(unlist(year3_prediction), nrow=length(unlist(year3_prediction[1]))))
year4_prediction <- as.data.frame(matrix(unlist(year4_prediction), nrow=length(unlist(year4_prediction[1]))))
year5_prediction <- as.data.frame(matrix(unlist(year5_prediction), nrow=length(unlist(year5_prediction[1]))))
year6_prediction <- as.data.frame(matrix(unlist(year6_prediction), nrow=length(unlist(year6_prediction[1]))))
year7_prediction <- as.data.frame(matrix(unlist(year7_prediction), nrow=length(unlist(year7_prediction[1]))))
year8_prediction <- as.data.frame(matrix(unlist(year8_prediction), nrow=length(unlist(year8_prediction[1]))))
year9_prediction <- as.data.frame(matrix(unlist(year9_prediction), nrow=length(unlist(year9_prediction[1]))))
year10_prediction <- as.data.frame(matrix(unlist(year10_prediction), nrow=length(unlist(year10_prediction[1]))))

#set the column names for prediction
colnames(year0_prediction) <- c("year0_real", "year0_pred",'year0_prob','ID')
colnames(year1_prediction) <- c("year1_real", "year1_pred",'year1_prob','ID')
colnames(year2_prediction) <- c("year2_real", "year2_pred",'year2_prob','ID')
colnames(year3_prediction) <- c("year3_real", "year3_pred",'year3_prob','ID')
colnames(year4_prediction) <- c("year4_real", "year4_pred",'year4_prob','ID')
colnames(year5_prediction) <- c("year5_real", "year5_pred",'year5_prob','ID')
colnames(year6_prediction) <- c("year6_real", "year6_pred",'year6_prob','ID')
colnames(year7_prediction) <- c("year7_real", "year7_pred",'year7_prob','ID')
colnames(year8_prediction) <- c("year8_real", "year8_pred",'year8_prob','ID')
colnames(year9_prediction) <- c("year9_real", "year9_pred",'year9_prob','ID')
colnames(year10_prediction) <- c("year10_real", "year10_pred",'year10_prob','ID')

#out put the dataframe to csv file
write.csv(year0_prediction,"C:/Users/hh-28/Desktop/Hamid_Healthcare/data/year0_prediction.csv", row.names = FALSE)
write.csv(year1_prediction,"C:/Users/hh-28/Desktop/Hamid_Healthcare/data/year1_prediction.csv", row.names = FALSE)
write.csv(year2_prediction,"C:/Users/hh-28/Desktop/Hamid_Healthcare/data/year2_predition.csv", row.names = FALSE)
write.csv(year3_prediction,"C:/Users/hh-28/Desktop/Hamid_Healthcare/data/year3_prediction.csv", row.names = FALSE)
write.csv(year4_prediction,"C:/Users/hh-28/Desktop/Hamid_Healthcare/data/year4_prediction.csv", row.names = FALSE)
write.csv(year5_prediction,"C:/Users/hh-28/Desktop/Hamid_Healthcare/data/year5_prediction.csv", row.names = FALSE)
write.csv(year6_prediction,"C:/Users/hh-28/Desktop/Hamid_Healthcare/data/year6_prediction.csv", row.names = FALSE)
write.csv(year7_prediction,"C:/Users/hh-28/Desktop/Hamid_Healthcare/data/year7_prediction.csv", row.names = FALSE)
write.csv(year8_prediction,"C:/Users/hh-28/Desktop/Hamid_Healthcare/data/year8_prediction.csv", row.names = FALSE)
write.csv(year9_prediction,"C:/Users/hh-28/Desktop/Hamid_Healthcare/data/year9_prediction.csv", row.names = FALSE)
write.csv(year10_prediction,"C:/Users/hh-28/Desktop/Hamid_Healthcare/data/year10_prediction.csv", row.names = FALSE)







write.csv(fifth_importance,"C:/Users/hh-28/Desktop/Hamid_Healthcare/data/fifth_importance.csv", row.names = FALSE)
write.csv(tenth_importance,"C:/Users/hh-28/Desktop/Hamid_Healthcare/data/tenth_importance.csv", row.names = FALSE)
write.csv(predition_importance,"C:/Users/hh-28/Desktop/Hamid_Healthcare/data/predition_importance.csv", row.names = FALSE)

