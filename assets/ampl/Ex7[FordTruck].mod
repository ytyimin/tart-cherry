set I;				
	
param T {i in I};		 	#Num of trucks to be painted
param A {i in I};			#Num of trucks to be assembled
param P {i in I};			#Profit expected from trucks

var X {i in I} >= 0;		#Num of trucks manufactured

maximize prof:
				sum {i in I} P[i] * X[i];

subject to paint:
				sum {i in I} X[i]/T[i] <= 1;
				
subject to assembly:
				sum {i in I} X[i]/A[i] <= 1;
				
