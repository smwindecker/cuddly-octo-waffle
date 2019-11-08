# Analysis script for my awesome project

# read data
# apples <- data.frame(apple_id = as.factor(1:1000),
#                      weight = rnorm(1000, 5, 1))
# write.csv(apples, 'data/apples_data.csv', row.names = FALSE)

apples <- read.csv('data/apples_data.csv')

# process data
apples$log_weight <- log(apples$weight)

# graphing
library(ggplot2)

png('figs/hist_apple_weight.png')
ggplot(apples, aes(weight)) + geom_histogram()
dev.off()

