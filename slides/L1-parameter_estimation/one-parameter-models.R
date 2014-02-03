# Priors
curve(dbeta(x,0.5,0.5),   col=1, lty=1, lwd=2, ylim=c(0,3),
      main="Beta distribution", xlab=expression(theta),
      ylab="Density")
curve(dbeta(x,1,10),       col=2, lty=2, lwd=2, add=TRUE)
curve(dbeta(x,4,4),       col=3, lty=3, lwd=2, add=TRUE)
curve(dbeta(x,2,6),       col=4, lty=4, lwd=2, add=TRUE)
curve(dbeta(x,6,2),       col=5, lty=5, lwd=2, add=TRUE)
legend("top", c("a=b=0.5","a=b=1","a=b=4","a=2,b=6","a=6,b=2"), 
       col=1:5, lwd=2, lty=1:5)


# Prior
a=1
b=1

# Data
y = 1
n = 10



# Posterior vs prior
curve(dbeta(x,a+y,b+n-y), col="red",  lwd=2,
      main="Binomial model, beta prior",
      xlab=expression(theta),
      ylab="Density"
      )
curve(dbeta(x,a,b),       col="blue", lwd=2, add=TRUE)
curve(dbeta(x,y,n-y),       col="seagreen", lwd=2, add=TRUE)


#legend("bottom", c("Prior","Posterior"), col=c("blue","red"), lwd=2)


## 
# Parameter estimates
##


estimates = function(a,b,y,n) {
  cat("Mean   = ",(a+y)/(a+b+n),"\n",
      "Median = ", qbeta(0.5, a+y, b+n-y), "\n",
      "Mode   = ", (a+y-1)/(a+b+n-2), "\n")
}
estimates(a,b,y,n)


##
# Interval estimates
##

# HPD
# modified from http://xianblog.wordpress.com/2013/10/17/beta-hpd/
# assumes unimodal distribution
hpd = function( qf, prob=0.95, tol=1e-8, ... ) {
  inprob = 1.0 - prob
  intervalWidth = function( lowTailPr , qf , prob , ... ) {
    qf( prob + lowTailPr , ... ) - qf( lowTailPr , ... )
  }
  optInfo = optimize( intervalWidth , c( 0 , inprob ) , qf=qf ,
  prob=prob , tol=tol , ... )
  HDIlowTailPr = optInfo$minimum
  return( c( qf( HDIlowTailPr , ... ) ,
             qf( prob + HDIlowTailPr , ... ) ) )
}



# Prior
a=1
b=1

# Data
y = 2
n = 68





