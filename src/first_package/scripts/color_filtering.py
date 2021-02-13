#!/usr/bin/env python 
import numpy as np
import cv2
import imutils

image = cv2.imshow("/home/xiaoxin/catkin_ws/src/first_package/images/tennisball01.jpg")
cv2.imshow("Original", image)

#convert the image into the HSV color space
hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
cv2.imshow("hsv image", hsv)

#find the upper and lower bounds of the yellow color (tennis ball)
yellowLower=(30,80,10)
yellowUpper=(60,255,255)

#define a mask using the lower and upper bounds of the yellow color
#inRange() performs a thresholding operation and converts the images into balck and white
mask = cv2.inRange(hsv, yellowLower, yellowUpper)

cv2.imshow("mask", mask)
cv2.waitKey(0)
cv2.destroyAllWindows()