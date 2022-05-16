//Global Variables
import processing.sound.*;
SoundFile file;
float ptDiameter, rectWidth, rectHeight;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y, pt5X, pt5Y, pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y;
float pt9X, pt9Y, pt10X, pt10Y, pt11X, pt11Y, pt12X, pt12Y, pt13X, pt13Y, pt14X, pt14Y, pt15X, pt15Y, pt16X, pt16Y;
float button1X, button1Y, button1Width, button1Height, button2X, button2Y, button2Width, button2Height, button3X, button3Y, button3Width, button3Height, button4X, button4Y, button4Width, button4Height;
float cButtonWidth, cButtonHeight, cButton1X, cButton1Y, cButton2X, cButton2Y, cButton3X, cButton3Y,cButton4X, cButton4Y, button5X, button5Y, button6X, button6Y, button6Width, button6Height, button8X, button8Y, button8Width, button8Height;
float button7X, button7Y, button7Width, button7Height;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight, restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight;
float text6X, text6Y, text6Width, text6Height, text1Y, text1Height, text8Y;
float image1X, image1Y, image2X, image2Y, image3X, image3Y, image4X, image4Y, image5X, image5Y, image6X, image6Y, imageWidth, imageHeight;
PImage pic1, pic2, pic3, pic4, pic5, pic6, pic7;
float triX1, triY1, triX2, triY2, triX3, triY3;
PFont boxFont, buttonFont;
color white = #FFFFFF, black = #000000, purple = #C0B2CC, darkPurple = #786a87, gray = #ACABAD, cream=#FCF5E3, brown=#65350F, sage=#526b48, cone=#daa745;
Boolean box6On=false, box1On=false, box9On=false, box8On=false, box4On=false, box7On=false, box3On=false, brwnOn=false, yellowOn=false, pinkOn=false,purpOn=false, picOn=false;

void setup() {
  fullScreen(); //landscape
  
  //file= new SoundFile(this, "goat.wav");
  //file.play(1);
  variablePopulation();
  boxFont = createFont ("Cambria", 55);
  buttonFont = createFont ("Cambria", 25);
  
}

void draw() {
  rectangles();
  box5(); //In the order of which one shows up first
  box6();
  box1();
  box9();
  box8();
  box2();
  box4();
  box7();
  box3();
  points(); //circles at the corners of each box

}

  //
void mousePressed() {
  if (mouseX>=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) box6On = true;
  if (mouseX>=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button3Height) box9On = true;
  if (mouseX>=button7X && mouseX<=button7X+button7Width && mouseY>=button7Y && mouseY<=button7Y+button7Height) box1On = true;
  
  if ( mouseX>=button4X && mouseX<=button4X+button4Width && mouseY>=button4Y && mouseY<=button4Y+button4Height) box8On = true;
  if ( mouseX>=button5X && mouseX<=button5X+cButtonWidth && mouseY>=button5Y && mouseY<=button5Y+cButtonHeight) box4On = true;
  if ( mouseX>=button6X && mouseX<=button6X+button6Width && mouseY>=button6Y && mouseY<=button6Y+button6Height) box7On = true;
  if ( mouseX>=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) box3On = true;
  //
 
  if ( mouseX>=cButton1X && mouseX<=cButton1X+cButtonWidth && mouseY>=cButton1Y && mouseY<=cButton1Y+cButtonHeight) {
    brwnOn = true;
    yellowOn = false;
    pinkOn = false;
    purpOn=false;
  }
  if ( mouseX>=cButton2X && mouseX<=cButton2X+cButtonWidth && mouseY>=cButton2Y && mouseY<=cButton2Y+cButtonHeight) {
    brwnOn = false;
    yellowOn = true;
    pinkOn = false;
    purpOn=false;

  }
  if ( mouseX>=cButton3X && mouseX<=cButton3X+cButtonWidth && mouseY>=cButton3Y && mouseY<=cButton3Y+cButtonHeight) {
    brwnOn = false;
    yellowOn = false;
    pinkOn = true;
    purpOn=false;

  }
  
  if ( mouseX>=cButton4X && mouseX<=cButton4X+cButtonWidth && mouseY>=cButton4Y && mouseY<=cButton4Y+cButtonHeight) {
    brwnOn = false;
    yellowOn = false;
    pinkOn = false;
    purpOn=true;

  }
  //
  if (mouseX>=button8X && mouseX<=button8X+button8Width && mouseY>=button8Y && mouseY<=button8Y+button8Height) {
    if (picOn == false) {
      picOn = true;
    } else {
      if (picOn == true) {
        picOn = false;
      }
    }
  }
  //
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
  if ( mouseX>=restartButtonX && mouseX<=restartButtonX+restartButtonWidth && mouseY>=restartButtonY && mouseY<=restartButtonY+restartButtonHeight) {
    box6On = false;
    box9On = false;
    box1On = false;
    box9On = false;
    box8On = false;
    box4On = false;
    box7On = false;
    box3On =false;
    brwnOn = false;
    yellowOn = false;
    pinkOn = false;
    purpOn=false;
  }
}
