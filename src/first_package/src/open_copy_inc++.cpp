#include <opencv2/highgui/highgui.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <stdio.h>
#include <string>
#include "opencv2/opencv.hpp"
#include <opencv2/core/core.hpp>


using namespace std;

int main(){
    cv::Mat image;
    //LOAD IMAGE
    image = imread("/home/xiaoxin/catkin_ws/src/first_package/images/flower.jpg", cv::IMREAD_COLOR);
    // check for invalid input
    if(!image.data){ 
        cout << "Could not open or find the image." << endl;
        return -1;
    }

    //DISPLAY image
    namedWindow("window", cv::WINDOW_AUTOSIZE); //Create a window for display
    imshow("Window", image);//Show our image inside it

    //Same image
    string file_name = "copy";
    imwrite("/home/xiaoxin/catkin_ws/src/first_package/images/copy/" + file_name + ".jpg", image);

    //wait for the keystorke in the window
    cv::waitKey(0);
    return 0;
}