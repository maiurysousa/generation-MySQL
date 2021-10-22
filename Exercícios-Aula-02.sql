-- EXERCÍCIOS AULA 02

-- EXERCÍCIO 1

create database db_empresa;
use db_empresa;

create table tb_funcionarios (
	id bigint (5) auto_increment,
	nome varchar (255) not null,
    idade int not null,
    funcao varchar (255) not null,
    salario decimal (8,2) not null,
	data_inicio varchar(11),
     
    primary key  (id) 
);
-- Populando a tabela
insert into tb_funcionarios (nome, idade, funcao, salario)
values ("Luiz Felipe", 51, "Estoquista", 1800.00);
insert into tb_funcionarios (nome, idade, funcao, salario)
values ("Mariana da Silva", 32, "Lojista", 2000.00);
insert into tb_funcionarios (nome, idade, funcao, salario)
values ("Wania Martins", 40, "Logista", 2000.00);
insert into tb_funcionarios (nome, idade, funcao, salario)
values ("Marcos dos Santos", 31, "Logista", 2000.00);
insert into tb_funcionarios (nome, idade, funcao, salario)
values ("Pamela Costa", 45, "Gerente", 2500.00);

-- Funcionaries com o salário maior do que 2000.
select nome, salario from tb_funcionarios where salario>2000;

-- Funcionaries com o salário manor do que 2000.
select nome, salario from tb_funcionarios where salario<2000;

-- Atualize um dado desta tabela através de uma query de atualização.
update tb_funcionarios set salario=1900 where id=1;


-- EXERCÍCIO 2

create database db_ecommerce;
use db_ecommerce;

create table tb_produtos (
	id bigint (5) auto_increment,    
	nome varchar (255) not null,
	material varchar (255) not null,
    tamanho varchar (2) not null,
    cor varchar (255) not null,  
    preco decimal (8,2) not null,      
    
    primary key  (id) 
);
-- Populando a tabela com até 5 atributos
insert into tb_produtos (nome, material, tamanho, cor, preco)
values ("Calça", "Jeans", "38", "Lavagem escura", 180.00);
insert into tb_produtos (nome, material, tamanho, cor, preco)
values ("Camiseta", "Algodão", "PP", "Lavagem escura", 45.00);
insert into tb_produtos (nome, material, tamanho, cor, preco)
values ("Jaqueta", "Couro", "P", "Preta", 450.00);
insert into tb_produtos (nome, material, tamanho, cor, preco)
values ("Coturno", "Couro", "36", "Preto", 250.00);

select * from tb_produtos;
update tb_produtos set preco=550 where id = 3;

-- Faça um select que retorne os produtos com o valor maior do que 500.
select nome,preco from tb_produtos where preco>500;

-- Faça um select que retorne os produtos com o valor menor do que 500.
select nome,preco from tb_produtos where preco<500;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_produtos set cor= "Marrom" where id = 3;




-- EXERCÍCIO 3

create database db_escola;
use db_escola;

create table tb_estudantes (
	id bigint (5) auto_increment, 
    
	nome varchar (255) not null,
	idade int not null,
    materias varchar (255) not null,
	ano varchar (255) not null,
    nota decimal (4,2) not null,
    
    primary key (id)
);

select * from tb_estudantes;

-- Populando a tabela com até 5 atributos
insert into tb_estudantes (nome, idade, materias, ano, nota)
values ("Camila Silva", 11, "Matemática", "5º ano", 8.75);
insert into tb_estudantes (nome, idade, materias, ano, nota)
values ("Pamela Cristina", 12, "6º ano", "Artes", 10.00);
insert into tb_estudantes (nome, idade, materias, ano, nota)
values ("Jaqueline Andrade", 11, "5º ano", "Português", 6.00);
insert into tb_estudantes (nome, idade, materias, ano, nota)
values ("Murilo de Campos", 13, "7º ano", "Português", 6.25);

-- Faça um select que retorne o/as estudantes  com a nota maior do que 7.
select nome, materia, nota from tb_estudantes where nota>7;

-- Faça um select que retorne o/as estudantes  com a nota menor do que 7.
select nome, materia, nota from tb_estudantes where nota<7;

alter table tb_estudantes modify nota decimal(4,1);

-- Atualize um dado desta tabela através de uma query de atualização.
select * from tb_estudantes;




