import numpy as np
import cv2

# videocapture is capture the first video divices
camera_capture = cv2.VideoCapture(0)
# to capture the video file

while(True):
    ret, frame = camera_capture.read()

    cv2.imshow("Frame", frame)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break
    
camera_capture.release()
cv2.destroyAllWindows()