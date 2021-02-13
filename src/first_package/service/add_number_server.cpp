#include "ros/ros.h"
#include "first_package/add_number.h"

bool add(first_package::add_number::Request  &req,
         first_package::add_number::Response &res)
{
  res.total = (req.x * req.y);
  ROS_INFO("request: x=%ld, y=%ld", (long int)req.x, (long int)req.y);
  ROS_INFO("sending back response: [%ld]", (long int)res.total);
  return true;
}

int main(int argc, char **argv)
{
    //init the node name and nodehandle 
    ros::init(argc, argv, "add_two_number_server");
    ros::NodeHandle n;
    
    //defind the server <object> = advertise server name and add function
    //jump to add functiuon
    ros::ServiceServer service = n.advertiseService("add_two_number", add);
    ROS_INFO("Ready to add two ints.");
    ros::spin();
    
    return 0;
}
