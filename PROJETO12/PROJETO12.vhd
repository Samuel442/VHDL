
-- IMPLEMENTAÇÃO EM VHDL DE UM FLIP FLOP JK MESTRE ESCRAVO COM PRESET E CLEAR (CIRCUITO 06) DO ARQUIVO ANEXO (COMPLEMENTO.DOC)

ENTITY PROJETO12 IS
PORT (PRN, CLRN, CLKN, J, K : IN BIT;
      Q : BUFFER BIT ) ;
END PROJETO12 ;

ARCHITECTURE PROJ12 OF PROJETO12 IS
BEGIN

PROCESS ( PRN, CLRN, CLKN )
	BEGIN
		IF     PRN = '0' THEN Q <= '1' ;
		ELSIF CLRN = '0' THEN Q <= '0' ;
		ELSIF CLKN = '0' AND CLKN 'EVENT THEN 
			IF    J = '1' AND K = '1' THEN Q <= NOT Q ;
		    ELSIF J = '1' AND K = '0' THEN Q <= '1' ;
		    ELSIF J = '0' AND K = '1' THEN Q <= '0' ;
			END IF ;
		END IF;
	END PROCESS ;
	Q <= Q ;
END PROJ12 ;