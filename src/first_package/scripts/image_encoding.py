import numpy as np
import cv2

image_name = "tree"

print('read an image from file')
color_img = cv2.imread("/home/xiaoxin/catkin_ws/src/first_package/images/"+image_name+".jpg")

print("display the image in native color")
cv2.imshow("Original Image", color_img)
cv2.moveWindow("Original Image",0,0)
#print(color_img.shape)
height,width,channel = color_img.shape

print("Slipt the image into three channels")
bule,green,red = cv2.split(color_img)
print(bule,green,red)

cv2.imshow("Blue Channel", bule)
cv2.moveWindow("Blue Channel", 0,height)

cv2.imshow("Green Channel", green)
cv2.moveWindow("Green Channel", 0,height)

cv2.imshow("Red Channel", red)
cv2.moveWindow("Red Channel", 0,height)

print("Split the image into Hue, Saturation,Value channels")
hsv = cv2.cvtColor(color_img, cv2.COLOR_RGB2HSV)
h,s,v = cv2.split(hsv)
hsv_image = np.concatenate((h,s,v),axis=1)
cv2.imshow("Hue, Saturation, Value Image", hsv_image)

print("converts an image to a grayscale")
gray_img = cv2.cvtColor(color_img, cv2.COLOR_BGR2GRAY)
cv2.imshow("Gray Image ", gray_img)
print(gray_img.shape)

cv2.waitKey(0)
cv2.destroyAllWindows()