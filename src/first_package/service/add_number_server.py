#!/usr/bin/env python
from first_package.srv import add_number
from first_package.srv import add_numberRequest
from first_package.srv import add_numberResponse

import rospy

def handle_add_two_number(req):
    print("Returning [%s + %s = %s]"%(req.x, req.y, (req.x+req.y)))
    #return the sum of req.x, req.y to Response
    return add_numberResponse(req.x+req.y)

#create the server
def add_two_number_server():
    #define a node name
    rospy.init_node("add_two_number_server")
    #throw information to the service (request)
    #add_two_number service name, service type add_number, callbake function handle_add_two_number
    server = rospy.Service("add_two_number", add_number, handle_add_two_number)
    print("Ready to add two number")
    rospy.spin()

if __name__ == "__main__":
    add_two_number_server()
