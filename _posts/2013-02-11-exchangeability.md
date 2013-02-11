---
layout: post
title: "Exchangeability"
description: "A video on exchangeability and its application to hierarchical models"
categories: [video]
tags: [Bayesian statistics, hierarchical models, exchangeability]
---
{% include JB/setup %}

<iframe width="640" height="480" src="http://www.youtube.com/embed/ZF9NxOA3Qeo" frameborder="0" allowfullscreen></iframe>

This video introduces the concept of exchangeability of random sequences and how it justifies the use of hierarchical models and Bayesian inference in these models. A sequence of random variables is infinitely [exchangeable](http://en.wikipedia.org/wiki/Exchangeable_random_variables) if the joint probability of the first n random variables is equal for any permutation of indices of those random variables and if this is true for any n. The video demonstrates that exchangeability is a weaker concept than independent and identically distributed.

A theorem related to exchangeability is [de Finetti's theorem](http://en.wikipedia.org/wiki/De_Finetti%27s_theorem) (the original theorem only dealt with binary random variables, but it has since been expanded). The bottom line of de Finetti's theorem is that for any infinitely exchangeable sequence, we can model the first n random variables as being independent conditional on a parameter and that this parameter has a distribution. This seems to justify statistics in general and Bayesian inference in particular, although the theorem is not prescriptive about what prior we should actually use. 

Finally, the video discusses the application to hierarchical models where I comment that, although we typically write models using conditional independence notation, the actuall assumptions underlying the model can be less restrictive. Namely, infinite exchangeability of data and parameters as well as functional forms for the prior. The area of nonparametric Bayesian inference attempts to alleviate the necessity of assuming function forms. 

