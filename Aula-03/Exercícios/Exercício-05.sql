-- EXERCÍCIO 05
--  tb_produto e tb_categoria.
	create database db_construindo_a_nossa_vida;
     use db_construindo_a_nossa_vida;
     
     create table tb_categoria (
		id bigint auto_increment,
        
        promocao boolean not null, 
        desconto varchar (255) not null,
        tipo_produto varchar (255) not null,
               
        primary key (id)
     );     
     select * from tb_categoria;
     
    insert into tb_categoria (promocao, desconto, tipo_produto) values (true, "10%","Material de Construção");
	insert into tb_categoria (promocao, desconto, tipo_produto) values (false, "0%","Ferramentas"); 
	insert into tb_categoria (promocao, desconto, tipo_produto) values (true, "15%","Decoração");
	insert into tb_categoria (promocao, desconto, tipo_produto) values (false, "0%","Material de Fixação");
    insert into tb_categoria (promocao, desconto, tipo_produto) values (true, "20%","Banheiro");
	insert into tb_categoria (promocao, desconto, tipo_produto) values (true, "25%","Hidraulica"); 
     
 
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
     
	insert into tb_produto (nome, preco, qtd_produto, dt_validade, categoria_id) values ("Parafuso",5,3,"2022-11-25",4);
	insert into tb_produto (nome, preco, qtd_produto, dt_validade, categoria_id) values ("Tinta óleo",60,60,"2025-12-30",3);
	insert into tb_produto (nome, preco, qtd_produto, dt_validade, categoria_id) values ("Aragamassa",18,55,"2023-10-12",1);
	insert into tb_produto (nome, preco, qtd_produto, dt_validade, categoria_id) values ("Armário de Banheiro",290,255,"2022-11-25",5);
	insert into tb_produto (nome, preco, qtd_produto, dt_validade, categoria_id) values ("Piso",8,5,"2022-04-03",5);
	insert into tb_produto (nome, preco, qtd_produto, dt_validade, categoria_id) values ("Martelo",12,15,"2023-03-14",2);
	insert into tb_produto (nome, preco, qtd_produto, dt_validade, categoria_id) values ("Torneira",3,45,"2022-01-25",6);
	insert into tb_produto (nome, preco, qtd_produto, dt_validade, categoria_id) values ("Prego",55,10,"2022-10-25",4);
    
    select * from tb_produto where preco > 50;
    
    select * from tb_produto where preco between 3 and 60;
    
    select * from tb_produto where nome like "%b%";
    
	-- Faça um um select com Inner join entre  tabela categoria e produto.
    select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

    -- Faça um select onde traga todos os Produtos de uma categoria específica 
    -- (exemplo todos os produtos que são cosméticos).
    
    select * from tb_produto where categoria_id = 4; 