class Tendril
{
  public final static int SEG_LENGTH = 3; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
   
  public Tendril(int len, double theta, int x, int y)
  {
    //your code here
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  
  public void show()
  {
    //your code here
    float startX, startY, endX, endY;
    
    startX = myX;
    startY = myY;
    endX = 0;
    endY = 0;
    
    for(int i = 0; i < myNumSegments; i++){
      myAngle = myAngle + ((Math.random() * 0.4) - 0.2);
      
      endX = startX + (float)(Math.cos(myAngle)) * SEG_LENGTH;
      endY = startY + (float)(Math.sin(myAngle)) * SEG_LENGTH;
      
      if(myNumSegments <= 3){
        strokeWeight(1);
        stroke(firstColor, secondColor, thirdColor);
      }
        
      else if(myNumSegments <= 12.5){
        strokeWeight(1);
        stroke(secondColor, thirdColor, firstColor);   
      }
        
      else if(myNumSegments <= 25){
        strokeWeight(2);
        stroke(thirdColor, firstColor, secondColor);
      }
      
      else if(myNumSegments <= 37.5){
        strokeWeight(2);
        stroke(secondColor, firstColor, thirdColor);
      }
      
      else if(myNumSegments == 50){
        strokeWeight(3);
        stroke(firstColor, thirdColor, secondColor);
      }
      
      line(startX, startY, endX, endY);
      
      startX = endX;
      startY = endY;   
    }  
    
    if(myNumSegments >= 3){
      c = new Cluster(myNumSegments / 3, (int)endX, (int)endY);
    }
  }
}
