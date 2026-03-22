name <- list(c("국어", "음악"), c("알라딘", "자스민", "지니"))
score <- c(70, 80, 85, 90, 90, 75)
arr <- array(score, dim=c(2,3),dimnames=name)
arr

arr[2, 3] <- 77
arr[2, 3]

arr[1,]
arr[, 2]


name <- list(c("1행", "2행"), c("1열", "2열", "3열"))
x <- 1:6
mtx <- matrix(x, nrow=2) #열 우선으로 데이터 삽입
mtx
mtx <- matrix(x, nrow=2, dimnames=name, byrow=TRUE) #행 우선으로 데이터 삽입
mtx
y <- c(7, 8, 9)
mtx <- rbind(mtx, y) #아래 행에 붙이기
rownames(mtx)[3] <- "3행" #3번째 행에 '3헹'이라는 이름 붙이기
mtx

z <- c(10, 11, 12)
mtx <- cbind(mtx, z)
colnames(mtx)[4] <- "4열"
mtx


x <- list("알라딘", 20, c(70, 80))
x

x <- list(성명="알라딘", 나이=20, 성적=c(70, 80))
x
x[1]
x[[1]]

df <- data.frame(성명=c("알라딘", "자스민"), 나이=c(20, 19), 국어=c(70, 85))
df

df[1, 2] <- 21
str(df)
df
df[1,1] <- "Aladin"
df <- data.frame(성명=c("알라딘", "자스민"), 나이=c(20, 19), 국어=c(70, 85),
                 stringAsFactors=F)
str(df)
df


quakes
head(quakes)
tail(quakes, n=10)
names(quakes)
dim(quakes)
str(quakes)
summary(quakes)


write.table(quakes,"D:/workspace/R/quakes.csv",sep=",")
df <-  read.csv("D:/workspace/R/quakes.csv", header=T)
df



getTriangleArea <- function(w,h){
  area <- w*h/2
  return(area)
}

getTriangleArea(10,5)

x <- T
y <- F
xor(x,y)


addr <- c("축구", "배구", "농구", "축구", "농구")
addr2 <- factor(addr)
addr2

emp <- data.frame("ID"=c("A", "B"), "경력기간"=c(3,5), "수행프로잭트수"=c(4,8),
                  "취미"=c("요리", "축구"))



