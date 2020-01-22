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


##@STCAction Example RUN
docker run -it --rm tensorflow/tensorflow \
   python -c "import tensorflow as tf; print(tf.reduce_sum(tf.random.normal([1000, 1000])))"</code></pre>
    
    <!-- /wp:code -->
  </div>
</div>

<!-- /wp:group -->

<!-- wp:atomic-blocks/ab-accordion -->

<div class="wp-block-atomic-blocks-ab-accordion ab-block-accordion">
  <details><summary class="ab-accordion-title">Logging : Installation using Docker</summary><div class="ab-accordion-text">
    <!-- wp:image {"id":2466,"sizeSlug":"large"} --><figure class="wp-block-image size-large">
    
    <img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2020/01/image-1.png" alt="" class="wp-image-2466" /><figcaption>@STCGoal Pulled locally the container to run TensorFlow on Docker<br /> docker pull tensorflow/tensorflow</figcaption></figure> <!-- /wp:image -->
    
    <!-- wp:html -->
    
    <pre><font color="#8AE234"><b>jgi@hu</b></font>:<font color="#729FCF"><b>~/x/tensorflow/x__tensorflow__200122</b></font>$ docker run -it --rm tensorflow/tensorflow    python -c "import tensorflow as tf; print(tf.reduce_sum(tf.random.normal([1000, 1000])))"
2020-01-22 18:16:25.180167: W tensorflow/stream_executor/platform/default/dso_loader.cc:55] Could not load dynamic library ';libnvinfer.so.6';; dlerror: libnvinfer.so.6: cannot open shared object file: No such file or directory
2020-01-22 18:16:25.180255: W tensorflow/stream_executor/platform/default/dso_loader.cc:55] Could not load dynamic library ';libnvinfer_plugin.so.6';; dlerror: libnvinfer_plugin.so.6: cannot open shared object file: No such file or directory
2020-01-22 18:16:25.180274: W tensorflow/compiler/tf2tensorrt/utils/py_utils.cc:30] Cannot dlopen some TensorRT libraries. If you would like to use Nvidia GPU with TensorRT, please make sure the missing libraries mentioned above are installed properly.
2020-01-22 18:16:25.993970: W tensorflow/stream_executor/platform/default/dso_loader.cc:55] Could not load dynamic library ';libcuda.so.1';; dlerror: libcuda.so.1: cannot open shared object file: No such file or directory
2020-01-22 18:16:25.993995: E tensorflow/stream_executor/cuda/cuda_driver.cc:351] failed call to cuInit: UNKNOWN ERROR (303)
2020-01-22 18:16:25.994015: I tensorflow/stream_executor/cuda/cuda_diagnostics.cc:156] kernel driver does not appear to be running on this host (611525e7d8b4): /proc/driver/nvidia/version does not exist
2020-01-22 18:16:25.994379: I tensorflow/core/platform/cpu_feature_guard.cc:142] Your CPU supports instructions that this TensorFlow binary was not compiled to use: AVX2 FMA
2020-01-22 18:16:26.021133: I tensorflow/core/platform/profile_utils/cpu_utils.cc:94] CPU Frequency: 2304000000 Hz
2020-01-22 18:16:26.021516: I tensorflow/compiler/xla/service/service.cc:168] XLA service 0x55d2c853eaf0 initialized for platform Host (this does not guarantee that XLA will be used). Devices:
2020-01-22 18:16:26.021552: I tensorflow/compiler/xla/service/service.cc:176]   StreamExecutor device (0): Host, Default Version
tf.Tensor(2047.2864, shape=(), dtype=float32)
<font color="#8AE234"><b>jgi@hu</b></font>:<font color="#729FCF"><b>~/x/tensorflow/x__tensorflow__200122</b></font>$ 
</pre>
    
    <!-- /wp:html -->
  </div></details>
</div>

<!-- /wp:atomic-blocks/ab-accordion -->

<!-- wp:paragraph -->



<!-- /wp:paragraph -->