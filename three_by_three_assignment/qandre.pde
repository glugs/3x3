float quitbuttonX, quitbuttonY, quitbuttonWidth, quitbuttonHeight;
float resbuttonX, resbuttonY, resbuttonWidth, resbuttonHeight;
//
void RestartandQuitDraw() {
  //Quit Button & Restart Button
  fill(button);
  rect(quitbuttonX, quitbuttonY, quitbuttonWidth, quitbuttonHeight);
  fill(resetWhite);
  
  //
  fill(button);
  rect(resbuttonX, resbuttonY, resbuttonWidth, resbuttonHeight);
  fill(resetWhite);
  
}
