#pragma once

#include "ofxiOS.h"

class ofApp : public ofxiOSApp{
	
    
    public:
    /* types
    int counter;
    string hello;
    bool itIsLikeThis;
    float floatingpoint;
    double doublefloatingpoint;
     */
    
    
    ofImage image1;
    
    int windowWidth;
    int windowHeight;
    string info;
    ofTrueTypeFont myfont;
    
    
        void setup();
        void update();
        void draw();
        void exit();
    
    int increment (int number);
    
    void touchDown(ofTouchEventArgs & touch);
    void touchMoved(ofTouchEventArgs & touch);
    

};


