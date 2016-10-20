public class starstwo {
 
public static final int SIZE = 5;
 
// after input 5, it does not output correctly  
  
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
		for(i=4;i>=1;i--) {
		for(j=5;j>i;j--) {
			System.out.print(" ");
		}
		for(k=1;k<(i*2);k++) {
			System.out.print("*");
		}
			System.out.println();
		}
	}
}