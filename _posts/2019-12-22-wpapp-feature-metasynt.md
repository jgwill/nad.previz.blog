---
ID: 2002
post_title: WPApp.Feature.MetaSynt
author: gicomadmin
post_excerpt: >
  MetaSynt is a feature of WPApp that
  enables the creation of Synthesis data
  on top of your references.
layout: post
permalink: >
  http://guillaumeisabelle.com/nad-previz/2019/12/22/wpapp-feature-metasynt/
published: true
post_date: 2019-12-22 18:12:08
---
<!-- wp:paragraph -->

MetaSynt is a feature of WPApp that enables the creation of Synthesis data on top of your references.

<!-- /wp:paragraph -->

<!-- wp:paragraph -->

**Navigation list**

<!-- /wp:paragraph -->

<!-- wp:list -->

*   [wpapp-meta2markdown][1]
*   wpapp-content-single-extending-manually-191222

<!-- /wp:list -->

<!-- wp:more -->

<!--more-->

<!-- /wp:more -->

<!-- wp:group -->

<div class="wp-block-group">
  <div class="wp-block-group__inner-container">
    <!-- wp:heading -->
    
    <h2>
      Installation
    </h2>
    
    <!-- /wp:heading -->
    
    <!-- wp:atomic-blocks/ab-accordion -->
    
    <div class="wp-block-atomic-blocks-ab-accordion ab-block-accordion">
      <details><summary class="ab-accordion-title">Install using Bash </summary><div class="ab-accordion-text">
        <!-- wp:code {"language":"bash"} -->
        
        <pre class="wp-block-code"><code>#!/bin/bash

#Change dir
cd wp/content/themes/generatepress

# clone the PHP Markdown (yeah might be better place than there, I know)
git clone https://github.com/michelf/php-markdown.git

#Backup ori file
cp content-single.php content-single.php.ori
</code></pre>
        
        <!-- /wp:code -->
      </div></details>
    </div>
    
    <!-- /wp:atomic-blocks/ab-accordion -->
    
    <!-- wp:heading -->
    
    <h2>
      PHP Extension added to the theme
    </h2>
    
    <!-- /wp:heading -->
    
    <!-- wp:atomic-blocks/ab-accordion {"accordionOpen":true} -->
    
    <div class="wp-block-atomic-blocks-ab-accordion ab-block-accordion">
      <details open><summary class="ab-accordion-title">src/gi_wp_content__1910/themes/generatepress/content-single.php</summary><div class="ab-accordion-text">
        <!-- wp:code {"language":"php"} -->
        
        <pre class="wp-block-code"><code>//cat src/gi_wp_content__1910/themes/generatepress/content-single.php
//Header of the file

&lt;?php
/**
 * The template for displaying single posts.
 *
 * @package GeneratePress
 */

if ( ! defined( 'ABSPATH' ) ) {
        exit; // Exit if accessed directly.
}

//require 'php-markdown/Michelf/Markdown.inc.php';
require_once 'php-markdown/Michelf/MarkdownExtra.inc.php';

use Michelf\Markdown;

?>

//... HERE IS COMMON CODE


&lt;!-- Added by Guillaume 191222 to display custom field concepts, context etc
STARTS from : https://www.advancedcustomfields.com/  -->
&lt;hr>
&lt;a name="metasynt">  &lt;/a>


&lt;?php global $current_user;
      get_currentuserinfo();
/*
      echo 'Username: ' . $current_user->user_login . "\n";
      echo 'User email: ' . $current_user->user_email . "\n";
      echo 'User level: ' . $current_user->user_level . "\n";
      echo 'User first name: ' . $current_user->user_firstname . "\n";
      echo 'User last name: ' . $current_user->user_lastname . "\n";
      echo 'User display name: ' . $current_user->display_name . "\n";
      echo 'User ID: ' . $current_user->ID . "\n";
 */
//echo '&lt;br>&lt;hr>Trying to get the group ID MetaSynt and print out fields name so to run only once the print out routine&lt;br>&lt;hr>';

//-----------------------------------------------------------------------------------
//------------------------- Edit the Custom Group -----------------------------------
//@URIR http://guillaumeisabelle.com/r/wpapp/metasynt/prototype/1912/edit
//@URIR http://guillaumeisabelle.com/blogging/wp-admin/post.php?post=1077&action=edit
$metasyntid = '1077'; //A group is a post
//----------------------------------------- Goals --------------
//@STCGoal Get the Group fields and print them out if authorized
//@URIR https://wordpress.stackexchange.com/questions/95126/acf-get-fields-from-group



//@DEFINITION MetaSynt.Array - Also order them on the page
$metasyntfields = array("context","issues","hypothesis","questions","concepts","methodology","results","research_use");
$metasynt_field_html_tag = "h1";

function mes__field_as_markdown_if($field_name)
{
        if( get_field($field_name)) :

                //the whole section of Synt is printed if content
                echo '&lt;div class="ab-notice-text metasynt-content-box">';

                $my_text = get_field($field_name) ; //get text content of the field
                $fieldo = get_field_object($field_name);
                $my_html = Markdown::defaultTransform($my_text); //convert text content from Markdown to HTML

                        echo '&lt;!-- jgwill:metasynt -->
                                &lt;!-- jgwill:metasynt:content
                                        '.$my_text .'
                                /jgwill:metasynt:content
                        /jgwill:metasynt
                        -->';
                        $instructions = $fieldo['instructions'];
                        //Titel with tooltip TODO

                echo ""
                        .'&lt;div class="tooltip">&lt;h1>'
                        .ucfirst(str_replace("_"," ",$field_name))
                        .'&lt;/h1>'
                        .'&lt;span class="tooltiptext">'. $instructions.'&lt;/span>'
                        .'&lt;/div>'
                        . "";
                        echo $my_html;
                        //echo "&lt;hr>" . $fieldo['instructions'] . "&lt;/div>";

                echo '&lt;/div>';
                endif;

}
//------------------------------------------------------------------------------------
//----------------------------------------- Logged in ?? -----------------------------------------
$style_bg_col = "b20486";
$metasynt_title = "Meta Synthesis Content";
// All that just if logged in
      if ($current_user->ID != 0 ) {
              if ($debug) echo '&lt;h6>----------:) YOU ARE AUTHORIZED TO ACCESS META-SYSTEMIC DATA -----------&lt;/h6>';
echo '&lt;div
    class="wp-block-atomic-blocks-ab-notice ab-font-size-18 ab-block-notice metasynt-block" >
    &lt;div class="ab-notice-title metasynt-title">
        &lt;p>'.$metasynt_title .'&lt;/p>
    &lt;/div>
';
              foreach ($metasyntfields as $f )
              {
                      mes__field_as_markdown_if($f);

              }

echo '&lt;/div>';
//----------------------- End model to PRINT OUT CONCEPT Field -----------------------------------------
//-------------------------------------------------------------------------------------------------------
      }
      else
      {
              //HERE STUFF TO NOT LOGGED USER
              //
              echo '&lt;hr>&lt;h6>---- :( SORRY META-SYSTEMIC DATA IS NOT PUBLIC ----&lt;/h6>&lt;hr>';
      }
?>

&lt;!-- Added by Guillaume 191222 to display custom field concepts, context etc
END -->
&lt;hr>

</code></pre>
        
        <!-- /wp:code -->
      </div></details>
    </div>
    
    <!-- /wp:atomic-blocks/ab-accordion -->
    
    <!-- wp:heading -->
    
    <h2>
      Style added to the Customize Additional CSS
    </h2>
    
    <!-- /wp:heading -->
    
    <!-- wp:atomic-blocks/ab-accordion {"accordionOpen":true} -->
    
    <div class="wp-block-atomic-blocks-ab-accordion ab-block-accordion">
      <details open><summary class="ab-accordion-title">CSS Stylesheet code</summary><div class="ab-accordion-text">
        <!-- wp:code {"language":"css"} -->
        
        <pre class="wp-block-code"><code>.mes_field_border {
	border-color:#b20486;
}
.metasynt-block {
	background-color:#b20486;
	color:#32373c;
}
.metasynt-title {
	color:#fff;
}
.metasynt-content-box
{
	border-color:#b20486;
}

/* Tooltip container */
.tooltip {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black; /* If you want dots under the hoverable text */
}

/* Tooltip text */
.tooltip .tooltiptext {
  visibility: hidden;
  width: 210px;
  background-color: #555;
  color: #fff;
  text-align: center;
  padding: 5px 0;
  border-radius: 6px;

  /* Position the tooltip text */
  position: absolute;
  z-index: 1;
  bottom: 125%;
  left: 50%;
  margin-left: -60px;

  /* Fade in tooltip */
  opacity: 0;
  transition: opacity 0.3s;
}

/* Tooltip arrow */
.tooltip .tooltiptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}

/* Show the tooltip text when you mouse over the tooltip container */
.tooltip:hover .tooltiptext {
  visibility: visible;
  opacity: 1;
}</code></pre>
        
        <!-- /wp:code -->
      </div></details>
    </div>
    
    <!-- /wp:atomic-blocks/ab-accordion -->
  </div>
</div>

<!-- /wp:group -->

<!-- wp:heading -->

## 

<!-- /wp:heading -->

<!-- wp:separator -->

<hr class="wp-block-separator" />

<!-- /wp:separator -->

<!-- wp:heading -->

## FURTHER THINGS TO TRY

<!-- /wp:heading -->

<!-- wp:list -->

*   Table are not converted

<!-- /wp:list -->

<!-- wp:group -->

<div class="wp-block-group" id="wpapp-meta2markdown">
  <div class="wp-block-group__inner-container">
    <!-- wp:heading {"level":3} -->
    
    <h3>
      Wordpress Plugin to realize that ?
    </h3>
    
    <!-- /wp:heading -->
    
    <!-- wp:core-embed/imgur {"url":"https://i.imgur.com/MH2qDAK.png","type":"rich","providerNameSlug":"imgur","className":""} --><figure class="wp-block-embed-imgur wp-block-embed is-type-rich is-provider-imgur">
    
    <div class="wp-block-embed__wrapper">
      https://i.imgur.com/MH2qDAK.png
    </div><figcaption>Hypothesis: 
    
    <strong>Does this could provide conversion of Markdown in Custom field into HTML when presenting ?</strong></figcaption></figure> <!-- /wp:core-embed/imgur -->
  </div>
</div>

<!-- /wp:group -->

 [1]: #wpapp-meta2markdown