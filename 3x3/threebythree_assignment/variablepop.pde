void variablePopulation() {
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
  button1X = rectWidth; //
  button1Y = rectHeight*15/8; // 
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
  button3Width = rectWidth*1/2;
  button3Height = rectHeight*1/5;
  //Button 4 (for box 9)
  button4X = rectWidth*14/5; 
  button4Y = rectHeight*21/8; 
  button4Width = rectWidth*1/6;
  button4Height = rectHeight*1/4;
  //
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
  button5Y = rectHeight*1.5;
  //Button 6 (for box 4)
  button6X = rectWidth*0; 
  button6Y = rectHeight*2.5; 
  button6Width = rectWidth*1;
  button6Height = rectHeight*1/4;
  //Button 7 (for box 7)
  button7X = rectWidth*0; 
  button7Y = rectHeight*2.87; 
  button7Width = rectWidth*1;
  button7Height = rectHeight*1/8;
  //Button 8 (for box 3)
  button8X = rectWidth*31/15; 
  button8Y = rectHeight*5/8; 
  button8Width = rectWidth*1/2;
  button8Height = rectHeight*1/5;
  //
 button9X=rectWidth*2;
 button9Y = rectHeight*1; 
 button9Width = rectWidth*1/4;
 button9Height = rectHeight*1/5;
  
  //Quit Button and Restart Button (for box 2)
  quitButtonX = rectWidth*1;
  quitButtonY = rectHeight*1;
  quitButtonWidth = rectWidth*0.15;
  quitButtonHeight = rectHeight*0.2;
  restartButtonX = rectWidth*1.65;
  restartButtonY = rectHeight*0.6;
  restartButtonWidth = rectWidth*0.3;
  restartButtonHeight = rectHeight*0.3;
  //
  //
  //Pics
  imageWidth = rectWidth;
  imageHeight = rectHeight;
  //
  pic1 = loadImage ("swirl.jpg"); 
  pic2 = loadImage ("ket.jpg"); 
  pic3 = loadImage ("soap2.jpg"); 
  pic4 = loadImage ("band.jpg"); 
  pic5 = loadImage ("fruit.jpg"); 
  pic6 = loadImage ("greenhouse.jpg"); 
  pic7 = loadImage ("inside.jpg"); 
  pic8= loadImage  ("rv.jpg");
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
  image8X=width*1/3;
  image8Y=width*0;
  //
  //
  //Text
  text6X = width*20/30;
  text6Y = height*7/18; 
  text6Width = width*1/3;
  text6Height = rectHeight;
  text1Y = rectHeight*.90;
  text1Height = rectHeight*1/3;
  text8Y = rectHeight*31/15;
  //
  //scoop
  scoopX= rectWidth*2.5;
  scoopY= rectHeight*2.45;
  scoopDiameter=rectHeight/1.75;
 //scoop bubbles
  bub1X=rectWidth*2.35;
  bub1Y= rectHeight*2.5;
  bub1Diameter=rectHeight/4.7;
  //
  bub2X=rectWidth*2.44;
  bub2Y= rectHeight*2.5;
  bub2Diameter=rectHeight/4.7;
  //
  bub3X=rectWidth*2.55;
  bub3Y= rectHeight*2.5;
  bub3Diameter=rectHeight/4.7;
  //
  bub4X=rectWidth*2.65;
  bub4Y= rectHeight*2.5;
  bub4Diameter=rectHeight/4.7;
 
  //
 
  //Icecreamcone
  triX1=rectWidth*2.30;
  triY1=rectHeight*2.50;
  triX2=rectWidth*2.50;
  triY2=rectHeight*3.0;
  triX3=rectWidth*2.70;
  triY3=rectHeight*2.50;
}
