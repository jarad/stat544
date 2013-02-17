---
layout: post
title: Small/Big numbers in computing
subtitle: How to avoid them
categories : [tips]
tags : [computing]
---
{% include JB/setup %}

In theory, $10^{309}$ does not mean infinity, and $10^{-380}$ is clearly not zero. But if you type them in R, you will see `Inf` (infinity) and `0` respectively.

Too big or too small numbers are bad in computing (due to the finite precision of [floating point numbers](http://en.wikipedia.org/wiki/Floating_point_number)), and you should try your best to avoid them. One significant case in Bayesian computing is the likelihood function - if the sample size is big and there are a lot of densities smaller than 1, you may end up with 0 as the likelihood value. For example,

{% highlight r %}
x = rnorm(1000) # the sample
prod(dnorm(x))  # the produce of densities
{% endhighlight %}

If you run the code above, you are likely to get 0 as the likelihood value. But we know $$\prod x_{i}=\exp\left(\sum\log(x_{i})\right)$$, so instead of multiplying the small numbers, we add up their log values and exponentiate the sum. The sum is often a not too big or small number, e.g.

{% highlight r %}
sum(dnorm(x, log = TRUE))
{% endhighlight %}

So we know the likelihood value is $e^N$ where $N$ is a "moderate" number; even though $e^N$ is indeed very big or small, it is not infinity or zero.

Another example (from a question of one student) is the Exercise 6.2 where we need to simulate from the posterior distribution of $\theta$, and draw samples from the posterior predictive distribution, but the values of $\theta$ are very small:

{% highlight r %}
theta <- rgamma(1000,238)/5.716e12
rpois(1000, theta * 8e11)
{% endhighlight %}

Although it is not really a big problem in this case ($10^{-12}$ should be fine in R), we can easily avoid the multiplication/division by a huge number:

{% highlight r %}
rpois(1000, rgamma(1000,238) * (8e11 / 5.716e12))
{% endhighlight %}

`8e11 /5.716e12 = 0.14` and `rgamma(shape = 238)` is on the magnitude of $10^2$. Perhaps this makes you feel better.
