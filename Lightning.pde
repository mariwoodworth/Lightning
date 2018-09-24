//variables
int startX = 150;
int startY = 0;
int endX = 0;
int endY = 0;
int rX = 42;
int rY = 80;
void setup()
{
  size(600,600);
  strokeWeight(4);
  background(27, 55, 99);
}
void draw()
{
  back();
  wand();
  while (endX<600) //lightning
    {
      endX = startX + (int)(Math.random()*10);
      endY = startY + (int)(Math.random()*19-9);
      stroke(255, 0, 0);
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    } 
}
void mousePressed()
{
  startX = 250;
  startY = 320;
  endX = 0;
  endY = 210;
}

void wand() 
{ 
 //light
  noStroke();
  fill(255);
  ellipse(240, 320, 10, 10);
  fill(255, 5);
  ellipse(240, 320, 40, 40);
  
//wand
  fill(155, 114, 65);
  ellipse(80, 320, 320, 20);
  rect(-20, 310, 140, 20, 14); 
 //shadow
  fill(109, 80, 44, 220);
  rect(-20, 324.8, 220, 5, 14);
}
void back()
{
  noStroke();
   //left cloud
  fill(244);
  ellipse(100, 140, rX, rY);
  ellipse(100+rX, 140, rX, rY);
  ellipse(190, 120, 60, 120);
  ellipse(240, 140, rX, rY);
  rect(79, 140, 182, 40);
  
  //right cloud
  fill(244);
  ellipse(400, 200, rX, rY);
  ellipse(400+rX, 200, rX, rY);
  ellipse(400+rX+50, 180, 60, 120);
  ellipse(400+rX+100, 200, rX, rY);
  rect(379, 200, 184, 40);
  
  //grass
  noStroke();
  fill(48, 117, 42);
  ellipse(300, 600, 1000, 270);
}
