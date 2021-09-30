param P;							#Number of month

param D {1..P};						#Demand in month i
param c {1..P};						#Unit Production cost in month i

param h;							#Unit Storage cost in month i
param n;							#Initial Inv
param PR;							#Selling price


var I {0..P} >= 0;					#Inventory at end of the month i
var X {1..P} >= 0;					#Production Quantity in month i

minimize Total_Cost: 
					sum {j in 1..P} (c[j] * X[j] + h * I[j]) - I[4] * PR;

					
subject to Inv_bal {j in 1..P}:			#Inventory Balancing
					I[j] = I[j-1] + X[j] - D[j];
					
subject to Ini_inv:						#Initial Inventory
					I[0] = n;
