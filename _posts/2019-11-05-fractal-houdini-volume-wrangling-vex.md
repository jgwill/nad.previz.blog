---
ID: 1095
post_title: Fractal Houdini Volume Wrangling VEX
author: gicomadmin
post_excerpt: ""
layout: post
permalink: >
  http://guillaumeisabelle.com/nad-previz/2019/11/05/fractal-houdini-volume-wrangling-vex/
published: true
post_date: 2019-11-05 15:05:39
---
<!-- wp:paragraph -->

This Shading computational VEX Script wrangle a volume and make it a MandelBrot Bulb

<!-- /wp:paragraph -->

<!-- wp:code -->

<pre class="wp-block-code"><code>//--- Functions ---

/*
r = sqrt(x*x + y*y + z*z )
theta = atan2(sqrt(x*x + y*y) , z)
phi = atan2(y,x)

newx = r^n * sin(theta*n) * cos(phi*n)
newy = r^n * sin(theta*n) * sin(phi*n)
newz = r^n * cos(theta*n)
*/


function int Mandel(float x0, y0, z0; int imax){
    float x, y, z, xnew, ynew, znew, n=ch('n'), r, theta, phi;
    int i;
    
    x = x0;
    y = y0;
    z = z0;
    
    for(i=0; i &lt; imax; i++){
        //xnew = x*x - y*y + x0;
        //ynew = 2 * x * y + y0;
        
        r = sqrt(x*x + y*y + z*z);
        theta = atan2(sqrt(x*x + y*y) , z);
        phi = atan2(y,x);
        
        xnew = pow(r, n) * sin(theta*n) * cos(phi*n) + x0;
        ynew = pow(r, n) * sin(theta*n) * sin(phi*n) + y0;
        znew = pow(r, n) * cos(theta*n) + z0;
        
        if(xnew*xnew + ynew*ynew + znew*znew > 8){
            return(i);
        }
        
        x = xnew;
        y = ynew;
        z = znew;
    }
    return(imax);
}


//--- Main ---

int maxiter = ch("MaxIteration");

if(Mandel(@P.x, @P.y, @P.z, maxiter) &lt; maxiter){
    @density = 0.0;
}
else {
    @density = 1.0;
}</code></pre>

<!-- /wp:code -->

<!-- wp:image {"id":1097} --><figure class="wp-block-image">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2019/11/image-6-1024x993.png" alt="" class="wp-image-1097" /><figcaption>Houdini Geo network</figcaption></figure> <!-- /wp:image -->

<!-- wp:heading -->

## Reference to creating the Bulb VEX

<!-- /wp:heading -->

<!-- wp:shortcode --> [zotpress items="{180474:ZDX2Z9DW}" style="apa"] 

<!-- /wp:shortcode -->