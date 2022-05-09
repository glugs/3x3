//
void buttondraw() {
  //HoverOver is Yellow
  //
  if (mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1]) {
    fill(yellow);
    rect(buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
  } else {
    fill(black);
    rect(buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
  } //Button 1

  if (mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2]) {
    fill(yellow);
    rect(buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]);
  } else {
    fill(black);
    rect(buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]);
  } //Button 2

  if (mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3]) {
    fill(yellow);
    rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  } else {
    fill(black);
    rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  } //Button 3
  fill(black);
  fill(resetWhite);
}//End buttondraw
