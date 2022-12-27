library(MVN)
df= data.frame(sample$x5 , sample$x8 , sample$x9 , sample$x16)
df
my_data= data.matrix(na.omit(subset(df)))
my_data
mvn(my_data, mvnTest = "hz")
library(MVTests)
MVTests::BoxM(sample[,2:4],sample$x5)
direct = split.data.frame(sample[,2:4],df$sample.x5)$`Direct t`
direct
indirect = split.data.frame(sample[,2:4],df$sample.x5)$`Indirect`
indirect
cov_my_data = cov(my_data)
cov_my_data
det_cov = det(cov_my_data)
det_cov
trace_cov = sum(diag(cov_my_data))
trace_cov
like_ratio = (det_cov/(trace_cov/3)^3)^50
-2 *log(like_ratio)
qchisq(0.95,5,FALSE)
rmarkdown::render("assignmentMVN.R")
