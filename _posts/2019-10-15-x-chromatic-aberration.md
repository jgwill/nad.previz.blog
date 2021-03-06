---
ID: 575
post_title: x Chromatic Aberration
author: gicomadmin
post_excerpt: ""
layout: post
permalink: >
  http://guillaumeisabelle.com/nad-previz/2019/10/15/x-chromatic-aberration/
published: true
post_date: 2019-10-15 13:23:13
---
<!-- wp:image {"id":576} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/10/image-19-1024x495.png" alt="" class="wp-image-576" /><figcaption>x\_\_chromatic_aberration\_\_191015\_\_IMPORTING\_\_chromatic__sample_from_isotropix191008  
C:\Users\jeang\Dropbox\NAD\previz\repo\x\x\_\_chromatic_aberration\_\_191003</figcaption></figure> <!-- /wp:image -->

<!-- wp:block-lab/stc-vision-block {"vision":"Picture the Essential Steps to  understand and reproduce the Effect","dtdue":"191015"} /-->

<!-- wp:image {"id":579} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/10/image-20.png" alt="" class="wp-image-579" /><figcaption>Lens simulation objects.  
Essentially : 3 Cameras & Renderers  
</figcaption></figure> <!-- /wp:image -->

<!-- wp:image {"id":582} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/10/image-22-1024x696.png" alt="" class="wp-image-582" /><figcaption>path_tracer__R  
</figcaption></figure> <!-- /wp:image -->

<!-- wp:paragraph -->

Each renderer selects one of RGB.

<!-- /wp:paragraph -->

<!-- wp:image {"id":581} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/10/image-21-1024x437.png" alt="" class="wp-image-581" /><figcaption>Layer Editor has 3 rendered image (from renderers)</figcaption></figure> <!-- /wp:image -->

<!-- wp:image {"id":584} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/10/image-23-1024x224.png" alt="" class="wp-image-584" /><figcaption>Blue layer has its own Camera and path tracing renderer</figcaption></figure> <!-- /wp:image -->

<!-- wp:paragraph -->

Camera field of view (FOV) varies foreach RGB

<!-- /wp:paragraph -->

<!-- wp:image {"id":589} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/10/image-26.png" alt="" class="wp-image-589" /><figcaption>Red has 25 FOV</figcaption></figure> <!-- /wp:image -->

<!-- wp:image {"id":587} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/10/image-25.png" alt="" class="wp-image-587" /><figcaption>Green has 25.1 FOV</figcaption></figure> <!-- /wp:image -->

<!-- wp:image {"id":586} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/10/image-24.png" alt="" class="wp-image-586" /><figcaption>Blue has 24.9 FOV</figcaption></figure> <!-- /wp:image -->

<!-- wp:table -->

<table class="wp-block-table">
  <tbody>
    <tr>
      <td>
        <strong>Channel</strong>
      </td>
      
      <td>
        <strong>Angle</strong> (FOV)
      </td>
      
      <td>
        <strong>Note</strong>
      </td>
    </tr>
    
    <tr>
      <td>
        RED
      </td>
      
      <td>
        25
      </td>
      
      <td>
      </td>
    </tr>
    
    <tr>
      <td>
        GREEN
      </td>
      
      <td>
        25.1
      </td>
      
      <td>
      </td>
    </tr>
    
    <tr>
      <td>
        BLUE
      </td>
      
      <td>
        24.9
      </td>
      
      <td>
      </td>
    </tr>
  </tbody>
</table>

<!-- /wp:table -->

<!-- wp:paragraph -->

Finally the Locator object is the focus point of each cameras

<!-- /wp:paragraph -->

<!-- wp:image {"id":595} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/10/image-28-1024x221.png" alt="" class="wp-image-595" /><figcaption>Focus object in the camera attributes editor</figcaption></figure> <!-- /wp:image -->

<!-- wp:paragraph -->

Monte Carlo article  
<https://www.dropbox.com/s/u068qzavbxwtqs9/monte-Carlo-lens-rendering__191003.pdf?dl=0>

<!-- /wp:paragraph -->

<!-- wp:paragraph -->

Aberration context project - Clarisse

<!-- /wp:paragraph -->

<!-- wp:paragraph -->

<https://www.dropbox.com/s/s8kahkh7iy5mv3m/lens_aberation__context.project?dl=0>

<!-- /wp:paragraph -->