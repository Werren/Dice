void setup()
{
  noLoop();
}
void draw()
{
  Die bob = new Die(10, 10);
  bob.show();
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  Die(int x, int y) //constructor
  {
    //variable initializations here
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    if(Math.random()<=0.16666667)
    {
      rect(12, 12, 50, 50, 10);
    fill(0);
    //ellipse(50-13, 50-13, 12, 12);
    ellipse(65, 30, 12, 12);
    }
  else if(Math.random()<=0.3333333333)
    {
      rect(12, 12, 50, 50, 10);
    fill(0);
    ellipse(50-13, 50-13, 12, 12);
    }
   else
    {
       rect(12, 12, 50, 50, 10);
    fill(0);
    ellipse(50-13, 50-13, 12, 12); 
    }
  }
}


