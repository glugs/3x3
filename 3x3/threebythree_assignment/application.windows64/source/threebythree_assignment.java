import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.sound.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class threebythree_assignment extends PApplet {

//Global Variables

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
float faceX, faceY, faceDiameter, leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter, mouthX1, mouthY1, mouthX2, mouthY2;
float trunkX1, trunkY1, trunkX2, trunkY2, trunkThick;
float leaf1X1, leaf1Y1, leaf1X2, leaf1Y2, leaf1X3, leaf1Y3, leaf2X1, leaf2Y1, leaf2X2, leaf2Y2, leaf2X3, leaf2Y3, leaf3X1, leaf3Y1, leaf3X2, leaf3Y2, leaf3X3, leaf3Y3;
PFont boxFont, buttonFont;
int white = 0xffFFFFFF, black = 0xff000000, purple = 0xffC0B2CC, darkPurple = 0xff786a87, gray = 0xffACABAD, cream=0xffFCF5E3, brown=0xff65350F, sage=0xff526b48, cone=0xffdaa745;
Boolean box6On=false, box1On=false, box9On=false, box8On=false, box4On=false, box7On=false, box3On=false, brwnOn=false, yellowOn=false, pinkOn=false,purpOn=false, picOn=false;

public void setup() {
   //landscape
  
  //file= new SoundFile(this, "goat.wav");
  //file.play(1);
  variablePopulation();
  boxFont = createFont ("Cambria", 55);
  buttonFont = createFont ("Cambria", 25);
  
}

public void draw() {
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
public void mousePressed() {
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
public void rectangles() {
  fill(cream);
  rect(pt1X, pt1Y, rectWidth, rectHeight);
  rect(pt2X, pt2Y, rectWidth, rectHeight);
  rect(pt3X, pt3Y, rectWidth, rectHeight);
  rect(pt5X, pt5Y, rectWidth, rectHeight);
  rect(pt6X, pt6Y, rectWidth, rectHeight);
  rect(pt7X, pt7Y, rectWidth, rectHeight);
  rect(pt9X, pt9Y, rectWidth, rectHeight);
  rect(pt10X, pt10Y, rectWidth, rectHeight);
  rect(pt11X, pt11Y, rectWidth, rectHeight);
  fill(white);
}

public void points() {
  fill(cream);
  ellipse(pt1X, pt1Y, ptDiameter, ptDiameter);
  ellipse(pt2X, pt2Y, ptDiameter, ptDiameter);
  ellipse(pt3X, pt3Y, ptDiameter, ptDiameter);
  ellipse(pt4X, pt4Y, ptDiameter, ptDiameter);
  ellipse(pt5X, pt5Y, ptDiameter, ptDiameter);
  ellipse(pt6X, pt6Y, ptDiameter, ptDiameter);
  ellipse(pt7X, pt7Y, ptDiameter, ptDiameter);
  ellipse(pt8X, pt8Y, ptDiameter, ptDiameter);
  ellipse(pt9X, pt9Y, ptDiameter, ptDiameter);
  ellipse(pt10X, pt10Y, ptDiameter, ptDiameter);
  ellipse(pt11X, pt11Y, ptDiameter, ptDiameter);
  ellipse(pt12X, pt12Y, ptDiameter, ptDiameter);
  ellipse(pt13X, pt13Y, ptDiameter, ptDiameter);
  ellipse(pt14X, pt14Y, ptDiameter, ptDiameter);
  ellipse(pt15X, pt15Y, ptDiameter, ptDiameter);
  ellipse(pt16X, pt16Y, ptDiameter, ptDiameter);
}
int appWidth, appHeight;
String box6Text= "“HI";
String box1Text= "Fun Fact:soap has been around for at least 4,800 years!";
String box8Text= "Click a button below for an artisinal scoop:)";
String clickMe= "Click Me!";
String start= "Let's Go to the Farmers' Market!";
String Jam="Look, ice cream!";
String Pick="Pick a Flavor!";
String go="Come on:)";
String quit= "Quit";;
String restart= "Restart";
String rasp="RASPBERRY RHUBARB";
String ube="UBE";
String yuzu=" YUZU";
String mocha="MOLASSES MOCHA";
String ljams="There's the local band!";
String produce="How 'bout some produce?";
String orange="Orange you glad we came here!";
String soap="Let's get some au naturel soaps!";
String night="Whew, what a day!";
String green="Take a visit to the greenhouse.";
String smells="Smells nice!";
String fun="Hope you had fun! 'Till next time:)";


public void box5() {
  image(pic1, image1X, image1Y, imageWidth, imageHeight);
  box5Text();
  button1();
  line(pt6X, pt6Y, pt7X, pt7Y); 
  line(pt6X, pt6Y, pt10X, pt10Y);
  line(pt10X, pt10Y, pt11X, pt11Y); 
}

public void box6() {
  if (box6On == true) {
    image(pic2, image2X, image2Y, imageWidth, imageHeight);
    line(pt7X, pt7Y, pt8X, pt8Y);
    line(pt7X, pt7Y, pt11X, pt11Y);
    box6Text();
    button2();
  }
}

public void box1() {
  if (box1On == true) {
    image(pic3, image3X, image3Y, imageWidth, imageHeight); 
    box1Text();
    button3();
  }
}

public void box9() {
  if (box9On == true) {
    mainscoop();
     icecream();
      scoopbubbles();
    button4();
  }
}

public void box8() {
  if (box8On == true) {
    box8Text();
    colourButtons();
    button5();
  }
}

public void box4() {
  if (box4On == true) {
    image(pic4, image4X, image4Y, imageWidth, imageHeight);
    line(pt5X, pt5Y, pt6X, pt6Y);
    button6();
  }
}

public void box7() {
  if (box7On == true) {
    image(pic5, image5X, image5Y, imageWidth, imageHeight);
    line(pt9X, pt9Y, pt10X, pt10Y);
    //tree();
    button7();
  }
}

public void box3() {

  if (box3On == true) {
    if (picOn == true) {
      image(pic7, image6X, image6Y, imageWidth, imageHeight);
      line(pt3X, pt3Y, pt7X, pt7Y);
      button8();
    }
    if (picOn == false) {
      image(pic6, image6X, image6Y, imageWidth, imageHeight);
      line(pt3X, pt3Y, pt7X, pt7Y);
      button8();
    }
  }
}

public void box2() {
  quitButton();
  restartButton();
}
public void button1() {
  rect(button1X, button1Y, button1Width, button1Height);
  if ( mouseX>=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) {
    fill(brown);
    rect(button1X, button1Y, button1Width, button1Height);
    button1Text2();
  } else {
    stroke(gray);
    fill(cream);
    rect(button1X, button1Y, button1Width, button1Height);
    stroke(black);
    button1Text();
  }
  fill(white);
}

public void button2() {
  rect(button2X, button2Y, button2Width, button2Height);
  if ( mouseX>=button2X && mouseX<=button2X+button2Width && mouseY>=button2Y && mouseY<=button2Y+button2Height) {
    fill(sage);
    rect(button2X, button2Y, button2Width, button2Height);
    fill(cream);
    button2Text();
  } else {
    stroke(cream);
    fill(cream);
    rect(button2X, button2Y, button2Width, button2Height);
    stroke(black);
    fill(brown);
    button2Text();
  }
  fill(white);
}

public void button3() {
  rect(button3X, button3Y, button3Width, button3Height);
  if ( mouseX>=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) {
    fill(sage);
    rect(button3X, button3Y, button3Width, button3Height);
    fill(white);
    button3Text2();
  } else {
    stroke(0xff6a5f50);
    fill(0xffa59787);
    rect(button3X, button3Y, button3Width, button3Height);
    stroke(black);
    fill(0xff6a5f50);
    button3Text();
  }
  fill(white);
}

public void button4() {
  rect(button4X, button4Y, button4Width, button4Height);
  if ( mouseX>=button4X && mouseX<=button4X+button4Width && mouseY>=button4Y && mouseY<=button4Y+button4Height) {
    fill(brown);
    rect(button4X, button4Y, button4Width, button4Height);
    fill(cream);
    button4Text();
  } else {
    stroke(cream);
    fill(sage);
    rect(button4X, button4Y, button4Width, button4Height);
    stroke(black);
    fill(cream);
    button4Text();
  }
  fill(white);
}

public void colourButtons() {
  rect(cButton1X, cButton1Y, cButtonWidth, cButtonHeight);
  if ( mouseX>=cButton1X && mouseX<=cButton1X+cButtonWidth && mouseY>=cButton1Y && mouseY<=cButton1Y+cButtonHeight) {
    stroke(cream);
    fill(0xff65350f);
    rect(cButton1X, cButton1Y, cButtonWidth, cButtonHeight);
    fill(white);
    stroke(black);
    c1();
  } else {
    stroke(cream);
    fill(0xffa1785c);
    rect(cButton1X, cButton1Y, cButtonWidth, cButtonHeight);
    stroke(black);
    fill(white);
  }
  fill(white);
  //
  rect(cButton2X, cButton2Y, cButtonWidth, cButtonHeight);
  if ( mouseX>=cButton2X && mouseX<=cButton2X+cButtonWidth && mouseY>=cButton2Y && mouseY<=cButton2Y+cButtonHeight) {
    stroke(cream);
    fill(0xfff9e076);
    rect(cButton2X, cButton2Y, cButtonWidth, cButtonHeight);
    fill(white);
    c2();
  } else {
    stroke(cream);
    fill(0xfffdefb2);
    rect(cButton2X, cButton2Y, cButtonWidth, cButtonHeight);
    stroke(black);
    fill(white);
  }
  fill(white);
  //
  rect(cButton3X, cButton3Y, cButtonWidth, cButtonHeight);
  if ( mouseX>=cButton3X && mouseX<=cButton3X+cButtonWidth && mouseY>=cButton3Y && mouseY<=cButton3Y+cButtonHeight) {
    stroke(0xffE30B5D);
    fill(0xffE30B5D);
    rect(cButton3X, cButton3Y, cButtonWidth, cButtonHeight);
    fill(white);
    c3();
  } else {
    stroke(0xffFAD7EA);
    fill(0xffFAD7EA);
    rect(cButton3X, cButton3Y, cButtonWidth, cButtonHeight);
    stroke(black);
    fill(white);
  }
  fill(white);
  //
    rect(cButton4X, cButton4Y, cButtonWidth, cButtonHeight);
  if ( mouseX>=cButton4X && mouseX<=cButton4X+cButtonWidth && mouseY>=cButton4Y && mouseY<=cButton4Y+cButtonHeight) {
    stroke(cream);
    fill(0xff9a6bb0);
    rect(cButton4X, cButton4Y, cButtonWidth, cButtonHeight);
    fill(white);
    c4();
  } else {
    stroke(cream);
    fill(0xffd19feb);
    rect(cButton4X, cButton4Y, cButtonWidth, cButtonHeight);
    stroke(black);
    fill(white);
  }
  fill(white);
}
public void button5() {
  rect(button5X, button5Y, cButtonWidth, cButtonHeight);
  if ( mouseX>=button5X && mouseX<=button5X+cButtonWidth && mouseY>=button5Y && mouseY<=button5Y+cButtonHeight) {
    fill(sage);
    rect(button5X, button5Y, cButtonWidth, cButtonHeight);
    fill(cream);
    button5Text();
  } else {
    stroke(sage);
    fill(brown);
    rect(button5X, button5Y, cButtonWidth, cButtonHeight);
    stroke(cream);
    fill(cream);
    button5Text();
  }
  fill(white);
}

public void button6() {
  rect(button6X, button6Y, button6Width, button6Height);
  if ( mouseX>=button6X && mouseX<=button6X+button6Width && mouseY>=button6Y && mouseY<=button6Y+button6Height) {
    fill(sage);
    rect(button6X, button6Y, button6Width, button6Height);
    fill(cream);
    orangetext();
  } else {
    stroke(black);
    fill(0xffb39fa7);
    rect(button6X, button6Y, button6Width, button6Height);
    stroke(black);
    fill(cream);
    button6Text();
  }
  fill(white);
}

public void button7() {
  rect(button7X, button7Y, button7Width, button7Height);
  if (mouseX>=button7X && mouseX<=button7X+button7Width && mouseY>=button7Y && mouseY<=button7Y+button7Height) {
    fill(0xffD68400);
    rect(button7X, button7Y, button7Width, button7Height);
    fill(cream);
    button7Text2();
  } else {
    stroke(cream);
    fill(brown);
    rect(button7X, button7Y, button7Width, button7Height);
    stroke(black);
    fill(cream);
    button7Text();
  }
  fill(white);
}

public void button8() {
  rect(button8X, button8Y, button8Width, button8Height);
  if (mouseX>=button8X && mouseX<=button8X+button8Width && mouseY>=button8Y && mouseY<=button8Y+button8Height) {
    fill(black);
    rect(button8X, button8Y, button8Width, button8Height);
    fill(white);
    button8Text2();
  } else {
    stroke(0xff645c5d);
    fill(sage); 
    rect(button8X, button8Y, button8Width, button8Height);
    stroke(black);
    fill(cream);
    button8Text();
  }
  fill(white);
}


public void quitButton() {
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) {
    fill(brown);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    fill(cream);
    quitText();
  } else {
    stroke(brown);
    fill(cream);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    stroke(black);
    fill(brown);
    quitText();
  }
  fill(white);
}
public void restartButton() {
  rect(restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight);
  if ( mouseX>=restartButtonX && mouseX<=restartButtonX+restartButtonWidth && mouseY>=restartButtonY && mouseY<=restartButtonY+restartButtonHeight) {
    fill(brown);
    rect(restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight);
    fill(cream);
    restartText();
  } else {
    stroke(brown);
    fill(cream);
    rect(restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight);
    stroke(black);
    fill(brown);
    restartText();
  }
  fill(white);
}
/*void face() {
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  //Mouth
  strokeWeight(5);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(1);
  //Eyes
  fill(darkPurple);
  if (blueOn == true) {
    fill(#B6D9F7);
  }
  if (greenOn == true) {
    fill(#B2E5B3);
  }
  if (pinkOn == true) {
    fill(#FAD7EA);
  }
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  fill(white);
}*/


public void mainscoop() {
  //Main scoop
    fill(cream);
    noStroke();
  if (brwnOn == true) {
    fill(0xff65350f);
  }
  if (yellowOn == true) {
    fill(0xfff9e076);
  }
  if (pinkOn == true) {
    fill(0xffe30b5d);
  }
  if (purpOn == true) {
    fill(0xff9a6bb0);
  }
  
arc(2280, 1465, 340, 340,-10, PI+QUARTER_PI, OPEN);

}
//
public void icecream(){
 //Cone
  fill(cone);
triangle(triX1, triY1, triX2, triY2, triX3, triY3);
}
//
public void scoopbubbles(){
   fill(cream);
   noStroke();
  if (brwnOn == true) {
    fill(0xff65350f);
  }
  if (yellowOn == true) {
    fill(0xfff9e076);
  }
  if (pinkOn == true) {
    fill(0xffe30b5d);
  }
  if (purpOn == true) {
    fill(0xff9a6bb0);
  }
arc(2130, 1500, 130, 130,-5, PI+QUARTER_PI, OPEN);
arc(2220, 1500, 130, 130,-5, PI+QUARTER_PI, OPEN);
arc(2310, 1500, 130, 130,-5, PI+QUARTER_PI, OPEN);
arc(2420, 1500, 130, 130,-5, PI+QUARTER_PI, OPEN);

}
  //
  
 

//void tree() {
  //Trunk
 // strokeWeight(10);
  //strokeCap(SQUARE);
  //line(trunkX1, trunkY1, trunkX2, trunkY2);
  //strokeWeight (1);
  //Leaves
 // fill (#2a443c);
  //triangle(leaf1X1, leaf1Y1, leaf1X2, leaf1Y2, leaf1X3, leaf1Y3);
 // triangle(leaf2X1, leaf2Y1, leaf2X2, leaf2Y2, leaf2X3, leaf2Y3);
 // triangle(leaf3X1, leaf3Y1, leaf3X2, leaf3Y2, leaf3X3, leaf3Y3);
 // fill (white);
 
//}


//Box 5
public void box5Text() {
  textAlign (CENTER, CENTER);
  textFont(boxFont, 100);
  fill(brown);
  text(start, pt6X, pt6Y, rectWidth, rectHeight);
  textFont(boxFont);
}
public void button1Text() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont);
  fill(brown);
  text(clickMe, button1X, button1Y, button1Width, button1Height);
  
}
public void button1Text2() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont);
  fill(white);
  text(go, button1X, button1Y, button1Width, button1Height);
}


//Box 6
public void box6Text() {
  textAlign (CENTER, TOP);
  textFont(boxFont, 30);
  fill(darkPurple);
  text(box6Text, text6X, text6Y, text6Width, text6Height);
  fill(white);
  textFont(boxFont);
}
public void button2Text() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 30);
  text(Jam, button2X, button2Y, button2Width, button2Height);
  textFont(buttonFont);
  fill(white);
}


//Box 1
public void box1Text() {
  textAlign (CENTER, TOP);
  stroke(4);
  textFont(boxFont, 35);
  fill(0xff6a5f50);
  text(box1Text, pt1X, text1Y, rectWidth, text1Height);
  textFont(boxFont);
  fill(white);
}
public void button3Text() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 30);
  text(smells, button3X, button3Y, button3Width, button3Height);
  textFont(buttonFont);
  fill(white);
}
public void button3Text2() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 30);
  text(green, button3X, button3Y, button3Width, button3Height);
  textFont(buttonFont);
  fill(white);
}


//Box 9
public void button4Text() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 30);
  text(Pick, button4X, button4Y, button4Width, button4Height);
  textFont(buttonFont);
  fill(white);
}


//Box 8
public void box8Text() {
  textAlign (CENTER, TOP);
  textFont(boxFont, 32);
  fill(darkPurple);
  text(box8Text, pt10X, text8Y, rectWidth, rectHeight);
  fill(white);
  textFont(boxFont);
  //
  //Icecream
  }
public void c1() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont);
  text(mocha,cButton1X, cButton1Y, cButtonWidth, cButtonHeight);
  fill(white);
}
public void c2() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont);
  text(yuzu,cButton2X, cButton2Y, cButtonWidth, cButtonHeight);
  fill(white);
}
public void c3() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont);
  text(rasp,cButton3X, cButton3Y, cButtonWidth, cButtonHeight);
  fill(white);
}
public void c4() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont);
  text(ube,cButton4X, cButton4Y, cButtonWidth, cButtonHeight);
  fill(white);
}

public void button5Text() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont);
  text(ljams, button5X, button5Y, cButtonWidth, cButtonHeight);
  fill(white);
}
//Box 4
public void orangetext() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont,30);
  text(orange, button6X, button6Y, button6Width, button6Height);
  fill(sage);
}

public void button6Text() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont,30);
  text(produce, button6X, button6Y, button6Width, button6Height);
  fill(sage);
}

//Box 7
public void button7Text() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont);
  text(clickMe, button7X, button7Y, button7Width, button7Height);
  fill(white);
}
public void button7Text2() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont);
  text(soap, button7X, button7Y, button7Width, button7Height);
  fill(white);
}
public void button8Text() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont);
  text(night, button8X, button8Y, button8Width, button8Height);
  fill(white);
}
public void button8Text2() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont);
  text(fun, button8X, button8Y, button8Width, button8Height);
  fill(white);
}

//Box 2
public void quitText() {
  textAlign (CENTER, CENTER);
  textFont(boxFont, 25);
  text(quit, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(white);
  textFont(boxFont);
}
public void restartText() {
  textAlign (CENTER, CENTER);
  textFont(boxFont, 25);
  text(restart, restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight);
  fill(white);
  textFont(boxFont);
}
public void variablePopulation() {
  ptDiameter = height*1/40;
  rectWidth = width*1/3;
  rectHeight = height*1/3;
  //
  //Points
  pt1X = pt5X = pt9X = pt13X = 0;
  pt2X = pt6X = pt10X = pt14X = width*1/3;
  pt3X = pt7X = pt11X = pt15X = width*2/3;
  pt4X = pt8X = pt12X = pt16X = width;
  //
  pt1Y = pt2Y = pt3Y = pt4Y = 0;
  pt5Y = pt6Y = pt7Y = pt8Y = height*1/3;
  pt9Y = pt10Y = pt11Y = pt12Y = height*2/3;
  pt13Y = pt14Y = pt15Y = pt16Y= height;
  //
  //
  //Button 1 (for box 5)
  button1X = rectWidth; //stars at the left edge of box 5
  button1Y = rectHeight*15/8; // rectHeight*8/8 would start it from the very top of box 5
  button1Width = rectWidth*7/24;
  button1Height = rectHeight*1/8;
  //Button 2 (for box 6)
  button2X = rectWidth*14/6; 
  button2Y = rectHeight*27/16; 
  button2Width = rectWidth*1/2;
  button2Height = rectHeight*1/8;
  //Button 3 (for box 1)
  button3X = rectWidth*1/25; 
  button3Y = rectHeight*5/16; 
  button3Width = rectWidth*1/4;
  button3Height = rectHeight*1/5;
  //Button 4 (for box 9)
  button4X = rectWidth*14/5; 
  button4Y = rectHeight*21/8; 
  button4Width = rectWidth*1/6;
  button4Height = rectHeight*1/4;
  //Button 5 + Colour Buttons (for box 8)
  cButton1X = rectWidth*10/9; 
  cButton1Y = rectHeight*18/8; 
  cButton2X = rectWidth*14/9; 
  cButton2Y = cButton1Y; 
  cButton3X = cButton1X;
  cButton3Y = rectHeight*21/8;
  cButton4X=cButton2X;
  cButton4Y=cButton3Y;
  cButtonWidth = rectWidth*1/3;
  cButtonHeight = rectHeight*1/5;
  button5X = rectWidth*1/2;
  button5Y = rectHeight*1.5f;
  //Button 6 (for box 4)
  button6X = rectWidth*11/16; 
  button6Y = rectHeight*2.5f; 
  button6Width = rectWidth*1/4;
  button6Height = rectHeight*1/5;
  //Button 7 (for box 7)
  button7X = rectWidth*0; 
  button7Y = rectHeight*2.9f; 
  button7Width = rectWidth*1/2;
  button7Height = rectHeight*1/8;
  //Button 8 (for box 3)
  button8X = rectWidth*31/15; 
  button8Y = rectHeight*5/8; 
  button8Width = rectWidth*1/4;
  button8Height = rectHeight*1/5;
  //Quit Button and Restart Button (for box 2)
  quitButtonX = rectWidth*5/4;
  quitButtonY = rectHeight*1/9;
  quitButtonWidth = rectWidth*1/2;
  quitButtonHeight = rectHeight*1/3;
  restartButtonX = rectWidth*5/4;
  restartButtonY = rectHeight*5/9;
  restartButtonWidth = rectWidth*1/2;
  restartButtonHeight = rectHeight*1/3;
  //
  //
  //Pics
  imageWidth = rectWidth;
  imageHeight = rectHeight;
  //
  pic1 = loadImage ("swirl.jpg"); //Dimensions: 500 Width, 515 Height
  pic2 = loadImage ("ket.jpg"); //Dimensions: 564 Width, 564 Height
  pic3 = loadImage ("soap2.jpg"); //Dimensions: 564 Width, 564 Height
  pic4 = loadImage ("band.jpg"); //Dimensions: 564 Width, 564 Height
  pic5 = loadImage ("fruit.jpg"); //Dimensions: 533 Width, 470 Height
  pic6 = loadImage ("greenhouse.jpg"); //Dimensions: 564 Width, 493 Height
  pic7 = loadImage ("rv.jpg"); //Dimensions: 564 Width, 480 Height
  //
  image1X = width*1/3;
  image1Y = height*1/3;
  image2X = width*2/3;
  image2Y = height*1/3;
  image3X = width*0;
  image3Y = height*0;
  image4X = width*0;
  image4Y = height*1/3;
  image5X = width*0;
  image5Y = height*2/3;
  image6X = width*2/3;
  image6Y = height*0;
  //
  //
  //Text
  text6X = width*20/30;
  text6Y = height*7/18; 
  text6Width = width*1/3;
  text6Height = rectHeight;
  text1Y = rectHeight*.90f;
  text1Height = rectHeight*1/3;
  text8Y = rectHeight*31/15;
  //
  //Icecreamcone
  triX1=rectWidth*2.30f;
  triY1=rectHeight*2.50f;
  triX2=rectWidth*2.50f;
  triY2=rectHeight*3.0f;
  triX3=rectWidth*2.70f;
  triY3=rectHeight*2.50f;
  //
  //Face
 // faceX = rectWidth*5/2;
 // faceY = rectHeight*5/2;
 // faceDiameter = rectHeight*4/5;
  //
 // leftEyeX = rectWidth*12/5;
 // leftEyeY = rectHeight*12/5;
 // rightEyeX = rectWidth*13/5;
 // rightEyeY = leftEyeY;
 // eyeDiameter = rectHeight/7;
  //
 // mouthX1 = leftEyeX;
 // mouthY1 = rectHeight*21/8;
 // mouthX2 = rightEyeX;
 // mouthY2 = mouthY1;
  //
  //
  //Tree (population numbers are from past composite images oroject, slightly modified
  trunkX1 = rectWidth/2;
  trunkY1 = rectHeight*13/5;
  trunkX2 = rectWidth/2;
  trunkY2 = rectHeight*57/20;
  //
  leaf1X1 = rectWidth*1/2;
  leaf1Y1 = rectHeight*23/10;
  leaf1X2 = rectWidth*7/20;
  leaf1Y2 = rectHeight*53/20;
  leaf1X3 = rectWidth*13/20;
  leaf1Y3 = leaf1Y2;
  //
  leaf2X1 = rectWidth*1/2;
  leaf2Y1 = rectHeight*11/5;
  leaf2X2 = rectWidth*2/5;
  leaf2Y2 = rectHeight*49/20;
  leaf2X3 = rectWidth*3/5;
  leaf2Y3 = leaf2Y2;
  //
  leaf3X1 = rectWidth*1/2;
  leaf3Y1 = rectHeight*21/10;
  leaf3X2 = rectWidth*17/40;
  leaf3Y2 = rectHeight*23/10;
  leaf3X3 = rectWidth*23/40;
  leaf3Y3 = leaf3Y2;
}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "threebythree_assignment" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
