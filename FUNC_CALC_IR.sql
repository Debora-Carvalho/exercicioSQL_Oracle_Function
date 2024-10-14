-- Função para o Cálculo do FGTS
-- Se SB menor ou igual a 2500,00   - ISENTO
-- Se SB maior que 2500,00 e menor que 5000,00, o IR será de 15% do SB.
-- Se SB maior ou igual a 5000,00, o IR será de 27,5% do SB

CREATE OR REPLACE FUNCTION FUNC_CALC_IR
(
    V_SB IN NUMBER
)
RETURN NUMBER
IS
BEGIN
    IF V_SB <= 2500 THEN
        RETURN 0;
    ELSE IF V_SB > 2500 AND V_SB < 5000 THEN
            RETURN V_SB * 0.15;
        ELSE RETURN V_SB * 0.275;
        END IF;
    END IF;
END;
