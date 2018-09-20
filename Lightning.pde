int startX = 150;
int startY = 0;
int endX = 0;
int endY = 300;
void setup()
{
  size(300,300);
  strokeWeight(2);
  stroke(255, 255, 0);
  background(0);
}
void draw()
{
	while (endX<300)
	{
		endX = startX + (int)(Math.random()*19 - 9);
		endY = startY + (int)(Math.random()*10);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}

}
void mousePressed()
{
	startX = 150;
	startY = 0;
	endX = 0;
	endY = 300;
}
void cloud() 
{
	ellipse(150, 150, 25, 25);
}


