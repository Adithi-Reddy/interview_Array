/*Given a number N, find all prime numbers upto N ( N included ).

Example:

if N = 7,

all primes till 7 = {2, 3, 5, 7}

Make sure the returned array is sorted.

Problem Approach:

Complete code in the hint.*/
public class Solution {
	public ArrayList<Integer> sieve(int a) {
	    int n= (int) (Math.sqrt(a));
			ArrayList<Integer> b= new ArrayList<Integer>();
			boolean[] c = new boolean[a+1];
		if(a<=1)return b;
	    for (int i = 2; i <= n; i++) {
	    	int j=2*i;
	    	while(j<=a){
	    		if(!c[j])
	    			c[j]=true;
	    		j=j+i;
	    }
		}
	    for (int i = 2; i <=a; i++) {
			if(!c[i])
				b.add(i);
		}
		return b;
	}
}
