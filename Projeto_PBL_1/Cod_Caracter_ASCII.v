module Cod_Caracter_ASCII(A,B,C,D,E, a, b,c,d,e,f,g);
    input A,B,C,D,E;
    output a,b,c,d,e,f,g;
   
    wire nA, nB, nC, nD, nE;
        not notA(nA,A);
        not notB(nB,B);
        not notC(nC,C);
        not notD(nD,D);
        not notE(nE,E);
		  
    //Segmento "a"       
    wire fio1, fio2, fio3, fio4, fio5, fio6, fio7, fio8;
    
    and and1(fio1, A, C);
    and and2(fio2, A, E);
    and and3(fio3, A, nD);
    and and4(fio4, A, B);
    and and5(fio5, B, C,E);
    and and6(fio6, B, D,E);
    and and7(fio7, nB, C, nD, nE);
    and and8(fio8, nB, nC, nD, E);

    or or1(a, fio1, fio2, fio3, fio4, fio5, fio6, fio7, fio8); //Saida segmento "a"

    //Segmento "b"
    wire fio9, fio10, fio11, fio12;

    and and9(fio9, A, nD, E);
    and and10(fio10, B, C, nE);
    and and11(fio11, C, D, nE);
    and and12(fio12, nB, C, nD, E);

    or or2(b, fio1, fio4, fio9, fio10, fio6, fio11, fio12); //Saida segmento "b"
	//O fio1, fio2, fio4 foram reaproveitados do seg "a"
	 
    //Segmento "c" 
    wire fio13, fio14;

    and and13(fio13, B ,C, D);
    and and14(fio14, nB, nC, D, nE);

    or or3(c, fio1, fio4, fio9, fio10, fio13, fio14); //Saida segmento "c"
	 //O fio1, fio2, fio4, fio9, fio10 foram reaproveitados do seg "a e b"
	 
    //Segmento "d"
    wire fio15, fio16, fio17, fio18, fio19;

    and and15(fio15, nA, C, D, E);
    and and16(fio16, A, nB, nC, D, nE);
    and and17(fio17, nA, B, nC, D, nE);
    and and18(fio18, nA, nB, C, nD, nE);
    and and19(fio19, nA, nB, nC, nD, E);

    or or4(d, fio15, fio16, fio17, fio18, fio19); //Saida segmento "d"

    //Segmento "e"
    wire fio20, fio21, fio22;
	 
    and and20(fio20, nB, C, nD);
    and and21(fio21, nA, nB, E);
    and and22(fio22, B, nC, nD, E);

    or or5(e, fio1, fio4, fio20, fio21, fio22); //Saida segmento "e"
	//O fio1, fio4 foram reaproveitados do seg "a"
	
	//Segmento "f"
    wire fio23, fio24, fio25, fio26, fio27;
    and and23(fio23, A, nD, nE);
    and and24(fio24, B, C, nD, E);
    and and25(fio25, nA, nB, D, E);
    and and26(fio26, nA, nB, nC, D);
    and and27(fio27, nA, nB, nC, E);

    or or6(f, fio1, fio4, fio23, fio24, fio25, fio26, fio27); //Saida segmento "f"
     
    //Segmento "g"
    wire fio28, fio29, fio30;

    and and28(fio28, C, D, E);
    and and29(fio29, nB, nC, nD);
    and and30(fio30, B, C, nD, nE);

    or or7(g, fio1, fio2, fio4, fio28, fio29, fio30); //Saida segmento "g"
	//O fio1, fio2, fio4 foram reaproveitados do seg "a"
	
endmodule