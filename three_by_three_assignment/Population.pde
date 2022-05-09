//
void population() 
{
  //Population
  rectWidth = appWidth*1/3;
  rectHeight = appHeight*1/3;
  ptDiameter = appWidth*1/50;
  wordFont = createFont("Corbel", 48);
  
  ptX1 = ptX5 = ptX9 = ptX13 = appWidth*0; 
  ptX2 = ptX6 = ptX10 = ptX14 = appWidth*1/3; 
  ptX3 = ptX7 = ptX11 = ptX15 = appWidth*2/3;  
  ptX4 = ptX8 = ptX12 = ptX16 = appWidth*3/3; //

  ptY1 = ptY2 = ptY3 = ptY4 = appWidth*0;
  ptY5 = ptY6 = ptY7 = ptY8 = appHeight*1/3;
  ptY9 = ptY10 = ptY11 = ptY12 = appHeight*2/3;
  ptY13 = ptY14 = ptY15 = ptY16 = appHeight*3/3;
  //
  buttonX[1] = appWidth*(1.0/3.0)*(1.0/3.0); //Section 1; subsection 2, numerator is 1
  buttonY[1] = appHeight*(1.0/3.0)*(1.0/3.0); //Section 1; subsection 2, numerator is 1
  buttonWidth[1] = appWidth*(1.0/3.0)*(1.0/3.0); //Width Denominatior count = 9 ... 1/9
  buttonHeight[1] = appHeight*(1.0/3.0)*(1.0/3.0); //Height Denominatior count = 9 ... 1/9
  //
  buttonX[2] = appWidth*(3.0/6.0); //Section 2, subsection 2, numerator is 3
  buttonY[2] = appHeight*(2.0/6.0); //Section 2, subsect 1, numerator is 2
  buttonWidth[2] = appWidth*(1.0/3.0)*(1.0/2.0); //Denominator of 6
  buttonHeight[2] = appHeight*(1.0/3.0)*(1.0/2.0);//Denominator of 6
  //
  buttonX[3] = appWidth*11.0/15.0; //Section 3, subsection 2, numerator is 11
  buttonY[3] = appHeight*13.0/15.0; //Section 3, subsection 4, numerator is 13
  buttonWidth[3] = appWidth*(1.0/3.0)*(1.0/5.0); //Denominator is 15
  buttonHeight[3] = appHeight*(1.0/3.0)*(1.0/5.0); //Denominator is 15
  //
  quitbuttonX =appWidth*6.2/9;
  quitbuttonY =appHeight*0.5/9;
  quitbuttonWidth =appWidth*2.6/9;
  quitbuttonHeight =appHeight*1/9;
  resbuttonX =appWidth*6.2/9;
  resbuttonY =appHeight*1.8/9;
  resbuttonWidth =appWidth*2.6/9;
  resbuttonHeight =appHeight*1/9;
  //
  bgX =appWidth*6.3/9;
  bgY =appHeight*1/3;
  bgWidth =appWidth*2.3/9;
  bgHeight =appHeight*1/18;
  bgblueX =appWidth*11/15;
  bgblueY =appHeight*7/15;
  bgblueWidth =appWidth*1/15;
  bgblueHeight =appHeight*1/15;
  bgbrownX =appWidth*13/15;
  bgbrownY =appHeight*7/15;
  bgbrownWidth =appWidth*1/15;
  bgbrownHeight =appHeight*1/15;
  bgredX =appWidth*11/15;
  bgredY =appHeight*8.5/15;
  bgredWidth =appWidth*1/15;
  bgredHeight =appHeight*1/15;
  bggreenX =appWidth*13/15;
  bggreenY =appHeight*8.5/15;
  bggreenWidth =appWidth*1/15;
  bggreenHeight =appHeight*1/15;
  
}
