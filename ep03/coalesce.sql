select distinct
           coalesce(product_category_name, 'outros') as categoria_fillna
           -- coalesce(product_category_name, 'outros', 'outros2', 'outros3'). O comando usa o primeiro valor que não for nulo 
from tb_products