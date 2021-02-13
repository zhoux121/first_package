#include "ros/ros.h"
#include "first_package/add_number.h"
#include <cstdlib>

int main(int argc, char **argv)
{
    //init the client node
    ros::init(argc, argv, "add_two_number_client");
    if (argc != 3)
  {
    ROS_INFO("usage: add_two_number_client X Y");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<first_package::add_number>("add_two_number");
  first_package::add_number srv;
  srv.request.x = atoll(argv[1]);
  srv.request.y = atoll(argv[2]);
  if (client.call(srv))
  {
    ROS_INFO("Sum: %ld", (long int)srv.response.total);
  }
  else
  {
    ROS_ERROR("Failed to call service add_two_number");
    return 1;
  }

  return 0;
}