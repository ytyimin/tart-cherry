set I;					
set J;				

param C {i in I};		 
param Y {i in I,j in J};
param D {j in J};		

var X {i in I} >= 0;

minimize Tot_Cost:
				sum {i in I} C[i] * X[i];

subject to Dem {j in J}:
				sum {i in I} Y[i,j] * X[i] >= D[j];
