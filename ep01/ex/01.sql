-- Ex1: Quantos produtos temos da categoria 'artes'?

-- contagem 
select
      count(*) as qtde_linhas, -- Contagem de linhas
      count(product_id) as qtde_produtos,
      count(distinct product_id) as qtde_produtos_distintos, -- Contagem mais rigorosa para garantir que não há produtos repetidos (supondo que por algum motivo o id possa se repetir)
      count(distinct product_category_name) as qtde_categorias_distintas

from tb_products
 
where product_category_name = 'artes'