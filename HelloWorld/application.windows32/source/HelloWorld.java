import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class HelloWorld extends PApplet {

//Global Variables
  char z; 
  String e, f, g, ten, h, one;
  int two, skipCount=2, twenty;
  float decimal=1.0f, thirty;
  int x, y, rectWidth, rectHeight;
  int backgroundBlue;
  int strokeReset=1;
  int thin, thick=2*thin;
  int strokeColour, fillColour;
  int yellow=0xffF8FC08, purple=0xffC708FC, whiteReset=0xffFFFFFF, blackReset=0xff000000;
  int yellowNightMode=0xffE9FF00, purpleNightMode=0xff890E6A; 
  Boolean nightMode=false; //Daytime is false 
//
public void setup() 
{
  String secondSentence ="Dhiya counts to 10, by 1."; //Local Variable (only in setup)
  z = '.';
  e = "Dhiya";
  f = "counts";
  g = "to";
  ten = "10000";
  twenty = 10000;
  thirty = 1000000000000.0f;
  h = "by";
  one = "1";
  two = 1;
  println(e, f, g, ten, h, str(two)+z);
  println("One plus two is", PApplet.parseInt(one)+two);
   
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
public void draw() 
{
  two+=1;
  two*=skipCount; //+=, -=, *=, /=
  println(e, f, g, ten, h, str(two)+z);
  twenty/=skipCount; 
  println(e, f, g, one, "backwards from", str(twenty)+z);
  thirty/=skipCount; 
  println(e, f, g, one, "backwards from", str(thirty)+z);
  background(50);
  if(nightMode=true)
  {
    backgroundBlue=0;
    strokeColour = yellowNightMode;
    fillColour = purpleNightMode;
    println("Night Mode is working");
  } else 
  {
    backgroundBlue = PApplet.parseInt( random(255) );
    strokeColour = yellow;
    fillColour = purple;
    println("Night Mode is off");
  } //End Night Mode 
  //
  background( color(random(0,255), random(255), backgroundBlue) );
  strokeWeight(thick);
  stroke(strokeColour); 
  fill(fillColour); 
  rect(x, y, rectWidth, rectHeight);
  fill(whiteReset);
  stroke(blackReset);
  strokeWeight(strokeReset);
}//End draw 
//
public void keyPressed() 
{
  if ( key == 'N' || key == 'n' ) nightMode = true;
  if ( key == CODED && keyCode == LEFT) nightMode = false;
}//End keyPressed
//
public void mousePressed() 
{
  if (mouseButton == LEFT) nightMode=true;
  if (mouseButton == RIGHT) nightMode=false;
}//End mousePressed
//
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "HelloWorld" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
