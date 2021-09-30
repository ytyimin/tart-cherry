set I;

param P {i in I};			#Unit Selling Price
param u {i in I};			#Unit of cloth used
param U;					#Total available cloth
param c;						#Cost of cloth


var X {i in I} >= 0;		#Units of product,i to produce

maximize Tot_Prof: 			#Total profit from products
				sum {i in I} (P[i] * X[i] - X[i] * u[i] * c);

subject to Lim: 			#Total cloth availability
				sum {i in I} u[i] * X[i] <= U;

subject to Cons1: 			#Bedsheet should be twice more than cushion cover
				X['B'] >= 2 * X['CC'];
				
subject to Const2:			#Minimum 10 curtains to be produced
				X['C'] >= 10;