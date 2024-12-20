CREATE SCHEMA EC1_CC1M;
USE EC1_CC1M;

CREATE TABLE IF NOT EXISTS FORNECEDORES(
FORNEC_COD INT PRIMARY KEY,
FORNEC_NOME VARCHAR(45) NOT NULL,
FORNEC_RUA VARCHAR(45) NOT NULL,
FORNEC_NUMRUA INT,
FORNEC_BAIRRO VARCHAR(45) NOT NULL,
FORNEC_CIDADE VARCHAR(45) NOT NULL,
FORNEC_ESTADO VARCHAR(45) NOT NULL,
FORNEC_PAIS VARCHAR(30) NOT NULL,
FORNEC_CODPOSTAL VARCHAR(10) NOT NULL,
FORNEC_TELEFONE VARCHAR(15) NOT NULL,
FORNEC_CONTATO TEXT NOT NULL);

ALTER TABLE EC1_CC1M.FORNCEDORES ADD COLUMN FORNEC_TESTE VARCHAR(50);
ALTER TABLE EC1_CC1M.FORNCEDORES MODIFY COLUMN FORNEC_TESTE INT;
ALTER TABLE EC1_CC1M.FORNCEDORES CHANGE COLUMN FORNEC_TESTE FORNEC_TESTE1 INT;
ALTER TABLE EC1_CC1M.FORNCEDORES DROP COLUMN FORNEC_TESTE;


CREATE TABLE IF NOT EXISTS FILIAIS(
FILIAL_COD INT PRIMARY KEY,
FILIAL_NOME VARCHAR(45) NOT NULL,
FILIAL_RUA VARCHAR(100) NOT NULL,
FILIAL_NUMRUA INT,
FILIAL_BAIRRO VARCHAR(50) NOT NULL,
FILIAL_CIDADE VARCHAR(50) NOT NULL,
FILIAL_ESTADO VARCHAR(50) NOT NULL,
FILIAL_PAIS VARCHAR(50) NOT NULL,
FILIAL_CODPOSTAL VARCHAR(10) NOT NULL,
FILIAL_CAPACIDADE TEXT NOT NULL);

ALTER TABLE EC1_CC1M.FILIAIS ADD COLUMN FILIAL_TESTE VARCHAR(51);
ALTER TABLE EC1_CC1M.FILIAIS MODIFY COLUMN FILIAL_TESTE INT;
ALTER TABLE EC1_CC1M.FILIAIS CHANGE COLUMN FILIAL_TESTE FILIAL_TESTE1 INT;
ALTER TABLE EC1_CC1M.FILIAIS DROP COLUMN FILIAL_TESTE;


CREATE TABLE IF NOT EXISTS PRODUTOS(
PROD_COD INT PRIMARY KEY,
PROD_NOME VARCHAR(50) NOT NULL,
PROD_DESCRICAO TEXT NOT NULL,
PROD_ESPECTEC TEXT NOT NULL,
PROD_QUANT DECIMAL(10,3) NOT NULL,
PROD_PRECOUNIT DECIMAL(10,2) NOT NULL,
PROD_UNIDMEDIDA VARCHAR(10) NOT NULL,
PROD_ESTOQ_MIN DECIMAL(10,3) NOT NULL);

ALTER TABLE EC1_CC1M.PRODUTOS ADD COLUMN PRODUTO_TESTE VARCHAR(52);
ALTER TABLE EC1_CC1M.PRODUTOS MODIFY COLUMN PRODUTO_TESTE INT;
ALTER TABLE EC1_CC1M.PRODUTOS CHANGE COLUMN PRODUTO_TESTE PRODUTO_TESTE1 INT;
ALTER TABLE EC1_CC1M.PRODUTOS DROP COLUMN PRODUTO_TESTE;


CREATE TABLE IF NOT EXISTS PEDIDOS(
PED_CODIGO INT PRIMARY KEY,
PED_DATA DATE NOT NULL,
PED_HORA TIME NOT NULL,
PED_PREVISAO DATE NOT NULL,
PED_STATUS ENUM('PENDENTE','CONCLUÍDO','EM ESPERA'),
PED_FORNECEDOR INT NOT NULL,
CONSTRAINT FK_FORNECEDOR FOREIGN KEY (PED_FORNECEDOR) REFERENCES FORNECEDORES(FORNEC_COD));

ALTER TABLE EC1_CC1M.PEDIDOS ADD COLUMN PED_TESTE VARCHAR(53);
ALTER TABLE EC1_CC1M.PEDIDOS MODIFY COLUMN PED_TESTE INT;
ALTER TABLE EC1_CC1M.PEDIDOS CHANGE COLUMN PED_TESTE PED_TESTE1 INT;
ALTER TABLE EC1_CC1M.PEDIDOS DROP COLUMN PED_TESTE;


CREATE TABLE IF NOT EXISTS RECEBIMENTOS(
RECEB_DATA DATE NOT NULL,
RECEB_HORA TIME NOT NULL,
RECEB_QUANT_PROD DECIMAL(10,3),
RECEB_CONDICAO TEXT NOT NULL,
RECEB_PEDIDOS INT PRIMARY KEY,
CONSTRAINT FK_PEDIDOS FOREIGN KEY(RECEB_PEDIDOS) REFERENCES PEDIDOS(PED_CODIGO));

ALTER TABLE EC1_CC1M.RECEBIMENTOS ADD COLUMN RECEB_TESTE VARCHAR(54);
ALTER TABLE EC1_CC1M.RECEBIMENTOS MODIFY COLUMN RECEB_TESTE INT;
ALTER TABLE EC1_CC1M.RECEBIMENTOS CHANGE COLUMN RECEB_TESTE RECEB_TESTE1 INT;
ALTER TABLE EC1_CC1M.RECEBIMENTOS DROP COLUMN RECEB_TESTE;


CREATE TABLE IF NOT EXISTS PEDIDOS_PRODUTOS(
PDPR_PEDIDOS INT,
PDPR_PRODUTOS INT,
PRIMARY KEY(PDPR_PEDIDOS,PDPR_PRODUTOS),
PDPR_QUANT DECIMAL(10,3) NOT NULL,
CONSTRAINT PDPR_FK_PEDIDOS FOREIGN KEY(PDPR_PEDIDOS) REFERENCES PEDIDOS(PED_CODIGO),
CONSTRAINT PDPR_FK_PRODUTOS FOREIGN KEY(PDPR_PRODUTOS) REFERENCES PRODUTOS(PROD_COD));

ALTER TABLE EC1_CC1M.PEDIDOS_PRODUTOS ADD COLUMN PDPR_TESTE VARCHAR(55);
ALTER TABLE EC1_CC1M.PEDIDOS_PRODUTOS MODIFY COLUMN PDPR_TESTE INT;
ALTER TABLE EC1_CC1M.PEDIDOS_PRODUTOS CHANGE COLUMN PDPR_TESTE PDPR_TESTE1 INT;
ALTER TABLE EC1_CC1M.PEDIDOS_PRODUTOS DROP COLUMN PDPR_TESTE1;


CREATE TABLE IF NOT EXISTS FILIAIS_PRODUTOS(
FLPR_FILIAL INT,
FLPR_PRODUTOS INT,
PRIMARY KEY(FLPR_FILIAL,FLPR_PRODUTOS),
FLPR_QUANT DECIMAL(10,3) NOT NULL,
CONSTRAINT FLPR_FK_FILIAIS FOREIGN KEY(FLPR_FILIAL) REFERENCES FILIAIS(FILIAL_COD),
CONSTRAINT FLPR_FK_PRODUTOS FOREIGN KEY(FLPR_PRODUTOS) REFERENCES PRODUTOS(PROD_COD));

ALTER TABLE EC1_CC1M.FILIAIS_PRODUTOS ADD COLUMN FLPR_TESTE VARCHAR(56);
ALTER TABLE EC1_CC1M.FILIAIS_PRODUTOS MODIFY COLUMN FLPR_TESTE INT;
ALTER TABLE EC1_CC1M.FILIAIS_PRODUTOS CHANGE COLUMN FLPR_TESTE FLPR_TESTE1 INT;
ALTER TABLE EC1_CC1M.FILIAIS_PRODUTOS DROP COLUMN FLPR_TESTE1;


CREATE TABLE IF NOT EXISTS FORNECEDORES_PRODUTOS(
FRPR_FORNECEDOR INT,
FRPR_PRODUTOS INT,
PRIMARY KEY(FRPR_FORNECEDOR,FRPR_PRODUTOS),
CONSTRAINT FRPR_FK_FORNECEDORES FOREIGN KEY(FRPR_FORNECEDOR) REFERENCES FORNECEDORES(FORNEC_COD),
CONSTRAINT FRPR_FK_PRODUTOS FOREIGN KEY(FRPR_PRODUTOS) REFERENCES PRODUTOS(PROD_COD));

ALTER TABLE EC1_CC1M.FORNECEDORES_PRODUTOS ADD COLUMN FRPR_TESTE VARCHAR(56);
ALTER TABLE EC1_CC1M.FORNECEDORES_PRODUTOS MODIFY COLUMN FRPR_TESTE INT;
ALTER TABLE EC1_CC1M.FORNECEDORES_PRODUTOS CHANGE COLUMN FRPR_TESTE FRPR_TESTE1 INT;
ALTER TABLE EC1_CC1M.FORNECEDORES_PRODUTOS DROP COLUMN FRPR_TESTE1;


CREATE TABLE IF NOT EXISTS TABELA_DROP(
TESTE_DROP INT PRIMARY KEY,
TESTE_NOME VARCHAR(50) NOT NULL);


ALTER TABLE EC1_CC1M.TABELA_DROP;