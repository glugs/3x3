color Blue=#109ADE, Brown=#AA6D2B, Red=#CB2B25, Green=#38A731;

//
void overlayDraw() {
  fill(Grey);
  if (turnOnBlue==true) {fill(Blue);}
  if (turnOnBrown==true) {fill(Brown);}
  if (turnOnRed==true) {fill(Red);}
  if (turnOnGreen==true) {fill(Green);}
  rect(ptX1, ptY1, rectWidth, rectHeight);
  rect(ptX2, ptY2, rectWidth, rectHeight);
  rect(ptX3, ptY3, rectWidth, rectHeight);
  rect(ptX5, ptY5, rectWidth, rectHeight);
  rect(ptX6, ptY6, rectWidth, rectHeight);
  rect(ptX9, ptY9, rectWidth, rectHeight);
  rect(ptX10, ptY10, rectWidth, rectHeight);
  rect(ptX11, ptY11, rectWidth, rectHeight);
  fill(Grey);
  rect(ptX7, ptY7, rectWidth, rectHeight);
  //
  //Points
  fill(resetWhite);
  ellipse(ptX1, ptY1, ptDiameter, ptDiameter);
  ellipse(ptX2, ptY2, ptDiameter, ptDiameter);
  ellipse(ptX3, ptY3, ptDiameter, ptDiameter);
  ellipse(ptX5, ptY5, ptDiameter, ptDiameter);
  ellipse(ptX6, ptY6, ptDiameter, ptDiameter);
  ellipse(ptX7, ptY7, ptDiameter, ptDiameter);
  ellipse(ptX9, ptY9, ptDiameter, ptDiameter);
  ellipse(ptX10, ptY10, ptDiameter, ptDiameter);
  ellipse(ptX11, ptY11, ptDiameter, ptDiameter);
  //
  //Points for all other ellipses must be red
  fill(resetWhite);
  ellipse(ptX4, ptY4, ptDiameter, ptDiameter);
  ellipse(ptX8, ptY8, ptDiameter, ptDiameter);
  ellipse(ptX12, ptY12, ptDiameter, ptDiameter);
  ellipse(ptX13, ptY13, ptDiameter, ptDiameter);
  ellipse(ptX14, ptY14, ptDiameter, ptDiameter);
  ellipse(ptX15, ptY15, ptDiameter, ptDiameter);
  ellipse(ptX16, ptY16, ptDiameter, ptDiameter);
  fill(resetWhite);
}
