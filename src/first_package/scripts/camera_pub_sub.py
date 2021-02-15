#!/usr/bin/env python

import rospy
import cv2
from std_msgs.msg import String
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import sys

from std_msgs.msg import String
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

bridge = CvBridge()

def camera_callback(ros_image):
    print("got an image")
    global bridge
    #convert ros image into an opencv-compatible image
    try:
        cv_image = bridge.imgmsg_to_cv2(ros_image, "bgr8")
    except CvBridgeError as e:
        print(e)
    #from now, we can work exactly with opencv
    (rows, cols, channels) = cv_image.shape
    if cols > 200 and rows > 200:
        cv2.rectangle(cv_image,(0,0),(200,200),(0,255,0),5)
        #cv2.circle(cv_image, (100,100),90, 255)
    font = cv2.FONT_HERSHEY_SIMPLEX
    cv2.putText(cv_image, "WebCam Activated with ROS&OpenCV", (10,350), font,1,(255,255,255),2,cv2.LINE_AA)
    cv2.imshow("Camera Windows", cv_image)
    cv2.waitKey(3)


def main(args):
    #init node call it camera_converter
    rospy.init_node('camera_converter', anonymous=True)
    #For turtlebot barger or waffle
    #image_topic="/canmera/rgb/image_raw/compressed"
    #for usb camera
    #image_topic="usb_cam/image_raw"
    #create the subscriber(topic_name, node_name, callbackFunction)
    image_sub = rospy.Subscriber("/usb_cam/image_raw", Image, camera_callback)

    #the end of the subscriber
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down")
    cv2.destroyAllWindows()

if __name__=="__main__":
    main(sys.argv)