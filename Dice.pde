void setup()
{
  noLoop();
  size(549,670);
}
void draw()
{
  for (int toot= 0; toot <= 500; toot+=55)
  {
    for (int shite= 0; shite <= 550; shite+=55)
    {
        Die i = new Die(shite, toot);
      i.show();
      i.roll();
    }
  }
  }
  void mousePressed()
  {
    redraw();
  }
  class Die //models one single dice cube
  {
    int myX, myY, myRoll, sum;
    Die(int x, int y) //constructor
    {
      myX=x;
      myY=y;
      myRoll=0;
    }
    void roll()
    {
      fill(255);
      text(myRoll+" is the sum of all of these dice!",300,660);
    }
    void show()
    {
      if (Math.random()<=0.16666667)
      {
        sum=1;
        fill(255);
        rect(myX, myY, 50, 50, 10);
        fill(0);
        ellipse(50-13+myX-12, 50-13+myY-12, 8, 8);
      } else if (Math.random()<=0.3333333333)
      {
        sum=2;
        fill(255);
        rect(myX, myY, 50, 50, 10);
        fill(0);
        ellipse(47+myX-12, 28+myY-12, 8, 8);
        ellipse(29+myX-12, 45+myY-12, 8, 8);
      } else if (Math.random()<=0.5)
      {
        sum=3;
        fill(255);
        rect(myX, myY, 50, 50, 10);
        fill(0);
        ellipse(47+myX-12, 27+myY-12, 8, 8);
        ellipse(37+myX-12, 37+myY-12, 8, 8);
        ellipse(27+myX-12, 47+myY-12, 8, 8);
      } else if (Math.random()<=0.666666667)
      {
        sum=4;
        fill(255);
        rect(myX, myY, 50, 50, 10);
        fill(0);
        ellipse(47.5+myX-12, 28+myY-12, 8, 8);
        ellipse(27.5+myX-12, 28+myY-12, 8, 8);
        ellipse(47.5+myX-12, 47+myY-12, 8, 8);
        ellipse(27.5+myX-12, 47+myY-12, 8, 8);
      } else if (Math.random()<=0.8333333334)
      {
        sum=5;
        fill(255);
        rect(myX, myY, 50, 50, 10);
        fill(0);
        ellipse(47.5+myX-12, 28+myY-12, 8, 8);
        ellipse(27.5+myX-12, 28+myY-12, 8, 8);
        ellipse(47.5+myX-12, 47+myY-12, 8, 8);
        ellipse(27.5+myX-12, 47+myY-12, 8, 8);
        ellipse(37.5+myX-12, 37+myY-12, 8, 8);
      } else
      {
        fill(255);
        rect(myX, myY, 50, 50, 10);
        fill(0);
        ellipse(47.5+myX-12, 28-2+myY-12, 8, 8);
        ellipse(27.5+myX-12, 28-2+myY-12, 8, 8);
        ellipse(47.5+myX-12, 47+2+myY-12, 8, 8);
        ellipse(27.5+myX-12, 47+2+myY-12, 8, 8);
        ellipse(47.5+myX-12, 47-10+myY-12, 8, 8);
        ellipse(27.5+myX-12, 47-10+myY-12, 8, 8);
      }
    }
  }
