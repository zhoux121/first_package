import numpy as np
import cv2

#create a image file with all zero, size and encoding
image = np.zeros((512,512,3), np.uint8)

#to draw a line point1 point2 and color 5 is thickness
cv2.line(image,(0,0),(511,511),(255,255,255),5)
#to draw a ellipes, center, (major,minor)axis, start and end angle , also the color and thickness
cv2.ellipse(image,(256,256),(100,50),0,0,180,255,-1)

pts = np.array([[10,5],[20,30],[70,20],[50,10]],np.int32)
pts = pts.reshape((-1,1,2))
cv2.polylines(image,[pts],True,(0,225,255))

#create a text
font = cv2.FONT_HERSHEY_SIMPLEX
cv2.putText(image, "ROS, OpenCv", (10,500), font,2,(255,255,255),2,cv2.LINE_AA)

cv2.imshow("Image Panel", image)

cv2.waitKey(0)
cv2.destroyAllWindows()