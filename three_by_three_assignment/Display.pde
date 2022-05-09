//Global Variables
int appWidth = displayWidth; //displayWidth
int appHeight = displayHeight; //displayHeight
//
void displayOrientation() 
{
  //Display Orientation: Landscape, not portrait nor square
  println (displayWidth, displayHeight, width, height);
  String ls="Landscape or Square", p="portrait", DO="Display Orientation:", instruct="Dude, turn your phone";
  appWidth = displayWidth; //displayWidth
  appHeight = displayHeight; //displayHeight
  String orientation = ( appWidth >= appHeight) ? ls : p ; //Ternary Operator, repeats IF-ELSE
  println (DO, orientation );
  if (orientation==ls) 
  {
    println(" ");
  } else {//Break app if not landscape
    println(instruct);
    appWidth*= 0; //appWidth = appWidth*0;
    appHeight*= 0; //appHeight = appHeight*0;
  }
  println("App Geometry is:", "\tApp Width", appWidth, "\t\tApp Height", appHeight);
}//End displayOrientation
