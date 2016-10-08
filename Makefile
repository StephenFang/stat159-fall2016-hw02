.PHONY: all data clean


all: clean report/report.html data/eda-output.txt data/regression.RData 

data:
		wget -O data/Advertising.csv "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"

data/eda-output.txt:
		rscript code/eda-script.R

data/regression.RData:
		rscript code/regression-script.R

report/report.html:
		rscript -e 'library(rmarkdown); render("report/report.Rmd","html_document")'

clean:
		rm -rf report/report.html
