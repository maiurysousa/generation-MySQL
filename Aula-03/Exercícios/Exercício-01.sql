-- EXERCÍCIO 1

create database db_generation_game_online;

use db_generation_game_online;

-- Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
-- relevantes da classe para se trabalhar com o serviço desse game Online.

create table tb_classe(
	id bigint auto_increment,
    
    categoria varchar(255) not null,
	nivel int not null,
    data_entrou_jogo date,
	
    primary key (id)
);
select * from tb_classe;

-- Popule esta tabela classe com até 5 dados.
insert into tb_classe (categoria, nivel, data_entrou_jogo) values ("Arqueiro",14,"2016-11-20");
insert into tb_classe (categoria, nivel, data_entrou_jogo) values ("Mago",10,"2016-10-10");
insert into tb_classe (categoria, nivel, data_entrou_jogo) values ("Arqueiro",20,"2016-01-23");
insert into tb_classe (categoria, nivel, data_entrou_jogo) values ("Corredor",12,"2016-03-18");
insert into tb_classe (categoria, nivel, data_entrou_jogo) values ("Mago",30,"2016-11-04");

select * from tb_classe;

-- Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
-- atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
-- (não esqueça de criar a foreign key de tb_classe nesta tabela).

create table tb_personagem(
	id bigint auto_increment,
    
    nome varchar(255) not null,
    idade bigint not null,
    moeda decimal (8,2) not null,
    ataque bigint not null,
    defesa bigint not null,
    classe_id bigint,
    
	primary key (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

select * from tb_personagem;

-- Popule esta tabela personagem com até 8 dados.
insert into tb_personagem (nome,idade,moeda,ataque,defesa,classe_id) values ("may_gb",20,200000,1500,3000,1);
insert into tb_personagem (nome,idade,moeda,ataque,defesa,classe_id) values ("gab_gab",12,200000,2000,2500,2);
insert into tb_personagem (nome,idade,moeda,ataque,defesa,classe_id) values ("leo_seo",13,200000,3500,5000,3);
insert into tb_personagem (nome,idade,moeda,ataque,defesa,classe_id) values ("drika_bom",22,200000,2100,4400,5);
insert into tb_personagem (nome,idade,moeda,ataque,defesa,classe_id) values ("cadu_23",34,200000,3005,1200,4);
insert into tb_personagem (nome,idade,moeda,ataque,defesa,classe_id) values ("denver_loki",32,200000,125,3300,1);
insert into tb_personagem (nome,idade,moeda,ataque,defesa,classe_id) values ("jubs_25",20,200000,2300,1100,2);
insert into tb_personagem (nome,idade,moeda,ataque,defesa,classe_id) values ("bru_bomber",15,200000,2050,5010,3);

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between  1000 and 2000;

select * from tb_personagem where nome like "%c%";

-- Faça um um select com Inner join entre tabela classe e personagem.
select * from tb_personagem inner join  tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.nome,  tb_classe.categoria, tb_classe.nivel, tb_personagem.ataque, tb_personagem.defesa
from tb_personagem inner join  tb_classe 
on tb_classe.id = tb_personagem.classe_id;

-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).

select * from tb_personagem where classe_id = 2; -- Personagens magos

