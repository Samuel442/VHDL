
-- IMPLEMENTAÇÃO DE UM CIRCUITO LÓGICO COMBINACIONAL A PARTIR DO CIRCUITO 1 DO ARQUIVO ANEXO (COMPLEMENTO.DOC)
-- UTILIZAÇÃO DE SINAL INTERMEDIÁRIO (VARIÁVEL DECLARADA NA ARQUITETURA)

ENTITY PROJETO02 IS
PORT ( A, B, C, D : IN  BIT   ;
       S          : OUT BIT ) ;
END PROJETO02 ;

ARCHITECTURE PROJ02 OF PROJETO02 IS
SIGNAL VAR01, VAR02, VAR03, VAR04, VAR05, VAR06, VAR07, VAR08, VAR09, VAR10, VAR11, VAR12 : BIT ;

BEGIN
VAR01 <= B AND (NOT D)    ;
VAR02 <= (NOT B) AND D    ;
VAR03 <= C AND D          ;
VAR04 <= (NOT A) OR C     ;
VAR05 <= B NAND D         ;
VAR06 <= VAR01 NOR A      ;
VAR07 <= VAR02 OR VAR03   ;
VAR08 <= VAR04 AND VAR05  ;
VAR09 <= VAR06 NAND VAR07 ;
VAR10 <= C NOR VAR08      ;

S <= VAR09 AND VAR10      ;

END PROJ02 ;