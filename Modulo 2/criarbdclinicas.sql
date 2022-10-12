/******************************CRIAÇÃO TABELAS********************************/
create database clinicas;

use clinicas;

create table Ambulatorios  (nroa int, andar int not null, capacidade int, PRIMARY KEY (nroa));

create table Medicos  (codm int, CPF numeric(11) unique, nome varchar(40) not null , idade int not null, especialidade varchar(20), cidade varchar(30), nroa int, PRIMARY KEY(codm), FOREIGN KEY(nroa) REFERENCES Ambulatorios (nroa)); 

create table Pacientes (codp int, CPF numeric(11) unique, nome varchar(40) not null, idade int not null, cidade varchar(30),  doenca varchar(40) not null, PRIMARY KEY(codp));

create table Funcionarios (codf int,CPF numeric(11) unique, nome varchar(40) not null, idade int,  cidade varchar(30), salario numeric(10), PRIMARY KEY(codf));

create table Consultas (codm int , codp int, data date, hora time);

/************************************INSERÇÃO DE DADOS*************************************************/
use clinicas;

insert into ambulatorios values(1,3,40);
insert into ambulatorios values(2,1,50);
insert into ambulatorios values(3,2,40);
insert into ambulatorios values(4,2,25);
insert into ambulatorios values(5,2,55);

insert into Medicos values(1,10000100000,'Joao',40,'ortopedia','Florianopolis',1);
insert into Medicos values(2,10000110000,'Maria',42,'traumatologia','Blumenau',2);
insert into Medicos values(3,11000100000,'Pedro',51,'pediatria','São José',2);
insert into Medicos values(4,11000110000,'Carlos',28,'ortopedia','Joinville',null);
insert into Medicos values(5,11000111000,'Marcia',33,'neurologia','Biguacu',3);

insert into  Pacientes values(1,20000200000,'Ana',20,'Florianopolis','gripe');
insert into  Pacientes values(2,20000220000,'Paulo',24,'Palhoca','fratura');
insert into  Pacientes values(3,22000200000,'Lucia',30,'Biguacu','tendinite');
insert into  Pacientes values(4,11000110000,'Carlos',28,'Joinville','sarampo');

insert into Funcionarios values(1,20000100000,'Rita',32,'Sao Jose',1200);
insert into Funcionarios values(2,30000110000,'Maria',55,'Palhoca',1220);
insert into Funcionarios values(3,41000100000,'Caio',45,'Florianopolis',1100);
insert into Funcionarios values(4,51000110000,'Carlos',44,'Florianopolis',1200);
insert into Funcionarios values(5,61000111000,'Paula',33,'Florianopolis',2500);

insert into consultas values(1,1, '2006-06-12', '14:00:00');
insert into consultas values(1,4, '2006-06-13', '10:00:00');
insert into consultas values(2,1, '2006-06-13', '9:00:00');
insert into consultas values(2,2, '2006-06-13', '11:00:00');
insert into consultas values(2,3, '2006-06-14', '14:00:00');
insert into consultas values(2,4, '2006-06-14', '17:00:00');
insert into consultas values(3,1, '2006-06-19', '18:00:00');
insert into consultas values(3,3, '2006-06-12', '10:00:00');
insert into consultas values(3,4, '2006-06-19', '13:00:00');
insert into consultas values(4,4, '2006-06-20', '13:00:00');
insert into consultas values(4,4, '2006-06-22', '19:30:00');
