setwd("C:/Users/Qiang/Desktop")
library(REmap)#百度地图包
library(tcltk) #循环进度条 
options(remap.ak = "zhViwnGkgU0TYP5D6EGU3kNC4EzYsxZp")#百度API密钥
data1 <- read.csv("jhj.csv",header = TRUE)#读取数据
data <-data.frame(data1[,])
result <- list()
a <- length(data[[1]])#数据长度
u <- 1:a
pb <- tkProgressBar(title="进度",label="已完成 %", min=0, max=100, initial = 0, width = 300)#进度条面板  
for(i in 1:a){
  aim <- get_geo_position(as.vector.factor(data[[1]][i]))
  aim1 <- data.frame(aim)
  result[[i]] <-data.frame(aim1)
  info <- sprintf("finish %d%%", round(i*100/length(u)))
  setTkProgressBar(pb, value = i*100/length(u), title = sprintf("jhq(%s)",info),label = info) 
  #Sys.sleep(0.45)#设置系统间隔时间
}
close(pb)#关闭进度条
final <- do.call(rbind,result)
write.csv(final,"C:/Users/Qiang/Desktop/解析/a14.csv")#输出数据集

