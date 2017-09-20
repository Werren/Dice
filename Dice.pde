void setup()
{
  noLoop();
}
void draw()
{
  Die bob = new Die(12, 12);
  bob.show();
  bob.roll();
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, myRoll;
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    myRoll=0;
  }
  void roll()
  {
    if (Math.random()<=0.16666667)
    {
      fill(0);
      ellipse(50-13, 50-13, 8, 8);
    } else if (Math.random()<=0.3333333333)
    {
      fill(0);
      ellipse(47, 28, 8, 8);
      ellipse(29, 45, 8, 8);
    } else if (Math.random()<=0.5)
    {
      fill(0);
      ellipse(47, 27, 8, 8);
      ellipse(37, 37, 8, 8);
      ellipse(27, 47, 8, 8);
    } else if (Math.random()<=0.666666667)
    {
      fill(0);
      ellipse(47.5, 28, 8, 8);
      ellipse(27.5, 28, 8, 8);
      ellipse(47.5, 47, 8, 8);
      ellipse(27.5, 47, 8, 8);
    } else if (Math.random()<=0.8333333334)
    {
      fill(0);
      ellipse(47.5, 28, 8, 8);
      ellipse(27.5, 28, 8, 8);
      ellipse(47.5, 47, 8, 8);
      ellipse(27.5, 47, 8, 8);
      ellipse(37.5, 37, 8, 8);
    } else
    {
      fill(0);
      ellipse(47.5, 28-2, 8, 8);
      ellipse(27.5, 28-2, 8, 8);
      ellipse(47.5, 47+2, 8, 8);
      ellipse(27.5, 47+2, 8, 8);
      ellipse(47.5, 47-10, 8, 8);
      ellipse(27.5, 47-10, 8, 8);
    }
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 50, 50, 10);
  }
}
