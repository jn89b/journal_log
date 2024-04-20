# Vision Transformers


## First what are Convolutional Neural Networks
Convolution Neural Networks typically utilized for classification and computer vision algorithms. Before, feature extraction of images were hand-crafted and selected by engineers, which is super hard to scale up.


## How does a CNN work?
Three components:
- Convolutional layer
     - Main components are input data, filter, and feature map
     - Process is as follows:
        - input matrix typically 3D because image is colored thus RGB
        - feature detection/kernel/filter sweeps through image computing the dot product through the images
        - Once done, thhis is known as the feature,activation, or convolved feature.
- Pooling layer
    - This is basically downsampling (think PCA) reduces the number of parameters from feature map.
    - Does this by sweeping across the entire input but has no weights two types of pooling mechanisms:
        - Max pooling - as pool filter moves across selects the max value in region to send to output array (used more often)
        - Average pooling - pool filter moves across the input, calculates the average value and sends to the output array.
- Fully-connected layer:
    - This is the final layer that performs the classification, typically utilize softmax activation function because it normalizes value between 0 to 1 

- This is a good video source https://towardsdatascience.com/a-comprehensive-guide-to-convolutional-neural-networks-the-eli5-way-3bd2b1164a53

## What are Vision Transformers
- https://viso.ai/deep-learning/vision-transformer-vit/
- https://machinelearningmastery.com/the-transformer-model/
- Based on transformer architecture but instead of using words for tokens uses the image input and turns them into visual tokens. 
- Is able to outperform CNNs by almost 4 times when it comes to coputational efficiency and accuracy 


## What can we get out of this 
- This is SOTA for computer vision algorithms, can we leverage transformers higher levels of accuracy for classificaiton of target?
- Issues would be how would it work on an embedded system? 
    - Looks like it can work from NVIDIA's link?
        - https://developer.nvidia.com/blog/bringing-generative-ai-to-life-with-jetson/