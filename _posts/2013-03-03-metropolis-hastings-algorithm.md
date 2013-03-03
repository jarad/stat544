---
layout: post
title: "Metropolis Hastings algorithm"
description: ""
categories: [video]
tags: [simulation, Monte Carlo integration]
---
{% include JB/setup %}

This video introduces the Metropolis-Hastings algorithm. This algorithm generates a Markov chain that draws samples from a stationary distribution that is the target distribution of interest. Suppose f(x) is our target distribution and q(x\|x[j]) is a proposal distribution. Starting with an initial value x[0], the Metropolis-Hastings algorithm is 

1. Sample x<sup>*</sup> ~ q(x\|x[j]).
2. Calculate the acceptance probability r = f(x<sup>*</sup>)/f(x[j]) * q(x[j]\|x<sup>*</sup>)/q(x<sup>*</sup>\|x[j]).
3. Set x[j+1] = x<sup>*</sup> with probability r, otherwise set x[j+1] = x[j].

Under regularity conditions, x[j] converges to draws from f(x). 


<iframe width="640" height="480" src="http://www.youtube.com/embed/VGRVRjr0vyw" frameborder="0" allowfullscreen></iframe>

