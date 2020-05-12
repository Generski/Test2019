class Number
{
  int buttonNumber;
  float x;
  float y;
  
  Number(float tempX, float tempY)
  {
    x = tempX;
    y = tempY;
  }
  
  void displayCode()
  {
    textSize(100);
    text(buttonNumber, x, y);
  }
  
  void changeCode(int val)
  {
    buttonNumber = val;
  }
}
