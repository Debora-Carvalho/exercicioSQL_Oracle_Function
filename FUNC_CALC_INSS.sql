-- Função para o Cálculo do INSS
-- INSS será igual a 20% do SB

CREATE OR REPLACE FUNCTION FUNC_CALC_INSS
(
    V_SB IN NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN V_SB * 0.20;
END;

-- Bloco anônimo alternativo, utilizando a função como variável, pois a função passa a valer o valor do RETURN
BEGIN
    DBMS_OUTPUT.PUT_LINE('INSS: ' || FUNC_CALC_INSS(7000));
END;
