create database consultorio;
use consultorio;

create table medico (
	codigo int not null identity(1,1),
	nome varchar(200) not null,
	datanascimento date,
	crm char(9) not null,
	constraint pk_medico primary key (codigo)
);

create table paciente (
	codigo int not null,
	nome varchar(200) not null,
	email varchar(100),
	constraint pk_paciente primary key (codigo)
);

create table consulta (
	codigom int not null,
	codigop int not null,
	[data] date not null,

	constraint fk_consulta_medico foreign key (codigom)
		references medico (codigo),

	constraint fk_consulta_paciente foreign key (codigop)
		references paciente (codigo),

	constraint pk_consulta primary key (codigom, codigop, [data])
);