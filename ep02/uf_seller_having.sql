select seller_state,
       count(*) as qtde_sellers

from tb_sellers

-- filtro pré agregação)
-- WHERE funciona com operações em cima das colunas da tabela original (com dados já existentes)
-- O COUNT acontece depois do GROUP BY, ou seja, o WHERE não funcionaria para um filtro em cima de uma coluna resultante do COUNT
where seller_state in ('SP', 'RJ', 'PR', 'AC')

-- agregação
group by seller_state

-- filtro pós agregação
-- HAVING é usado para operações com dados existentes após o GROUP BY, como é o caso do COUNT(*) nesse exemplo
having count(*) > 10 -- remove estados com menos de 10 sellers