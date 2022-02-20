Cluster c;
int firstColor = 0;
int secondColor = 0;
int thirdColor = 0;

public void setup()
{
  size(500, 500);  
  background(255);
  noLoop();
}

public void draw()
{
  background(255);
  c = new Cluster(50, 250, 250); // initial number of segments in the tendril and starting (x,y) coordinate
}

public void mousePressed()
{
  redraw();
  firstColor = (int)(Math.random() * 101) + 110;
  secondColor = (int)(Math.random() * 101) + 110;
  thirdColor = (int)(Math.random() * 101) + 110;
}
