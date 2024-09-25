## POC de distribuição de pacotes para transportadora

### Objetivo
O objetivo desta POC é demonstrar a distribuição de 
pacotes para uma transportadora, onde cada unidade de tratamento tem uma porcentagem 
máxima de pacotes que podem ser distribuídos por dia.
A unidade pode escolher clientes estratégicos para ter prioridade no recebimento dos pacotes.
Se uma unidade UA escolhe receber os pacotes do Cliente A, todos os pacotes de A serão tratados por UA.

Para rodar a aplicação: 

Rode o sql schema.sql e data.sql em seu banco Mysql

Verificando resultados:

```
select
	usuario_id,
	ut.porcentagem_maxima_diaria,
	ut.nome,
	count(*),
	(select count(*) from distribuicao) as total
from
	distribuicao d
inner join unidade_tratamento ut on
	d.usuario_id = ut.usuario_impessoal_id
group by
	1;

```

```
usuario_id|porcentagem_maxima_diaria|nome     |count(*)|total|
----------+-------------------------+---------+--------+-----+
         1|                      5.0|Unidade A|       2|   27|
         2|                      5.0|Unidade B|       2|   27|
         3|                     65.0|Unidade C|      17|   27|
         4|                     25.0|Unidade D|       6|   27|
         
         
```