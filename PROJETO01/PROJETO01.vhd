
-- IMPLEMENTA��O DE UM CIRCUITO L�GICO COMBINACIONAL A PARTIR DO CIRCUITO 1 DO ARQUIVO ANEXO (COMPLEMENTO.DOC)

ENTITY PROJETO01 IS
PORT ( A, B, C, D : IN  BIT   ;
       S          : OUT BIT ) ;
END PROJETO01 ;

ARCHITECTURE PROJ01 OF PROJETO01 IS
BEGIN

S <=    (((B AND (NOT D)) NOR A) NAND (((NOT B) AND D) OR (C AND D))) AND ((((NOT A) OR C) AND (B NAND D)) NOR C) ;

END PROJ01 ;