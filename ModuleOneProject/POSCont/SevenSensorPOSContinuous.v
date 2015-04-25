module SevenSensorPOSContinuous(X1, X2, X3, X4, X5, X6, X7, f);
	input X1, X2, X3, X4, X5, X6, X7;
	wire or1, or2, or3, or4, or5, or6, or7;
	output f;
	
	assign or1 = ~X1 | ~X2 | ~X3 | ~X4 | ~X5 | ~X6;
	assign or2 = ~X1 | ~X2 | ~X3 | ~X4 | ~X5 | ~X7;
	assign or3 = ~X1 | ~X2 | ~X3 | ~X4 | ~X6 | ~X7;
	assign or4 = ~X1 | ~X2 | ~X3 | ~X5 | ~X6 | ~X7;
	assign or5 = ~X1 | ~X2 | ~X4 | ~X5 | ~X6 | ~X7;
	assign or6 = ~X1 | ~X3 | ~X4 | ~X5 | ~X6 | ~X7;
	assign or7 = ~X2 | ~X3 | ~X4 | ~X5 | ~X6 | ~X7;
	
	assign f = or1 & or2 & or3 & or4 & or5 & or6 & or7;
endmodule 