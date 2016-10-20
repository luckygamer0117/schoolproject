public class starsfour {
    
	public static final int SIZE = 5;
	// after input 6, does not output right
  
    public static void main(String[] args){

  for (int i=0; i<SIZE; i++)
  {
  for (int j=0; j<i; j++)
  {
  System.out.print("*");
  }
  System.out.println(" ");
  }
   
      int z, x, c;
for(z=4;z>=1;z--)
{
for(x=4;x>z-1;x--)
{
System.out.print(" ");
}
for(c=1;c<=z;c++)
{
System.out.print("*");
}
System.out.println();
    }
}
}