public class starsone{
 
 public static final int SIZE = 4;
 // after input 4, does not output correctly
 
 public static void main(String[] args) {
		int i, j, k;
		for(i=1;i<=SIZE;i++) {
		for(j=i;j<5;j++) {
			System.out.print(" ");
		}
		for(k=1;k<(i*2);k++) {
			System.out.print("*");
		}
			System.out.println();
		}

		for(k=1;k<(i*2);k++) {
			System.out.print("*");
		}
			System.out.println();
		}
}