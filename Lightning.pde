int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
  size(300,300);
  strokeWeight(5);
  stroke(255, 255, 0);
  background(0);
}
void draw()
{
	while (endX<300)
	{
		endX = startX + (int)(Math.random()*10);
		endY = startY + (int)(Math.random()*19 - 9);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
		System.out.println("up" + (float)(Math.random()*30));
	}
}
void mousePressed()
{
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
}

