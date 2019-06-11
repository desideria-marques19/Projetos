CREATE DATABASE siscom;

USE siscom;

CREATE TABLE produtos 
( codigo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(50) NULL,
  embalagem VARCHAR(20) NULL,
  preco DECIMAL(10,2) NULL,
  qtde_estoque DECIMAL(10,2) NULL,
  categoria VARCHAR(20) NULL,
  PRIMARY KEY(codigo)
);

CREATE TABLE clientes 
( idCliente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  cpf DECIMAL(11) NULL,
  dataNascimento DATE NULL,
  nome VARCHAR(60) NULL,
  endereco VARCHAR(50) NULL,
  bairro VARCHAR(40) NULL,
  cidade VARCHAR(40) NULL,
  estado CHAR(2) NULL,
  telefone VARCHAR(12) NULL,
  celular VARCHAR(12) NULL,
  email VARCHAR(50) NULL,
  PRIMARY KEY(idCliente)
);

CREATE TABLE usuarios
( idUsuario INTEGER NOT NULL AUTO_INCREMENT,
  nome varchar(50) not null,
  cpf decimal(11),
  email varchar(50),
  senha varchar(20),
  PRIMARY KEY(idUsuario)
);

CREATE TABLE pedidos 
( idPedido INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  produtos_codigo INTEGER UNSIGNED NOT NULL,
  clientes_idCliente INTEGER UNSIGNED NOT NULL,
  dataPedido DATETIME NULL,
  valorPedido DECIMAL(10,2) NULL,
  situacao VARCHAR(8) NULL,
  PRIMARY KEY(idPedido),
  FOREIGN KEY(clientes_idCliente) REFERENCES clientes(idCliente),
  FOREIGN KEY(produtos_codigo) REFERENCES produtos(codigo)
);


