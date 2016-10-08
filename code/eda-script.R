data = read.csv("../data/Advertising.csv")
data
tv_and_sales = data[,c(2,5)]
tv_and_sales
sink('../data/eda-output.txt', append=FALSE)
summary(tv_and_sales)
sink()


# Output TV Histogram to PNG
png(filename='../images/histogram-tv.png')
hist(tv_and_sales$TV, xlab="Advertising of TV", ylab='Count', main="Advertising Spending Distribution for TV")
dev.off()

# Output TV Histogram to PDF
pdf(file='../images/histogram-tv.pdf')
hist(tv_and_sales$TV, xlab="Advertising of TV", ylab='Count', main="Advertising Spending Distribution for TV")
dev.off()

# Output Sales Histogram to PNG
png(filename='../images/histogram-sales.png')
hist(tv_and_sales$Sales, xlab="Sales of TV (In Thousands)", ylab='Count', main="Sales Distribution for TV")
dev.off()

# Output Sales Histogram to PDF
pdf(file='../images/histogram-sales.pdf')
hist(tv_and_sales$Sales, xlab="Sales of TV (In Thousands)", ylab='Count', main="Sales Distribution for TV")
dev.off()

