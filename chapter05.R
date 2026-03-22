# 파이 차트

pie(x, init.angle=0, labels=label, main="부서별 영업 실적", clockwise=F)
# clockwise T -> 시계방향, F -> 반시계방향

pct <- round(x/sum(x)*100)
label <- paste(label, pct)
label <- paste(label, "%", sep="")
pie(x, labels=label, init.angle=90, col=rainbow(length(x)), main="부서별 영업 실적")

# 바 차트

height <- c(9, 15, 20, 6)
name <- c("영업 1팀", "영업 2팀", "영업 3팀","영업 4팀")
baarplot(height, names.arg=name, main="부서별 영업 실적")

barplot(height, names.arg=name, main="부서별 영업 실적", col=rainbow(length(height)))
barplot(height, names.arg=name, main="부서별 영업 실적", col=rainbow(length(height)),
        xlab="부서", ylab="영업 실적(억원)")
barplot(height, names.arg=name, main="부서별 영업 실적", col=rainbow(length(height)),
        xlab="부서", ylab="영업 실적(억원)", ylim=c(0, 25))
bp <- barplot(height, names.arg=name, main="부서별 영업 실적", col=rainbow(length(height)),
              xlab="부서", ylab="영업 실적(억원)", ylim=c(0, 25))
text(x=bp, y=height, labels=round(height, 0), pos=3)

bp <- barplot(height, names.arg=name, main="부서별 영업 실적", col=rainbow(length(height)),
              xlab="부서", ylab="영업 실적(억원)", ylim=c(0, 25))
text(x=bp, y=height, labels=round(height, 0), pos=1)

#바 차트의 수평 회전
barplot(height, names.arg=name, main="부서별 영업 실적", col=rainbow(length(height)),
        ylab="부서", xlab="영업 실적(억원)", horiz=T, width=50)


#  그룹화된 바 차트

height1 <- c(4, 18, 5, 8)
height2 <- c(9, 15, 20, 6)
height <- rbind(height1, height2)
height

name <- c("영업 1팀", "영업 2팀", "영업 3팀","영업 4팀")
legend_lbl <- c("2014년", "2015년")
barplot(height, main="부서별 영업 실적", names.arg=name, xlab="부서", ylab="영업 실적(억원)", 
        col=c("darkblue","red"), legend.text=legend_lbl, ylim=c(0, 35))

barplot(height, main="부서별 영업 실적", names.arg=name, xlab="부서", ylab="영업 실적(억원)", 
        col=c("darkblue","red"), legend.text=legend_lbl, ylim=c(0, 30), beside=T, args.legend=list(x='top'))


# 일반적인 X-Y 플로팅

data(women)
women

height <- women$weight
plot(height)

weight <- women$height
plot(height, weight, xlab="키", ylab="몸무게", pch=23, col="blue", bg="yellow", cex=1, type="o")
# type에 따라 그래프의 출력 모양이 사라진다.
# type="p", "l", "b", "c", "o", "h", "s", "n" 등이 있음


# 히스토그램
data(quakes)
mag <- quakes$mag

hist(mag, main="지진 발생 강도의 분포", xlab="지진 강도", ylab="발생 건수")

colors <- c("red", "orange", "yellow", "green", "blue", "navy", "violet")
hist(mag, main="지진 발생 강도의 분포", xlab="지진 강도", ylab="발생 건수", col=colors, breaks=seq(4, 6.5, by=0.1))

hist(mag, main="지진 발생 강도의 분포", xlab="지진 강도", ylab="상대 도수", col=colors, breaks=seq(4, 6.5, by=0.1), freq=F)

hist(mag, main="지진 발생 강도의 분포", xlab="지진 강도", ylab="상대 도수", col=colors, breaks="Sturges", freq=F)


# 박스 플롯

data(quakes)
mag <- quakes$mag

boxplot(mag, main="지진 발생 강도의 분포", xlab="지진",  ylab="발생 건수", col="red")


# CDNow 데이터 소스 위치
url <- "https://raw.githubusercontent.com/cran/BTYD/master/data/cdnowElog.csv"

# 데이터 읽기
data <- read.csv(url, header=T)
# 헤더 부분 출력
head(data)

# 거래량
quantity <- data$cds

# 거래량 이원 분류표 (거래량 대 빈도수)
table(quantity)

# 거래량에 대한 빈도수를 히스토그램으로 출력하기

colors <- c("red", "orange", "yellow", "green", "blue", "navy", "violet")
hist(quantity, main="거래량에 따른 빈도수수", xlab="거래 량", ylab="빈도", )

max(quantity)

hist(quantity, 
     main="거래량 빈도수 히스토그램",
     xlab="거래량 (Quantity)",
     ylab="빈도수 (Frequency)",
     col=colors, breaks=seq(0, 40, by=1))
