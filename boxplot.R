##For scat study member's material and practice 2020 08 01 
##p.118 (2) ���� ���� �������� ��Ʈ �׸���

# �ܼ� ���� ��Ʈ 1
install.packages("graphics")
library(graphics)
x <- c(9, 15, 20, 6)
label <- c("���� 1��", "���� 2��", "���� 3��", "���� 4��")
pie(x, labels=label, main="�μ��� ���� ����")

# �ܼ� ���� ��Ʈ 2
pie (x, init.angle=90, labels=label, main="�μ��� ���� ����")

# �ۼ�Ʈ�� �ִ� ���� ��Ʈ
pct <- round(x/sum(x)*100)
label <- paste(label, pct)
label <- paste(label,"%",sep="")
pie(x,labels=label, init.angle=90, col=rainbow(length(x)), main="�μ��� ���� ����")

# 3D ���� ��Ʈ
library(plotrix)
pie3D(x,labels=label, explode=0.1, labelcex=0.8, main="�μ��� ���� ����")

# �ܼ� �� ��Ʈ 1
height <- c(9, 15, 20, 6)
name <- c("���� 1��", "���� 2��", "���� 3��", "���� 4��")
barplot(height, names.arg=name, main="�μ��� ���� ����")

# �ܼ� �� ��Ʈ 2
barplot(height, names.arg=name, main="�μ��� ���� ����", col=rainbow(length(height)))

# �ܼ� �� ��Ʈ 3
barplot(height, names.arg=name, main="�μ��� ���� ����", col=rainbow(length(height)), xlab="�μ�", ylab="���� ����(�� ��)")

barplot(height, names.arg=name, main="�μ��� ���� ����", 
        col=rainbow(length(height)), xlab="�μ�", ylab="���� ����(�� ��)", ylim=c(0,25))

# ������ �� ���
bp <- barplot(height, names.arg=name, main="�μ��� ���� ����",
      col=rainbow(length(height)), xlab="�μ�", ylab="���� ����(�� ��)", ylim=c(0,25))
text(x=bp, y=height, labels=round(height,0), pos=3)	

bp <- barplot(height, names.arg=name, main="�μ��� ���� ����",
      col=rainbow(length(height)), xlab="�μ�", ylab="���� ����(�� ��)", ylim=c(0,25))
text(x=bp, y=height, labels=round(height,0), pos=1)

# �� ��Ʈ�� ���� ȸ��(���� ����)
barplot(height, names.arg=name, main="�μ��� ���� ����",
        col=rainbow(length(height)),
        xlab="���� ����(�� ��)", ylab="�μ�", horiz=TRUE, width=50)

# ������ �� ��Ʈ(Stacked Bar Chart)		
height1 <- c(4, 18, 5, 8)
height2 <- c(9, 15, 20, 6)
height <- rbind(height1, height2)
height
		
name <- c("���� 1��", "���� 2��", "���� 3��", "���� 4��")
legend_lbl <- c("2014��", "2015��")

barplot(height, main="�μ��� ���� ����",
        names.arg=name,
        xlab="�μ�", ylab="���� ����(�� ��)",
        col=c("darkblue","red"),
        legend.text=legend_lbl,
        ylim=c(0, 35))
		
# �׷��� �� ��Ʈ(Grouped Bar Chart)
barplot(height, main="�μ��� ���� ����",
        names.arg=name,
        xlab="�μ�", ylab="���� ����(�� ��)",
        col=c("darkblue","red"),
        legend.text=legend_lbl,
        ylim=c(0, 30),
        beside=TRUE,
        args.legend=list(x='top'))
		
# Generic X-Y Plotting
data(women)
women

weight <- women$weight
plot(weight)

height <- women$height
plot(height, weight, xlab="Ű", ylab="������")

# Simple Scatter Plot
weight <- women$weight
height <- women$height
plot(height, weight, xlab="Ű", ylab="������", pch=23,
     col="blue", bg="yellow", cex=1.5)

## p.139 (3) ������׷�

# ������ ������ ���� ������׷�
data(quakes)
head(quakes)

mag <- quakes$mag
mag

hist(mag, main="���� �߻� ������ ����", xlab="���� ����", ylab="�߻� �Ǽ�")

colors <- c("red", "orange", "yellow", "green", "blue", "navy", "violet")
hist(mag, main="���� �߻� ������ ����", xlab="���� ����", ylab="�߻� �Ǽ�",
     col=colors, breaks=seq(4, 6.5, by=0.5))

hist(mag, main="���� �߻� ������ ����", xlab="���� ����", ylab="��뵵��",
     col=colors, breaks=seq(4, 6.5, by=0.5), freq=FALSE)	 
	
hist(mag, main="���� �߻� ������ ����", xlab="���� ����", ylab="��뵵��",
     col=colors, breaks="Sturges", freq=FALSE)	

## p.144 (4) �ڽ� �÷�	 
	 
# Box Plot
data(quakes)
quakes
mag ��- quakes$mag
min(mag)
max(mag)
median(mag)
quantile(mag, c(0.25, 0.5, 0.75))
boxplot(mag, main="���� �߻� ������ ����", xlab="����", ylab="�߻� �Ǽ�",col="red")
  