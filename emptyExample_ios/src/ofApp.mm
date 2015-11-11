#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    /*
     counter = 0;
    hello = "hello world";
    itIsLikeThis = false;
    floatingpoint = 0.65f;
    doublefloatingpoint = 0.65;
     */
    
    
    //image1.allocate(57, 57, OF_IMAGE_COLOR_ALPHA);
    image1.load("Icon.png");
    
    windowWidth = ofGetWidth();
    windowHeight = ofGetHeight();
    info = ofToString( windowWidth );
    myfont.loadFont("miso-light.ttf", 20 );
    
    
    

}

//--------------------------------------------------------------
void ofApp::update(){
    /*
    counter++;
    ofLogNotice("update method") << counter;
     */

}

//--------------------------------------------------------------
void ofApp::draw(){
    ofSetBackgroundColor(240, 240, 240);
    ofDrawLine(windowWidth/2, 0, windowWidth/2, windowHeight);
    ofDrawLine(0, windowHeight/2, windowWidth, windowHeight/2);
    
    ofSetColor(255, 255, 255);
    ofFill();
    
    ofPushMatrix();
        ofTranslate(ofGetWindowWidth()/2, ofGetWindowHeight()/2);
    ofPushMatrix();
                ofScale(2,2);
                image1.draw(2, 2);
    ofPopMatrix();
    ofPopMatrix();
    
    
    ofSetColor(20, 20, 20);
    ofFill();
    //ofRect(10, 10, 100, 100);
    
    myfont.setLetterSpacing(2.5f);
    
    myfont.drawString("hi", 50,100);
    
    //ofLogNotice("font loaded") << myfont.isLoaded();
    
    char fpsStr[255]; // an array of chars
    sprintf(fpsStr, "frame rate: %f", ofGetFrameRate());
    myfont.drawString(fpsStr, 50,140);
    
    
   
	
}

//--------------------------------------------------------------
void ofApp::exit(){
    ofBackground(255, 255, 255);
    
}

int ofApp::increment(int number){
    return number +1;
}

void ofApp::touchDown(ofTouchEventArgs &touch){
    ofLog() << "touch down: " << touch.x << " " << touch.y;
}

void ofApp::touchMoved(ofTouchEventArgs &touch){
    ofLog() << "touch moved: " << touch.x << " " << touch.y;
}

