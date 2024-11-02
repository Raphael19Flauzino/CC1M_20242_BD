CREATE DATABASE ESTUDO_DE_CASO_II;
USE ESTUDOS_DE_CASO_II;

CREATE TABLE IF NOT EXISTS PASSAGEIROS(
PASS_CPF INT PRIMARY KEY,
PASS_NOME VARCHAR(50) NOT NULL,
PASS_TELEFONE VARCHAR(15) NOT NULL, 
PASS_EMAIL VARCHAR(70) NOT NULL,
PASS_BAIRRO VARCHAR(50) NOT NULL,
PASS_RUA VARCHAR(50) NOT NULL,
PASS_NUMRUA INT NOT NULL,
PASS_CIDADE VARCHAR(50) NOT NULL,
PASS_ESTADO VARCHAR(20) NOT NULL,
PASS_CEP VARCHAR(10) NOT NULL,
PASS_PAÍS VARCHAR(50) NOT NULL);

ALTER TABLE ESTUDO_DE_CASO_II.PASSAGEIRO ADD COLUMN PASS_TESTE VARCHAR(50);
ALTER TABLE ESTUDO_DE_CASO_II.PASSAGEIRO MODIFY COLUMN PASS_TESTE INT;
ALTER TABLE ESTUDO_DE_CASO_II.PASSAGEIRO CHANGE COLUMN PASS_TESTE PASS_TESTE1 INT;
ALTER TABLE ESTUDO_DE_CASO_II.PASSAGEIRO DROP COLUMN PASS_TESTE1;

CREATE TABLE IF NOT EXISTS VOOS(
VOO_ID INT PRIMARY KEY,
VOO_DATA DATE NOT NULL,
VOO_HORA TIME NOT NULL,
VOO_AEROP_ORIGEM VARCHAR(50) NOT NULL,
VOO_AEROP_DESTINO VARCHAR(50) NOT NULL,
VOO_AERONAVE TEXT NOT NULL);

ALTER TABLE ESTUDO_DE_CASO_II.VOOS ADD COLUMN VOO_TESTE VARCHAR(51);
ALTER TABLE ESTUDO_DE_CASO_II.VOOS MODIFY COLUMN VOO_TESTE INT;
ALTER TABLE ESTUDO_DE_CASO_II.VOOS CHANGE COLUMN VOO_TESTE VOO_TESTE1 INT;
ALTER TABLE ESTUDO_DE_CASO_II.VOOS DROP COLUMN VOO_TESTE1; 

CREATE TABLE IF NOT EXISTS RESERVAS(
RESER_COD INT PRIMARY KEY,
RESER_PASSAGEIRO INT NOT NULL,
RESER_VOOS INT NOT NULL,
CONSTRAINT FK_PASSAGEIROS FOREIGN KEY(RESER_PASS) REFERENCES PASSAGEIROS(PASS_CPF),
CONSTRAINT FK_VOOS FOREIGN KEY(RESER_VOO) REFERENCES VOOS(VOO_ID));

ALTER TABLE ESTUDO_DE_CASO_II.RESERVAS ADD COLUMN RESER_TESTE VARCHAR(52);
ALTER TABLE ESTUDO_DE_CASO_II.RESERVAS MODIFY COLUMN RESER_TESTE INT;
ALTER TABLE ESTUDO_DE_CASO_II.RESERVAS CHANGE COLUMN RESER_TESTE RESER_TESTE1 INT;
ALTER TABLE ESTUDO_DE_CASO_II.RESERVAS DROP COLUMN RESER_TESTE1; 


CREATE TABLE IF NOT EXISTS AERONAVES(
AERON_PREFIXO TEXT PRIMARY KEY,
AERON_MODELO TEXT NOT NULL,
AERON_ANAFABR DATE NOT NULL,
AERON_AUTONOMIA TEXT NOT NULL,
AERON_CAPACIDADE INT NOT NULL,
AERON_FABRICANTE VARCHAR(50) NOT NULL);

ALTER TABLE ESTUDO_DE_CASO_II.AERONAVES ADD COLUMN AERON_TESTE VARCHAR(53);
ALTER TABLE ESTUDO_DE_CASO_II.AERONAVES MODIFY COLUMN AERON_TESTE INT;
ALTER TABLE ESTUDO_DE_CASO_II.AERONAVES CHANGE COLUMN AERON_TESTE AERON_TESTE1 INT;
ALTER TABLE ESTUDO_DE_CASO_II.AERONAVES DROP COLUMN AERON_TESTE1; 


CREATE TABLE IF NOT EXISTS AEROPORTOS(
AEROP_CODIGO INT PRIMARY KEY,
AEROP_NOME VARCHAR(50) NOT NULL,
AEROP_CIDADE VARCHAR(30) NOT NULL,
AEROP_PAIS VARCHAR(30) NOT NULL,
AEROP_LATITUDE FLOAT(10,6) NOT NULL,
AEROP_LONGITUDE FLOAT(10,6) NOT NULL);

ALTER TABLE ESTUDO_DE_CASO_II.AEROPORTOS ADD COLUMN AEROP_TESTE VARCHAR(54);
ALTER TABLE ESTUDO_DE_CASO_II.AEROPORTOS MODIFY COLUMN AEROP_TESTE INT;
ALTER TABLE ESTUDO_DE_CASO_II.AEROPORTOS CHANGE COLUMN AEROP_TESTE AEROP_TESTE1 INT;
ALTER TABLE ESTUDO_DE_CASO_II.AEROPORTOS DROP COLUMN AEROP_TESTE1; 


CREATE TABLE IF NOT EXISTS FUNCIONARIOS(
FUNC_ID INT PRIMARY KEY,
FUNC_FUNCAO TEXT NOT NULL,
FUNC_CPF INT UNIQUE,
FUNC_NOME VARCHAR(50) NOT NULL,
FUNC_DATA_NASC DATE NOT NULL,
FUNC_RUA VARCHAR(50) NOT NULL,
FUNC_NUMRUA INT NOT NULL,
FUNC_BAIRRO VARCHAR(50) NOT NULL,
FUNC_CEP VARCHAR(9) NOT NULL,
FUNC_CIDADE VARCHAR(50) NOT NULL,
FUNC_ESTADO VARCHAR(50) NOT NULL,
FUNC_PAIS VARCHAR(50) NOT NULL);

ALTER TABLE ESTUDO_DE_CASO_II.FUNCIONARIOS ADD COLUMN FUNC_TESTE VARCHAR(55);
ALTER TABLE ESTUDO_DE_CASO_II.FUNCIONARIOS MODIFY COLUMN FUNC_TESTE INT;
ALTER TABLE ESTUDO_DE_CASO_II.FUNCIONARIOS CHANGE COLUMN FUNC_TESTE FUNC_TESTE1 INT;
ALTER TABLE ESTUDO_DE_CASO_II.FUNCIONARIOS DROP COLUMN FUNC_TESTE1; 


CREATE TABLE IF NOT EXISTS OPERAÇÃO_DE_VOO(
OPVOO_VOOS INT NOT NULL,
OPVOO_FUNCIONARIOS INT NOT NULL,
PRIMARY KEY(OPVOO_VOOS, OPVOO_FUNCIONARIOS),
CONSTRAINT OPVOO_FK_VOOS FOREIGN KEY(OPVOO_VOOS) REFERENCES VOOS(VOO_ID),
CONSTRAINT OPVOO_FK_FUNCIONARIOS FOREIGN KEY(OPVOO_FUNCIONARIOS) REFERENCES FUNCIONARIOS(FUNC_ID));

ALTER TABLE ESTUDO_DE_CASO_II.OPERAÇÃO_DE_VOO ADD COLUMN OPVOO_TESTE VARCHAR(55);
ALTER TABLE ESTUDO_DE_CASO_II.OPERAÇÃO_DE_VOO MODIFY COLUMN OPVOO_TESTE INT;
ALTER TABLE ESTUDO_DE_CASO_II.OPERAÇÃO_DE_VOO CHANGE COLUMN OPVOO_TESTE OPVOO_TESTE1 INT;
ALTER TABLE ESTUDO_DE_CASO_II.OPERAÇÃO_DE_VOO DROP COLUMN OPVOO_TESTE1;


CREATE TABLE IF NOT EXISTS TABELA_DROP2(
TESTE_DROP2 INT PRIMARY KEY,
TESTE_NOME2 VARCHAR(50) NOT NULL);


ALTER TABLE ESTUDO_DE_CASO_II.TABELA_DROP2;