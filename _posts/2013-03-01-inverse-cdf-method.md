---
layout: post
title: "Inverse CDF method"
description: "for generating random numbers"
categories: [video]
tags: [simulation, Monte Carlo integration]
---
{% include JB/setup %}

This video introduces the inverse cumulative distribution function method for generating random realizations from any distribution so long as you can
1. generate random uniforms and
2. evaluate the inverse cumulative distribution function.

The simple idea is that if you can simulate U~Unif(0,1), then F<sup>-</sup>(U) is distributed as F. For example, -log(U) has an exponential 1 distribution. 

<iframe width="640" height="480" src="http://www.youtube.com/embed/TR0biDues7k" frameborder="0" allowfullscreen></iframe>

