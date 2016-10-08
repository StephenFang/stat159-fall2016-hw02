# Load TV data and Sales data
data = read.csv("../data/Advertising.csv")
data
tv_and_sales = data[,c(2,5)]
tv_data = tv_and_sales$TV
sales_data = tv_and_sales$Sales

# Generate Regression Object and Save it.
regression_object = lm(sales_data ~ tv_data)
regression_object
s = summary(regression_object)
s
save(s, file="../data/regression.RData")


# Output Scatterplot of TV against Sales for png and pdf
png(filename='../images/scatterplot-tv-sales.png')
plot(tv_data, sales_data, col = "blue", main = "Sales Against Adversting For TV", xlab = "Adversting", ylab = "Sales")
abline(lm(sales_data ~ tv_data))
dev.off()

pdf(file='../images/scatterplot-tv-sales.pdf')
plot(tv_data, sales_data, col = "blue", main = "Sales Against Adversting For TV", xlab = "Adversting", ylab = "Sales")
abline(lm(sales_data ~ tv_data))
dev.off()
