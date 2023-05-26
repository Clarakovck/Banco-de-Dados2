create database drogarias1;
use drogarias1;
create table Farmacia(
id_farmacia int primary key Auto_increment,
cnpj long ,
razao_social varchar(50) 
 );
 
create table Funcionario(
matricula int primary key Auto_increment,
Tipo varchar(30) ,
Nome  varchar(30) 
);
insert into Funcionario(matricula,nome,tipo)
values (146356, 'Maria Clara','gerente');

create table produto(
id_produto int primary key Auto_increment,
EAN int,
Descriçao varchar(100) not null,
Nome varchar(30) not null
);

create table fornecedor (
id_fornecedor int primary key Auto_increment,
Empresa varchar(50) not null
);

create table produto_fornecedor(
fk_id_produto int ,
fk_id_fornecedor int , 
constraint produto_fornecedor_pk 
primary key(fk_id_produto,fk_id_fornecedor));
Alter table produto_fornecedor
add foreign key (fk_id_produto) references produto(id_produto),
add foreign key (fk_id_fornecedor) references fornecedor(id_fornecedor);

create table farmacia_funcionario(
id_farmacia int ,
fk_matricula int , 
constraint farmacia_funcionario_pk
primary key(id_farmacia,fk_matricula));
alter table farmacia_funcionario
add foreign key (id_farmacia) references farmacia(id_farmacia),
add foreign key (fk_matricula) references funcionario(matricula);

insert into farmacia(cnpj,razao_social)
values (00285753000190,'Venancio produtos farmaceuticos ltda');

insert into produto(ean,descriçao,nome)
values (7836,'combinação de wafer coberta por chocolate','kit kat');

insert into fornecedor(empresa)
values ('softys');

insert into produto_fornecedor(fk_id_produto,fk_id_fornecedor)
values (1,1);

insert into farmacia_funcionario(id_farmacia,fk_matricula)
values (1,146356);


