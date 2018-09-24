//variables
int startX = 150;
int startY = 0;
int endX = 0;
int endY = 0;
int rX = 20;
int rY = 40;
void setup()
{
  size(300,300);
  strokeWeight(3);
  background(27, 55, 99);
}
void draw()
{
  back();
  wand();
  while (endX<300) //lightning
    {
      stroke(255, 0, 0);
      endX = startX + (int)(Math.random()*10);
      endY = startY + (int)(Math.random()*19-9);
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    } 
}
void mousePressed()
{
  startX = 125;
  startY = 160;
  endX = 0;
  endY = 105;
}

void wand() 
{ 
 //light
  noStroke();
  fill(255);
  ellipse(120, 160, 5, 5);
  fill(255, 5);
  ellipse(120, 160, 20, 20);
  
//wand
  fill(155, 114, 65);
  ellipse(40, 160, 160, 10);
  rect(-10, 155, 70, 10, 7); 
 //shadow
  fill(109, 80, 44);
  rect(-10, 162, 110, 3, 7);
}
void back()
{
  noStroke();
   //left cloud
  fill(255);
  ellipse(50, 70, rX, rY);
  ellipse(50+rX, 70, rX, rY);
  ellipse(95, 60, 30, 60);
  ellipse(120, 70, rX, rY);
  rect(40, 70, 90, 20);
  
  //right cloud
  fill(255);
  ellipse(200, 100, rX, rY);
  ellipse(200+rX, 100, rX, rY);
  ellipse(200+rX+25, 90, 30, 60);
  ellipse(200+rX+50, 100, rX, rY);
  rect(190, 100, 90, 20);
  
  //grass
  noStroke();
  fill(206, 255, 73);
  ellipse(150, 300, 500, 75);
}
