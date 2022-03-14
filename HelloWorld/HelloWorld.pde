//Global Variables
  char z; 
  String e, f, g, ten, h, one;
  int two, skipCount=2, twenty;
  float decimal=1.0, thirty; //must include a zero decimal or compiler reads as INTEGER
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
}//End draw 
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//What we will copy and paste from the Static Program 
