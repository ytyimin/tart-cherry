set I;

param P {i in I};			#Unit Profit
param u {i in I};			#Num of invertors required
param f {i in I};			#Tones of glass fiber required

param L;					#Total available land
param W;					#Total available invertors
param F;					#Total available glass fiber

var X {i in I} >= 0;		#Amount of land allocated

maximize Tot_Prof: 			#Total profit
				sum {i in I} P[i] * X[i];

subject to Lim: 			#Total Land available
				sum {i in I} X[i] <= L;

subject to Const1: 			#Total Invertors available
				sum {i in I} u[i] * X[i] <= W;				
				
subject to Cons2:			# Total Glass Fiber available
				sum {i in I} f[i] * X[i] <= F;