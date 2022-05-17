


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
  
ellipse(scoopX, scoopY, scoopDiameter, scoopDiameter);

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
 ellipse(bub1X, bub1Y, bub1Diameter, bub1Diameter);
 ellipse(bub2X, bub2Y, bub2Diameter, bub2Diameter);
 ellipse(bub3X, bub3Y, bub3Diameter, bub3Diameter);
 ellipse(bub4X, bub4Y, bub4Diameter, bub4Diameter);

}
 
