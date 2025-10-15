install.packages("rvest")
library(rvest)
url<-"https://books.toscrape.com/"
html_content<-read_html(url)
html_content
title_xpath<-'//*[@class="product_pod"]/h3/a'
price_xpath<-'//*[@class="product_pod"]/div[2]/p[1]'
titles<-html_content %>% html_nodes(xpath=title_xpath) %>% html_text() %>% trimws()
print(titles)
price<-html_content %>% html_nodes(xpath=price_xpath) %>% html_text() %>% trimws()
print(price)
data_frames<-data.frame(Title=titles,Price=price)
print(data_frames)
write.csv(data_frames,"books.csv",row.names =FALSE)
