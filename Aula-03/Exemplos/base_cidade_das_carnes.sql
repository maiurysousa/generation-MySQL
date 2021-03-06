-- EXEMPLO AULA 03

create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Bovino",true);
insert into tb_categoria (descricao, ativo) values ("Suino",true);
insert into tb_categoria (descricao, ativo) values ("Aves",true);
insert into tb_categoria (descricao, ativo) values ("pertence feijoada",true);
insert into tb_categoria (descricao, ativo) values ("imbutidos",true);
insert into tb_categoria (descricao, ativo) values ("soja",true);
insert into tb_categoria (descricao, ativo) values ("outros",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("ASA",40.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Picanha",20.00,30, "2021-11-08", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("coxa de frango",20.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Bacon",30.00,30, "2021-11-09", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("hamburguer",60.00,30, "2021-09-07", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Cupim",20.00,30, "2021-11-10", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Peito de frango",25.00,30, "2021-11-09", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Orelha de porco",20.00,30, "2021-11-07", 4);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Salame",18.00,30, "2021-11-21", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("medalhao",50.00,30, "2021-11-15", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("mocoto",20.00,30, "2021-10-05", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("chuleta",20.00,30, "2021-10-07", 1);
insert into tb_produtos (nome, preco, qtProduto) values ("acendedor de churrasqueira",20.00,30);
insert into tb_produtos (nome, preco, qtProduto) values ("soprador de churrasqueira",35.00,30);

select * from tb_produtos;

select * from tb_produtos order by nome; -- mostra tableba ordenada pelo nome

select * from te_produtos order by nome desc; -- mostra tableba ordenada de forma desrescente pelo nome

select * from tb_produtos where preco > 20.00 and categoria_id = 1; -- mostra apenas produtos com valores acima de R$20

select * from tb_produtos where preco > 20.00 or categoria_id = 1; -- mostra apenas produtos com valores abaixo de R$20

select * from tb_produtos where not categoria_id = 1; -- mostra todos o produtos menos as que est??o inseridas na categoria id = 1

select * from tb_produtos where nome like "ha%"; -- desde que seja em formato de texto, mostra tudo que come??a com "HA"

select * from tb_produtos where nome like "%ha"; -- desde que seja em formato de texto, mostra tudo que termina com "HA"

select * from tb_produtos where nome like "%ha%"; -- desde que seja em formato de texto, mostra tudo que contenha a s??laba "HA"

select * from tb_produtos where nome  like "%ha%" order by nome; -- desde que seja em formato de texto, mostra tudo que contenha a s??laba "HA" de forma ordenada

show create table tb_produtos; -- PESQUISAR O QUE ??

select * from tb_produtos where preco in(20,30,40); -- Forma mais simples de mostrar dados com valores nessa faixa de pre??o // d?? tamb??m para trabalhar com data

select * from tb_produtos where preco between  20 and 40; -- interessante para pegar intervalo de dados

select * from tb_produtos where dtvalidade between "2021-11-07" and "2021-11-15";

select nome, DATE_FORMAT(dtvalidade, "%d/%m/%Y") as Data_de_Validade from tb_produtos where dtvalidade between "2021-11-07" and "2021-11-15";

select  count(*) from tb_produtos; --  mosta a qtd de produtos

select count(categoria_id) from tb_produtos; --  mostra a qtd de produtos da categoria_id, menos as de valor nulo

select  sum(preco) from tb_produtos; --  calculo de todos os produtos

select  avg(preco) from tb_produtos; -- m??dia de pre??os

select  categoria_id, avg(preco) from tb_produtos group by categoria_id; -- calcula a m??dia por categoria id

select  max(preco) from tb_produtos; --  mostra o valor m??ximo da  tabela

select  min(preco) from tb_produtos; -- mostra o valor m??nimo


-- INNER JOIN - TRAZER TODOS OS DADOS DAS DUAS TABELAAS EM UMA ??NICA TABELA

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtproduto, tb_categoria.descricao 
from tb_produtos inner join tb_categoria 
on tb_categoria.id = tb_produtos.categoria_id; -- pirmiero o que quero motrar indicando de onde s??o esses atributos e quais tabelas conjuntaas e com quem vai ser feita essa rela????o, ou seja quem ?? a chave estrangeira de um lado e prim??ria do outro

-- LEFT JOIN

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtproduto, tb_categoria.descricao 
from tb_produtos left join tb_categoria 
on tb_categoria.id = tb_produtos.categoria_id;

-- RIGHT JOIN

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtproduto, tb_categoria.descricao 
from tb_produtos right join tb_categoria 
on tb_categoria.id = tb_produtos.categoria_id;

-- M??DIA
-- Calcular a m??dia d pre??o e agrupar pela categoria

select tb_categoria.descricao, avg(tb_produtos.preco) as preco_medio
from tb_produtos inner join tb_categoria 
on tb_categoria.id = tb_produtos.categoria_id
group by tb_produtos.categoria_id;










