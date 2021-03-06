---
ID: 1196
post_title: >
  x__raining__191109__03__Rigging_take2.hiplc
author: gicomadmin
post_excerpt: >
  This post exposes some of the part of
  this experimentation creating particle
  network in houdini
layout: post
permalink: >
  http://guillaumeisabelle.com/nad-previz/2019/11/10/x__raining__191109__03__rigging_take2-hiplc/
published: true
post_date: 2019-11-10 00:50:58
---
<!-- wp:paragraph -->

As I create, I am adding key parameter of my network to the parent node with default value. I am expecting this to help integrating the knowledge and generate an optimal re-usability for this type of effect. (Even though the first iteration might not be quite flexible and reusable, the UI classification and params gives an idea of what to connect)

<!-- /wp:paragraph -->

<!-- wp:image {"id":1243} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/11/image-27-1024x583.png" alt="" class="wp-image-1243" /><figcaption>Top geometry network</figcaption></figure> <!-- /wp:image -->

<!-- wp:image {"id":1216} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/11/image-22-1024x595.png" alt="" class="wp-image-1216" /><figcaption>My First POP Network - Rain Network</figcaption></figure> <!-- /wp:image -->

<!-- wp:image {"id":1245} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/11/image-28-1024x607.png" alt="Endingn experimentation documented POP Network" class="wp-image-1245" /><figcaption>Endingn experimentation documented POP Network</figcaption></figure> <!-- /wp:image -->

<!-- wp:image {"id":1197,"width":392,"height":449} --><figure class="wp-block-image is-resized">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/11/image-13.png" alt="" class="wp-image-1197" width="392" height="449" /><figcaption>v1 - All params are together  
</figcaption></figure> <!-- /wp:image -->

<!-- wp:image {"id":1199,"width":412,"height":229} --><figure class="wp-block-image is-resized">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/11/image-14.png" alt="" class="wp-image-1199" width="412" height="229" /><figcaption>v2 - Reorganized Rain interface into folders (tabs)  
</figcaption></figure> <!-- /wp:image -->

<!-- wp:image {"id":1200,"width":420,"height":226} --><figure class="wp-block-image is-resized">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/11/image-15.png" alt="" class="wp-image-1200" width="420" height="226" /><figcaption>v2 - Reorganized Rain interface into folders (tabs)</figcaption></figure> <!-- /wp:image -->

<!-- wp:paragraph -->



<!-- /wp:paragraph -->

<!-- wp:heading -->

## Now the rain replicates itself when hitting the colliding object

<!-- /wp:heading -->

<!-- wp:image {"id":1203} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/11/image-16.png" alt="" class="wp-image-1203" /><figcaption>Replicated particle when hitting the colliding object are red</figcaption></figure> <!-- /wp:image -->

<!-- wp:image {"id":1204,"width":426,"height":221} --><figure class="wp-block-image is-resized">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/11/image-17.png" alt="" class="wp-image-1204" width="426" height="221" /><figcaption>Tab of the Stream Replicate  
</figcaption></figure> <!-- /wp:image -->

<!-- wp:image {"id":1206,"width":402,"height":393} --><figure class="wp-block-image is-resized">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/11/image-18.png" alt="" class="wp-image-1206" width="402" height="393" /><figcaption>Stream part of the Pop network replicating the particle</figcaption></figure> <!-- /wp:image -->

<!-- wp:image {"id":1212} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/11/image-20.png" alt="" class="wp-image-1212" /><figcaption>342M caching of simulation geometry</figcaption></figure> <!-- /wp:image -->

<!-- wp:image {"id":1214} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/11/image-21.png" alt="" class="wp-image-1214" /></figure> <!-- /wp:image -->

<!-- wp:heading {"level":3} -->

### Particle group is named: "main" and later, operator can be applied only on that group

<!-- /wp:heading -->

<!-- wp:image {"id":1218} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/11/image-23.png" alt="Particle group is named: &quot;main&quot; and later, operator can be applied only on that group" class="wp-image-1218" /><figcaption>Particle group is named: "main" and later, operator can be applied only on that group</figcaption></figure> <!-- /wp:image -->

<!-- wp:image {"id":1221} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/11/image-24.png" alt="result are geometry drop copied on each particle point of the main group" class="wp-image-1221" /><figcaption>result are geometry drop copied on each particle point of the main group</figcaption></figure> <!-- /wp:image -->

<!-- wp:image {"id":1224} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/11/image-25.png" alt="" class="wp-image-1224" /><figcaption>Drop copy</figcaption></figure> <!-- /wp:image -->

<!-- wp:heading -->

## Trying to present the result and key houdini network elements in a Gallery forming a presentation that I want to evaluate the performance in term of: Is that enhancing the presentation?, does that make the viewing of description and title of each image in an appreciable manner? ...

<!-- /wp:heading -->

<!-- wp:shortcode --> [foogallery id="1223"] 

<!-- /wp:shortcode -->

<!-- wp:more -->

<!--more-->

<!-- /wp:more -->

<!-- wp:core-embed/youtube {"url":"https://youtu.be/MEY1jDN_CjY","type":"video","providerNameSlug":"youtube","className":"wp-embed-aspect-16-9 wp-has-aspect-ratio"} --><figure class="wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio">

<div class="wp-block-embed__wrapper">
  https://youtu.be/MEY1jDN_CjY
</div></figure> 

<!-- /wp:core-embed/youtube -->

<!-- wp:heading -->

## References and Source material

<!-- /wp:heading -->

<!-- wp:shortcode --> [zotpress items="{180474:W3BD9MZH}" style="apa" files="true"] 

<!-- /wp:shortcode -->