create database loja;
use loja;
create table cliente(
id_cliente int not null auto_increment,
nome varchar(50),
sex char(1),
CPF varchar(15),
data_nasc date,
primary key(id_cliente)
);

desc cliente;

select * from cliente;

create table endereco(
id_endereco int not null auto_increment,
cod_cliente int,
Rua varchar(50),
Bairro varchar(5),
cidade varchar(50),
Estado varchar(30),
cep varchar(50),
primary key(id_endereco)
);

desc endereco;

create table telefone(
id_telefone int not null auto_increment,
cod_cliente int,
fone1 varchar(15),
fone2 varchar(15),
primary key(id_telefone)
);

desc telefone;

create table venda(
id_venda int not null auto_increment,
cod_cliente int,
cod_produto int,
cod_transpote int,
valor float,
quantidade varchar(100),
data_compra date,
primary key(id_venda)
);

desc venda;

create table produto(
id_produto int not null auto_increment,
nome varchar(100),
modelo varchar(100),
primary key (id_produto)
);

desc produto;

create table transporte(
id_transporte int not null auto_increment,
nome varchar(100),
cnpj varchar(15),
primary key(id_transporte)
);

desc transporte;

alter table endereco add foreign key(cod_cliente) references
cliente (id_cliente);

alter table telefone add foreign key(cod_cliente) references
cliente (id_cliente);

alter table venda add foreign key(cod_cliente) references
cliente (id_cliente);

alter table venda add foreign key(cod_produto) references
produto (id_produto);

alter table venda add foreign key(cod_transpote) references
transporte (id_transporte);

insert into cliente (nome, sex, CPF, data_nasc) values
('Dafylin Beatriz','F','166.941.139-78', '2008-03-24');

insert into cliente (nome, sex, CPF, data_nasc) values
('Danilo Lima','M','132.154.238-43', '2003-04-08');

insert into cliente (nome, sex, CPF, data_nasc) values
('David Lima','M','654.879,321.76','2005-07-31');

insert into cliente (nome, sex, CPF, data_nasc) values
('Douglas Lima','M','432.765.407-65','2001-02-25');

select * from cliente;

insert into endereco (cod_cliente, Rua, Bairro, cidade, Estado, cep) values
('2','Avenida Senador','João','Paranaguá','Paraná','83.212.250');

insert into endereco (cod_cliente, Rua, Bairro, cidade, Estado, cep) values
('4','Avenida Senador Atilio Fontona','vitor','Paranaguá','Paraná','83209-001');

insert into endereco (cod_cliente, Rua, Bairro, cidade, Estado, cep) values
('3','estradinha','Ana','Paranaguá','Paraná','83209.002');

insert into endereco (cod_cliente, Rua, Bairro, cidade, Estado, cep) values
('1','João Pessoa','Jorge','Paranaguá','Paraná','83209.003');

select * from endereco;

insert into telefone (cod_cliente, fone1, fone2) values
('1','419895-6228','419831-7521');

insert into telefone (cod_cliente, fone1, fone2) values
('2','419954-6743','416754-3214');

insert into telefone (cod_cliente, fone1, fone2) values
('3','419898-6758','419432-1543');

insert into telefone (cod_cliente, fone1, fone2) values
('4','419977-5543','418976-4531');

select * from telefone;

insert into produto (nome, modelo) values
('quebra-cabeça','brinquedo');

insert into produto (nome, modelo) values
('dado','brinquedo');

select * from produto;

insert into transporte(nome, cnpj) values
('josé bigode','15432876549821');

insert into transporte(nome, cnpj) values
('kleiton','89765843912654');

select * from transporte;

insert into venda (cod_cliente, cod_produto, cod_transpote, valor, quantidade, data_compra) values
('3','1','2','399.99','2','2024-09-06');

insert into venda (cod_cliente, cod_produto, cod_transpote, valor, quantidade, data_compra) values
('4','2','1','599.99','5','2024-08-05');

select * from venda