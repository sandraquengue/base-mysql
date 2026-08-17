create database gestao;
use gestao;

create table clientes(
id_cliente int auto_increment,
nome varchar(50),
email varchar(50),
telefone varchar(50),
cidade varchar(50),
data_cadastro datetime,
primary key(id_cliente)
)charset=utf8;

create table categoria(
id_categoria int auto_increment,
nome_categoria varchar(50),
primary key(id_categoria)
)charset=utf8;

create table produtos(
id_produto int auto_increment,
nome_produto varchar(50),
id_categoria int,
preco decimal(10,2),
stock int,
primary key(id_produto),
foreign key (id_categoria) references categoria(id_categoria)
)charset=utf8;

create table vendedores(
id_vendedores int auto_increment,
nome_vendedor varchar(50),
departamento varchar(50),
primary key(id_vendedores)
)charset=utf8;

create table vendas(
id_vendas int auto_increment,
id_cliente int,
id_vendedor int,
data_vendas date,
valor_total decimal(10,2),
primary key(id_vendas),
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
FOREIGN KEY (id_vendedor) REFERENCES vendedores(id_vendedores)
)charset=utf8;

create table itens_venda(
id_item int auto_increment,
id_vendas int,
id_produto int,
quantidade int,
preco_unitario decimal(10,2),
primary key(id_item),
FOREIGN KEY (id_vendas) REFERENCES vendas(id_vendas),
FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
)charset=utf8;
