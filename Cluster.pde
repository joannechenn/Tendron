public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster
    Tendril t;
    float angle = TWO_PI/7;

    public Cluster(int len, int x, int y)
    {
      // your code here 
      for(int i = 1; i <= NUM_STEMS; i++){
        t = new Tendril(len, angle * i, x, y);
        t.show();  
      }
    }
}
