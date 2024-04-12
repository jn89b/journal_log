- https://viso.ai/deep-learning/image-segmentation-using-deep-learning/

# Image Segmentation 

## What is it?
- Classification problem of pixels with sem
- Divide image into multiple parts or regions belonging to the same class ie if you aerial photo, you can segment:
    - Sky
    - Road
    - car
    - Building
- Lots of different ways to segment the image one common way is to do it with CNNs/Deep Learning


## Semantic vs Instance Segmentation 
- https://viso.ai/deep-learning/semantic-segmentation-instance-segmentation/
- Semantic Segmentation 
    - Associate each pixel in image with a class label
    - Steps are as follows: 
        - Feature extraction: for DL CNNs extract relevant features 
        - Pixel classification: pixels are classified to respective categories based on features extracted
        - Context integration: considers context and spatial relationships between pixels to ensure consistent labels. 
- Instance segmentation:
    - For this each object is identified and segmented uniquely ie:
    - Given a basket of fruits:
        - Semantic would classifiy different types of fruits such as apple orange etc.
        - Instance would classify as apple1, orange1, apple2, etc.
    - This makes it more complex because now you detect the object and its location and segment them

## Pros and Cons 
https://viso.ai/deep-learning/semantic-segmentation-instance-segmentation/
- Precision
    - Semantic is very good in trying to understand the layout of the image
    - Instance provides very good precision in individual object identification
- Occulsion
    - Semantic is not able to do that 
    - Instance segmentation can
- Real time 
    - Semantic is capable of doing this real time  
    - Instance segmentation is very expensive computationally


## State of the Art
-https://viso.ai/deep-learning/segment-anything-model-sam-explained/ (SAM)
- https://arxiv.org/abs/2312.09579 (MOBILE SAMv2)
- https://www.youtube.com/watch?v=eTEfq_kWabQ


## Quick demonstrations can use for Airsim
https://github.com/kadirnar/segment-anything-video


## ROS 
https://github.com/robot-learning-freiburg/ros_sam

## Ideas
- Utilize semantic segmentation to get idea of scene
- Hone in with yolo pipeline (MobileSAM V2 has it)
- Estimate depth from target
- From that can back calc and estimate position 
- For now keep target stationary 
- When we do motion tracking
    - Estimate how its moving with Kalman Filters or optical flow mechnaism
    - Predict how its going to move 


## Monocular Depth estimation 
https://medium.com/toyotaresearch/monocular-depth-in-the-real-world-99c2b287df34


# Position estimation 
https://blog.roboflow.com/estimate-speed-computer-vision/