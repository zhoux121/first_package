#!/usr/bin/env python
import numpy as np
import cv2
import time
#read the video file using OpenCV

def filter_color(rgb_frame, yellow_lower, yellow_upper):
    #convert RGB to HSV
    hsv_frame = cv2.cvtColor(rgb_frame, cv2.COLOR_BGR2HSV)
    cv2.imshow("HSV IMAGE", hsv_frame)
    #Threshold the HSV image to get only yellow colors
    mask = cv2.inRange(hsv_frame, yellow_lower,yellow_upper)
    return mask

def getContours(binary_mask):
    #get the contours
    contours, hierarchy = cv2.findContours(binary_mask, 
                                            cv2.RETR_TREE, 
                                            cv2.CHAIN_APPROX_SIMPLE)
    return contours

def draw_box_contours(binary_mask, rgb_frame, contours):
    black_image = np.zeros([binary_mask.shape[0], binary_mask.shape[1],3], 'uint8')
    for contour in contours:
        area = cv2.contourArea(contour)
        perimeter = cv2.arcLength(contour, True)
        ((x,y), radius) = cv2.minEnclosingCircle(contour)
        if (area > 3000):
            cv2.drawContours(rgb_frame, [contour],-1, (150,250,150),1)
            cv2.drawContours(black_image,[contour],-1, (150,250,150),1)
            cx, cy = get_contour_center(contour)
            cv2.circle(rgb_frame, (cx,cy),(int)(radius),(0,0,255),1)
            cv2.circle(black_image, (cx,cy), 5, (150,150,255), -1)
            cv2.circle(black_image, (cx,cy), 5,(150,150,255),-1)
    cv2.imshow("RGB IMAGE Contours", rgb_frame)
    cv2.imshow("BLACK Image Contours", black_image)

def get_contour_center(contour):
    M = cv2.moments(contour)
    cx=-1
    cy=-1
    if (M['m00']!=0):
        cx= int(M['m10']/M['m00'])
        cy= int(M['m01']/M['m00'])
    return cx, cy

def detect_ball_in_frame(frame):
    #define range of yellow in HSV
    yellow_lower = (30,100,50)
    yellow_upper = (60,255,255)
    rgb_frame = frame
    binary_mask = filter_color(rgb_frame, yellow_lower, yellow_upper)
    contours = getContours(binary_mask)
    draw_box_contours(binary_mask, rgb_frame, contours)

def main():
    #capture video
    video_capture = cv2.VideoCapture('/home/xiaoxin/catkin_ws/src/first_package/video/tennis-ball-video.mp4') 
    #video_capture = cv2.VideoCapture(0)
    while(True):
        ret, frame = video_capture.read()
        #For each frame read
        #apply the ball detection algorithm to detect the ball(s) in the image
        detect_ball_in_frame(frame)

        time.sleep(0.033)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break
    cv2.waitKey(0)
    cv2.destroyAllWindows()




#display the result of the ball detection

#continue processing the video until a key is pressed.

if __name__=='__main__':
    main()
    
    
cv2.waitKey(0)
cv2.destroyAllWindows()