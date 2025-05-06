create database eleicao;

use eleicao;

create table localidade(
id_localidade integer primary key auto_increment,
nome_localidade varchar(100),
estado varchar(30)
);

create table zona_eleitoral(
id_zona_eleitoral integer primary key auto_increment,
nome_zona varchar(50),
fk_localidade_id_localidade integer
);

create table secao_eleitoral(
id_secao_eleitoral integer primary key auto_increment,
nome_secao_eleitoral varchar(50),
fk_zona_id_zona_eleitoral integer
);

alter table zona_eleitoral add foreign key(fk_localidade_id_localidade) references localidade(id_localidade);

alter table secao_eleitoral add foreign key(fk_zona_id_zona_eleitoral) references zona_eleitoral(id_zona_eleitoral);

insert into localidade(nome_localidade, estado) values ('localidade1', 'Estado1');
insert into localidade(nome_localidade, estado) values ('localidade2', 'Estado2');
insert into localidade(nome_localidade, estado) values ('localidade3', 'Estado3');
insert into localidade(nome_localidade, estado) values ('localidade4', 'Estado4');
insert into localidade(nome_localidade, estado) values ('localidade5', 'Estado5');

insert into zona_eleitoral(nome_zona) values ('zona1');
insert into zona_eleitoral(nome_zona) values ('zona2');
insert into zona_eleitoral(nome_zona) values ('zona3');
insert into zona_eleitoral(nome_zona) values ('zona4');
insert into zona_eleitoral(nome_zona) values ('zona5');

insert into secao_eleitoral(nome_secao_eleitoral) values ('secao1');
insert into secao_eleitoral(nome_secao_eleitoral) values ('secao2');
insert into secao_eleitoral(nome_secao_eleitoral) values ('secao3');
insert into secao_eleitoral(nome_secao_eleitoral) values ('secao4');
insert into secao_eleitoral(nome_secao_eleitoral) values ('secao5');

update zona_eleitoral set nome_zona  ='zona10' where id_zona_eleitoral = 4;

update secao_eleitoral set nome_secao_eleitoral ='secao10' where id_secao_eleitoral = 5;

DELETE FROM ZONA_ELEITORAL where nome_zona = 'zona10';

delete from secao_eleitoral where nome_secao_eleitoral = 'secao10';

select nome_zona, fk_loccalidade_id_localidade from zona_eleitoral where id-zona_eleitoral > 0 order by id_zona_eleitoral desc;