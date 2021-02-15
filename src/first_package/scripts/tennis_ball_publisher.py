#!/usr/bin/env python

import rospy
import cv2

from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

bridge = CvBridge()

def tennis_ball_publisher():
    #Create a publisher
    pub = rospy.Publisher("tennis_ball_image", Image,queue_size=10)
    #inti node
    rospy.init_node("tennis_ball_pub", anonymous=True)
    #set loop rate
    rate = rospy.Rate(10)
    #keep publishing until Ctrl-C is pressed
    video_capture = cv2.VideoCapture(0)
    #video_capture = cv2.VideoCapture('/home/xiaoxin/catkin_ws/src/first_package/video/tennis-ball-video.mp4') 
    while not rospy.is_shutdown():
        ret, frame = video_capture.read()
        video_image = CvBridge().cv2_to_imgmsg(frame, 'bgr8')
        rospy.loginfo("PUBLISHED!")
        pub.publish(video_image)
        rate.sleep()
        if cv2.waitKey(10) & 0xFF == ord('q'):
            break
    cv2.waitKey(0)
    cv2.destroyAllWindows()

if __name__=='__main__':
    try:
        tennis_ball_publisher()
    except rospy.ROSInternalException():
        print("ERROR!")
cv2.waitKey(0)
cv2.destroyAllWindows()