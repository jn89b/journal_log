# Objectives 
- Identify that this is the right target 
- Track that this is indeed the target 


# How to do this
- Detection Problem
    - Detect the location using DL algorithms CNN,etc.

- Tracking problem

# Problems to consider
- Occulusion - object is hidden
- Small object detection and tracking, this is a huge problem
- Scale (Scale invariance), gonna be a problem too 
- Noise 
- Light 
- Uncertainty
- Depth 
- Multiple Object Tracking (MOT) or Single Object Tracking(SOT)


## Scope/Assumptions
- Assume not manuevering in tightly knit environments
- Base form of identification:
    - landmark
    - friendlies
    - car

## How it works
- Acryonyms:
    - SOT (Single Object Tracking)
    - MOT (Multi  Object Tracking)
- Detection, do I see it?
    - Used with typical NN architectures: Yolo, ResNet, AlexNet, etc.
- Tracking, predict where it will be based on the trajectories given 
- https://arxiv.org/abs/2105.15203


# Literature Review Notes 

## Small Object Detection and Tracking: A Comprehensive Review
- Track and Detection Methods grouped into two categories:
    - Filter-Based methods (Kalman Filters,etc)
    - Search-Based methods
- Track-by-detection methods are divided into three categories:
    - background detection-based 
    - classical computer vision 
    - deep-learning 

### Track and Detection Methods
#### Filter-Based Methods 
- Utilize Kalman or Particle filters as main method of tracking
- Pipeline is as follows:
    - Some DL network typically a CNN for identification
    - Track with the filter 

#### Search-Based Methods (Sucks)
- Discover the best tracks through extensive searching'
- This method does not do well with fast-moving small objects, as search grows (O)^n

### Track-by-Detection Methods
- Detector autonomously identifies the desired object or objects in each frame. 
- Subsequently, the tracking process is conducted to associate the detected objects across successive frames.
- Big pro is that is capable of handling frames containing a variable number of objects. 
- Super popular but relies heavily on accuracy of detector for success 

#### Background Detection
- Frame difference/remove background then identify the key features we care about 
- Basically remove the noise 

#### Classical Computer Vision
- Utilize algorithms and techniques with mathematical models and heuristics to detect and track 
- Utilize filters to  

#### Deep-Learning-Based Methods 
- Train the networks to to detect and track the target. 
- Can be very computational expensive 

