#include "opencv2/opencv.hpp"
using namespace cv;

int main(int, char**){
    VideoCapture Video_capture(0); // open the default camera 
    if(!Video_capture.isOpened()){ // check if we success
        return -1;
    }
    Mat gray_image;
    namedWindow("edges",1);
    while(true){
        Mat frame;
        Video_capture >> frame;// get a new frame from camera
        cvtColor(frame, gray_image, COLOR_BGR2GRAY);
        //GaussianBlur(edges, edges, Size(7,7).1.5,1.5);
        //Canny(edges,edges,0,30,3);
        imshow("gray image", gray_image);
        if(waitKey(30)>=0) break;
    }
    return 0;
}