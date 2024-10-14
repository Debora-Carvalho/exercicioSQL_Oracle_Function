-- Função para o Cálculo do BÔNUS DO TORCEDOR
-- Se o funcionário for palmeirense - bônus de 300%
-- Se o funcionário for santista - bônus de 100%
-- Se o funcionário for são-paulino - bônus de 50%
-- Se o funcionário for corinthiano - bônus de -200%

--utilizando Varchar
CREATE OR REPLACE FUNCTION FUNC_CALC_BONUSTORCEDOR
(
    V_SB IN NUMBER,
    V_TIME IN VARCHAR2
)
RETURN NUMBER
IS
BEGIN
    IF V_TIME = 'PALMEIRAS' || V_TIME = 'Palmeiras' THEN
        RETURN V_SB * 3;
    ELSE IF V_TIME = 'SANTOS' || 'Santos' THEN
        RETURN V_SB * 1;
    ELSE IF V_TIME = 'SAO PAULO' || 'Sao Paulo' THEN
            RETURN V_TIME * 0.50;
    ELSE RETURN V_SB * (-2);
        END IF;
    END IF;
    END IF;
END;

-- utilizando o codigo do time
CREATE OR REPLACE FUNCTION FUNC_CALC_BONUSTORCEDOR
(
    V_SB IN NUMBER,
    V_TIME IN NUMBER
)
RETURN NUMBER
IS
BEGIN
    IF V_TIME = 1 THEN
        RETURN V_SB * 3;
    ELSE IF V_TIME = 2 THEN
            RETURN V_SB;
        ELSE IF V_TIME = 3 THEN
            RETURN V_TIME * 0.50;
            ELSE RETURN V_SB * (-2);
            END IF;
        END IF;
    END IF;
END;