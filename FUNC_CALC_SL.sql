-- Dado o salário bruto de um funcionário, calcular seu salário líquido.
-- SL = SB – IR – FGTS – INSS

CREATE OR REPLACE FUNCTION FUNC_CALC_SL
(
    V_SB IN NUMBER
)
RETURN NUMBER
IS
BEGIN
    --Basta subtrair as funções 
    RETURN V_SB - FUNC_CALC_IR(V_SB) - FUNC_CALC_FGTS(V_SB) - FUNC_CALC_INSS(V_SB);
END;


-- Bloco anônimo alternativo, utilizando a função como variável, pois a função passa a valer o valor do RETURN
BEGIN
    DBMS_OUTPUT.PUT_LINE('Salário líquido: ' || FUNC_CALC_SL(7000));
END;