from rosgraph import roslogging
import rospy
from first_package.msg import IoTSensor1
import random

pub = rospy.Publisher("iot_sensor_topic", IoTSensor1, queue_size=10)

rospy.init_node("iot_sensor_publisher_node", anonymous=True)

rate = rospy.Rate(1)

i=0
while not rospy.is_shutdown():
    iot_sensor = IoTSensor1()
    iot_sensor.id = 1
    iot_sensor.name="iot_parking_01"
    iot_sensor.temperature = 24.33+(random.random()*2)
    iot_sensor.humidity = 33.41+(random.random*2)
    rospy.loginfo("I Publish:")
    rospy.loginfo(iot_sensor)
    pub.publish(iot_sensor)
    rate.sleep()
    i=i+1