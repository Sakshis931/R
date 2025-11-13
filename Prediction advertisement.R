#Div D 13 Nov 25
advdata=read.csv("/Users/sakshisingh/Downloads/Advertising.csv")
advdata
plot(advdata$TV,advdata$Sales)
plot(advdata$Newspaper,advdata$Sales)
plot(advdata$Radio,advdata$Sales)
cor(advdata$TV,advdata$Sales)
cor(advdata$Radio,advdata$Sales)
cor(advdata$Newspaper,advdata$Sales)
model1=lm(Sales~TV,advdata)
summary(model1)
temp=data.frame(TV=c(100,150,200))
predict(model1,temp)
sales=0.047537*100+7.032594
t=read.csv("/Users/sakshisingh/Downloads/Advertising.csv")
preds=predict(model1,t)
res=cbind(t,preds)
write.csv(res,"/Users/sakshisingh/Desktop/r/cadvprediction.csv")
