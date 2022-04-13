---
ID: 2496
post_title: 'xIA &#8211; Teachable Machine Pose Model'
author: gicomadmin
post_excerpt: >
  I had experimented a Pose recognition as
  a mecanism to make my CyberSculpture
  interact with its audience. Not quite
  perfect but I was impress by the speed I
  had those results
layout: post
permalink: >
  http://guillaumeisabelle.com/nad-previz/2020/01/25/xia-teachable-machine-pose-model/
published: true
post_date: 2020-01-25 08:03:29
---
<!-- wp:paragraph {"fontSize":"medium"} -->

<p class="has-medium-font-size">
  I had experimented a Pose recognition as a mecanism to make my CyberSculpture interact with its audience. Not quite perfect but I was impress by the speed I had those results
</p>

<!-- /wp:paragraph -->

<!-- wp:paragraph -->

# Ref https://teachablemachine.withgoogle.com/train/pose 

<!-- /wp:paragraph -->

<!-- wp:more -->

<!--more-->

<!-- /wp:more -->

<!-- wp:core-embed/youtube {"url":"https://youtu.be/7GafYzim-RA","type":"video","providerNameSlug":"youtube","className":"wp-embed-aspect-4-3 wp-has-aspect-ratio"} --><figure class="wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-4-3 wp-has-aspect-ratio">

<div class="wp-block-embed__wrapper">
  https://youtu.be/7GafYzim-RA
</div></figure> 

<!-- /wp:core-embed/youtube -->

<!-- wp:paragraph -->



<!-- /wp:paragraph -->

<!-- wp:paragraph -->

Download the file:

<!-- /wp:paragraph -->

<!-- wp:paragraph -->

[http://guillaumeisabelle.com/nad-previz/download/xia\_\_my-pose-model\_\_20200125/][1]  


<!-- /wp:paragraph -->

<!-- wp:atomic-blocks/ab-accordion -->

<div class="wp-block-atomic-blocks-ab-accordion ab-block-accordion">
  <details><summary class="ab-accordion-title">Local Code</summary><div class="ab-accordion-text">
    <!-- wp:code {"language":"javascript"} -->
    
    <pre class="wp-block-code"><code>&lt;div>Teachable Machine Pose Model&lt;/div>
&lt;button type="button" onclick="init()">Start&lt;/button>
&lt;div>&lt;canvas id="canvas">&lt;/canvas>&lt;/div>
&lt;div id="label-container">&lt;/div>
&lt;script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js">&lt;/script>
&lt;script src="https://cdn.jsdelivr.net/npm/@teachablemachine/pose@0.8/dist/teachablemachine-pose.min.js">&lt;/script>
&lt;script type="text/javascript">
    // More API functions here:
    // https://github.com/googlecreativelab/teachablemachine-community/tree/master/libraries/pose

    // the link to your model provided by Teachable Machine export panel
    const URL = "./my_model/";
    let model, webcam, ctx, labelContainer, maxPredictions;

    async function init() {
        const modelURL = URL + "model.json";
        const metadataURL = URL + "metadata.json";

        // load the model and metadata
        // Refer to tmImage.loadFromFiles() in the API to support files from a file picker
        // Note: the pose library adds a tmPose object to your window (window.tmPose)
        model = await tmPose.load(modelURL, metadataURL);
        maxPredictions = model.getTotalClasses();

        // Convenience function to setup a webcam
        const size = 200;
        const flip = true; // whether to flip the webcam
        webcam = new tmPose.Webcam(size, size, flip); // width, height, flip
        await webcam.setup(); // request access to the webcam
        await webcam.play();
        window.requestAnimationFrame(loop);

        // append/get elements to the DOM
        const canvas = document.getElementById("canvas");
        canvas.width = size; canvas.height = size;
        ctx = canvas.getContext("2d");
        labelContainer = document.getElementById("label-container");
        for (let i = 0; i &lt; maxPredictions; i++) { // and class labels
            labelContainer.appendChild(document.createElement("div"));
        }
    }

    async function loop(timestamp) {
        webcam.update(); // update the webcam frame
        await predict();
        window.requestAnimationFrame(loop);
    }

    async function predict() {
        // Prediction #1: run input through posenet
        // estimatePose can take in an image, video or canvas html element
        const { pose, posenetOutput } = await model.estimatePose(webcam.canvas);
        // Prediction 2: run input through teachable machine classification model
        const prediction = await model.predict(posenetOutput);

        for (let i = 0; i &lt; maxPredictions; i++) {
            const classPrediction =
                prediction[i].className + ": " + prediction[i].probability.toFixed(2);
            labelContainer.childNodes[i].innerHTML = classPrediction;
        }

        // finally draw the poses
        drawPose(pose);
    }

    function drawPose(pose) {
        if (webcam.canvas) {
            ctx.drawImage(webcam.canvas, 0, 0);
            // draw the keypoints and skeleton
            if (pose) {
                const minPartConfidence = 0.5;
                tmPose.drawKeypoints(pose.keypoints, minPartConfidence, ctx);
                tmPose.drawSkeleton(pose.keypoints, minPartConfidence, ctx);
            }
        }
    }
&lt;/script>
</code></pre>
    
    <!-- /wp:code -->
  </div></details>
</div>

<!-- /wp:atomic-blocks/ab-accordion -->

<!-- wp:paragraph {"fontSize":"large"} -->

<p class="has-large-font-size">
  Above local model, bellow uploaded model
</p>

<!-- /wp:paragraph -->

<!-- wp:atomic-blocks/ab-accordion -->

<div class="wp-block-atomic-blocks-ab-accordion ab-block-accordion">
  <details><summary class="ab-accordion-title">Net Code</summary><div class="ab-accordion-text">
  </div></details>
</div>

<!-- /wp:atomic-blocks/ab-accordion -->

<!-- wp:code -->

<pre class="wp-block-code"><code>&lt;div>Teachable Machine Pose Model&lt;/div>
&lt;button type="button" onclick="init()">Start&lt;/button>
&lt;div>&lt;canvas id="canvas">&lt;/canvas>&lt;/div>
&lt;div id="label-container">&lt;/div>
&lt;script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js">&lt;/script>
&lt;script src="https://cdn.jsdelivr.net/npm/@teachablemachine/pose@0.8/dist/teachablemachine-pose.min.js">&lt;/script>
&lt;script type="text/javascript">
    // More API functions here:
    // https://github.com/googlecreativelab/teachablemachine-community/tree/master/libraries/pose

    // the link to your model provided by Teachable Machine export panel
    const URL = "https://teachablemachine.withgoogle.com/models/xYO-rVze/";
    let model, webcam, ctx, labelContainer, maxPredictions;

    async function init() {
        const modelURL = URL + "model.json";
        const metadataURL = URL + "metadata.json";

        // load the model and metadata
        // Refer to tmImage.loadFromFiles() in the API to support files from a file picker
        // Note: the pose library adds a tmPose object to your window (window.tmPose)
        model = await tmPose.load(modelURL, metadataURL);
        maxPredictions = model.getTotalClasses();

        // Convenience function to setup a webcam
        const size = 200;
        const flip = true; // whether to flip the webcam
        webcam = new tmPose.Webcam(size, size, flip); // width, height, flip
        await webcam.setup(); // request access to the webcam
        await webcam.play();
        window.requestAnimationFrame(loop);

        // append/get elements to the DOM
        const canvas = document.getElementById("canvas");
        canvas.width = size; canvas.height = size;
        ctx = canvas.getContext("2d");
        labelContainer = document.getElementById("label-container");
        for (let i = 0; i &lt; maxPredictions; i++) { // and class labels
            labelContainer.appendChild(document.createElement("div"));
        }
    }

    async function loop(timestamp) {
        webcam.update(); // update the webcam frame
        await predict();
        window.requestAnimationFrame(loop);
    }

    async function predict() {
        // Prediction #1: run input through posenet
        // estimatePose can take in an image, video or canvas html element
        const { pose, posenetOutput } = await model.estimatePose(webcam.canvas);
        // Prediction 2: run input through teachable machine classification model
        const prediction = await model.predict(posenetOutput);

        for (let i = 0; i &lt; maxPredictions; i++) {
            const classPrediction =
                prediction[i].className + ": " + prediction[i].probability.toFixed(2);
            labelContainer.childNodes[i].innerHTML = classPrediction;
        }

        // finally draw the poses
        drawPose(pose);
    }

    function drawPose(pose) {
        if (webcam.canvas) {
            ctx.drawImage(webcam.canvas, 0, 0);
            // draw the keypoints and skeleton
            if (pose) {
                const minPartConfidence = 0.5;
                tmPose.drawKeypoints(pose.keypoints, minPartConfidence, ctx);
                tmPose.drawSkeleton(pose.keypoints, minPartConfidence, ctx);
            }
        }
    }
&lt;/script>
</code></pre>

<!-- /wp:code -->

 [1]: http://guillaumeisabelle.com/nad-previz/download/xia__my-pose-model__20200125/