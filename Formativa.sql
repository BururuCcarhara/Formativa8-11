create database bd_formativa;
use bd_formativa;

create table Aeronave(
id_nave int primary key auto_increment,
nome varchar (255) not null,
comunicador varchar (255),
destino varchar (255)
);

create table Passageiro(
id_pass int primary key auto_increment,
nome varchar (255) not null,
telefone varchar (50),
endereco varchar (255),
id_nave int,
foreign key (id_nave) references Aeronave (id_nave)
);

insert into Aeronave (nome, comunicador, destino) values
('Airbus A320','Comunicador Alfa', 'Paris'),
('Boeing 737','Comunicador Bravo','Nova Iorque'),
('Embraer E3195', 'Comunicador Charlie','Londres'),
('Cessna 172', 'Comunicador Delta', 'Tóquio'),
('G650', 'Comunicador Echo',' Dubai');

insert into Passageiro (nome, telefone, endereco, id_nave) values
('Albert Jégue', '123456789', 'Rua farofa com tanajura', 1),
('Roberto Sapecagens', '40028922', 'Rua Da Mandioca cozida', 1),
('Flávia toca flauta', '24242424', 'Rua marginal come pastel',2),
('Cláudia leite', '69696969', 'Rua Dalva',3);

select * from Aeronave;
select * from Passageiro

update Passageiro
set nome = "Tonhão do melão"
where id_pass = 1;

update Aeronave
set nome= "SPACEX"
where id_nave=3;

delete from Passageiro
where id_pass = 4;

create view vw_Passageiros_voa as 
select 
Passageiro.nome as nome_Passageiro,
Aeronave.destino as destino_Passageiro
from
Passageiro
inner join 
Aeronave on Passageiro.id_nave - Aeronave.id_nave;

select * from vw_Passageiros_voa;