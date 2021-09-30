set I;							#Set of juices
set J;							#Set of machines
	
param l {i in I, j in J};		#labor Hours
param C {i in I, j in J};		#Cost to produce juice on machine
param m {i in I, j in J};		#Machines hours required
param d {i in I, j in J};		#Demand to produce juice on machine

param L;						#Total available labor hours
param M {j in J};				#Machine hours available
param D {i in I};		 		#Demand of product

var X {i in I, j in J} integer >= 0;	#Num of product required

minimize Tot_Cost:
				sum {i in I, j in J} C[i,j] * X[i,j];

subject to labor:				#labor constraint			
				sum {i in I, j in J} X[i,j] * l[i,j] <= L;
				
subject to demand {i in I}:		#Demand constraint
				sum {j in J} X[i,j] >= D[i];
				
subject to mach {j in J}:	#Machine hours constraint
				sum {i in I} X[i,j] * m[i,j] <= M[j];

subject to req {i in I,j in J}:	#Requirement of shipping product
				X[i,j] >= d[i,j];
				
