#!/usr/bin/env python

import rospy
import math
import time
from geometry_msgs.msg import Twist
from rospy.client import init_node, spin
from rospy.timer import sleep
from sensor_msgs.msg import LaserScan

class Move:
    def scan_callback1(self, scan_data):
        print("Robot Start to move")
        #init axis
        self.vel_msg.linear.x = 0.5
        self.vel_msg.linear.y = 0.0
        self.vel_msg.linear.z = 0.0
        self.vel_msg.angular.x = 0.0
        self.vel_msg.angular.y = 0.0
        self.vel_msg.angular.z = 0.0

        self.min_distance_left = min(scan_data.ranges[-5],scan_data.ranges[-4],
                    scan_data.ranges[-3],scan_data.ranges[-2],
                    scan_data.ranges[-1],scan_data.ranges[0])
        self.min_distance_right = min(scan_data.ranges[1],scan_data.ranges[2],
                    scan_data.ranges[3],scan_data.ranges[4],scan_data.ranges[5])
        if(scan_data.ranges[-5] < 0.6 or scan_data.ranges[-4] < 0.6 
                    or scan_data.ranges[-3] < 0.6 or scan_data.ranges[-2] < 0.6
                    or scan_data.ranges[-1]< 0.6 or scan_data.ranges[0]< 0.6):
            while self.min_distance_right < 3.0:
                print("Robot start to rotate left")
                self.vel_msg.linear.x = 0.0
                self.vel_msg.angular.z = -0.8
                self.pub.publish(self.vel_msg)
        if(scan_data.ranges[5] < 0.6 or scan_data.ranges[4] < 0.6 
                    or scan_data.ranges[3] < 0.6 or scan_data.ranges[2] < 0.6
                    or scan_data.ranges[1]< 0.6 or scan_data.ranges[0]< 0.6):
            while self.min_distance_left < 3.0:
                print("Robot start to rotate right")
                self.vel_msg.linear.x = 0.0
                self.vel_msg.angular.z = 0.8
                self.pub.publish(self.vel_msg)
        else:
            self.vel_msg.linear.x = 0.5
            self.pub.publish(self.vel_msg)
            self.rate.sleep()

    def __init__(self):
        self.sub = rospy.Subscriber("scan", LaserScan, self.scan_callback1)
        self.pub = rospy.Publisher('cmd_vel', Twist, queue_size=10)
        self.vel_msg = Twist()
        self.rate = rospy.Rate(10)
 
def main():
    rospy.init_node('scan_turt', anonymous=True)
    move = Move()
    time.sleep(1)
    rospy.spin()

if __name__=='__main__':
    main()