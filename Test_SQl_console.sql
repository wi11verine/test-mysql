select nome as cliente,
	(select cor from casa where fk_cliente = c.id_cliente) as cor_casa,
    (select nome from bairro where id_bairro = (select fk_bairro from casa where fk_cliente = c.id_cliente)) as bairro,
    ( select modelo from carro where fk_cliente = c.id_cliente LIMIT 1) as carro
from cliente c;

#consulta usando select para buscar os dados casa, bairro e carro para cada cliente.
#--------------------------------------------------------------------------------------------------------------------------
