-- Função para o Cálculo do FGTS
-- FGTS será igual a 8% do SB.

CREATE OR REPLACE FUNCTION FUNC_CALC_FGTS 
(
    V_SB IN NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN V_SB * 0.08;
END;

-- Bloco anônimo para função do Cálculo do FGTS (FUNC_CALC_FGTS)
DECLARE
    V_SB NUMBER(10,2);
BEGIN
    V_SB := FUNC_CALC_FGTS(7000);
    DBMS_OUTPUT.PUT_LINE('FGTS: ' || V_SB);
END;

-- Bloco anônimo alternativo, utilizando a função como variável, pois a função passa a valer o valor do RETURN
BEGIN
    DBMS_OUTPUT.PUT_LINE('FGTS: ' || FUNC_CALC_FGTS(7000));
END;
