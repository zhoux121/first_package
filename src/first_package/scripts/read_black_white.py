#import numpy: the data structure that will handle an image
import numpy as np

#import openCV
import cv2
image_name = "tree"
img = cv2.imread("/home/xiaoxin/catkin_ws/src/first_package/images/"+image_name+".jpg")
print(img)
print(img.size)
print(img.shape)
#can use img.shape[0] and soon
print(len(img))
#check the data type
print(img.dtype)