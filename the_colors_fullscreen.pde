/**
 * TouchOSC
 * 
 * Example displaying values received from
 * the "Simple" layout (Page1 only so far)
 * http://hexler.net/touchosc
 *
 */

import oscP5.*;
import netP5.*;
OscP5 oscP5;

float v_fader1 = 0.0f;
float v_fader2 = 0.0f;
float v_fader3 = 0.0f;
float v_fader4 = 0.0f;
float v_fader5 = 0.0f;
float v_fader6 = 0.0f;
float v_fader7 = 0.0f;
float v_fader8 = 0.0f;
float v_fader9 = 0.0f;

float v_rotary1 = 0.0f;
float v_rotary2 = 0.0f;
float v_rotary3 = 0.0f;
float v_rotary4 = 0.0f;
float v_rotary5 = 0.0f;
float v_rotary6 = 0.0f;
float v_rotary7 = 0.0f;
float v_rotary8 = 0.0f;
float v_rotary9 = 0.0f;

void setup() {
  fullScreen();
  //size(900,440);
  frameRate(25);
  /* start oscP5, listening for incoming messages at port 8000 */
  oscP5 = new OscP5(this,8000);
}

void oscEvent(OscMessage theOscMessage) {

    String addr = theOscMessage.addrPattern();
    float  val  = theOscMessage.get(0).floatValue();
    
    if(addr.equals("/1/fader1"))        { v_fader1 = val; }
    else if(addr.equals("/2/fader2"))   { v_fader2 = val; }
    else if(addr.equals("/3/fader3"))   { v_fader3 = val; }
    else if(addr.equals("/4/fader4"))   { v_fader4 = val; }
    else if(addr.equals("/5/fader5"))   { v_fader5 = val; }
    else if(addr.equals("/6/fader6"))   { v_fader6 = val; }
    else if(addr.equals("/7/fader7"))   { v_fader7 = val; }
    else if(addr.equals("/8/fader8"))   { v_fader8 = val; }
    else if(addr.equals("/9/fader9"))   { v_fader9 = val; }
    
    
    if(addr.equals("/1/rotary1"))  { v_rotary1 = val; }
    if(addr.equals("/2/rotary2"))  { v_rotary2 = val; }
    if(addr.equals("/3/rotary3"))  { v_rotary3 = val; }
    if(addr.equals("/4/rotary4"))  { v_rotary4 = val; }
    if(addr.equals("/5/rotary5"))  { v_rotary5 = val; }
    if(addr.equals("/6/rotary6"))  { v_rotary6 = val; }
    if(addr.equals("/7/rotary7"))  { v_rotary7 = val; }
    if(addr.equals("/8/rotary8"))  { v_rotary8 = val; }
    if(addr.equals("/9/rotary9"))  { v_rotary9 = val; }

}

void draw() {
    background(255);
    
    // fader 1-4 outlines
   // fill(0);
   fill(255);
   // stroke(255, 237, 0);
    rect(0, 0, width/9, height);
    rect(width/9, 0, width/9, height);
    rect(width/9*2, 0, width/9, height);
    rect(width/9*3, 0, width/9, height);
    rect(width/9*4, 0, width/9, height);
    rect(width/9*5, 0, width/9, height);
    rect(width/9*6, 0, width/9, height);
    rect(width/9*7, 0, width/9, height);
    rect(width/9*8, 0, width/9, height);
    
    
    
    // fader 1-4 fills
    //red
    fill(255, 68, 48, 50 + v_rotary1*255);
    rect(0,0 + height - v_fader1*height, width/9, v_fader1*height);
    
    //green
    fill(135, 208, 63, 50 + v_rotary2*255);
    rect(width/9,0 + height - v_fader2*height, width/9, v_fader2*height);
    
    //blue
    fill(0, 204, 183, 50 + v_rotary3*255);
    rect(width/9*2,0 + height - v_fader3*height, width/9, v_fader3*height);
    
    //yellow
    fill(254, 236, 50, 50 + v_rotary4*255);
    rect(width/9*3,0 + height - v_fader4*height, width/9, v_fader4*height);

    //purple
    fill(185, 149, 184, 50 + v_rotary5*255);
    rect(width/9*4,0 + height - v_fader5*height, width/9, v_fader5*height);

    //gray
    fill(191, 191, 191, 50 + v_rotary6*255);
    rect(width/9*5,0 + height - v_fader6*height, width/9, v_fader6*height);

    //orange
    fill(250, 174, 55, 50 + v_rotary7*255);
    rect(width/9*6,0 + height - v_fader7*height, width/9, v_fader7*height);
    
    //brown
    fill(148, 121, 91, 50 + v_rotary8*255);
    rect(width/9*7,0 + height - v_fader8*height, width/9, v_fader8*height);

    //pink
    fill(255, 74, 242, 50 + v_rotary9*255);
    rect(width/9*8,0 + height - v_fader9*height, width/9, v_fader9*height);
}