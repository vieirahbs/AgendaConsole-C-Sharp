USE AGENDA_CONSOLE

CREATE TABLE USUARIO
(
	ID_US INT IDENTITY (20220, 1),
	NOME_US VARCHAR (50) NOT NULL,
	LOGIN_US VARCHAR (15) NOT NULL,
	SENHA_US VARCHAR (32) NOT NULL
	CONSTRAINT PK_ID_USUARIO PRIMARY KEY (ID_US)
)
DELETE FROM USUARIO WHERE ID_US = 20221;
select * from USUARIO
CREATE TABLE CONTATO
(	
	ID INT IDENTITY,
	ID_US INT NOT NULL,
	NOME VARCHAR (60) NOT NULL,
	TELEFONE VARCHAR (15)
	CONSTRAINT FK_ID_USUARIO FOREIGN KEY (ID_US) REFERENCES USUARIO (ID_US)
	CONSTRAINT PK_ID_CONTATO PRIMARY KEY (ID)
)

