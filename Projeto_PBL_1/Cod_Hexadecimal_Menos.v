module Cod_Hexadecimal_Menos(A,B,C,D,E, a2, b2,c2,d2,e2,f2,g2);
	input A,B,C,D,E;
	output a2,b2,c2,d2,e2,f2,g2;
	
	wire nA, nB, nC, nD, nE;
		 not notA(nA,A);
		 not notB(nB,B);
		 not notC(nC,C);
		 not notD(nD,D);
		 not notE(nE,E);
		 
	//Segmento "a2"		 
	wire fio1, fio2,fio3,fio4,fio5,fio6, fio7, fio8;

	or or1 (fio1, B, C);
	and and1(fio2, A,fio1);

	and and2(fio3,C, nD,E);
	and and3(fio4, nC, D, nE);
	or or2(fio5, fio3,fio4);
	and and4(fio6, B,fio5);

	and and5(fio7,nB,C,nD,nE);

	and and6(fio8, nA, nB, nC, nD, E);

	or or3(a2, fio2, fio6, fio7, fio8); //Saida segmento "a2"

	//Segmento "b2"
	wire fio9 ,fio10, fio11, fio12, fio13, fio14; 
	or or4(fio9, B,C,E);
	and and7(fio10, A, fio9);

	and and8(fio11, D, nE );
	and and9(fio12, nB, nD, E);
	or or5(fio13, fio11, fio12);
	and and10( fio14, C, fio13);

	or or6(b2, fio10, fio14 ); //Saida segmento "b2"

	//Segmento "c2" 
	wire fio15, fio16, fio17, fio18, fio19;
	and and11(fio15, nD,E);
	or or7(fio16, B,C,fio15);
	and and12(fio17,A, fio16);

	and and13(fio18,B, nC, D, E);

	and and14(fio19, nA, nB, nC, D, nE);

	or or8(c2,fio17, fio18, fio19); //Saida segmento "c2"

	//Segmento d2"
	wire fio20, fio21, fio22, fio23, fio24;

	and and15(fio20, nD, nE);
	or or9(fio21, B, C, fio20);
	and and16(fio22, A, fio21);

	//O fio 6 foi reaproveitado do seg "a2"

	xnor xnor1(fio23, D, E);
	and and17(fio24, nB, C, fio23);

	//O fio 8 foi reaproveitado do seg "a2"

	or or10(d2, fio22, fio6, fio24, fio8); //Saida segmento "d2"

	//Segmento "e2"
	wire fio25, fio26, fio27, fio28, fio29;
	//Fio 2 reaproveitado do seg "a"

	or or11(fio25, nD, E);
	and and18(fio26, C, fio25);

	xor xor1(fio27, B, E);
	and and19(fio28, D, fio27);

	and and20(fio29, nA, nD, E);

	or or12(e2, fio2, fio26, fio28, fio29); //Saida segmento "e2"

	//Segmento "f"
	wire fio30, fio31, fio32, fio33, fio34, fio35, fio36;

	//Fio 2 reaproveitado do seg "a"

	and and21(fio30, nB, E);
	or or13(fio31, D, fio30);
	and and22(fio32, nA, nC, fio31);

	and and23(fio33, B ,nD, nE);
	and and24(fio34, nB ,D, E);
	or or14(fio35, fio33, fio34);
	and and25(fio36, C, fio35);

	or or15(f2,fio2, fio32, fio36); //Saida segmento "f2"

	//Segmento g
	wire fio37, fio38, fio39, fio40, fio41, fio42, fio43, fio44, fio45;
	
	and and26(fio37, D, nE);
	or or16(fio38, C, B, fio37); 
	and and27(fio39, A, fio38);
	
	and and28(fio40, B, nC, nE);
	and and29(fio41, nB, C, E);
	or or17(fio42, fio40, fio41);
	and and30(fio43, D, fio42);
	
	and and31(fio44, nB, nC, nD,E);
	
	and and32 (fio45, nA, nB, nC, nD);
	
	or or19(g2, fio39, fio43, fio44, fio45); //Saida segmento "g2"
	
endmodule