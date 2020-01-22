---
ID: 2459
post_title: IA-TensorFlow x__tensorflow__200122
author: guillaume
post_excerpt: ""
layout: post
permalink: >
  http://guillaumeisabelle.com/nad-previz/2020/01/22/ia-tensorflow-x__tensorflow__200122/
published: true
post_date: 2020-01-22 12:55:19
---
<!-- wp:paragraph -->

I want to install and try tensorFlow - Run a ML example to generate questions and knowledge about it.

<!-- /wp:paragraph -->

<!-- wp:more -->

<!--more-->

<!-- /wp:more -->

<!-- wp:group -->

<div class="wp-block-group">
  <div class="wp-block-group__inner-container">
    <!-- wp:heading -->
    
    <h2>
      TensorFlow on Docker
    </h2>
    
    <!-- /wp:heading -->
    
    <!-- wp:paragraph -->
    
    <p>
      <a href="https://www.tensorflow.org/install/docker">https://www.tensorflow.org/install/docker</a>
    </p>
    
    <!-- /wp:paragraph -->
    
    <!-- wp:code {"language":"bash","showLines":true} -->
    
    <pre class="wp-block-code"><code>#@STCGoal Pulled locally the container to run TensorFlow on Docker
docker pull tensorflow/tensorflow   

docker pull tensorflow/tensorflow:latest-gpu-jupyter  # latest release w/ GPU support and Jupyter

#@URIR https://www.tensorflow.org/install/docker#start_a_tensorflow_docker_container


## Example RUN
docker run -it --rm tensorflow/tensorflow \
   python -c "import tensorflow as tf; print(tf.reduce_sum(tf.random.normal([1000, 1000])))"</code></pre>
    
    <!-- /wp:code -->
  </div>
</div>

<!-- /wp:group -->