
-- IMPLEMENTAÇÃO DE UM MULTIPLEXADOR 4x1 CONFORME CIRCUITO 02 DO ARQUIVO ANEXO (COMPLEMENTO.DOC)
-- DECLARAÇÃO DE VARIÁVEL INTEIRA NA ENTIDADE PRINCIPAL

ENTITY PROJETO06 IS
PORT ( D0, D1, D2, D3 : IN BIT     ; 
       A : IN INTEGER RANGE 0 TO 3 ;
       S : OUT BIT               ) ;
END PROJETO06 ;

ARCHITECTURE PROJ06 OF PROJETO06 IS
BEGIN

WITH A SELECT
S <= D0 WHEN 0 ,
     D1 WHEN 1 ,
     D2 WHEN 2 ,
     D3 WHEN 3 ;
     
END PROJ06 ;