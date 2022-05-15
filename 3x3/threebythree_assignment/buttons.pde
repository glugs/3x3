void button1() {
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

void button2() {
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

void button3() {
  rect(button3X, button3Y, button3Width, button3Height);
  if ( mouseX>=button3X && mouseX<=button3X+button3Width && mouseY>=button3Y && mouseY<=button3Y+button3Height) {
    fill(sage);
    rect(button3X, button3Y, button3Width, button3Height);
    fill(white);
    button3Text2();
  } else {
    stroke(#6a5f50);
    fill(#a59787);
    rect(button3X, button3Y, button3Width, button3Height);
    stroke(black);
    fill(#6a5f50);
    button3Text();
  }
  fill(white);
}

void button4() {
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

void colourButtons() {
  rect(cButton1X, cButton1Y, cButtonWidth, cButtonHeight);
  if ( mouseX>=cButton1X && mouseX<=cButton1X+cButtonWidth && mouseY>=cButton1Y && mouseY<=cButton1Y+cButtonHeight) {
    stroke(cream);
    fill(#65350f);
    rect(cButton1X, cButton1Y, cButtonWidth, cButtonHeight);
    fill(white);
    stroke(black);
    c1();
  } else {
    stroke(cream);
    fill(#a1785c);
    rect(cButton1X, cButton1Y, cButtonWidth, cButtonHeight);
    stroke(black);
    fill(white);
  }
  fill(white);
  //
  rect(cButton2X, cButton2Y, cButtonWidth, cButtonHeight);
  if ( mouseX>=cButton2X && mouseX<=cButton2X+cButtonWidth && mouseY>=cButton2Y && mouseY<=cButton2Y+cButtonHeight) {
    stroke(cream);
    fill(#f9e076);
    rect(cButton2X, cButton2Y, cButtonWidth, cButtonHeight);
    fill(white);
    c2();
  } else {
    stroke(cream);
    fill(#fdefb2);
    rect(cButton2X, cButton2Y, cButtonWidth, cButtonHeight);
    stroke(black);
    fill(white);
  }
  fill(white);
  //
  rect(cButton3X, cButton3Y, cButtonWidth, cButtonHeight);
  if ( mouseX>=cButton3X && mouseX<=cButton3X+cButtonWidth && mouseY>=cButton3Y && mouseY<=cButton3Y+cButtonHeight) {
    stroke(#E30B5D);
    fill(#E30B5D);
    rect(cButton3X, cButton3Y, cButtonWidth, cButtonHeight);
    fill(white);
    c3();
  } else {
    stroke(#FAD7EA);
    fill(#FAD7EA);
    rect(cButton3X, cButton3Y, cButtonWidth, cButtonHeight);
    stroke(black);
    fill(white);
  }
  fill(white);
  //
    rect(cButton4X, cButton4Y, cButtonWidth, cButtonHeight);
  if ( mouseX>=cButton4X && mouseX<=cButton4X+cButtonWidth && mouseY>=cButton4Y && mouseY<=cButton4Y+cButtonHeight) {
    stroke(cream);
    fill(#9a6bb0);
    rect(cButton4X, cButton4Y, cButtonWidth, cButtonHeight);
    fill(white);
    c4();
  } else {
    stroke(cream);
    fill(#d19feb);
    rect(cButton4X, cButton4Y, cButtonWidth, cButtonHeight);
    stroke(black);
    fill(white);
  }
  fill(white);
}
void button5() {
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

void button6() {
  rect(button6X, button6Y, button6Width, button6Height);
  if ( mouseX>=button6X && mouseX<=button6X+button6Width && mouseY>=button6Y && mouseY<=button6Y+button6Height) {
    fill(sage);
    rect(button6X, button6Y, button6Width, button6Height);
    fill(cream);
    orangetext();
  } else {
    stroke(black);
    fill(#b39fa7);
    rect(button6X, button6Y, button6Width, button6Height);
    stroke(black);
    fill(cream);
    button6Text();
  }
  fill(white);
}

void button7() {
  rect(button7X, button7Y, button7Width, button7Height);
  if (mouseX>=button7X && mouseX<=button7X+button7Width && mouseY>=button7Y && mouseY<=button7Y+button7Height) {
    fill(#D68400);
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

void button8() {
  rect(button8X, button8Y, button8Width, button8Height);
  if (mouseX>=button8X && mouseX<=button8X+button8Width && mouseY>=button8Y && mouseY<=button8Y+button8Height) {
    fill(black);
    rect(button8X, button8Y, button8Width, button8Height);
    fill(white);
    button8Text2();
  } else {
    stroke(#645c5d);
    fill(sage); 
    rect(button8X, button8Y, button8Width, button8Height);
    stroke(black);
    fill(cream);
    button8Text();
  }
  fill(white);
}


void quitButton() {
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
void restartButton() {
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
