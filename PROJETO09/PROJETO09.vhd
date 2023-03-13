
-- IMPLEMENTA��O DE UM DEMULTIPLEXADOR 1x4 CONFORME CIRCUITO 03 DO ARQUIVO ANEXO (COMPLEMENTO.DOC)
-- DECLARA��O DE VARI�VEL INTEIRA E DO TIPO VETOR NA ENTIDADE PRINCIPAL

ENTITY PROJETO09 IS
PORT ( E : IN BIT                         ; 
       A : IN INTEGER RANGE 0 TO 3        ;
       S : OUT BIT_VECTOR ( 3 DOWNTO 0 )) ;
END PROJETO09 ;

ARCHITECTURE PROJ09 OF PROJETO09 IS
BEGIN

S(0) <= E WHEN A = 0 ELSE '1' ;
S(1) <= E WHEN A = 1 ELSE '1' ;
S(2) <= E WHEN A = 2 ELSE '1' ;
S(3) <= E WHEN A = 3 ELSE '1' ;
     
END PROJ09 ;