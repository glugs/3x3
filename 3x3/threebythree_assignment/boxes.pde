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


void box5() {
  image(pic1, image1X, image1Y, imageWidth, imageHeight);
  box5Text();
  button1();
  line(pt6X, pt6Y, pt7X, pt7Y); 
  line(pt6X, pt6Y, pt10X, pt10Y);
  line(pt10X, pt10Y, pt11X, pt11Y); 
}

void box6() {
  if (box6On == true) {
    image(pic2, image2X, image2Y, imageWidth, imageHeight);
    line(pt7X, pt7Y, pt8X, pt8Y);
    line(pt7X, pt7Y, pt11X, pt11Y);
    box6Text();
    button2();
  }
}

void box1() {
  if (box1On == true) {
    image(pic3, image3X, image3Y, imageWidth, imageHeight); 
    box1Text();
    button3();
  }
}

void box9() {
  if (box9On == true) {
    mainscoop();
     icecream();
      scoopbubbles();
    button4();
  }
}

void box8() {
  if (box8On == true) {
    box8Text();
    colourButtons();
    button5();
  }
}

void box4() {
  if (box4On == true) {
    image(pic4, image4X, image4Y, imageWidth, imageHeight);
    line(pt5X, pt5Y, pt6X, pt6Y);
    button6();
  }
}

void box7() {
  if (box7On == true) {
    image(pic5, image5X, image5Y, imageWidth, imageHeight);
    line(pt9X, pt9Y, pt10X, pt10Y);
    //tree();
    button7();
  }
}

void box3() {

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

void box2() {
  quitButton();
  restartButton();
}
