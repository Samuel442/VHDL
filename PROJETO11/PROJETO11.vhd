
-- IMPLEMENTA��O EM VHDL DE UM LATCH NAND (CIRCUITO 05) DO ARQUIVO ANEXO (COMPLEMENTO.DOC)

ENTITY PROJETO11 IS
PORT (SETA, RESETA : IN BIT;
      Q : BUFFER BIT ) ;
END PROJETO11 ;

ARCHITECTURE PROJ11 OF PROJETO11 IS

BEGIN

PROCESS ( SETA, RESETA )
	BEGIN
		IF      SETA = '1' THEN Q <= '1' ;
		ELSIF RESETA = '1' THEN Q <= '0' ;
		ELSE                    Q <= Q   ;
		END IF ;
	END PROCESS ;
END PROJ11 ;