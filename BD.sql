create database BD;

use BD;

create table empresa (
	id_empresa INT primary key auto_increment,
    nome varchar(100) not null,
    CNPJ char(14) not null,
    rua varchar(100) not null,
    numero varchar(10) not null,
    bairro varchar(50) not null,
    complemento varchar(50),
    e_mail varchar(100) not null,
    telefone varchar(20) not null, 
    responsavel varchar(100) not null
);

CREATE TABLE funcionario (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    especialista varchar(50) NOT NULL,
    CPF CHAR(11) NOT NULL,
    RG VARCHAR(20) NOT NULL,
    rua VARCHAR(100) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    complemento VARCHAR(50),
    e_mail VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    dataNascimento DATE NOT NULL,
    id_empresa INT NOT NULL,
    FOREIGN KEY (id_empresa) REFERENCES empresa(id_empresa)
);
CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    CPF CHAR(11) NOT NULL,
    RG VARCHAR(20) NOT NULL,
    rua VARCHAR(100) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    complemento VARCHAR(50),
    telefone VARCHAR(20) NOT NULL,
    dataNascimento DATE NOT NULL,
    anamnese TEXT NOT NULL
);

CREATE TABLE servico (
    id_servico INT PRIMARY KEY AUTO_INCREMENT,
    tipoServico VARCHAR(100) NOT NULL,
    especialista VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    tempoExecucao TIME NOT NULL
);

CREATE TABLE funcionario_servico (
    id_funcionario INT NOT NULL,
    id_servico INT NOT NULL,
    PRIMARY KEY (id_funcionario, id_servico),
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario),
    FOREIGN KEY (id_servico) REFERENCES servico(id_servico)
);

CREATE TABLE cliente_servico (
    id_cliente INT NOT NULL,
    id_servico INT NOT NULL,
    PRIMARY KEY (id_cliente, id_servico),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_servico) REFERENCES servico(id_servico)
);

CREATE TABLE funcionario_cliente (
    id_funcionario INT NOT NULL,
    id_cliente INT NOT NULL,
    PRIMARY KEY (id_funcionario, id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);


