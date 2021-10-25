-- EXERCÍCIO 06
create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

     create table tb_categoria (
		id bigint auto_increment,
        
        categorias varchar (255) not null, 
		qtd_cursos int not null,
        Instrutor varchar (255) not null,
               
        primary key (id)
     );     
     select * from tb_categoria;
     
    insert into tb_categoria (categorias, qtd_cursos, Instrutor) values ("Informática",10,"Vinicius Eidi");
	insert into tb_categoria (categorias, qtd_cursos, Instrutor) values ("Línguas", 5,"Lucas Figueiredo"); 
	insert into tb_categoria (categorias, qtd_cursos, Instrutor) values ("Artesanato", 12,"Maiury Sousa");
	insert into tb_categoria (categorias, qtd_cursos, Instrutor) values ("Eletrônica", 8,"Milton Viegas");
    insert into tb_categoria (categorias, qtd_cursos, Instrutor) values ("Marcenaria", 18,"Maria C.");

     
 
 -- Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 
 -- atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia
 -- (não esqueça de criar a foreign key de tb_categoria nesta tabela).
 
     create table tb_curso (		
		id bigint auto_increment,
        
        nome varchar (255) not null,
        preco decimal (8,2) not null,
		desconto varchar (255) not null,
        periodo varchar (255) not null,
        categoria_id bigint,
        
        primary key (id),
		foreign key (categoria_id) REFERENCES tb_categoria (id)        
     );
     
     select *from tb_curso;
     
	insert into tb_curso (nome, preco, desconto, periodo, categoria_id) values ("Espanhol",25,"5%","3 meses",2);
	insert into tb_curso (nome, preco, desconto, periodo, categoria_id) values ("Java",60,"8%","3 meses",1);
	insert into tb_curso (nome, preco, desconto, periodo, categoria_id) values ("HTML",55,"10%","2 meses",1);
	insert into tb_curso (nome, preco, desconto, periodo, categoria_id) values ("Inglês",29,"N/A","3 meses",2);
	insert into tb_curso (nome, preco, desconto, periodo, categoria_id) values ("Robótica",80,"20%","6 meses",4);
	insert into tb_curso (nome, preco, desconto, periodo, categoria_id) values ("Móveis",120,"N/A","4 meses",5);
	insert into tb_curso (nome, preco, desconto, periodo, categoria_id) values ("Alemão",330,"N/A","2 meses",2);
	insert into tb_curso (nome, preco, desconto, periodo, categoria_id) values ("Craquelê",50,"25%","6 meses",3);
    
    select * from tb_curso where preco > 50;
    
    select * from tb_curso where preco between 3 and 60;
    
    select * from tb_curso where nome like "%j%";
    
	-- Faça um um select com Inner join entre  tabela categoria e produto.
    select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

    -- Faça um select onde traga todos os Produtos de uma categoria específica 
    -- (exemplo todos os produtos que são cosméticos).
    
    select * from tb_curso where categoria_id = 2; 