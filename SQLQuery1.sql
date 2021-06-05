DROP DATABASE Teste;

CREATE DATABASE Teste;

USE Teste;

CREATE TABLE dbo.Tbl_Funcionarios(
	i_func_id INT IDENTITY(1,1) PRIMARY KEY,
	vc_func_nome VARCHAR(200),
	vc_func_funcional VARCHAR(50),
	vc_func_filial VARCHAR(50),
);

INSERT INTO dbo.Tbl_Funcionarios (vc_func_nome, vc_func_funcional, vc_func_filial) VALUES ('Paulo da Silva', '00015', 'RJ');

INSERT INTO Tbl_Funcionarios (vc_func_nome, vc_func_funcional, vc_func_filial) VALUES ('Alexandre Gomes', '00017', 'RJ');

INSERT INTO Tbl_Funcionarios (vc_func_nome, vc_func_funcional, vc_func_filial) VALUES ('Joel Ortega', '00033', 'SP');

INSERT INTO Tbl_Funcionarios (vc_func_nome, vc_func_funcional, vc_func_filial) VALUES ('Bruno Cardoso', '00035', 'SP');

SELECT DISTINCT vc_func_filial FROM Tbl_Funcionarios;