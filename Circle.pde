class Circle
{
  float x;
  float y;
  float d;
  int no;

  Circle(float tempX, float tempY, float tempD)
  {
    x = tempX;
    y = tempY;
    d = tempD;
  }

  void display()
  {
    strokeWeight(2);
    stroke(255);
    noFill();
    ellipse(x, y, d*2, d*2);
  }

  void drawText(int number)
  {
    no = number;
    textSize(d);
    text(number, x - d/4, y + d/4);
  }

  boolean inRange()
  {    
    if ((mouseX >= x - d && mouseX <= x + d) && (mouseY >= y - d && mouseY <= y + d))
    {
      println("In range of " + no);
      return true;
    } else
    {
      return false;
    }
  }
}
