
-- CONTADOR ASS�NCRONO CRESCENTE DE 0 A 5 (CIRCUITO 08) DO ARQUIVO ANEXO (COMPLEMENTO.DOC)

ENTITY PROJETO14 IS
PORT ( CLOCK, INICIA : IN BIT ;
	   QOUT          : BUFFER BIT_VECTOR (2 DOWNTO 0) );
END PROJETO14 ;

ARCHITECTURE PROJ14 OF PROJETO14 IS
SIGNAL AUX : BIT ;

	COMPONENT PROJETO12
	PORT (PRN, CLRN, CLKN, J, K : IN BIT;
      Q : BUFFER BIT ) ;
	END COMPONENT; 

BEGIN

AUX <= INICIA AND (NOT(QOUT(2) AND QOUT(1) AND (NOT QOUT(0))));

FF0 : PROJETO12 PORT MAP (J => '1', K => '1', CLKN => CLOCK,   CLRN => AUX, PRN => '1', Q => QOUT(0));
FF1 : PROJETO12 PORT MAP (J => '1', K => '1', CLKN => QOUT(0), CLRN => AUX, PRN => '1', Q => QOUT(1));
FF2 : PROJETO12 PORT MAP (J => '1', K => '1', CLKN => QOUT(1), CLRN => AUX, PRN => '1', Q => QOUT(2));

END PROJ14;

-- COMPONENTE: FLIP FLOP JK MESTRE ESCRAVO COM PRESET E CLEAR

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