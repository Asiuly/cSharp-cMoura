create database esporte;

use esporte;

create table campeonato (
	id int not null identity (1,1),
	nome varchar(50) not null,
	ativo bit not null,
	constraint pk_campeonato primary key (id)
);

create table equipe (
	id int not null identity (1,1),
	nome varchar(50) not null,
	constraint pk_equipe primary key (id)
);

create table partida(
	id int not null identity(1,1),
	idCampeonato int not null,
	idEquipeCasa int not null,
	idEquipeVisitante int not null,
	golsEquipeCasa  int not null,
	golsEquipeVisitante  int not null,
	[data] date not null,
	hora time(0) not null,

	constraint pk_partida primary key (id),

	constraint fk_partida_campeonato foreign key(idCampeonato) 
	references campeonato(id),

	constraint fk_partida_equipeCasa foreign key(idEquipeCasa) 
	references equipe(id),

	constraint fk_partida_equipeVisitante foreign key(idEquipeVisitante) 
	references equipe(id),
);

 