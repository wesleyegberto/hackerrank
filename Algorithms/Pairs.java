import java.io.*;
import java.util.*;

public class Pairs {
    public static void main(String[] args) {
        int res = 0;
        Scanner in = new Scanner(System.in);
        
        String[] values = in.nextLine().split(" ");
        
        int size = Integer.parseInt(values[0]);
        int k = Integer.parseInt(values[1]);
        
        int[] a = new int[size];
        values = in.nextLine().split(" ");
        
        for(int i = 0; i < size; i++) {
            a[i] = Integer.parseInt(values[i]);
        }
        Arrays.sort(a);
        for(int i = 0; i < a.length; i++) {
            for(int j = i; j < a.length; j++) {
                if(a[i] - a[j] == k || a[j] - a[i] == k) {
                    res++;
                } else if(a[j] - a[i] > k) {
                    break;
                }
            }
        }
        
        System.out.println(res);
    }
}
