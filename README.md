# Sistema de Gestão de Vendas - MySQL

## Descrição do Projeto

Este projeto consiste na criação de um banco de dados relacional para a gestão de vendas de uma empresa, desenvolvido utilizando MySQL.

O banco de dados foi estruturado para armazenar e organizar informações sobre clientes, categorias, produtos, vendedores, vendas e itens de venda, permitindo o relacionamento entre diferentes entidades e a realização de consultas para análise dos dados.

## Objetivo

Criar uma estrutura de dados organizada e eficiente para apoiar a gestão das informações comerciais da empresa e permitir a realização de análises através de consultas SQL.

## Tecnologias Utilizadas

* MySQL
* SQL
* MySQL Workbench

## Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes tabelas:

* **Clientes** — armazena informações dos clientes;
* **Categorias** — armazena as categorias dos produtos;
* **Produtos** — armazena informações dos produtos, preços e stock;
* **Vendedores** — armazena informações dos vendedores e departamentos;
* **Vendas** — regista as vendas realizadas, os clientes, vendedores, datas e valores;
* **Itens de Venda** — regista os produtos, quantidades e preços associados a cada venda.

## Relacionamentos

As tabelas estão relacionadas através de chaves primárias e estrangeiras:

* `produtos` → `categorias`;
* `vendas` → `clientes`;
* `vendas` → `vendedores`;
* `itens_venda` → `vendas`;
* `itens_venda` → `produtos`.

## Scripts SQL

### `create_database.sql`

Contém os comandos responsáveis pela criação do banco de dados, tabelas, chaves primárias e chaves estrangeiras.

### `insert_data.sql`

Contém os dados fictícios utilizados para preencher as tabelas e permitir a realização dos testes e análises.

### `queries.sql`

Contém consultas SQL para análise dos dados, incluindo:

* Listagem de clientes;
* Produtos e respetivas categorias;
* Faturamento total;
* Número total de vendas;
* Produto mais vendido;
* Total vendido por cliente;
* Total vendido por vendedor;
* Faturamento por categoria.

## Competências Demonstradas

* Modelação de banco de dados relacional;
* Criação de tabelas e relacionamentos;
* Utilização de chaves primárias e estrangeiras;
* Manipulação de dados com SQL;
* Utilização de `JOIN`;
* Utilização de funções de agregação como `SUM()` e `COUNT()`;
* Agrupamento e ordenação de dados com `GROUP BY` e `ORDER BY`;
* Desenvolvimento de consultas para análise de dados.

## Estrutura do Projeto

```text
gestao-database-mysql
│
├── README.md
├── create_database.sql
├── insert_data.sql
├── queries.sql
│
└── imagens
    └── modelo-relacional.png
```

## Como Executar

1. Executar o ficheiro `create_database.sql` para criar o banco de dados e as tabelas.
2. Executar o ficheiro `insert_data.sql` para inserir os dados.
3. Executar o ficheiro `queries.sql` para realizar as consultas e análises.
# base-mysql
Projeto de criação e análise de um banco de dados relacional utilizando MySQL e SQL.
