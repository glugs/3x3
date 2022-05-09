//Global Variables
color black= 0, resetWhite=255, Green=#58BC50, pink=#FF00B7, Grey=#C0C1B7; 
color red=color(255, 0, 0), yellow=color(255, 255, 0), brown=#BC5B00, buttonOrange=#FF9A03; //Nightmode color
Boolean turnOnBlue=false, turnOnRed=false, turnOnBrown=false, turnOnGreen=false;
PFont wordFont;
float rectWidth, rectHeight, ptDiameter;
float ptX1, ptY1, ptX2, ptY2, ptX3, ptY3, ptX4, ptY4;
float ptX5, ptY5, ptX6, ptY6, ptX7, ptY7, ptX8, ptY8;
float ptX9, ptY9, ptX10, ptY10, ptX11, ptY11, ptX12, ptY12;
float ptX13, ptY13, ptX14, ptY14, ptX15, ptY15, ptX16, ptY16;
int numberofButtons = 14; //will be 9
float[] buttonX = new float[numberofButtons];
float[] buttonY = new float[numberofButtons];
float[] buttonWidth = new float[numberofButtons];
float[] buttonHeight = new float[numberofButtons];
//
//
void setup() 
{
  fullScreen(); //displayWidth, displayHeight
  displayOrientation();
  //
  population();
  //
  //
  
}//End Setup
//
void draw() 
{
  overlayDraw();
  //
  buttondraw();
  //
  RestartandQuitDraw();
  //
  Draw();
}//End Draw
//
void keyPressed() 
{
}//End keyPressed
//
void mousePressed() 
{
 
}//End mousePressed
//
//End Main
