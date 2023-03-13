
-- IMPLEMENTA��O EM VHDL DO CIRCUITO 04 DO ARQUIVO ANEXO (COMPLEMENTO.DOC)

ENTITY PROJETO10 IS
PORT ( D0, D1, D2, D3 : IN BIT ;
       A, B : IN BIT_VECTOR (1 DOWNTO 0) ;
       S : OUT BIT );
END PROJETO10;


ARCHITECTURE PROJ10 OF PROJETO10 IS
SIGNAL E, S0, S1, S2, S3, AUX1, AUX2, AUX3, AUX4 : BIT ;

BEGIN

-- MUX
WITH A SELECT
E <= D0 WHEN "00",
     D1 WHEN "01",
     D2 WHEN "10",
     D3 WHEN "11";

-- DEMUX
S0 <= E WHEN B = "00" ELSE '1';
S1 <= E WHEN B = "01" ELSE '1';
S2 <= E WHEN B = "10" ELSE '1';
S3 <= E WHEN B = "11" ELSE '1';

AUX1 <= S0 XOR S1      ;
AUX2 <= S2 XNOR S3     ;
AUX3 <= A(1) XNOR B(0) ;
AUX4 <= AUX1 AND AUX2  ;
S <= AUX4 NOR AUX3     ;

END PROJ10;
