---
ID: 2522
post_title: 'Neural Style Transfer &#8211; x__style_transfer__200203.py'
author: gicomadmin
post_excerpt: >
  Learning Style and transfering it to
  another image using AI
layout: post
permalink: >
  http://guillaumeisabelle.com/nad-previz/2020/02/05/neural-style-transfer-x__style_transfer__200203-py/
published: true
post_date: 2020-02-05 09:38:57
---
<!-- wp:paragraph -->

Neural Style Transfer (NST) which is part of my NadIA creative-research - Those are my pilot experimentation to support further "well structured experimentation" of my Master Degree in Art (M.A.).

<!-- /wp:paragraph -->

<!-- wp:image {"id":2523,"width":782,"height":474,"sizeSlug":"large"} --><figure class="wp-block-image size-large is-resized">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2020/02/image.png" alt="" class="wp-image-2523" width="782" height="474" /><figcaption>One Promising Result  
Experimentation no 2 (x\_\_style_transfer\_\_200203.py)</figcaption></figure> <!-- /wp:image -->

<!-- wp:image {"id":2525,"width":719,"height":404,"sizeSlug":"large"} --><figure class="wp-block-image size-large is-resized">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2020/02/x__style_transfer__200203_01-1024x576.jpg" alt="" class="wp-image-2525" width="719" height="404" /><figcaption>Quick Terrain and Sky Rendered Image used as   
Target for receiving the Style</figcaption></figure> <!-- /wp:image -->

<!-- wp:image {"id":2527,"width":387,"height":518,"sizeSlug":"large"} --><figure class="wp-block-image size-large is-resized">

<img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2020/02/Jessy_et_JGWill_Paysage_peinture_acrylique_2001-765x1024.jpg" alt="" class="wp-image-2527" width="387" height="518" /><figcaption>**Style Source being analyzed by the AI/NST **  
  
*Image by: Jessy V. / Guillaume D.Isabelle,   
@Copyright 2000*</figcaption></figure> <!-- /wp:image -->

<!-- wp:more -->

<!--more-->

<!-- /wp:more -->

<!-- wp:atomic-blocks/ab-accordion {"accordionOpen":true} -->

<div class="wp-block-atomic-blocks-ab-accordion ab-block-accordion">
  <details open><summary class="ab-accordion-title">Rejected Results</summary><div class="ab-accordion-text">
    <!-- wp:image {"id":2526,"sizeSlug":"large"} --><figure class="wp-block-image size-large">
    
    <img src="http://guillaumeisabelle.com/nad-previz/wp-content/uploads/sites/19/2020/02/image-1.png" alt="" class="wp-image-2526" /><figcaption>Higher rendering using an HDR Sky and the same NST source as experimentation no 2 (x__style_transfer__200203.py)</figcaption></figure> <!-- /wp:image -->
  </div></details>
</div>

<!-- /wp:atomic-blocks/ab-accordion -->

<!-- wp:group -->

<div class="wp-block-group">
  <div class="wp-block-group__inner-container">
    <!-- wp:heading -->
    
    <h2>
      TensorFlow Python Code
    </h2>
    
    <!-- /wp:heading -->
    
    <!-- wp:atomic-blocks/ab-accordion {"accordionOpen":true} -->
    
    <div class="wp-block-atomic-blocks-ab-accordion ab-block-accordion">
      <details open><summary class="ab-accordion-title"> <a href="https://github.com/jgwill/nad.previz/blob/master/ai/jupyter/x__style_transfer__200203.py">https://github.com/jgwill/nad.previz/blob/master/ai/jupyter/x__style_transfer__200203.py</a> </summary><div class="ab-accordion-text">
        <!-- wp:code {"language":"python","showLines":true} -->
        
        <pre class="wp-block-code"><code>#@title Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


from __future__ import absolute_import, division, print_function, unicode_literals


import tensorflow as tf


import IPython.display as display

import matplotlib.pyplot as plt
import matplotlib as mpl
mpl.rcParams['figure.figsize'] = (12,12)
mpl.rcParams['axes.grid'] = False

import numpy as np
import PIL.Image
import time
import functools




def tensor_to_image(tensor):
  tensor = tensor*255
  tensor = np.array(tensor, dtype=np.uint8)
  if np.ndim(tensor)>3:
    assert tensor.shape[0] == 1
    tensor = tensor[0]
  return PIL.Image.fromarray(tensor)


# SEe : x__style_transfer__200203__01__base_poly_scene_target_for_StyleTransfer.hiplc
# target_img_name = 'x__style_transfer__200203_01.jpg' #@STCGoal A Render as target to apply a style
# source colorization : source_img_style_name = 'laclong_HDR-89-91.jpg'
# Source from acrylics : source_img_style_name = 'Jessy_et_JGWill_Paysage_peinture_acrylique_2001.NRNI.ver.1.0.3.jpg'

source_img_style_name = 'Jessy_et_JGWill_Paysage_peinture_acrylique_2001.NRNI.ver.1.0.3.jpg'
target_img_name = 'x__style_transfer__200203_01.jpg'
#target_img_name = 'dube-tm_03503.jpg'
#source_img_style_name = 'jessyv-train.jpg' 
target_img_url_base = 'http://guillaumeisabelle.com/fichiers/img/' + target_img_name
source_img_style_url_base = 'http://guillaumeisabelle.com/fichiers/img/'+source_img_style_name


content_path = tf.keras.utils.get_file(target_img_name,target_img_url_base)

# https://commons.wikimedia.org/wiki/File:Vassily_Kandinsky,_1913_-_Composition_7.jpg
style_path = tf.keras.utils.get_file(source_img_style_name, source_img_style_url_base)






def load_img(path_to_img):
  max_dim = 512
  img = tf.io.read_file(path_to_img)
  img = tf.image.decode_image(img, channels=3)
  img = tf.image.convert_image_dtype(img, tf.float32)

  shape = tf.cast(tf.shape(img)[:-1], tf.float32)
  long_dim = max(shape)
  scale = max_dim / long_dim

  new_shape = tf.cast(shape * scale, tf.int32)

  img = tf.image.resize(img, new_shape)
  img = img[tf.newaxis, :]
  return img






def imshow(image, title=None):
  if len(image.shape) > 3:
    image = tf.squeeze(image, axis=0)

  plt.imshow(image)
  if title:
    plt.title(title)




content_image = load_img(content_path)
style_image = load_img(style_path)

plt.subplot(1, 2, 1)
imshow(content_image, 'Content Image')

plt.subplot(1, 2, 2)
imshow(style_image, 'Style Image')






import tensorflow_hub as hub
#hub_module_url = 'https://tfhub.dev/google/magenta/arbitrary-image-stylization-v1-256/2'
hub_module = hub.load('https://tfhub.dev/google/magenta/arbitrary-image-stylization-v1-256/1')
stylized_image = hub_module(tf.constant(content_image), tf.constant(style_image))[0]
tensor_to_image(stylized_image)






x = tf.keras.applications.vgg19.preprocess_input(content_image*255)
x = tf.image.resize(x, (224, 224))
vgg = tf.keras.applications.VGG19(include_top=True, weights='imagenet')
prediction_probabilities = vgg(x)
prediction_probabilities.shape






predicted_top_5 = tf.keras.applications.vgg19.decode_predictions(prediction_probabilities.numpy())[0]
[(class_name, prob) for (number, class_name, prob) in predicted_top_5]





vgg = tf.keras.applications.VGG19(include_top=False, weights='imagenet')

print()
for layer in vgg.layers:
  print(layer.name)






# Content layer where will pull our feature maps
content_layers = ['block5_conv2'] 

# Style layer of interest
style_layers = ['block1_conv1',
                'block2_conv1',
                'block3_conv1', 
                'block4_conv1', 
                'block5_conv1']

num_content_layers = len(content_layers)
num_style_layers = len(style_layers)







def vgg_layers(layer_names):
  """ Creates a vgg model that returns a list of intermediate output values."""
  # Load our model. Load pretrained VGG, trained on imagenet data
  vgg = tf.keras.applications.VGG19(include_top=False, weights='imagenet')
  vgg.trainable = False
  
  outputs = [vgg.get_layer(name).output for name in layer_names]

  model = tf.keras.Model([vgg.input], outputs)
  return model







#create the model
style_extractor = vgg_layers(style_layers)
style_outputs = style_extractor(style_image*255)

#Look at the statistics of each layer's output
for name, output in zip(style_layers, style_outputs):
  print(name)
  print("  shape: ", output.numpy().shape)
  print("  min: ", output.numpy().min())
  print("  max: ", output.numpy().max())
  print("  mean: ", output.numpy().mean())
  print()






#calc style
def gram_matrix(input_tensor):
  result = tf.linalg.einsum('bijc,bijd->bcd', input_tensor, input_tensor)
  input_shape = tf.shape(input_tensor)
  num_locations = tf.cast(input_shape[1]*input_shape[2], tf.float32)
  return result/(num_locations)







#extract style and content
class StyleContentModel(tf.keras.models.Model):
  def __init__(self, style_layers, content_layers):
    super(StyleContentModel, self).__init__()
    self.vgg =  vgg_layers(style_layers + content_layers)
    self.style_layers = style_layers
    self.content_layers = content_layers
    self.num_style_layers = len(style_layers)
    self.vgg.trainable = False

  def call(self, inputs):
    "Expects float input in [0,1]"
    inputs = inputs*255.0
    preprocessed_input = tf.keras.applications.vgg19.preprocess_input(inputs)
    outputs = self.vgg(preprocessed_input)
    style_outputs, content_outputs = (outputs[:self.num_style_layers], 
                                      outputs[self.num_style_layers:])

    style_outputs = [gram_matrix(style_output)
                     for style_output in style_outputs]

    content_dict = {content_name:value 
                    for content_name, value 
                    in zip(self.content_layers, content_outputs)}

    style_dict = {style_name:value
                  for style_name, value
                  in zip(self.style_layers, style_outputs)}
    
    return {'content':content_dict, 'style':style_dict}





extractor = StyleContentModel(style_layers, content_layers)

results = extractor(tf.constant(content_image))

style_results = results['style']

print('Styles:')
for name, output in sorted(results['style'].items()):
  print("  ", name)
  print("    shape: ", output.numpy().shape)
  print("    min: ", output.numpy().min())
  print("    max: ", output.numpy().max())
  print("    mean: ", output.numpy().mean())
  print()

print("Contents:")
for name, output in sorted(results['content'].items()):
  print("  ", name)
  print("    shape: ", output.numpy().shape)
  print("    min: ", output.numpy().min())
  print("    max: ", output.numpy().max())
  print("    mean: ", output.numpy().mean())





style_targets = extractor(style_image)['style']
content_targets = extractor(content_image)['content']




image = tf.Variable(content_image)



def clip_0_1(image):
  return tf.clip_by_value(image, clip_value_min=0.0, clip_value_max=1.0)



opt = tf.optimizers.Adam(learning_rate=0.02, beta_1=0.99, epsilon=1e-1)



style_weight=1e-2
content_weight=1e4




def style_content_loss(outputs):
    style_outputs = outputs['style']
    content_outputs = outputs['content']
    style_loss = tf.add_n([tf.reduce_mean((style_outputs[name]-style_targets[name])**2) 
                           for name in style_outputs.keys()])
    style_loss *= style_weight / num_style_layers

    content_loss = tf.add_n([tf.reduce_mean((content_outputs[name]-content_targets[name])**2) 
                             for name in content_outputs.keys()])
    content_loss *= content_weight / num_content_layers
    loss = style_loss + content_loss
    return loss





@tf.function()
def train_step(image):
  with tf.GradientTape() as tape:
    outputs = extractor(image)
    loss = style_content_loss(outputs)

  grad = tape.gradient(loss, image)
  opt.apply_gradients([(grad, image)])
  image.assign(clip_0_1(image))






train_step(image)
train_step(image)
train_step(image)
tensor_to_image(image)






import time
start = time.time()

epochs = 10
steps_per_epoch = 100

step = 0
for n in range(epochs):
  for m in range(steps_per_epoch):
    step += 1
    train_step(image)
    print(".", end='')
  display.clear_output(wait=True)
  display.display(tensor_to_image(image))
  print("Train step: {}".format(step))
  
end = time.time()
print("Total time: {:.1f}".format(end-start))





def high_pass_x_y(image):
  x_var = image[:,:,1:,:] - image[:,:,:-1,:]
  y_var = image[:,1:,:,:] - image[:,:-1,:,:]

  return x_var, y_var



x_deltas, y_deltas = high_pass_x_y(content_image)

plt.figure(figsize=(14,10))
plt.subplot(2,2,1)
imshow(clip_0_1(2*y_deltas+0.5), "Horizontal Deltas: Original")

plt.subplot(2,2,2)
imshow(clip_0_1(2*x_deltas+0.5), "Vertical Deltas: Original")

x_deltas, y_deltas = high_pass_x_y(image)

plt.subplot(2,2,3)
imshow(clip_0_1(2*y_deltas+0.5), "Horizontal Deltas: Styled")

plt.subplot(2,2,4)
imshow(clip_0_1(2*x_deltas+0.5), "Vertical Deltas: Styled")





plt.figure(figsize=(14,10))

sobel = tf.image.sobel_edges(content_image)
plt.subplot(1,2,1)
imshow(clip_0_1(sobel[...,0]/4+0.5), "Horizontal Sobel-edges")
plt.subplot(1,2,2)
imshow(clip_0_1(sobel[...,1]/4+0.5), "Vertical Sobel-edges")




def total_variation_loss(image):
  x_deltas, y_deltas = high_pass_x_y(image)
  return tf.reduce_sum(tf.abs(x_deltas)) + tf.reduce_sum(tf.abs(y_deltas))




total_variation_loss(image).numpy()


tf.image.total_variation(image).numpy()



total_variation_weight=30





@tf.function()
def train_step(image):
  with tf.GradientTape() as tape:
    outputs = extractor(image)
    loss = style_content_loss(outputs)
    loss += total_variation_weight*tf.image.total_variation(image)

  grad = tape.gradient(loss, image)
  opt.apply_gradients([(grad, image)])
  image.assign(clip_0_1(image))




image = tf.Variable(content_image)





import time
start = time.time()

epochs = 10
steps_per_epoch = 100

step = 0
for n in range(epochs):
  for m in range(steps_per_epoch):
    step += 1
    train_step(image)
    print(".", end='')
  display.clear_output(wait=True)
  display.display(tensor_to_image(image))
  print("Train step: {}".format(step))

end = time.time()
print("Total time: {:.1f}".format(end-start))





file_name = 'stylized-image.png'
tensor_to_image(image).save(file_name)

try:
  from google.colab import files
except ImportError:
   pass
else:
  files.download(file_name)




</code></pre>
        
        <!-- /wp:code -->
      </div></details>
    </div>
    
    <!-- /wp:atomic-blocks/ab-accordion -->
  </div>
</div>

<!-- /wp:group -->

<!-- wp:separator -->

<hr class="wp-block-separator" />

<!-- /wp:separator -->

<!-- wp:group -->

<div class="wp-block-group">
  <div class="wp-block-group__inner-container">
    <!-- wp:heading -->
    
    <h2>
      References
    </h2>
    
    <!-- /wp:heading -->
    
    <!-- wp:shortcode --> [zotpress tags="x__style_transfer.ref" abstract=yes notes=yes cite=yes download=yes] 
    
    <!-- /wp:shortcode -->
  </div>
</div>

<!-- /wp:group -->