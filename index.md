---
layout: page
title: Welcome to Stat544
tagline: Bayesian Statistics
---
{% include JB/setup %}

<img src="http://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Bayes_icon.svg/200px-Bayes_icon.svg.png" align="right" />
Instructor: [Jarad Niemi](http://niemiconsulting.com). TA: [Yihui Xie](http://yihui.name). This website is designed to hosts video lectures and post course discussions (questions and answers); see the [Archive](archive.html) page for a complete list. This course meets

- on Tuesdays and Thursdays from 8am until 9:20
- in Gilman 2104

The textbook for the course is Bayesian Data Analysis by Gelman et al. 2nd edition covering chapters 1-7, 10-11, and 14-16.

## Latest Posts

<ul class="posts">
  {% for post in site.posts limit:5 %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

## Course Description

Specification of probability models; subjective, conjugate, and noninformative prior distributions; hierarchical models; analytical and computational techniques for obtaining posterior distributions; model checking, model selection, diagnostics; comparison of Bayesian and traditional methods.

## Course Objectives

- Understand the basics of a Bayesian analysis including prior, likelihood, and posterior.
- Perform a conjugate Bayesian analysis with Jeffrey's prior.
- Perform a computational Bayesian analysis using JAGS.

## Team-Based Learning

The course is being taught using a Team-Based Learning approach which involves extensive in-class team work throughout the semester. If you are interested in learning more about this approach please see <http://www.teambasedlearning.org> especially the "Getting started" link.

## Prerequisite

The prerequisite for the course is previous or concurrent enrollment in STAT 543, Theory of Probability and Statistics II. In particular the necessary background is described in Section 1.8 of the textbook and includes manipulation of joint densities, the definition of simple moments, the transformation of variables, and methods of simulation.

## Q&A

Use the Blackboard Learn discussion board if you do not want to share your questions/discussions with the public. Otherwise please feel free to ask questions here in comments under relevant web pages. If you manage to cut your question into 140 characters, you can even try [@NiemiSTAT](http://twitter.com/NiemiSTAT) [@xieyihui](http://twitter.com/xieyihui).
