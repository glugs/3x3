


void mainscoop() {
  //Main scoop
    fill(cream);
    noStroke();
  if (brwnOn == true) {
    fill(#65350f);
  }
  if (yellowOn == true) {
    fill(#f9e076);
  }
  if (pinkOn == true) {
    fill(#e30b5d);
  }
  if (purpOn == true) {
    fill(#9a6bb0);
  }
  
arc(2280, 1465, 340, 340,-10, PI+QUARTER_PI, OPEN);

}
//
void icecream(){
 //Cone
  fill(cone);
triangle(triX1, triY1, triX2, triY2, triX3, triY3);
}
//
void scoopbubbles(){
   fill(cream);
   noStroke();
  if (brwnOn == true) {
    fill(#65350f);
  }
  if (yellowOn == true) {
    fill(#f9e076);
  }
  if (pinkOn == true) {
    fill(#e30b5d);
  }
  if (purpOn == true) {
    fill(#9a6bb0);
  }
arc(2130, 1500, 130, 130,-5, PI+QUARTER_PI, OPEN);
arc(2220, 1500, 130, 130,-5, PI+QUARTER_PI, OPEN);
arc(2310, 1500, 130, 130,-5, PI+QUARTER_PI, OPEN);
arc(2420, 1500, 130, 130,-5, PI+QUARTER_PI, OPEN);

}
 
