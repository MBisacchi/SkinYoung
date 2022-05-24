-- Script: Projeto Individual 
-- SkinYoung

-- Criação do banco de dados:
create database skinyoung;

-- Usar banco de dados:
use skinyoung;

-- Criação da tabela 'Usuário':
create table usuario (
idUsuario int primary key auto_increment,
nome varchar (70),
email varchar (70),
dtNasc date,
senha varchar (45)
);

-- Criação da tabela 'Alerta':
create table alerta (
idAlerta int primary key auto_increment,
tipoAlerta varchar (45),
dtAlerta date,
fkUsuario int,
foreign key (fkUsuario) references usuario(idUsuario)
);

-- Criação da tabela 'Quiz':
create table quiz (
idQuiz int primary key auto_increment,
nome varchar (45)
);

-- Criação da tabela 'Relatório':
create table relatorio (
fkUsuario int,
foreign key (fkUsuario) references usuario(idUsuario),
fkQuiz int,
foreign key (fkQuiz) references quiz(idQuiz),
primary key (fkUsuario, fkQuiz),
dtQuiz datetime default current_timestamp,
resultado varchar (45)
);




/* para sql server aquactec
 - remoto - produção da 
 
CREATE TABLE usuario (
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
);

CREATE TABLE aviso (
	id INT PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(100),
    descricao VARCHAR(150),
	fk_usuario INT FOREIGN KEY REFERENCES usuario(id)
); 

CREATE TABLE medida (
	id INT PRIMARY KEY IDENTITY(1,1),
	temperatura DECIMAL,
	umidade DECIMAL,
	momento DATETIME,
	fk_aquario INT
);

*/
