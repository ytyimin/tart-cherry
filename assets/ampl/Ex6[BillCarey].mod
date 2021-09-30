set I;				
	
param w {i in I};		 	#Weight of items
param c {i in I};			#Calories of items
param f {i in I};			#Protein in items
param T {i in I};			#Taste index

param W;					#Total Weight limitation
param C;					#Total Calories limitation
param F;					#Total Protein limitation

var X {i in I} >= 0;		#Num of servings

maximize Index:
				sum {i in I} w[i] * X[i] * T[i];

subject to weight:
				sum {i in I} w[i] * X[i] >= W;
				
subject to calories:
				sum {i in I} c[i] * X[i] <= C;
				
subject to fat:
				sum {i in I} f[i] * X[i] <= F;