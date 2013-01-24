---
layout: post
title: "Radon activity"
description: "Estimating the percentage of houses with radon above 4 pCi/L"
categories: [activity]
tags: [parameter estimation, binomial model, radon]
---
{% include JB/setup %}

(Much of the text below is from <http://www.epa.gov/radon/pubs/citguide.html>)

Radon is a cancer-causing, radioactive gas. You can't see radon. And you can't smell it or taste it. But it may be a problem in your home. Radon is estimated to cause around 21,000 deaths in the United States (U.S.) each year. That's because when you breathe air containing radon, you can get lung cancer. In fact, the Surgeon General has warned that radon is the second leading cause of lung cancer in the United States today. Only smoking causes more lung cancer deaths. If you smoke and your home has high radon levels, your risk of lung cancer is especially high.

Radon can be found all over the U.S. Radon comes from the natural (radioactive) breakdown of uranium in soil, rock, and water and gets into the air you breathe. Radon can be found all over the U.S. It can get into any type of building — homes, offices, and schools — and result in a high indoor radon level. But you and your family are most likely to get your greatest exposure at home, where you spend most of your time.

The average indoor radon level is estimated to be about 1.3 pCi/L, and about 0.4 pCi/L of radon is normally found in the outside air. The U.S. Environmental Protection Agency (EPA) has established a guideline for radon exposure in residential homes: fix your home if your long-term test result is 4 pCi/L or more. They are interested in how many homes are above, or equal to, this 4 pCi/L and are using Ramsey County, MN as a test location. They have collected data on a random sample of houses and the data can be found here: <http://www.public.iastate.edu/~pdixon/stat401/data/radon.txt>. 

## Objective

Provide an estimate for the proportion of homes in Ramsey County with radon levels above, or equal to, 4 pCi/L. Can you provide uncertainty around this estimate? If you have extra time, determine an alternative statistical approach. 


