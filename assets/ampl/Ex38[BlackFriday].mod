set I;							#Set of routes
set J;							#Set of machines
	
param D {i in I};		 		#Demand of product
param SR {i in I, j in J};		#Days of shipping required
param LR {i in I, j in J};		#labor Hours
param C {i in I, j in J};		#unit cost of shipping
param R {i in I, j in J};				#Specific requirement of product

param L;						#Total available labor hours
param M;						#Available days of shipping

var X {i in I, j in J} integer >= 0;	#Num of product required

minimize Tot_Cost:
				sum {i in I, j in J} C[i,j] * X[i,j];

subject to labor:				#labor constraint			
				sum {i in I, j in J} X[i,j] * LR[i,j] <= L;
				
subject to demand {i in I}:		#Demand constraint
				sum {j in J} X[i,j] >= D[i];
				
subject to shipping {j in J}:	#Shipping days constraint
				sum {i in I} X[i,j] * SR[i,j] <= M;

subject to req {i in I,j in J}:	#Requirement of shipping product
				X[i,j] >= R[i,j];
				
