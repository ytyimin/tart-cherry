set I;

param P {i in I};			#Unit Profit
param u {i in I};			#Num of workers required
param f {i in I};			#Tones of Provender required

param L;					#Total available land
param W;					#Total available workers
param F;					#Total available provenders


var X {i in I} >= 0;		#Amount of land allocated

maximize Tot_Prof: 			#Total profit
				sum {i in I} P[i] * X[i];

subject to Lim: 			#Total Land available
				sum {i in I} X[i] <= L;

subject to Cons1: 			#Total Workers available
				sum {i in I} u[i] * X[i] <= W;
				
subject to Cons2:			# Total Provenders available
				sum{i in I} f[i] * X[i] <= F;