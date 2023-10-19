use exercicioDepartamento;

create table departamento (
	codigo int not null identity (1,1),
	nome varchar(200) not null,
	constraint pk_departamento 
		primary key (codigo)
);

create table funcionario (
	codigo int not null identity (1,1),
	codigoDepartamento int not null,
	primeiroNome varchar(30) not null,
	segundoNome varchar(30) not null,
	ultimoNome varchar(30),
	dataNascimento date not null,
	cpf char(11) not null,
	rg char(9) not null,
	endereco varchar(80),
	cep char(8) not null,
	cidade varchar(50),
	fone char(9) not null,
	funcao varchar(30) not null,
	salario int not null,

	constraint pk_funcionario 
		primary key (codigo),

	constraint fk_funcionario_departamento
		foreign key (codigoDepartamento)
		references departamento (codigo)
);
