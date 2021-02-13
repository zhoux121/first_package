#!/usr/bin/env python

import sys
import rospy
from first_package.srv import add_number
from first_package.srv import add_numberRequest
from first_package.srv import add_numberResponse

def add_two_ints_client(x, y):
    #wait for the server add_two_number alive
    rospy.wait_for_service('add_two_number')
    try:
        #create service proxy that include (server namem server type) sending the information to the server
        add_two_ints = rospy.ServiceProxy('add_two_number', add_number)
        #call into the server that can add two number
        resp1 = add_two_ints(x, y)
        #return the total number
        return resp1.total
    except rospy.ServiceException(e):
        print ("Service call failed: %s"%e)

def usage():
    return 

if __name__ == "__main__":
    if len(sys.argv) == 3:
        x = int(sys.argv[1])
        y = int(sys.argv[2])
    else:
        print ("%s [x y]"%sys.argv[0])
        sys.exit(1)
    print ("Requesting %s+%s"%(x, y))
    s = add_two_ints_client(x, y)
    print ("%s + %s = %s"%(x, y, s))