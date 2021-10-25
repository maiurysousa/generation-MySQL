-- EXERCÍCIO 03

	 create database db_farmacia_do_bem;
     use db_farmacia_do_bem;
     
     create table tb_categoria (
		id bigint auto_increment,
        
        receita boolean not null,
        tipo_produto varchar (255) not null,
        recomendacao varchar (255) not null,
        
        primary key (id)
     );     
     select * from tb_categoria;
     
    insert into tb_categoria (receita, tipo_produto,recomendacao) values (true, "Medicamento","Adulto");
	insert into tb_categoria (receita, tipo_produto,recomendacao) values (true, "Medicamento","Infantil");
	insert into tb_categoria (receita, tipo_produto,recomendacao) values (false, "Cosmético","Adulto"); 
	insert into tb_categoria (receita, tipo_produto,recomendacao) values (false, "Cosmético","Infantil");
	insert into tb_categoria (receita, tipo_produto,recomendacao) values (false, "Higiene","Adulto");
	insert into tb_categoria (receita, tipo_produto,recomendacao) values (false, "Bem Estar","Adulto");
     
 
 -- Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 
 -- atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia
 -- (não esqueça de criar a foreign key de tb_categoria nesta tabela).
 
     create table tb_produto (		
		id bigint auto_increment,
        
        nome varchar (255) not null,
        preco decimal (8,2) not null,
        qtd_produto int not null,
        dt_validade date,
        categoria_id bigint,
        
        primary key (id),
		foreign key (categoria_id) REFERENCES tb_categoria (id)        
     );
     
     select *from tb_produto;
     
	insert into tb_produto (nome, preco, qtd_produto, dt_validade, categoria_id) values ("Buscofem",5,255,"2022-11-25",1);
	insert into tb_produto (nome, preco, qtd_produto, dt_validade, categoria_id) values ("Fraldas",60,255,"2025-12-30",4);
	insert into tb_produto (nome, preco, qtd_produto, dt_validade, categoria_id) values ("Dipirona",18,255,"2023-10-12",1);
	insert into tb_produto (nome, preco, qtd_produto, dt_validade, categoria_id) values ("Lavitan",29,255,"2022-11-25",6);
	insert into tb_produto (nome, preco, qtd_produto, dt_validade, categoria_id) values ("Shampoo",8,255,"2022-04-03",5);
	insert into tb_produto (nome, preco, qtd_produto, dt_validade, categoria_id) values ("Hipoglos",12,255,"2023-03-14",4);
	insert into tb_produto (nome, preco, qtd_produto, dt_validade, categoria_id) values ("Brilho Labial",3,255,"2022-01-25",3);
	insert into tb_produto (nome, preco, qtd_produto, dt_validade, categoria_id) values ("Protetor Solar",55,255,"2022-10-25",3);
    
    select * from tb_produto where preco > 50;
    
    select * from tb_produto where preco between 3 and 60;
    
    select * from tb_produto where nome like "%b%";
    
	-- Faça um um select com Inner join entre  tabela categoria e produto.
    select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

    select tb_produto.nome, tb_categoria.tipo_produto, tb_categoria.receita, tb_categoria.recomendacao, tb_produto.preco
    from tb_produto inner join tb_categoria
    on tb_categoria.id = tb_produto.categoria_id;
    
    -- Faça um select onde traga todos os Produtos de uma categoria específica 
    -- (exemplo todos os produtos que são cosméticos).
    
    select * from tb_produto where categoria_id in(3,4); 