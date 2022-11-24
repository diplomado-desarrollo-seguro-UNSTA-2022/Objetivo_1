#SELECT Income_Category FROM `schema-unsta`.BankChurners_rectificado;

DROP VIEW BankChurners_mask;
CREATE VIEW BankChurners_mask AS SELECT CONCAT(SUBSTR(Income_Category,1,10), REPEAT('$',CHAR_LENGTH(Income_Category)-5)) AS Income_Category_mask FROM BankChurners_rectificado;
SELECT Income_Category_mask FROM BankChurners_mask;


