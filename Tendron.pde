Cluster c;
int firstColor = 0;
int secondColor = 0;
int thirdColor = 0;

public void setup()
{
  size(800, 800);  
  background(255);
  noLoop();
}

public void draw()
{
  background(255);
  c = new Cluster(80, 400, 400); // initial number of segments in the tendril and starting (x,y) coordinate
}

public void mousePressed()
{
  redraw();
  firstColor = (int)(Math.random() * 256);
  secondColor = (int)(Math.random() * 256);
  thirdColor = (int)(Math.random() * 256);
}
