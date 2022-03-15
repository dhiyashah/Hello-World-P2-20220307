//Global Variables
  char z; 
  String e, f, g, ten, h, one;
  int two, skipCount=2, twenty;
  float decimal=1.0, thirty;
  int x, y, rectWidth, rectHeight;
  int backgroundBlue;
  int strokeReset=1;
  int thin, thick=2*thin;
  color strokeColour, fillColour;
  color yellow=#F8FC08, purple=#C708FC, whiteReset=#FFFFFF, blackReset=#000000;
  color yellowNightMode=#E9FF00, purpleNightMode=#890E6A; 
  Boolean nightMode=false; //Daytime is false 
//
void setup() 
{
  String secondSentence ="Dhiya counts to 10, by 1."; //Local Variable (only in setup)
  //println(secondSentence);
  //Populations, Declaration, Valuing
  z = '.';
  e = "Dhiya";
  f = "counts";
  g = "to";
  ten = "10000";
  twenty = 10000;
  thirty = 1000000000000.0; //12 zerios
  h = "by";
  one = "1";
  two = 1;
  //println(d+z, e, f, g, ten+y, h, str(two)+z); //Casting, making an INTEGER into a STRING
  //println("One plus two is", int(one)+two); //Casting is int(one), to change STRING to INTEGER
  size(700,500); //Display Geometry (Orientations): Square, Landscape, Portrait 
  //fullScreen(); //displayWidth, displayHeight
  //Population
  x = width*1/4;
  y = height*1/4;
  rectWidth = width*1/2;
  rectHeight = height*1/2;
  thin=width*1/50;
  thick=2*thin;
  println("Canvas Size", width, height);
  println("Display", "width", displayWidth, "height: ", displayHeight);
}//End setup
//
void draw() 
{
  two*=skipCount; //+=, -=, *=, /=
  println(e, f, g, ten, h, str(two)+z);
  twenty/=skipCount; //Formula to count backwards from 10000 //ten-1, ten--, ten-=1
  println(e, f, g, one, "backwards from", str(twenty)+z);
  thirty/=skipCount; //Formula to count backwards from 10000 //ten-1, ten--, ten-=1
  println(e, f, g, one, "backwards from", str(thirty)+z);
  //Background as gray scale, 0-225 (notice 256 #'s)
  background(50);
  // New Background Function "covers old gray scale background()
  // Background as colour, RGB, random(a,b)
  // Night mode means background cannot have blue // change random or night mode 
  if(nightMode=true) //Night Mode Choices  
  {
    backgroundBlue=0;
    strokeColour = yellowNightMode;
    fillColour = purpleNightMode;
    println("Night Mode is working");
  } else 
  {
    backgroundBlue = int( random(255) );
    strokeColour = yellow;
    fillColour = purple;
    println("Night Mode is off");
  } //End Night Mode 
  //
  background( color(random(0,255), random(255), backgroundBlue) );
  strokeWeight(thick);
  stroke(strokeColour); //yellow, yellowNightMode
  fill(fillColour); //purple, purpleNightMode
  rect(x, y, rectWidth, rectHeight);
  //reset to defaults 
  fill(whiteReset);
  stroke(blackReset);
  strokeWeight(strokeReset);
}//End draw 
//
void keyPressed() 
{
  if ( key == 'N' || key == 'n' ) nightMode = true;
  if ( key == CODED && keyCode == LEFT) nightMode = false;
}//End keyPressed
//
void mousePressed() 
{
  if (mouseButton == LEFT) nightMode=true;
  if (mouseButton == RIGHT) nightMode=false;
}//End mousePressed
//
//What we will copy and paste from the Static Program 
