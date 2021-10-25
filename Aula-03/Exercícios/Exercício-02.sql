-- EXERCÍCIO 02
create database db_pizzaria_legal;

use db_pizzaria_legal;

-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes
-- do tb_categoria para se trabalhar com o serviço dessa pizzaria.

create table tb_categoria (
	id bigint auto_increment,
    
	categorias varchar (255) not null,
    tipo varchar (255) not null,
    ativo boolean not null,
    
    primary key (id)		
    );
    select * from tb_categoria;
    
    insert into tb_categoria (categorias, tipo, ativo) values ("Pizza","Salgada",true);
	insert into tb_categoria (categorias, tipo, ativo) values ("Esfirra","Doce",true);
    insert into tb_categoria (categorias, tipo, ativo) values ("Pizza","Salgada",true);
    insert into tb_categoria (categorias, tipo, ativo) values ("Esfirra","Salgada",true);
    insert into tb_categoria (categorias, tipo, ativo) values ("Pizza","Salgada",false);
    insert into tb_categoria (categorias, tipo, ativo) values ("Esfirra","Doce,",true);
    
    -- Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine
    -- 5 atributos relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça
    -- de criar a foreign key de tb_categoria nesta tabela).
    
	create table tb_pizza(
			id bigint auto_increment,
		    sabor varchar (255) not null,
            tamanho varchar (255) not null,
            valor decimal (8,2) not null,
            recheio_borda varchar (255) not null,
            categoria_id bigint,
            
            primary key (id),
            FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)           
    );
    
    select * from tb_pizza;
    
    insert into tb_pizza (sabor, tamanho, valor,recheio_borda, categoria_id) values ("Brócolis com Bacon","Grande",25,"Sem Recheio",1);
	insert into tb_pizza (sabor, tamanho, valor,recheio_borda, categoria_id) values ("Banana com canela","Grande",33,"Sem Recheio",2);
	insert into tb_pizza (sabor, tamanho, valor,recheio_borda, categoria_id) values ("Camarão","Grande",50,"Sem Recheio",5);
	insert into tb_pizza (sabor, tamanho, valor,recheio_borda, categoria_id) values ("Chocolate","Grande",55,"Sem Recheio",6);
	insert into tb_pizza (sabor, tamanho, valor,recheio_borda, categoria_id) values ("Calabresa","Grande",35,"Sem Recheio",3);
	insert into tb_pizza (sabor, tamanho, valor,recheio_borda, categoria_id) values ("Mussarela","Grande",29,"Sem Recheio",4);
    
    select * from tb_pizza where valor > 45;
    
    select * from tb_pizza where valor between 29 and 60;
    
    select * from tb_pizza where sabor like "%c%";
    
    -- Faça um um select com Inner join entre  tabela categoria e pizza.
    
	select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
    
    select tb_categoria.categorias, tb_pizza.tamanho, tb_pizza.sabor, tb_pizza.recheio_borda, tb_pizza.valor
    from tb_pizza inner join tb_categoria
    on tb_categoria.id = tb_pizza.categoria_id;
    
    -- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os 
    -- produtos que são pizza doce).
    
    select * from tb_pizza where categoria_id in(2,6); 
    
    
    
    
    
    
    