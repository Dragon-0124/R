# x-y 플로팅 차트로 보는 지역별 미세먼지 현황

city <- c("서울", "부산", "대구", "인천", "광주", "대전", "울산")
pm25 <- c(18, 21, 21, 17, 8, 11, 25)
lat <- c(27.567933, 35.180002, 35.877052, 37.457730,
         35.160331, 36.350573, 35.539865)
lon <- c(126.978054, 129.074974, 128.600680, 126.702194,
         126.851433, 127.384793, 129.311469)
plot(x=lon, y=lat, pch=19, cex=pm25*0.3, col=rgb(1,0,0,0.3),
     xlim=c(126,130), ylim=c(35, 38), xlab="경도", ylab="위도")
text(x=lon, y=lat, labels=city)


# 워드 클라우드로 보는 지역별 미세먼지 현황

install.packages("wordcloud")
library(wordcloud)

city <- c("서울", "부산", "대구", "인천", "광주", "대전", "울산")
pm25 <- c(18, 21, 21, 17, 8, 11, 25)
wordcloud(city, freq=pm25, colors=rainbow(3), random.color=T)


#애니메이션 : 바람개비 돌리기
install.packages("imager")
library(imager)

img_path <- "C:/Users/skseo_0/OneDrive/Desktop/blade.png"
img <- load.image(img_path)
plot(img)

img <- resize(img, size_x=300L, size_y=300L)
plot(img, xlim=c(0, 600), ylim=c(0, 600))

angle <- 0
while(T){
  angle <- angle +10
  imrotate(img, angle, cx=150, cy=150) %>%
    plot(axes=F)
  Sys.sleep(0.05)
}


# 웹 스크래핑 : 공공 데이터 포털의 API 목록 출력

install.packages("rvest")
library(rvest)

url <- "https://www.data.go.kr/tcs/dss/selectDataSetList.do"
html <- read_html(url)
html


# 동전 던지기 시뮬

plot(NA,
     xlab="동전을 던진 횟수", ylab="앞면이 나오는 비율",
     xlim=c(0, 100), ylim=c(0,1),
     main="동전을 던지는 횟수에 따른 앞면이 나울 확율 변화")
abline(h=0.5, col="red", lty=2)
count <- 0
for (n in 1:100){
  coin <- sample(c("앞면","뒷면"), 1)
  if(coin=="앞면")
    count = count + 1
  prob <- count/n
  points(n, prob)
}

