CREATE DATABASE PC;
USE PC;

CREATE TABLE usuario (
	id INT (6) AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR (50),
	senha VARCHAR (16),
	nick VARCHAR (15),
	nome_usuario VARCHAR (50),
	cpf VARCHAR (11),
	notificacao VARCHAR (3),
	tipo_usuario VARCHAR(15)
);

CREATE TABLE genero_produto (
	id INT (6) AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR (30)
);

CREATE TABLE tipo_produto (
	id INT(6) AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR (30)
);

CREATE TABLE categoria_produto (
	id INT(6) AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR (30)
);

CREATE TABLE produto (
	id INT (6) AUTO_INCREMENT PRIMARY KEY,
	categoria_id INT,
	genero_id INT,
	tipo_id INT,
	nome VARCHAR (50),
	preco DECIMAL (10,2),
	imagem VARCHAR (255),
	descricao TEXT(600),
	nacionalidade VARCHAR (20),
	FOREIGN KEY (categoria_id) REFERENCES categoria_produto(id),
	FOREIGN KEY (genero_id) REFERENCES genero_produto(id),
	FOREIGN KEY (tipo_id) REFERENCES tipo_produto(id)
);

CREATE TABLE comentario_produto (
	id INT(6) AUTO_INCREMENT PRIMARY KEY,
	usuario_id INT (6),
	produto_id INT (6),
	data date,
	comentario TEXT(600),
	FOREIGN KEY (produto_id) REFERENCES produto(id),	
	FOREIGN KEY (usuario_id) REFERENCES usuario(id)	
);

CREATE TABLE venda (
	id INT(6) AUTO_INCREMENT PRIMARY KEY,
	usuario_id int,
	data_venda date,
	valor_total numeric,
	FOREIGN KEY (usuario_id) REFERENCES usuario(id)	
);	

CREATE TABLE item_venda (
	id INT(6) AUTO_INCREMENT PRIMARY KEY,
	venda_id int,
	produto_id int,
	quantidade int,
	valor numeric,
	FOREIGN KEY (venda_id) REFERENCES venda(id),
	FOREIGN KEY (produto_id) REFERENCES produto(id)		
);

CREATE TABLE pedido (
	id INT(6) AUTO_INCREMENT PRIMARY KEY,
	usuario_id INT(6),
	data date,
	mensagem TEXT(600),
	FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);

CREATE TABLE fale_conosco (
	id INT(6) AUTO_INCREMENT PRIMARY KEY,
	nome_usuario VARCHAR(50),
	email VARCHAR(50),
	data date,
	mensagem TEXT(600)
);




