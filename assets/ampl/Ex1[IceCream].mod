set I;						#Set of machines, i= 1,2
set J;						#Set of flavors, j= C,m,v

param C {i in I};			#Cost of running machine, i  
param Y {i in I,j in J};	#Yield of flavor j in machine i
param D {j in J};			#Daily demand of flavor, j

var X {i in I} >= 0;		#Units of product,i to produce

minimize Tot_Cost: 			#Total Cost of machines
				sum {i in I} C[i] * X[i];

subject to Dem {j in J}: 	#Daily Demand constraint
				sum {i in I} Y[i,j] * X[i] >= D[j];
