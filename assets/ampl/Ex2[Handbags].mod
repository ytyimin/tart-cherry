set I;

param P {i in I};			#Unit Profit
param u {i in I};			#Unit of leather required
param U;					#Total available leather

var X {i in I} >= 0;		#Units of product,i to produce

maximize Tot_Prof: 			#Total profit from products
				sum {i in I} P[i] * X[i];

subject to Lim: 			#Total Leather availability
				sum {i in I} u[i] * X[i] <= U;

subject to Cons1: 			#Purses should be twice more than Handbags
				X['Purse'] >= 2 * X['Handbag'];