//Circle[] circles = new Circle[10];
Number[] numbers = new Number[4];

Circle c;

ArrayList<Circle> circles;

boolean pressed;

void setup()
{
  size(700, 700);
  
  float radius = 200;
  
  circles = new ArrayList<Circle>();
  
  /*for(int i = 0 ; i < circles.length ; i++)
  {
    float theta = map(i, 0, circles.length, 0, TWO_PI);
    float x = width/2 + sin(theta) * radius;
    float y = height/2 + - cos(theta) * radius;
    circles[i] = new Circle(x, y, random(20, 60));
  }*/
  
  for(int i = 0 ; i < 10 ; i++)
  {
    float theta = map(i, 0, 10, 0, TWO_PI);
    float x = width/2 + sin(theta) * radius;
    float y = height/2 + - cos(theta) * radius;
    circles.add(new Circle(x, y, random(20, 60)));
  }
  
  for(int i = 0 ; i < numbers.length ; i++)
  {
    float x = width/4 * i;
    float y = height/8;
    numbers[i] = new Number(x, y);
  }
}

void draw()
{   
  background(0);
  /*for(int i = 0 ; i < circles.length ; i++)
  {
    circles[i].display();
    circles[i].drawText(i);
    circles[i].mousePress();
    
    if(circles[i].mousePress() == true)
    {
      numbers[1].displayCode(i);
      if(circles[i].mousePress() == true){
        numbers[2].displayCode(i);
      }
    }
  }*/
  
  int i;
  
  for(Circle c : circles)
  {
    i = circles.indexOf(c);
    c.display();
    c.drawText(i);
    //c.inRange();
    
    /*if(c.inRange() == true)
    {
      numbers[1].displayCode(i);
      if(c.inRange() == true){
        numbers[2].displayCode(i);
      }
    }*/
  } 
}

void mouseClicked()
{
  for(Circle c : circles)
  {
    c.inRange();
    numbers[1].displayCode();
    //numbers[1].changeCode(c.no);
  }
}
