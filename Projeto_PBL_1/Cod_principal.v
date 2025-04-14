module Cod_principal(A , B, C, D, E,
	 a, b, c, d, e, f, g,
    a1, b1, c1, d1, e1, f1, g1,
    a2, b2, c2, d2, e2, f2, g2,
    L0, L1, L2, L3, L4, L5, L6, L7, L8, L9);
   
    input A , B, C, D, E;
    output a, b, c, d, e, f, g,
			  a1, b1, c1, d1, e1, f1, g1,
			  a2, b2, c2, d2, e2, f2, g2,
           L0, L1, L2, L3, L4, L5, L6, L7, L8, L9;

	//Saída Caracteres Tabela ASCII
	Cod_Caracter_ASCII display0(.A(A), .B(B), .C(C), .D(D), .E(E),
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.e(e),
	.f(f),
	.g(g));

	//Saída Hexadecimal Mais Significativo
	Cod_Hexadecimal_Mais display2(.A(A), .B(B), .C(C), .D(D), .E(E),
	.a1(a1),
	.b1(b1),
	.c1(c1),
	.d1(d1),
	.e1(e1),
	.f1(f1),
	.g1(g1));

	//Saída Hexadecimal Menos Significativo
	Cod_Hexadecimal_Menos display1(.A(A), .B(B), .C(C), .D(D), .E(E),
	.a2(a2),
	.b2(b2),
	.c2(c2),
	.d2(d2),
	.e2(e2),
	.f2(f2),
	.g2(g2));
 
 //Saída dos leds representando os binários
 Cod_LEDS Leds(.A(A), .B(B), .C(C), .D(D), .E(E),
.L0(L0),
 .L1(L1),
 .L2(L2),
 .L3(L3),
 .L4(L4),
 .L5(L5),
 .L6(L6),
 .L7(L7),
 .L8(L8),
 .L9(L9));
 
 endmodule