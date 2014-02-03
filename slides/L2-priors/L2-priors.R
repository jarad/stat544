

opts_chunk$set(fig.width=6, fig.height=5, out.width='.8\\linewidth', fig.align='center', size='tiny')



theta = seq(0.01, 0.99, by=0.01)
prior = dbeta(theta, 3, 2)
prior = prior / sum(prior)
y = 3
n = 10
posterior = prior * dbinom(y, n, theta)
posterior = posterior / sum(posterior)

plot(theta, prior, type="p", main="Binomial, discrete prior", xlab=expression(theta), ylab="Density",
     ylim=range(prior,posterior), xlim=c(0,1), col="blue", pch=19)
points(theta, posterior, col="red", pch=19)
legend("topleft", c("Prior","Posterior"), col=c("blue","red"), pch=19)



## p = 0.4
## a = c(1,4)
## b = c(3,2)
## ppd = function(y,n,a,b) {
##   exp(lchoose(n,y)+lbeta(a+y,b+n-y)-lbeta(a,b))
## }
## prior = function(theta,p,a,b) {
##   p*dbeta(theta,a[1],b[1]) + (1-p)*dbeta(theta,a[2],b[2])
## }
## posterior = function(theta,p,a,b,y,n) {
##   p = p*ppd(y,n,a[1],b[1])
##   p = p/(p+(1-p)*ppd(y,n,a[2],b[2]))
##   p*dbeta(theta,a[1]+y,b[2]+n-y) + (1-p)*dbeta(theta,a[2]+y,b[2]+n-y)
## }
## 
## curve(posterior(x,p,a,b,y,n), col="red", lwd=2,
##       main="Binomial, mixture of betas", ylab="Density", xlab=expression(theta))
## curve(prior(x,p,a,b), col="blue", lwd=2, add=TRUE)
## 
## curve(p*dbeta(x,a[1],b[1]), col="blue", lty=2, add=TRUE)
## curve((1-p)*dbeta(x,a[2],b[2]), col="blue", lty=2, add=TRUE)
## 
## curve(p*dbeta(x,a[1]+y,b[1]+n-y), col="red", lty=2, add=TRUE)
## curve((1-p)*dbeta(x,a[2]+y,b[2]+n-y), col="red", lty=2, add=TRUE)
## 
## legend("topright", c("Prior","Posterior"), col=c("blue","red"), lwd=2)



p = 0.4
a = c(1,4)
b = c(3,2)
ppd = function(y,n,a,b) {
  exp(lchoose(n,y)+lbeta(a+y,b+n-y)-lbeta(a,b))
}
prior = function(theta,p,a,b) {
  p*dbeta(theta,a[1],b[1]) + (1-p)*dbeta(theta,a[2],b[2])
}
posterior = function(theta,p,a,b,y,n) {
  p = p*ppd(y,n,a[1],b[1])
  p = p/(p+(1-p)*ppd(y,n,a[2],b[2]))
  p*dbeta(theta,a[1]+y,b[2]+n-y) + (1-p)*dbeta(theta,a[2]+y,b[2]+n-y)
}

curve(posterior(x,p,a,b,y,n), col="red", lwd=2,
      main="Binomial, mixture of betas", ylab="Density", xlab=expression(theta))
curve(prior(x,p,a,b), col="blue", lwd=2, add=TRUE)

curve(p*dbeta(x,a[1],b[1]), col="blue", lty=2, add=TRUE)
curve((1-p)*dbeta(x,a[2],b[2]), col="blue", lty=2, add=TRUE)

curve(p*dbeta(x,a[1]+y,b[1]+n-y), col="red", lty=2, add=TRUE)
curve((1-p)*dbeta(x,a[2]+y,b[2]+n-y), col="red", lty=2, add=TRUE)

legend("topright", c("Prior","Posterior"), col=c("blue","red"), lwd=2)



curve(dbeta(x,.5+y,.5+n-y), col="red", lwd=2, main="Binomial, Jeffreys prior",
      xlab=expression(theta), ylab="Density")
curve(dbeta(x, .5,.5), col="blue", lwd=2, add=TRUE)
legend("topright", c("Prior",'Posterior'), col=c("blue","red"), lwd=2, bg="white")



f = function(theta) {
  theta^y*(1-theta)^(n-y)*exp(theta)
}
curve(exp(x)/(exp(1)-1), col="blue", lwd=2, ylim=c(0,3), 
      main="Binomial, nonconjugate prior", ylab="Density", xlab=expression(theta))
curve(1000*f(x), add=TRUE, col="red", lwd=2)
legend("topright", c("Prior","Posterior"), col=c("blue","red"), lwd=2)



w = 0.01
theta = seq(w/2, 1-w/2, by=w)
d = f(theta)
d = d/sum(d)/w
theta[c(which(cumsum(d)*w>0.025)[1]-1, which(cumsum(d)*w>0.975)[1])] # 95\% CI
plot(theta, d, type="l", col="red", lwd=2,  
      main="Binomial, nonconjugate prior", ylab="Density", xlab=expression(theta))
curve(exp(x)/(exp(1)-1), col="blue", lwd=2, add=TRUE)
legend("topright", c("Prior","Posterior"), col=c("blue","red"), lwd=2)


