-- EXERCÍCIO 04

	 create database db_cidade_das_frutas;
     use db_cidade_das_frutas;
     
     create table tb_categoria (
		id bigint auto_increment,
        
		descricao varchar(255) not null,
        da_epoca boolean not null,
		ativo boolean not null,       
               
        primary key (id)
     );     
     select * from tb_categoria;
     
    insert into tb_categoria (descricao, da_epoca, ativo) values ("Fruta",true,true);
    insert into tb_categoria (descricao, da_epoca, ativo) values ("Verdura",true,true);
    insert into tb_categoria (descricao, da_epoca, ativo) values ("Legume",true,false);
    insert into tb_categoria (descricao, da_epoca, ativo) values ("Vegetal",false,true);
    insert into tb_categoria (descricao, da_epoca, ativo) values ("Outros",true,true);
    
-- Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 
 -- atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia
 -- (não esqueça de criar a foreign key de tb_categoria nesta tabela).
 
     create table tb_produto (		
		id bigint auto_increment,
        
        nome varchar (255) not null,
        preco decimal (8,2) not null,
        qtd_produto int not null,
        validade varchar (255) not null,
        categoria_id bigint,
        
        primary key (id),
		foreign key (categoria_id) REFERENCES tb_categoria (id)        
     );
     
     select *from tb_produto;
     
	insert into tb_produto (nome, preco, qtd_produto, validade, categoria_id) values ("Manga",5,255,"2Duas semanas",1);
	insert into tb_produto (nome, preco, qtd_produto, validade, categoria_id) values ("Laranja",60,255,"6 dias",1);
	insert into tb_produto (nome, preco, qtd_produto, validade, categoria_id) values ("Ovos",18,15,"Uma semana",5);
	insert into tb_produto (nome, preco, qtd_produto, validade, categoria_id) values ("Brócolis",20,255,"2 semanas",2);
	insert into tb_produto (nome, preco, qtd_produto, validade, categoria_id) values ("Milho",8,55,"Uma semana",3);
	insert into tb_produto (nome, preco, qtd_produto, validade, categoria_id) values ("Batata",12,88,"4 dias",3);
	insert into tb_produto (nome, preco, qtd_produto, validade, categoria_id) values ("Alho",3,255,"Duas semanas",4);
	insert into tb_produto (nome, preco, qtd_produto, validade, categoria_id) values ("Pepino",55,255,"15 dias",3);
    
    select * from tb_produto where preco > 50;
    
    select * from tb_produto where preco between 3 and 60;
    
    select * from tb_produto where nome like "%c%";
    
	-- Faça um um select com Inner join entre  tabela categoria e produto.
    select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
    
    -- Faça um select onde traga todos os Produtos de uma categoria 
    -- específica (exemplo todos os produtos que são aves ou legumes).    
    select * from tb_produto where categoria_id = 3; -- legumes