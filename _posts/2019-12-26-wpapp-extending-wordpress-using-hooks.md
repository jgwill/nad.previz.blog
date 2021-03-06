---
ID: 2157
post_title: 'WPApp - extending WordPress using hooks'
author: guillaume
post_excerpt: "Researching a deep understanding of hooks and why that is practical when using a complex framework to create your own framework and apps."
layout: post
permalink: >
  http://guillaumeisabelle.com/nad-previz/2019/12/26/wpapp-extending-wordpress-using-hooks/
published: true
post_date: 2019-12-26 16:26:43
---
<!-- wp:paragraph -->

Exploration :Extending wordpress using hooks

<!-- /wp:paragraph -->

<!-- wp:heading {"level":3} -->

### Where to put the extension?

### What are the hooks to tap on?

<!-- /wp:heading -->

<!-- wp:list -->

*   In post section
*   In comment section

<!-- /wp:list -->

<!-- wp:separator -->

<hr class="wp-block-separator" />

<!-- /wp:separator -->

<!-- wp:heading {"level":3} -->

### Hooks in post section

<!-- /wp:heading -->

<!-- wp:list -->

* generate_after_entry_header 
* generate_before_content
* **generate_after_entry_content** or generate_after_content

<!-- /wp:list -->

<!-- wp:separator -->

<hr class="wp-block-separator" />

<!-- /wp:separator -->

<!-- wp:heading {"level":3} -->

### Hooks in comments section

<!-- /wp:heading -->

<!-- wp:list -->

*   
*   generate_before_comments
*   ...

<!-- /wp:list -->

<!-- wp:separator -->

<hr class="wp-block-separator" />

<!-- /wp:separator -->

<!-- wp:heading -->

## What is the end result of this experimentation ? MetaSynt is using the hook : generate_after_entry_content

<!-- /wp:heading -->

<!-- wp:separator -->

<hr class="wp-block-separator" />

<!-- /wp:separator -->

<!-- wp:heading -->

## Referenced Article

<!-- /wp:heading -->

<!-- wp:paragraph -->

[zotpress tags="WPApp.ext" abstract=yes cite=yes download=yes]

<!-- /wp:paragraph -->

<!-- wp:separator -->

<hr class="wp-block-separator" />

<!-- /wp:separator -->

<!-- wp:heading -->

## Referenced WPApp

<!-- /wp:heading -->

<!-- wp:paragraph -->

[zotpress tags="WPApp.hooks" abstract=yes cite=yes download=yes]

<!-- /wp:paragraph -->