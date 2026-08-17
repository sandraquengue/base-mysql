Use gestao;
select * from clientes;
SELECT
    p.id_produto,
    p.nome_produto,
    c.nome_categoria,
    p.preco,
    p.stock
FROM produtos p
INNER JOIN categoria c
ON p.id_categoria = c.id_categoria;

SELECT
    SUM(valor_total) AS faturamento_total
FROM vendas;

SELECT
    COUNT(*) AS total_vendas
FROM vendas;

SELECT
    p.nome_produto,
    SUM(iv.quantidade) AS total_vendido
FROM itens_venda iv
INNER JOIN produtos p
ON iv.id_produto = p.id_produto
GROUP BY p.nome_produto
ORDER BY total_vendido DESC
LIMIT 1;


SELECT
    c.nome,
    SUM(v.valor_total) AS total_compras
FROM vendas v
INNER JOIN clientes c
ON v.id_cliente = c.id_cliente
GROUP BY c.nome
ORDER BY total_compras DESC;


SELECT
    ve.nome_vendedor,
    SUM(v.valor_total) AS total_vendido
FROM vendas v
INNER JOIN vendedores ve
ON v.id_vendedor = ve.id_vendedores
GROUP BY ve.nome_vendedor
ORDER BY total_vendido DESC;


SELECT
    c.nome_categoria,
    SUM(iv.quantidade * iv.preco_unitario) AS faturamento
FROM itens_venda iv
INNER JOIN produtos p
ON iv.id_produto = p.id_produto
INNER JOIN categoria c
ON p.id_categoria = c.id_categoria
GROUP BY c.nome_categoria
ORDER BY faturamento DESC;

