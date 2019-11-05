---
ID: 1075
post_title: 'BASH Structural Tension Charting &#8211; publish__xmandelbrot__also__pomAnal.sh'
author: gicomadmin
post_excerpt: |
  In this script, I explore the possibility to create structural tension charting and even a moment of truth.  The definition of the current action verb and object and the next step and corrective action are arguments.
  correlated concept : channel switching
layout: post
permalink: >
  http://guillaumeisabelle.com/nad-previz/2019/11/05/publish__xmandelbrot__also__pomanal-sh/
published: true
post_date: 2019-11-05 14:28:05
---
<!-- wp:paragraph -->

In this script, I explore the possibility to create structural tension charting and even a moment of truth. The definition of the current action verb and object and the next step and corrective action are arguments.  
correlated concept : channel switching

<!-- /wp:paragraph -->

<!-- wp:image {"id":1081} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/11/image-5-1024x309.png" alt="After the execution, the resulting state is given and the hint for the next step is also given.
I am expecting this practice to form structural tension and enable fluidity in &quot;channel switching&quot;" class="wp-image-1081" /><figcaption>After the execution, the resulting state is given and the hint for the next step is also given.  
I am expecting this practice to form structural tension and enable fluidity in "channel switching"</figcaption></figure> <!-- /wp:image -->

<!-- wp:code {"language":"bash"} -->

<pre class="wp-block-code"><code>#!/bin/bash

# This file will be used to publish an analyzer
# @STCGoal Be a reference to analyze possible automation or simplification \
# Such as here is the Name of the related project related to
export xname="xMandelbrot" ;
#Namespace of the result
export resns="x__mandelbrot__191103__204__Animating_FractalNumber_TO_OBSERVE__90pc"
# @prompt Hint description of Next action suceeding what this does
export naction="SSH to WPApp and update VR assets and create a new post with the OBSERVER"
# Corrective action
export caction="might be offline, retry executing $_"

# current action state success/failure
# bellow are variable
export obj="VR Repo"
export verb="pushing"
# bellow are constant
export action="$verb $obj"
export sstate="$action COMPLETED"
export fstate="FAILED $action $ostate"

# @messages Telling user what is the state after completing this action and what is the next step
export msg_failed="$fstate ; $caction"
export msg_success="$sstate ; $naction "

git push &&\
	ginol "$msg_success " \
	|| ginol "$msg_failed"
</code></pre>

<!-- /wp:code -->

<!-- wp:image {"id":1076} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/11/image-4-1024x625.png" alt="" class="wp-image-1076" /></figure> <!-- /wp:image -->