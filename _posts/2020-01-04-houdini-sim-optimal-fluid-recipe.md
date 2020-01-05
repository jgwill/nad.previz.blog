---
ID: 2271
post_title: 'Houdini sim &#8211; Optimal fluid recipe'
author: gicomadmin
post_excerpt: ""
layout: post
permalink: >
  http://guillaumeisabelle.com/nad-previz/2020/01/04/houdini-sim-optimal-fluid-recipe/
published: true
post_date: 2020-01-04 18:26:26
---
<!-- wp:paragraph -->

The first topic is the Voxel size compared to the Particle separation, if there is anything there to setup for optimal result

<!-- /wp:paragraph -->

<!-- wp:heading -->

## See: [Resolution][1]

<!-- /wp:heading -->

<!-- wp:more -->

<!--more-->

<!-- /wp:more -->

<!-- wp:atomic-blocks/ab-accordion {"accordionFontSize":21,"accordionOpen":true} -->

<div class="wp-block-atomic-blocks-ab-accordion ab-block-accordion ab-font-size-21">
  <details open><summary class="ab-accordion-title">Voxel Size</summary><div class="ab-accordion-text">
    <!-- wp:core-embed/imgur {"url":"https://i.imgur.com/yPDSRms.png","type":"rich","providerNameSlug":"imgur","className":""} --><figure class="wp-block-embed-imgur wp-block-embed is-type-rich is-provider-imgur">
    
    <div class="wp-block-embed__wrapper">
      https://i.imgur.com/yPDSRms.png
    </div><figcaption>Not much difference</figcaption></figure> 
    
    <!-- /wp:core-embed/imgur -->
    
    <!-- wp:image {"id":2273,"sizeSlug":"full"} --><figure class="wp-block-image size-full">
    
    <img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2020/01/voxel_0_8.0140.jpg" alt="" class="wp-image-2273" /><figcaption> Voxel 0.8<br />Particle separation 0.2 </figcaption></figure> <!-- /wp:image -->
    
    <!-- wp:image {"id":2272,"sizeSlug":"full"} --><figure class="wp-block-image size-full">
    
    <img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2020/01/0140.jpg" alt="" class="wp-image-2272" /><figcaption>Voxel 0.4<br />Particle separation 0.2</figcaption></figure> <!-- /wp:image -->
  </div></details>
</div>

<!-- /wp:atomic-blocks/ab-accordion -->

<!-- wp:heading -->

## Given that it does not seems to be voxel alone, I found new information to test: 

<!-- /wp:heading -->

<!-- wp:group -->

<div class="wp-block-group" id="resolution">
  <div class="wp-block-group__inner-container">
    <!-- wp:heading -->
    
    <h2>
      Resolution...
    </h2>
    
    <!-- /wp:heading -->
    
    <!-- wp:paragraph -->
    
    <p>
      Atom from : <a href="https://forums.odforce.net/topic/28796-high-quality-fluid-recipe/">https://forums.odforce.net/topic/28796-high-quality-fluid-recipe/</a> is giving the following params for water...
    </p>
    
    <!-- /wp:paragraph -->
    
    <!-- wp:paragraph -->
    
    <p>
      <em>Voxel Scale = 0.92</em>
    </p>
    
    <!-- /wp:paragraph -->
    
    <!-- wp:paragraph -->
    
    <p>
      <em>Influence Scale = 0.92</em>
    </p>
    
    <!-- /wp:paragraph -->
    
    <!-- wp:paragraph -->
    
    <p>
      <em>Droplet Scale = 0.72</em>
    </p>
    
    <!-- /wp:paragraph -->
    
    <!-- wp:paragraph {"backgroundColor":"vivid-cyan-blue"} -->
    
    <p class="has-background has-vivid-cyan-blue-background-color">
      <strong>No doubt better :)</strong>
    </p>
    
    <!-- /wp:paragraph -->
    
    <!-- wp:core-embed/imgur {"url":"https://i.imgur.com/94S8S6y.png","type":"rich","providerNameSlug":"imgur","className":""} --><figure class="wp-block-embed-imgur wp-block-embed is-type-rich is-provider-imgur">
    
    <div class="wp-block-embed__wrapper">
      https://i.imgur.com/94S8S6y.png
    </div><figcaption>
    
    <strong>Fluid Compress: </strong><br />Cull Bandwidth = 1<br /><br /><strong>Particle Fluid Surface: </strong><br />Voxel Scale = 0.9<br /> Influence Scale = 1<br /> Droplet Scale = 0.867</figcaption></figure> <!-- /wp:core-embed/imgur -->
    
    <!-- wp:paragraph -->
    
    <p>
    </p>
    
    <!-- /wp:paragraph -->
  </div>
</div>

<!-- /wp:group -->

 [1]: #resolution