CREATE DATABASE dbpapelaria;
USE dbpapelaria;

CREATE TABLE tblproduto(
codigo_prod INT PRIMARY KEY AUTO_INCREMENT,
descricao_prod VARCHAR(150),
prc_prod DECIMAL(10,2)
);

INSERT INTO tblproduto
VALUES
(NULL,'FOLHA DE PAPEL A4',15.99);

CREATE TABLE tblcidade(
codigo_cidade INT PRIMARY KEY AUTO_INCREMENT,
nome_cidade VARCHAR(50),
uf_cidade CHAR(2)
);

ALTER TABLE tblproduto
ADD COLUMN codigo_barras VARCHAR(12);

SELECT * FROM tblproduto;

UPDATE tblproduto SET codigo_barras = 
'ABC123' WHERE codigo_prod = 1;

SELECT * FROM tblproduto;

INSERT INTO tblcidade VALUES
(NULL,'FRANCA','SP'),
(NULL,'RIBEIRÃO PRETO','SP'),
(NULL,'SÃO PAULO','SP'),
(NULL,'CURITIBA','PR');

SELECT * FROM tblcidade;

DELETE FROM tblcidade 
WHERE codigo_cidade = 1;

INSERT INTO tblproduto
VALUES
(NULL,'PINCEL PARA QUADRO BRANCO',7.95,'AAE123');

ALTER TABLE tblcidade
ADD COLUMN populacao_cidade INT;

UPDATE tblcidade SET populacao_cidade = 330000
WHERE codigo_cidade = 5;

SELECT * FROM tblcidade;

DESC tblproduto;

ALTER TABLE tblproduto
DROP COLUMN codigo_barras;

DESC tblproduto;

SELECT * FROM tblproduto;

UPDATE tblproduto SET
descricao_prod = 'CORRETIVO ERROREX',
prc_prod = 2.50 WHERE codigo_prod = 2;

#SEM WHERE (PERIGO)
UPDATE tblproduto SET
descricao_prod = 'CORRETIVO ERROREX',
prc_prod = 2.50;

DROP TABLE tblcidade;

SHOW TABLES;

CREATE TABLE tblmarcas(
codigo_marca INT PRIMARY KEY AUTO_INCREMENT,
marca_produto VARCHAR(50)
);

ALTER TABLE tblproduto
ADD COLUMN codigo_marca INT,
ADD FOREIGN KEY (codigo_marca) REFERENCES
tblmarcas(codigo_marca);

DESC tblproduto;

INSERT INTO tblmarcas VALUES
(NULL,'MERCUR'),
(NULL,'CHAMEX');

SELECT * FROM tblproduto;

UPDATE tblproduto SET codigo_marca = 1
WHERE codigo_prod =1;

DELETE FROM tblmarcas WHERE codigo_marca = 1;

DELETE FROM tblproduto WHERE codigo_marca = 1;

UPDATE tblmarcas SET marca_produto = 'CHAMEX 10'
WHERE codigo_marca = 2;

SELECT * FROM tblmarcas;

DELETE FROM tblproduto WHERE codigo_prod = 2;

INSERT INTO tblmarcas VALUES
(NULL,'XEROX');