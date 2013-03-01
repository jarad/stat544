---
layout: post
title: "Accept Reject"
description: ""
categories: [video]
tags: [simulation, Monte Carlo integration]
---
{% include JB/setup %}

This video introduces the accept-reject method for generation random numbers. Suppose you are interested in generating random numbers according to a (possibly unnormalized) probability density function f(x). Find a proposal density g(x) and an M such that f(x) <= M g(x) for all x. Then the accept-reject method is the following

1. Sample y~g(x) and u~unif(0,1).
2. Accept x=y if u<=f(y)/Mg(y), otherwise return to 1.

If f(x) is a normalized density, then 1/M is the acceptance probability of the method.


<iframe width="640" height="480" src="http://www.youtube.com/embed/KoNGH5PkXDQ" frameborder="0" allowfullscreen></iframe>

