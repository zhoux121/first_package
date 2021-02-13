import numpy as np
import cv2

video_name = "ros"
video_catpure = cv2.VideoCapture("/home/xiaoxin/catkin_ws/src/first_package/video/"+ video_name + ".mp4")

while(True):
    ret, frame = video_catpure.read()
    frame = cv2.cvtColor(frame, cv2.COLOR_RGB2GRAY)

    #also we can set up the size of the window
    frame = cv2.resize(frame, (0,0), fx=0.5,fy=0.5)

    cv2.imshow("Frame", frame)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break
video_catpure.release()
cv2.destroyAllWindows()