public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster
    Tendril t;

    public Cluster(int len, int x, int y)
    {
      // your code here
      for(int i = 0; i < NUM_STEMS; i++){
        t = new Tendril(len, radians((int)(Math.random() * 361)), x, y);        
        t.show();       
      }
    }
}
