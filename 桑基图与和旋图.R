library(sankeywheel)
head(sankeydf)
sankeydf <- read.csv("C:/Users/Qiang/Desktop/shangjitu.csv")
sankeywheel(from = sankeydf$from,
            to = sankeydf$to,
            weight = sankeydf$weight,
            type = "dependencywheel",
            width = "100%")
sankeywheel(from = sankeydf$from,
            to = sankeydf$to,
            weight = sankeydf$weight,
            type = "sankey",
            width = "100%")


#更改主题参数https://www.jianshu.com/p/475df13a61ef
library(manipulateWidget)
combineWidgets(
  sankeywheel(from = sankeydf$from,
              to = sankeydf$to,
              weight = sankeydf$weight,
              type = "sankey", 
              width = "100%",
              theme = "sunset", 
              title = "SUNSET"),
  sankeywheel(from = sankeydf$from,
              to = sankeydf$to,
              weight = sankeydf$weight,
              type = "dependencywheel", 
              width = "100%", 
              theme = "sunset", 
              title = "SUNSET"),
  byrow = TRUE, ncol = 2, width = "100%", height = "700px"
)

sankeywheel(from = sankeydf$from,
            to = sankeydf$to,
            weight = sankeydf$weight,
            type = "dependencywheel", 
            seriesName = "Random data: ",
            width = "100%", 
            height = "400px",
            theme = "sunset", 
            title = "SUNSET",
            titleAlign = "center",
            titleSize = "18px",
            titleColor = "black",
            subtitle = "czxa.top",
            subtitleAlign = "center",
            subtitleSize = "14px",
            subtitleColor = "black")

