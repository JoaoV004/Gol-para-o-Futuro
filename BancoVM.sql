-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql server
*/

CREATE DATABASE gol_futuro;

USE gol_futuro;


CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50) unique,
	senha VARCHAR(50)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);


create table quiz (
	idQuiz INT PRIMARY KEY AUTO_INCREMENT,
	liga varchar(30),
    timeSelecionado varchar(30),
    fkUsuario int,
    foreign key (fkUsuario) references usuario(id)
);



select * from aviso;

select timeSelecionado from quiz
where timeSelecionado = 'flamengo';


truncate table usuario;
use gol_futuro;


